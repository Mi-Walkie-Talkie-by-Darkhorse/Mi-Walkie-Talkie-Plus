package com.mi.milinkforgame.sdk.session;

import java.util.ArrayList;

public class OpenSessionSucessReturnInfo {
    private ArrayList<ServerProfile> backupServerList;
    private String clientIp;
    private String clientIsp;
    private ArrayList<ServerProfile> optmumServerList;

    public String getClientIp() {
        return this.clientIp;
    }

    public void setClientIp(String str) {
        this.clientIp = str;
    }

    public String getClientIsp() {
        return this.clientIsp;
    }

    public void setClientIsp(String str) {
        this.clientIsp = str;
    }

    public ArrayList<ServerProfile> getOptmumServerList() {
        return this.optmumServerList;
    }

    public void setOptmumServerList(ArrayList<ServerProfile> arrayList) {
        this.optmumServerList = arrayList;
    }

    public ArrayList<ServerProfile> getBackupServerList() {
        return this.backupServerList;
    }

    public void setBackupServerList(ArrayList<ServerProfile> arrayList) {
        this.backupServerList = arrayList;
    }

    public OpenSessionSucessReturnInfo(String str, String str2, ArrayList<ServerProfile> arrayList, ArrayList<ServerProfile> arrayList2) {
        this.clientIp = str;
        this.clientIsp = str2;
        this.optmumServerList = arrayList;
        this.backupServerList = arrayList2;
    }
}
