
public class enumeration {
    enum Dayofweek{
        MONDAY(1),TUESDAY(2),WEDNESDAY(3),THRUSDAY(4),FRIDAY(5),SATURDAY(6),SUNDAY(7);
        public int val;
        Dayofweek(int val)
        {
            this.val=val;
        }
        boolean isWorkDay()
        {
            if(val<6)
            {
            System.out.println(" working day");
            return true;
            }
            else
            {
            System.out.println(" not working day");
            return false;
            }
        }
    }
    
    public static void main(String[] args) {
        Dayofweek day;
        System.out.println("verification of sunday(isWorkDay()");
        System.out.println(Dayofweek.SUNDAY.isWorkDay());
        System.out.println("verification of wednesday isWorkDay()");
        System.out.println(Dayofweek.WEDNESDAY.isWorkDay());
        
    }
} 

