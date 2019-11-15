package com.ifengyu.intercom.network;

import com.ifengyu.intercom.b.j;

/* compiled from: UrlAdd */
public class d {
    public static final boolean a = j.a();
    public static final String b = j.b();
    public static final String c = (a ? b : "https://api.ifengyu.com");
    public static final String d = j.c();
    public static final String e;
    public static final String f = (e + "/m/p/");
    public static final String g = (e + "/m/");
    public static final String h = (e + "/m/list/42?isShowComment=0");
    public static final String i = (e + "/fymanage/api/splash/?is_publish=1&limit=1");

    static {
        String str;
        if (a) {
            str = d;
        } else {
            str = "https://cms.ifengyu.com";
        }
        e = str;
    }
}
