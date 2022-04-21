public class MapOpportunity {
    public static void maps(){
        List<Opportunity> savedOpps = CollectionsExercise.getOpportunities();
        List<Account> accList= new List<Account>();
        Map<String,Integer> opporCount = new Map<String,Integer>();
        Map<String,Double> opporAmount = new Map<String,Double>();
        accList= [Select Id from Account];
        Integer count=0;
        double amountt=0.0;
        //double amountt;
        Set<Id> accountIds = (new Map<Id,SObject>(accList)).keySet();
        for(Id a: accountIds)
        {
            for (Opportunity o: savedOpps)
            {
                if(o.AccountId == a )
                {
                    //accountIds.add(o.AccountId);
                    amountt= amountt+ o.Amount;
                    count++;
                    
                }
                opporCount.put(o.Account.Name,count);
                opporAmount.put(o.Account.Name,amountt);
                
                //System.debug('Map1->' +o.Account.Name + ',' +count + ','+amountt);
                
            }
            
             //System.debug('Map1->' + opporCount);
            // System.debug('Map2->' + opporAmount);
            
            
        }
        System.debug('Map1->' + opporCount);
        System.debug('Map2->' + opporAmount);
        
        
        
    } 
}