package com.mi.mimsgsdk.database;

public interface IMessageDao {
    public static final String APPID = "appid";
    public static final String BODY = "body";
    public static final String CRITERIA_TARGET_MSGID = "msg_id =? ";
    public static final String FROM_GUID = "from_guid";
    public static final int INDEX_APPID = 1;
    public static final int INDEX_BODY = 7;
    public static final int INDEX_FROM_GUID = 2;
    public static final int INDEX_ID = 0;
    public static final int INDEX_MSG_ID = 5;
    public static final int INDEX_MSG_SEQ = 4;
    public static final int INDEX_SENT_TIME = 6;
    public static final int INDEX_TO_GUID = 3;
    public static final int INDEX_USER_ID = 8;
    public static final String MSG_ID = "msg_id";
    public static final String MSG_SEQ = "msg_seq";
    public static final String SENT_TIME = "sent_time";
    public static final String TO_GUID = "to_guid";
    public static final String USER_ID = "user_id";
    public static final String _ID = "_ID";
}
