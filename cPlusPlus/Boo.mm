//
// Created by JohnPoison <truefiresnake@gmail.com> on 5/13/13.




#include "Boo.h"

int Boo::sCounter = 1;

Boo::Boo(Foo *foo1, Foo *foo2){
    fFoo1 = foo1;
    fFoo2 = foo2;
    mId = sCounter++;
}

void Boo::description() {
    std::cout << "Boo " << mId << " description: " << std::endl;
    fFoo1->description();
    fFoo2->description();
}


void Boo::setFoo1(Foo* foo) {
    if (fFoo1 && fFoo1 != foo) {
        fFoo1->release();
    }

    fFoo1 = foo->retain();
}

void Boo::setFoo2(Foo* foo) {
    if (fFoo2 && fFoo1 != foo) {
        fFoo2->release();
    }

    fFoo2 = foo->retain();

}

Boo::~Boo() {
    std::cout << ">>>>Boo " << mId << " desctructor: " << std::endl;

    if (fFoo1) {
        fFoo1->release();
        fFoo1 = nullptr;
    }
    if (fFoo2) {
        fFoo2->release();
        fFoo2 = nullptr;
    }
}

Boo& Boo::operator= (const Boo boo) {
    if (this != &boo) {
        booVal1 = boo.booVal1;
        booVal2 = boo.booVal2;
        setFoo1(boo.fFoo1);
        setFoo2(boo.fFoo2);
    }

    return *this;
}

Boo& Boo::operator= (const Boo* boo) {
    if (this != boo) {
        booVal1 = boo->booVal1;
        booVal2 = boo->booVal2;
        setFoo1(boo->fFoo1);
        setFoo2(boo->fFoo2);
    }

    return *this;
}



