#include "uint4.h"

uint4_t::uint4_t(){}
uint4_t::~uint4_t(){}




uint4_t& uint4_t::operator=(const uint4_t& other)
{
    this->value = other.value;
    return *this;
}


