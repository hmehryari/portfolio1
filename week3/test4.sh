#!/bin/bash

function foo1
{

echo "Foo1 - A Basic Function"
}


foo2 ()
{
echo "Foo2 Function" $1 $2 $3
echo "All input variables in Foo2" $*

echo
}

foo1
foo2 Hi There Everyone 2
