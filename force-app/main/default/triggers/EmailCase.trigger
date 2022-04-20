trigger EmailCase on Case (
        before delete,
        before insert,
        before update, 
        after delete, 
        after insert,
        after update,
        after undelete) {
    if (Trigger.isBefore && Trigger.isInsert){
        HelperTriger.handleBeforeInsert(Trigger.new);
    }
    


}