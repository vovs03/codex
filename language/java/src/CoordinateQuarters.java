// CoordinateQuarters.java | JR_3.6_0308
// 2024-06-24 15:46

/*
* EASY | Координатные четверти | Java Syntax Pro
* 3 уровень, 6 лекция
* Ввести с клавиатуры два целых числа, которые будут координатами точки
* (первое считанное число - это координата "x", а второе - координата "y").
* Известно, что точка не лежит на координатных осях OX и OY.
* Вывести на экран номер координатной четверти,
* в которой находится данная точка.
*
* Подсказка:
* Принадлежность точки с координатами(x, y)к одной из четвертей определяется следующим образом:
* для первой четверти x>0 и y>0;
* для второй четверти x<0 и y>0;
* для третьей четверти x<0 и y<0;
* для четвертой четверти x>0 и y<0.
* Пример для чисел 4 6:
* 1
* Пример для чисел -6 -6:
* 3
* */

import java.util.Scanner;

public class CoordinateQuarters {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);

        int x = in.nextInt();
        int y = in.nextInt();

        in.close();

        String QUARTER1 = "1";
        String QUARTER2 = "2";
        String QUARTER3 = "3";
        String QUARTER4 = "4";

        if (x > 0 && y > 0) {
            System.out.println(QUARTER1);
        } else if (x < 0 && y > 0) {
            System.out.println(QUARTER2);
        } else if (x < 0 && y < 0) {
            System.out.println(QUARTER3);
        } else if (x > 0 && y < 0) {
            System.out.println(QUARTER4);
        }
    } // psvm
}