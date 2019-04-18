#include "rafajson.hpp"

/* this function use the function below to parse JSON */
/* ws value ws */
int json_parse(json_value * value, std::string json)
{
    std::cout << "Run the first line of json_parse()..." << std::endl;
    json_context c;
    // int ret;
    assert(value != nullptr);
    c.json = json;
    c.stack = nullptr;
    c.size = c.top = 0;
    JSON_INIT(value);
    value->type = json_type::JSON_NULL;
    json_parse_whiteSpace(&c);

    int retValue = json_parse_value(&c, value);
    if (retValue == JSON_PARSE_OK)
        {
            json_parse_whiteSpace(&c);
                // iterator of string
         const char* start = (c.json).c_str();
         if (*start != '\0')
            {
                value->type = json_type::JSON_NULL;
                retValue = JSON_PARSE_ROOT_NOT_SINGULAR;
            }
        }
    assert(c.top == 0);
    free(c.stack);
std::cout << "Run the end line of json_parse()..." << std::endl;
    return retValue;
}

/* this function parse the whitespace of JSON */
/* ws == *(%x20 / %x09 / %x0A / %x0D) */
static void json_parse_whiteSpace(json_context* c)
{
    const char* p = (c->json).c_str();
    while (*p == ' ' || *p == '\t' || *p == '\n' || *p == '\r')
        p++;
    c->json = p;
}

/*
 * this function is used to parse null / false / true
 */
static int json_parse_iteral(json_context* c, json_value* value, std::string literal, json_type type)
{
    size_t i;
    // std::string::const_iterator beg = (c->json).begin();
    // std::string::const_iterator end = (c->json).end();
    // std::string::const_iterator literalIterator = literal.begin();
    const char* start = (c->json).c_str();
    EXPECT(start, literal[0]);
    // size_t i = 0;
    for (i = 0; literal[i + 1]; i++)
        if (start[i] != literal[i + 1])
            return JSON_PARSE_INVALID_VALUE;

    c->json = (c->json).substr(i+1);
    value->type = type;
    return JSON_PARSE_OK;
}


/* this function parse the 3 value of json */
/* value = null / false / true / number */
static int json_parse_value(json_context* c, json_value* value)
{
    std::cout << "Run the json_parse_value()...\n";
    std::string::const_iterator beg = (c->json).begin();
    switch (*beg)
    {
        case 'n':  return json_parse_iteral(c, value, "null", json_type::JSON_NULL);
        case 't':  return json_parse_iteral(c, value, "true", json_type::JSON_TRUE);
        case 'f':  return json_parse_iteral(c, value, "false", json_type::JSON_FALSE);
        case '\0': return JSON_PARSE_EXPECT_VALUE;
        case '"':  return json_parse_string(c, value);
        default:   return json_parse_number(c, value);
    }
}

/* this function get the type of result */
json_type json_get_type(const json_value* value)
{
    assert(value != nullptr);
    return value->type;
}

/* this function get the number of json */
double json_get_number(const json_value* value)
{
    assert(value != nullptr && value->type == json_type::JSON_NUMBER);
    return value->n;
}

/* this function parse the number of json 
 * use c library function strtod()
*/

static int json_parse_number(json_context* c, json_value* value)
{
    char * end;
    std::string::const_iterator p = (c->json).begin();
    std::string::const_iterator e = (c->json).end();
    /* parse '-' */
    if (*p == '-')
        p++;

    /* parse int */
    if (*p == '0')
        p++;
    else 
    {
        if (!ISDIGIT1TO9(*p))
            return JSON_PARSE_INVALID_VALUE;
        for (p++; ISDIGIT(*p); p++)
            ;
    }

    /* parse frac */
    if (*p == '.')
    {
        p++;
        if (!ISDIGIT(*p))
            return JSON_PARSE_INVALID_VALUE;
        for (p++; ISDIGIT(*p); p++)
            ;
    }

    /* parse exp */
    if (*p == 'e' || *p == 'E')
    {
        p++;
        if (*p == '+' || *p == '-') 
            p++; 
        if (!ISDIGIT(*p)) 
            return JSON_PARSE_INVALID_VALUE;
        for (p++; ISDIGIT(*p); p++);
    }

    value->n = strtod((c->json).c_str(), nullptr);
    if (errno == ERANGE && (value->n == HUGE_VAL || value->n == -HUGE_VALL))
        return JSON_PARSE_NUMBER_TOO_BIG;
    value->type =  json_type::JSON_NUMBER;
    c->json = (c->json).assign(p, e);
    return JSON_PARSE_OK;
}

/**
 * this function set a value as string
**/
void json_set_string(json_value* value, std::string s, size_t len)
{
    std::cout << "Run the json_set_string()\n";
    const char* start = s.c_str();
    assert(value != nullptr && (start != nullptr || len == 0));
    json_free(value);
    value->s = s;
    value->len = len;
    value->type = json_type::JSON_STRING;
}

// clear the string
void json_free(json_value* value)
{
    assert(value != nullptr);
    if (value->type == json_type::JSON_STRING)
        (std::get<std::string>(value->s)).clear();
    value->type = json_type::JSON_NULL;
}

static void* json_context_push(json_context* c, size_t size)
{
    std::cout << "Running json_context_push()\n";
    void* ret;
    assert(size > 0);
    if (c->top + size >= c->size)
    {
        if (c->size == 0)
            c->size = JSON_PARSE_STACK_INIT_SIZE;
        while (c->top + size >= c->size)
            c->size += c->size >> 1;  /* c->size * 1.5 */
        c->stack = (char*)realloc(c->stack, c->size);
    }
    ret = c->stack + c->top;
    c->top += size;
    return ret;
}

static void* json_context_pop(json_context* c, size_t size)
{
    //std::cout << "Running json_context_pop()\n";
    assert(c->top >= size);
    //std::cout << "This line...\n";
    return c->stack + (c->top -= size);
}

static int json_parse_string(json_context* c, json_value* value)
{
    std::cout << "Run the first line of json_parse_string()...\n";
    size_t head = c->top, len;
    // const char* p = (c->json).c_str();
    const char * start = (c->json).c_str();
    std::cout << *start << std::endl;
    EXPECT(start, '\"');
    // start = start + 1;
    std::cout << *start << std::endl;
    // c->json
    for (;;)
    {
        char ch = *start++;
        switch (ch) 
        {
            case '\"':
                std::cout << "Run the case \"\n";
                len = c->top - head;
                std::cout << "Maybe the fault is not c->top - head\n";
                json_set_string(value, nullptr, len);
                std::cout << "Maybe the fault is json_set_string()\n";
                c->json = start;
                return JSON_PARSE_OK;
            case '\0':
                c->top = head;
                return JSON_PARSE_MISS_QUOTATION_MARK;
            default:
                PUTC(c, ch);
        }       
    }
}

const char* json_get_string(const json_value* value)
{
    assert(value != nullptr && value->type == json_type::JSON_STRING);
    return (std::get<std::string>(value->s)).c_str();
}

size_t json_get_string_length(const json_value* value)
{
    assert(value != nullptr && value->type == json_type::JSON_STRING);
    return std::get<size_t>(value->len);
}