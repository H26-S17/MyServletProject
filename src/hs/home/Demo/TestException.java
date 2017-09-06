package hs.home.Demo;

public class TestException {
    public static void main(String[] args) {
        int a = 6;
        int b = 0;
        try {
            int c = a / b;
        } catch (ArithmeticException e) {
            System.out.println("啦啦");
        }
    }

}
