public class MapOpportunity {
    public static void maps(){
        List<Opportunity> savedOpps = CollectionsExercise.getOpportunities();
        Map<String,Integer> opporCount = new Map<String,Integer>();
        Map<String,Double> opporAmount = new Map<String,Double>();
        Integer count=0;
        double amountt=0.0;
        
        for (Opportunity o: savedOpps)
        {
            count++;
            opporCount.put(o.Account.Name,count);
            amountt= amountt+ o.Amount;
            opporAmount.put(o.Account.Name,amountt);
        }
        System.debug('Map1->' + opporCount);
        System.debug('Map2->' + opporAmount);
 
    } 
}

