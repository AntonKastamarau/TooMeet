public with sharing class ScheduleWhoStartBatch implements Schedulable{
    public void execute(SchedulableContext sch) {
        ForDeleteOldToDo runBatchOnDeleteOldTodo = new ForDeleteOldToDo();
        Database.executeBatch(runBatchOnDeleteOldTodo);

    }
}
