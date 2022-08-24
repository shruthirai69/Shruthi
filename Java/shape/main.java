package shape;

public class main {
    public static void main(String[] args)
    {
        square Square=new square();
        Triangle triangle=new Triangle();
        circle Circle=new circle();
        Square.getData((float)5.5);
        System.out.println("The area of square is:"+Square.area());
        triangle.getData((double)20.56,(double)23.90);
        System.out.println("The are of triangle is:"+triangle.area());
        Circle.getData((double)5.5);
        System.out.print("The area of circle is:"+Circle.area());
    }

}
