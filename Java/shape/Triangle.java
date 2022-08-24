package shape;

public class Triangle 
{
    double base;
    double height;
    public void getData(double temp1,double temp2)
    {
        base=temp1;
        height=temp2;
    }
    public double area()
    {
        return((base*height)/2);
    }
}
