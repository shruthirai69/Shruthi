import java.util.Scanner;

import javax.lang.model.util.ElementScanner6;

class QueueException extends Exception{
    public void Error()
    {
        System.out.print("Queue is full");
    }
}
class Queue1{
    int front;
    int rear;
    int q[];
    Queue1(int n)

    {
        front=rear=-1;
        
        q=new int[n];
    }
    void insert(int ele)throws QueueException
    {
        if(rear==q.length-1)
        {
            throw new QueueException();
        }
        if(front==-1)
        front=rear=0;
        else
        rear+=1;
        q[rear]=ele;
        
        

    }
    int Delete()
    {
        int ele;
        if(front==-1)
        {
            throw new ArrayIndexOutOfBoundsException();
        }
        if(front==rear)
        {
            ele=q[front];
            rear=front-1;
        }
        else
        {
          ele=q[front++];
        }
    return ele;
}
void display()
        {
            int i;
            if(front==-1)
                {
                    System.out.println("Queue is Empty");
                    return;  
                }
                for(i=front;i<=rear;i++)
                System.out.println(q[i]+"\t");
        }
}
public class Queue
{
     public static void main(String[] args) 
     {
        Scanner sc=new Scanner(System.in);
        System.out.println("Enter size of queue");
        int size=sc.nextInt();
        Queue1 que=new Queue1(size);
        try{
            while(true)
            {
                System.out.println("\n1.Insert\n2.Delete\n3.display\n");
                System.out.println("Enter your choice");
                int choice=sc.nextInt();
                switch(choice)
                {
                    case 1:System.out.println("Enter element to be insert:");
                            que.insert(sc.nextInt());
                            break;
                    case 2:System.out.println("Deleted item is:"+que.Delete());
                            break;
                    case 3:que.display();
                            break;
                    default:System.out.println("Wrong choice");
                            return;
                }
            }
        }
        catch(QueueException e)
        {
            e.Error();
        }
        catch(ArrayIndexOutOfBoundsException e)
        {
            System.out.println("Queue is empty");

        }
    }
}