// ThreeStrings.java #JR 2.7

import java.util.Scanner;
 
public class ThreeStrings {
   
    public static void main(String[] args) {
           
        Scanner in = new Scanner(System.in);
        // System.out.print("Input a number: ");
        String str1 = in.nextLine();
        String str2 = in.nextLine();
        String str3 = in.nextLine();
        in.close(); // закрываем Сканер ввода

        String res2 = str2.substring(0,1).toUpperCase() + str2.substring(1).toLowerCase();
        String res1 = str1.toLowerCase();
        
        // Вывод
        System.out.println(str3); // 3: - Неизменённый вид
        System.out.println(res2); // 2: - Верхн регистр
        System.out.println(res1);// 1: - Нижн регистр
        
    }
}

