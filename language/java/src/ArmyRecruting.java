// ArmyRecruting.java # JR 3.3

/*
* MEDIUM
* Призывная кампания
* Java Syntax Pro
* 3 уровень, 3 лекция
* Ввести с клавиатуры имя и возраст.
* Если возраст в пределах 18-28 (включительно),
* то вывести надпись "Имя, явитесь в военкомат",
* где Имя - это имя, введенное ранее с клавиатуры.
* Пример ввода: Amigo 18
* Пример вывода: Amigo, явитесь в военкомат
* */

import java.util.Scanner;

public class ArmyRecruting {
    public static void main(String[] args) {

        Scanner in = new Scanner(System.in);
        //name
        System.out.println("Введите имя:");
        String name = in.nextLine();

        //age
        System.out.println("Ваш возраст:");
        int age = in.nextInt();

        if (age <= 28 && age >= 18) {
            System.out.printf("%s, явитесь в военкомат\n", name);
        }
        if (age < 18) {
            System.out.printf("%s, школьные годы - лучшая пора\n", name);
        }
        if (age > 28) {
            System.out.printf("%s, бывалые - опытные...\n", name);
        }
    }
}

        Scanner in = new Scanner(System.in);
        String name = in.nextLine();

        //System.out.println("Ваш возраст:");
        int age = in.nextInt();

        if (age <= 28 && age >= 18) {
        System.out.println(name + militaryComissar);
        }