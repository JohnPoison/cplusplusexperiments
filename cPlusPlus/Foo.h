//
// Created by JohnPoison <truefiresnake@gmail.com> on 5/13/13.





#ifndef __Foo_H_
#define __Foo_H_

#include <iostream>


class Foo {
public:
    Foo();
    Foo(const Foo& right);
    void description();
    ~Foo();

private:
    static int sCounter;
    int mId;
};


#endif //__Foo_H_
