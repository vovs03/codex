/* 
 * демонстрация работы оператора If
 * назовите этот файл IfSample.java
 */

class IfSample {
  public static void main(String[] args) {
    int x, y;
    x = 10;
    y = 20;
    if (x < y) System.out.println("Значение х меньше у");

    x = x * 2;
    if (x == y) System.out.println("Значение х равно у");

    x = x * 2;
    if (x > y) System.out.println ("Значение х больше у");

    // Здесь ничего не отобразится
    if (x == y) System.out.println ("Этот вывод вы не увидите");
  
  }
}
