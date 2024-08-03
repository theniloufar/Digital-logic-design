#ifndef __UINT4_H__
#define __UINT4_H__

#include <cstdint>
#include <type_traits>

class uint4_t
{
private:
    uint8_t value;
public:
    uint4_t();
    
    template <typename T, typename std::enable_if<std::is_integral<T>::value>::type* = nullptr>
    uint4_t(T val) { this->value = val % 16;}


    ~uint4_t();

    uint8_t val() { return value;}

    uint4_t& operator=(const uint4_t& other);

    template<typename T>
    uint4_t& operator=(const T& other)
    {
        this->value = other % 16;
        return *this;
    }

};



#endif