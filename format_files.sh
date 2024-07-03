#!/bin/bash

echo "Formatting include/*, src/*, test/*"
find include -iname *.hpp -o -iname *.h -o -iname *.cpp | xargs clang-format-15 -i
find src -iname *.hpp -o -iname *.h -o -iname *.cpp | xargs clang-format-15 -i
find test -iname *.hpp -o -iname *.h -o -iname *.cpp | xargs clang-format-15 -i
