import java.util.LinkedList;
import java.util.List;

public class linkedlist {
    public static void main(String[] args)
    {
        LinkedList<Character> l1=new LinkedList<Character>();
        l1.add('B');
        l1.add('E');
        l1.add('F');
        System.out.println("Original contents"+l1);
        l1.addLast('G');
        l1.addFirst('A');
        System.out.println("After calls to addFirst() and addLast().");
        System.out.println("Contents:"+l1);
        l1.add(2,'D');
        l1.add(2,'C');
        System.out.println("After insertions");
        System.out.println("Contents"+l1);
        System.out.println("Here are the first and last elements"+l1.getFirst()+" "+l1.getLast());
        List<Character> sub=l1.subList(2,5);
        System.out.println("Contents of sublist view"+sub);
        LinkedList<Character> ll2=new LinkedList<Character>(sub);
        l1.removeAll(ll2);
        System.out.println("After removing ll2 from l1"+l1);

        l1.poll();
        System.out.println("After poll"+l1);
       
        
        System.out.println("COntents"+l1);
        l1.removeFirst();
        l1.removeLast();
        System.out.println("After deleting first and last element");
        System.out.println("Contents"+l1);
        l1.set(0,Character.toLowerCase(l1.get(0)));
        System.out.println("After change"+l1);
    }
}
