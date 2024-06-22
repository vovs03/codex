// GetSumMiddle.java # JR 2.8* little modified

/*
* EASY Чтение чисел Java Syntax Pro
* 2 уровень, 8 лекция
* Считай с клавиатуры три целых числа.
* Выведи на экран их среднее арифметическое.
* Пример ввода: 50 101 201
* Пример вывода: 117
* Среднее арифметическое - это число, равное сумме всех чисел,
* деленной на их количество. Используй деление без остатка.
* */

import java.util.Scanner;

public class GetSumMiddle {
    public static void main(String[] args) {
        System.out.println("Найдём среднее арифметическое трёх чисел,\n\t введите три целых числа");

        Scanner in = new Scanner(System.in);
        int num1 = in.nextInt();
        int num2 = in.nextInt();
        int num3 = in.nextInt();
        in.close();

        int count_nums = 3;
        int res = (num1 + num2 + num3) / count_nums;

        System.out.println(res);
    }
}

//GetSumMiddle;