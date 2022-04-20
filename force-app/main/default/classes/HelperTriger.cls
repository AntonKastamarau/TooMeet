public with sharing class HelperTriger {
    public static void handleBeforeInsert(List<Case> newList) {
        Helpper.Helpper(newList);

    }
    public static void handleBeforeInsertQueble(List<ToDo__C> ListCase, Map<Id,ToDo__C> MapIdCase, List<ToDo__C> ListCaseOld,
     Map<Id,ToDo__C> MapIdCaseOld) {
        Helpper.HelpperForQueue(ListCase, MapIdCase, ListCaseOld, MapIdCaseOld);
    }


}