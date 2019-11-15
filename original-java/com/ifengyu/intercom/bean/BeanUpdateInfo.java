package com.ifengyu.intercom.bean;

public class BeanUpdateInfo {
    private String apkUpdateInfo;
    private String apkUrl;
    private int apkVersionCode;
    private String apkVersionName;
    private String bleUrl;
    private int bleVersionCode;
    private String mcuUpdateInfo;
    private String mcuUrl;
    private int mcuVersionCode;
    private String mcuVersionName;
    private String mitalkiKey;
    private String mitalkiUpdateInfo;
    private String mitalkiVersionName;

    public String getMcuVersionName() {
        return this.mcuVersionName;
    }

    public String getMcuUpdateInfo() {
        return this.mcuUpdateInfo;
    }

    public void setMcuVersionName(String str) {
        this.mcuVersionName = str;
    }

    public void setMcuUpdateInfo(String str) {
        this.mcuUpdateInfo = str;
    }

    public void setMitalkiKey(String str) {
        this.mitalkiKey = str;
    }

    public void setApkVersionCode(int i) {
        this.apkVersionCode = i;
    }

    public void setApkVersionName(String str) {
        this.apkVersionName = str;
    }

    public void setApkUpdateInfo(String str) {
        this.apkUpdateInfo = str;
    }

    public void setApkUrl(String str) {
        this.apkUrl = str;
    }

    public void setMcuVersionCode(int i) {
        this.mcuVersionCode = i;
    }

    public void setMcuUrl(String str) {
        this.mcuUrl = str;
    }

    public void setBleVersionCode(int i) {
        this.bleVersionCode = i;
    }

    public void setBleUrl(String str) {
        this.bleUrl = str;
    }

    public void setMitalkiVersionName(String str) {
        this.mitalkiVersionName = str;
    }

    public void setMitalkiUpdateInfo(String str) {
        this.mitalkiUpdateInfo = str;
    }

    public String getMitalkiKey() {
        return this.mitalkiKey;
    }

    public int getApkVersionCode() {
        return this.apkVersionCode;
    }

    public String getApkVersionName() {
        return this.apkVersionName;
    }

    public String getApkUpdateInfo() {
        return this.apkUpdateInfo;
    }

    public String getApkUrl() {
        return this.apkUrl;
    }

    public int getMcuVersionCode() {
        return this.mcuVersionCode;
    }

    public String getMcuUrl() {
        return this.mcuUrl;
    }

    public int getBleVersionCode() {
        return this.bleVersionCode;
    }

    public String getBleUrl() {
        return this.bleUrl;
    }

    public String getMitalkiVersionName() {
        return this.mitalkiVersionName;
    }

    public String getMitalkiUpdateInfo() {
        return this.mitalkiUpdateInfo;
    }
}
