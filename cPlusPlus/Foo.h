//
// Created by JohnPoison <truefiresnake@gmail.com> on 5/13/13.





#ifndef __Foo_H_
#define __Foo_H_

#include <iostream>


class Foo {
public:
    Foo();
    void description();
    ~Foo();

    Foo* retain();
    void release();
private:
    static int sCounter;
    int mId;
    int retainCounter;
};


#endif //__Foo_H_
