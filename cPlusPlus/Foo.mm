//
// Created by JohnPoison <truefiresnake@gmail.com> on 5/13/13.




#include "Foo.h"

int Foo::sCounter = 1;

Foo::Foo() {
    mId = sCounter++;
    retainCounter = 1;
}


Foo* Foo::retain() {
    retainCounter++;
    return this;
}

void Foo::release() {
    retainCounter--;

    if (!retainCounter)
        delete this;
}

void Foo::description() {
    std::cout << "Ima Foo " << mId << std::endl;
}

Foo::~Foo() {
    std::cout << "Foo " << mId  << " destructor " << std::endl;
}



