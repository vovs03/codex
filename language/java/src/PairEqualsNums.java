// PairEqualsNums.java #JR 3.5
// 2024-06-23 20:32

/*
* Три числа | Java Syntax Pro
* 3 уровень, 5 лекция
* Ввести с клавиатуры три целых числа.
* Определить, есть ли среди них хотя бы одна пара равных между собой чисел.
* Если такая пара существует, вывести на экран числа через пробел.
* Если все три числа равны между собой, то вывести все три.
*
* Примеры:
* а) при вводе чисел `1 2 2` получим вывод `2 2`
* б) при вводе чисел `2 2 2` получим вывод `2 2 2`
*
* Требования:
* Если нет равных чисел ничего выводить не надо.
* */

import java.util.Scanner;

public class PairEqualsNums {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);

        int num1 = in.nextInt();
        int num2 = in.nextInt();
        int num3 = in.nextInt();
        in.close();

        if (num1 == num2 && num2 == num3) {
            System.out.println(num1 + " " + num2 + " " + num3);
        } else if (num1 == num3 ) {
            System.out.println(num1 + " " + num3);
        } else if (num2 == num3) {
            System.out.println(num2 + " " + num3);
        } else if (num1 == num2) {
            System.out.println(num1 + " " + num2);
        }
    }
}