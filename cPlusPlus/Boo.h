//
// Created by JohnPoison <truefiresnake@gmail.com> on 5/13/13.





#ifndef __Boo_H_
#define __Boo_H_

#include <iostream>
#import "SuperBoo.h"
#import "Foo.h"


class Boo : public SuperBoo {
public:
    Boo(Foo* foo1, Foo* foo2);
    Boo(const Boo& right);
    void description();
    virtual ~Boo();
    void setFoo1(Foo* foo);
    void setFoo2(Foo* foo);
    Boo& operator= (const Boo* boo);
    Boo& operator= (const Boo& boo);
private:
    Foo* fFoo1;
    Foo* fFoo2;

    static int sCounter;
    int mId;
};


#endif //__Boo_H_
