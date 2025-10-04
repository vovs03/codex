    #include <stdio.h>
// https://habr.com/ru/companies/huawei/articles/511854/ code example for check.
//
    static void die() {
      while(1)
        ;
    }

    int main() {
      printf("begin\n");
      die();
      printf("unreachable\n");
    }

//  Раз поведение "неопределено", компилятор волен делать с бесконечными циклами вообще всё,
// что угодно — даже "выпускать из ноздрей летающих демонов"!
// (это выражение стало мемом в сообществе C разработчиков).
// nasal demons >> http://catb.org/jargon/html/N/nasal-demons.html
