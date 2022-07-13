class Outer
{
int x=100;
class Inner
{
    int y=200;
    void imethod()
    {
        System.out.println(x);
        System.out.println(x+y);

    }
}
void display()
{
    Inner obj1=new Inner();
    System.out.println("The value of inner class variable="+obj1.y);
    System.out.println("The value of Outer class="+x);
}
}

public class inner2 {
    public static void main(String[] args) {
        Outer ob2=new Outer();
        ob2.display();
        Outer.Inner obj3=ob2.new Inner();
        obj3.imethod();
    }
}
