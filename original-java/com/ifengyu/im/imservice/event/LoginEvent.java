package com.ifengyu.im.imservice.event;

public enum LoginEvent {
    NONE,
    LOGINING,
    LOGIN_OK,
    LOGIN_INNER_FAILED,
    LOGIN_AUTH_FAILED,
    LOGIN_OUT,
    LOCAL_LOGIN_SUCCESS,
    LOCAL_LOGIN_MSG_SERVICE,
    PC_ONLINE,
    PC_OFFLINE,
    KICK_PC_SUCCESS,
    KICK_PC_FAILED,
    KICK_OUT
}
