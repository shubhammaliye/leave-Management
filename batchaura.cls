global class batchaura implements Database.Batchable<sObject> {
    
 global Database.QueryLocator start(Database.BatchableContext BC) {
      
         
        String query = 'select id, Number_of_leave_count__c, Sick_Leave_Balance__c  from Employee__c';
        return Database.getQueryLocator(query);
    }
     
  global void execute(Database.BatchableContext BC, List<Employee__c> EmpList) {
        
        for(Employee__c emp : EmpList)
        {        
            emp.Number_of_leave_count__c = emp.Number_of_leave_count__c == null? 0 : emp.Number_of_leave_count__c;
            emp.Number_of_leave_count__c = emp.Number_of_leave_count__c + 1;
            
            emp.Sick_Leave_Balance__c = emp.Sick_Leave_Balance__c == null? 0 : emp.Sick_Leave_Balance__c;
            emp.Sick_Leave_Balance__c = emp.Number_of_leave_count__c + 0.5;
        }
        
        try {
           
            update EmpList;
         
        } catch(Exception e) {
            System.debug(e);
        }
         
    }   
     
    global void finish(Database.BatchableContext BC) {

  }
}