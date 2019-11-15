package com.amap.api.services.core;

public class SuggestionCity {
    private String a;
    private String b;
    private String c;
    private int d;

    protected SuggestionCity() {
    }

    public SuggestionCity(String str, String str2, String str3, int i) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = i;
    }

    public String getCityName() {
        return this.a;
    }

    public void setCityName(String str) {
        this.a = str;
    }

    public String getCityCode() {
        return this.b;
    }

    public void setCityCode(String str) {
        this.b = str;
    }

    public String getAdCode() {
        return this.c;
    }

    public void setAdCode(String str) {
        this.c = str;
    }

    public int getSuggestionNum() {
        return this.d;
    }

    public void setSuggestionNum(int i) {
        this.d = i;
    }
}
