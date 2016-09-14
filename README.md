# ouroboros
This is a Swift/Objective-C ouroboros.

An ouroboros is a type of [quine](https://en.wikipedia.org/wiki/Quine_(computing)) where the programs will print each other in a loop - in this case, the Swift code prints the Objective-C program, and the Objective-C program in turn prints the Swift program. They can loop forever, producing exactly the same source code for each other.

I wrote this as a celebration of Swift 3 being officially released, since these are two languages that are near and dear to my heart. I hope you enjoy it!

##How to use this:

###Swift

Simply run

`swift ouroboros.swift` to obtain the Objective-C code.

###Objective-C

Compile the Objective-C source with this command

`clang -fobjc-arc -F/System/Library/Frameworks ouroboros.m -o objc_ouroboros`

then run it like this to obtain the Swift code

`./objc_ouroboros`

###Writing to File from Command Line

You can redirect the output of a program into a file like this

`swift ouroboros.swift > ouroboros.m`

and

`./objc_ouroboros > ouroboros.swift`
