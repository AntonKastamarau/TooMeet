public class ForDeleteOldToDo implements Database.Batchable<sObject>, Database.Stateful{
    List<ForTodoCMT__mdt> numberValueMonths = [
        SELECT showNumberForSetings__c
        FROM ForTodoCMT__mdt
        LIMIT 1];
    DateTime timeIsToday = Date.today();
    List<ToDo__C> collectionTodoCreateDate = [
        SELECT TestDataTime__c
        FROM ToDo__c
    ];
    datetime myDataTimeToday = datetime.now();
    public Database.QueryLocator start(Database.BatchableContext bc) {
        return Database.getQueryLocator('SELECT ID, Name FROM ToDo__c');
    }
    public void execute(Database.BatchableContext bc, List<ToDo__c> toDoList) {
        
        for(ToDo__c deleteTodoNow: collectionTodoCreateDate){
            for(ForTodoCMT__mdt valueForadding: numberValueMonths){
                datetime myOldDataTimePlus3Months = deleteTodoNow.TestDataTime__c.addMonths(Integer.valueof(valueForadding.showNumberForSetings__c));
                if(myOldDataTimePlus3Months < myDataTimeToday){
                    Delete deleteTodoNow;
            }
        }
        }

    }
    public void finish(Database.BatchableContext bc) {

    }
}
