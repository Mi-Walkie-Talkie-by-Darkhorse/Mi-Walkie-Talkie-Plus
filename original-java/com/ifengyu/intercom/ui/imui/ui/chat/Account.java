package com.ifengyu.intercom.ui.imui.ui.chat;

public class Account {
    private static Account instance = new Account();
    private String guid;
    private String token;

    private Account() {
    }

    public static Account getInstance() {
        return instance;
    }

    public void setGuid(String str) {
        this.guid = str;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public String getGuid() {
        return this.guid;
    }

    public String getToken() {
        return this.token;
    }
}
