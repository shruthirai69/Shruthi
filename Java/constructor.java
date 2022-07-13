class area
        {
            double l,h,b;
            
            area(double l)
            {
                this.l=this.b=this.h=l;

            }
            area(double b,double h,double l)
            {
                this.l=l;
                this.b=b;
                this.h=h;

            }
            double volume()
            {
                return l*b*h;
            
            }
            void print()
            {
                System.out.println("Method overloading and constructor overloading");
            }
            void print(double v)
            {
                System.out.println("volume of box"+v);
            }
            
        }
public class constructor {
    public static void main(String[] args) 
    {
        area cube=new area(4);
        area cuboid=new area(3,4,5);
        double v1=cuboid.volume();
        double v2=cube.volume();
        cuboid.print();
        cube.print();
        cuboid.print(v1);
        cuboid.print(v2);
    }
    }
        
    

