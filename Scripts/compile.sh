#! /bin/bash
if #compilation
  rm -rf ./a.out
  g++ -std=c++20 -Wall -g -Wextra -Wshadow -Wfloat-equal -fmax-errors=1 -Wconversion -Wshift-overflow=2 -Wduplicated-cond -D_GLIBCXX_DEBUG -D_GLIBCXX_DEBUG_PEDANTIC -D_FORTIFY_SOURCE=2 -fsanitize=signed-integer-overflow -fsanitize=bounds -O2 $1 -o "${1%.cpp}"
then #if compilation successful
  echo -e "\e[32m\e[1mCompilation Successful!\e[0m"
  echo -e "____________________________________________" && ./"${1%.cpp}"
else
  echo -e "\e[91m\e[1mCompilation Error!\e[0m"
fi
echo -e "____________________________________________"
