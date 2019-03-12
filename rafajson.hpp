#ifndef RAFAJSON_H__
#define RAFAJSON_H__
#include <string>

// enumerate six kind of json type
enum class json_type { 
                       JSON_NULL,
                       JSON_FALSE,
                       JSON_TRUE,
                       JSON_NUMBER,
                       JSON_STRING,
                       JSON_ARRAY,
                       JSON_OBJECT 
                    };


// define json's data structure
class json_value {
    public:
    json_type type;
};


struct json_context {
    std::string json;
};

// the return value
enum {
    JSON_PARSE_OK = 0,
    JSON_PARSE_EXPECT_VALUE,
    JSON_PARSE_INVALID_VALUE,
    JSON_PARSE_ROOT_NOT_SINGULAR
};

/* this function parse the json*/
int json_parse(json_value* value, const std::string json);

/* this function get the type of result */
json_type json_get_type(const json_value* value);

/* ws = *(%x20 / %x09 / %x0A / %x0D) */
static void json_parse_whiteSpace(json_context* jsonValue);

/* value = null / false / true */
static int json_parse_value(json_context* c, json_value* value);

/* null = "null" */
static int json_parse_null(json_context* c, json_value* value);

#endif