public class MapOpportunity {
    public static void maps(){
        List<Opportunity> savedOpps = CollectionsExercise.getOpportunities();
        List<Account> accList= new List<Account>();
        Map<String,Integer> opporCount = new Map<String,Integer>();
        Map<String,Double> opporAmount = new Map<String,Double>();
        accList= [Select Id from Account];
        Integer count=0;
        double amountt=0.0;
        
        for (Opportunity o: savedOpps)
        {
            
            amountt= amountt+ o.Amount;
            count++;
            opporCount.put(o.Account.Name,count);
            opporAmount.put(o.Account.Name,amountt);
      
        }
        
        System.debug('Map1->' + opporCount);
        System.debug('Map2->' + opporAmount);
 
    } 
}

