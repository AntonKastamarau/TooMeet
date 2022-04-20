trigger FromToDo on ToDo__c (
    before delete,
    before insert,
    before update, 
    after delete, 
    after insert,
    after update,
    after undelete) {

    if (Trigger.isBefore && Trigger.isUpdate){
    HelperTriger.handleBeforeInsertQueble(Trigger.new, Trigger.newMap, Trigger.old, Trigger.oldMap);
        }

}