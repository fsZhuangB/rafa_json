//
// Created by fszhuangb on 2019-05-27.
//

#pragma once
#include "json.hpp"

namespace rafaJSON
{
    class json_value
    {
        /**
         * ctor
         * */
    public:
        explicit json_value(std::nullptr_t) : _val(nullptr) {}
        explicit json_value(bool val) : _val(val) {}

        /**
         * dtor
         * */
    public:
        ~json_value() = default;

        /**
         * type interface
         * */
    public:
        json_type json_get_type() const noexcept;

    /**
     * std::variant is a C++17 features,like union in C language
     * */
    private:
        std::variant<std::nullptr_t, bool> _val;
    };

}