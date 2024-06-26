// CheckTriangle.java #JR_3.6
// 20:39/21:11

/*
* MEDIUM | Треугольник | Java Syntax Pro
* 3 уровень, 6 лекция
* Напишем программу, которая будет просчитывать
* возможность существования треугольника на основе длин его сторон.
*
* Для этого тебе нужно:
* 1. Ввести с клавиатуры три числа – длины сторон предполагаемого треугольника.
* 2. Определить возможность существования треугольника по сторонам.
* Результат вывести на экран в следующем виде:
* "треугольник существует" или "треугольник не существует".
*
* Чтобы это выяснить, нужно сравнить каждую сторону с суммой двух других.
* То есть, тебе нужно выполнить три сравнения:
* 1) Если в каждом сравнении сторона меньше суммы двух других,
* то треугольник с такими сторонами существует.
* 2) Если хотя бы в одном случае сравнения одна сторона
* окажется больше или равна сумме двух других,
* то треугольника с такими сторонами не существует.
*
* */


import java.util.Scanner;

public class CheckTriangle {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);

        int side1 = in.nextInt();
        int side2 = in.nextInt();
        int side3 = in.nextInt();
        in.close();

        if (side1 == 0 || side2 == 0 || side3 == 0) {
            System.out.println("треугольник не существует");
        } else if (side1 < side2 + side3 && side2 < side1 + side3 && side3 < side2 + side1) {
            System.out.println("треугольник существует");
        } else
            System.out.println("треугольник не существует");
    }

}