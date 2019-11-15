package com.ifengyu.im.imservice.network.http.entity;

import java.util.List;

public class MsgServerAddrsEntity {
    private List<AsInfoListBean> as_info_list;
    private int code;
    private String discovery;
    private String msfsBackup;
    private String msfsPrior;
    private String msg;

    public static class AsInfoListBean {
        private String backupIP;
        private int id;
        private int port;
        private String priorIP;

        public String getBackupIP() {
            return this.backupIP;
        }

        public void setBackupIP(String str) {
            this.backupIP = str;
        }

        public int getId() {
            return this.id;
        }

        public void setId(int i) {
            this.id = i;
        }

        public int getPort() {
            return this.port;
        }

        public void setPort(int i) {
            this.port = i;
        }

        public String getPriorIP() {
            return this.priorIP;
        }

        public void setPriorIP(String str) {
            this.priorIP = str;
        }

        public String toString() {
            return "AsInfoListBean{backupIP='" + this.backupIP + '\'' + ", id=" + this.id + ", port=" + this.port + ", priorIP='" + this.priorIP + '\'' + '}';
        }
    }

    public int getCode() {
        return this.code;
    }

    public void setCode(int i) {
        this.code = i;
    }

    public String getDiscovery() {
        return this.discovery;
    }

    public void setDiscovery(String str) {
        this.discovery = str;
    }

    public String getMsfsBackup() {
        return this.msfsBackup;
    }

    public void setMsfsBackup(String str) {
        this.msfsBackup = str;
    }

    public String getMsfsPrior() {
        return this.msfsPrior;
    }

    public void setMsfsPrior(String str) {
        this.msfsPrior = str;
    }

    public String getMsg() {
        return this.msg;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public List<AsInfoListBean> getAs_info_list() {
        return this.as_info_list;
    }

    public void setAs_info_list(List<AsInfoListBean> list) {
        this.as_info_list = list;
    }

    public String toString() {
        return "MsgServerAddrsEntity{code=" + this.code + ", discovery='" + this.discovery + '\'' + ", msfsBackup='" + this.msfsBackup + '\'' + ", msfsPrior='" + this.msfsPrior + '\'' + ", msg='" + this.msg + '\'' + ", as_info_list=" + this.as_info_list + '}';
    }
}
