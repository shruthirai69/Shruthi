package dynamic;

public class dynamicmain {
    public static void main(String[] args) {
        fixedlength f=new fixedlength(10);
        dyn d=new dyn(5);
        stack iStack;
        iStack=f;
        System.out.println("Content of Fixed stack");
        for(int i=0;i<10;i++)
        {
        f.push((char)('A'+i));
        }
        for(int i=0;i<10;i++)
        {
            System.out.print(f.pop()+"\t");
        }
        iStack=d;
        System.out.println("Content of Dynamic stack");
        for(int i=0;i<10;i++)
        {
            d.push((char)('A'+i));
        }
        for(int i=0;i<10;i++){
            System.out.print(d.pop()+"\t");
        }
    }
    
}
