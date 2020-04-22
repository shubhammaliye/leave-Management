trigger  Duplicate_or_overlapping_leaves  on Leave_Request__c (before insert) {
    List<Leave_Request__c> ListOf= new List<Leave_Request__c>([SELECT Start_Date__c, End_Date__c FROM Leave_Request__c]);

for(Leave_Request__c OBJLIST:ListOf) {
    for(Leave_Request__c NewObj: Trigger.new) {
        if((NewObj.Start_Date__c == OBJLIST.Start_Date__c && NewObj.End_Date__c == OBJLIST.End_Date__c) ||
               (NewObj.Start_Date__c >= OBJLIST.Start_Date__c && NewObj.End_Date__c<= OBJLIST.End_Date__c) ||
               (NewObj.Start_Date__c >= OBJLIST.Start_Date__c && NewObj.Start_Date__c <= OBJLIST.End_Date__c) ||
               (NewObj.Start_Date__c < OBJLIST.End_Date__c&& NewObj.End_Date__c> OBJLIST.End_Date__c )
              )
            {
                NewObj.addError('Duplicate or overlapping leaves.');
            }
    }
}

}