package com.amap.api.mapcore.util;

@gm(a = "update_item")
/* compiled from: DTInfo */
public class ba {
    @gn(a = "title", b = 6)
    protected String a = null;
    @gn(a = "url", b = 6)
    protected String b = null;
    @gn(a = "mAdcode", b = 6)
    protected String c = null;
    @gn(a = "fileName", b = 6)
    protected String d = null;
    @gn(a = "version", b = 6)
    protected String e = "";
    @gn(a = "lLocalLength", b = 5)
    protected long f = 0;
    @gn(a = "lRemoteLength", b = 5)
    protected long g = 0;
    @gn(a = "localPath", b = 6)
    protected String h;
    @gn(a = "isProvince", b = 2)
    protected int i = 0;
    @gn(a = "mCompleteCode", b = 2)
    protected int j;
    @gn(a = "mCityCode", b = 6)
    protected String k = "";
    @gn(a = "mState", b = 2)
    public int l;
    @gn(a = "mPinyin", b = 6)
    public String m = "";

    public String d() {
        return this.a;
    }

    public String e() {
        return this.e;
    }

    public String f() {
        return this.c;
    }

    public void c(String str) {
        this.c = str;
    }

    public int g() {
        return this.j;
    }

    public void d(String str) {
        this.k = str;
    }

    public String h() {
        return this.m;
    }

    public static String e(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("mAdcode");
        sb.append("='");
        sb.append(str);
        sb.append("'");
        return sb.toString();
    }

    public static String f(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("mPinyin");
        sb.append("='");
        sb.append(str);
        sb.append("'");
        return sb.toString();
    }
}
