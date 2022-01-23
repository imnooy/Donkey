package com.donkey;

public class ActionFactory {
    private ActionFactory() {}
    private static ActionFactory actionfactory=new ActionFactory();

    public static ActionFactory getInstance() {
        if(actionfactory==null) {
            actionfactory=new ActionFactory();
        }
        return actionfactory;
        //Singleton pattern
    }

    public Action getAction(String command) {
        Action action=null;
        if(command.equals("view_list")) {
            action=new BoardSelectAction();
        }
        else if(command.equals("write_list")) {
            action=new BoardWriteAction();
        }
        else if(command.equals("to_write_list")) {
            action=new BoardtoWriteAction();
        }
        else if(command.equals("view_board")) {
            action=new BoardViewAction();
        }
       return action;
    }
}
