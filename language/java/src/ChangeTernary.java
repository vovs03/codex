// ChangeTernary.java | JR_3.7_0310
// 2024-06-24 15:52

/*
* EASY Через тернии... Java Syntax Pro
* 3 уровень, 7 лекция Эта программа написана с использованием тернарного оператора,
* но не совсем понятно, что она делает.
* Думаем, если избавиться от тернарного оператора, то станет намного понятнее.
* Перепиши программу без использования тернарного оператора.
* */

import java.util.Scanner;

public class ChangeTernary {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int number = scanner.nextInt();

        String result = "";
        if (number < 5) {
            result = "число меньше 5";
        } else if (number > 5) {
            result = "число больше 5";
        } else if (number == 5) {
            result = "число равно 5";
        }
        System.out.println(result);
    }
}