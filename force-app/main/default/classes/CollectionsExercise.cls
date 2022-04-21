public with sharing class CollectionsExercise {
    //insert 100 account name in the list
   public static List<Account> insertAccount(Integer num)
   {
       List<Account> list1 = new List<Account>();
       //storing 100 name
       for(Integer i=0; i<num ;i++)
       {
           Account list2 = new Account(Name= 'Sample-Account' + i);
           list1.add(list2);
       }
       insert(list1);
       return(list1);
   }
    //inserting opportunity name,amount etc in the list 
    public static List<Opportunity> insertopportunity(Integer num)
    {
        List<Opportunity> op1 = new List<Opportunity>();
        //take the accounts list
        List<Account> listt= new List<Account>(CollectionsExercise.insertAccount(num));
        //take data of the list and store into account
        for(Account a : listt)
        {
            //taking number of opportuinity
            Integer n = (Integer)(Math.random()*10);
            for(Integer j=0;j<n;j++)
            {
                Opportunity op2= new Opportunity(Name='Sample Opportunity -' +j,
                                                 CloseDate = System.today() + 20, 
                                                 StageName = 'Qualification', 
                                                 Amount = (100000 * Math.random()).round(),
                                                 AccountId = a.Id );
                //op1 list is storing op2 list
                op1.add(op2);
          
            }
        }
         insert(op1);
         return(op1);

    }
    
public static List<Opportunity> getOpportunities() {
        return [select id, name, amount, account.name
                  from Opportunity
                 where name like 'Sample%'];
    }
    
   
}