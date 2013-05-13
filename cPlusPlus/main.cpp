//
//  main.cpp
//  cPlusPlus
//
//  Created by JohnPoison on 4/28/13.
//  Copyright (c) 2013 JohnPoison. All rights reserved.
//


#include "Boo.h"

int main(int argc, const char * argv[])
{

    Boo boo1(new Foo(), new Foo());
    Boo boo2(new Foo(), new Foo());

    boo1.description();
    boo2.description();

    std::cout  << "assigning" << std::endl;
    boo1 = boo2;
    std::cout  << "now" << std::endl;
    boo1.description();
    boo2.description();


    return 0;
}

