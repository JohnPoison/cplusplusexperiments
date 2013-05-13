//
// Created by JohnPoison <truefiresnake@gmail.com> on 5/13/13.




#include "Foo.h"

int Foo::sCounter = 1;

Foo::Foo() {
    mId = sCounter++;
}


Foo::Foo(const Foo& right) {
    // copied objects has ids above 1000
    mId = right.mId + 1000;
}

void Foo::description() {
    std::cout << "Ima Foo " << mId << std::endl;
}

Foo::~Foo() {
    std::cout << "Foo " << mId  << " destructor " << std::endl;
}



