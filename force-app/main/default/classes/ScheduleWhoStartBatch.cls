public with sharing class ScheduleWhoStartBatch implements Schedulable{
    public void execute(SchedulableContext sch) {
        ForDeleteOldToDo lub = new ForDeleteOldToDo();
        Database.executeBatch(lub);

    }
}
