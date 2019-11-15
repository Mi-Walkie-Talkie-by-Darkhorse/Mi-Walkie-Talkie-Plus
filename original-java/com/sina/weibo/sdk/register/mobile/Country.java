package com.sina.weibo.sdk.register.mobile;

import android.text.TextUtils;
import java.io.Serializable;

public class Country implements Serializable, Comparable<Country> {
    private static final long serialVersionUID = 0;
    private String a;
    private String b;
    private String c;
    private String[] d;

    public Country() {
    }

    public Country(String str, String str2) {
        this.a = str;
        this.c = str2;
    }

    public String a() {
        return this.a;
    }

    public void a(String[] strArr) {
        this.d = strArr;
    }

    public String b() {
        return a.a().a(this.a).toLowerCase();
    }

    public String c() {
        return this.c;
    }

    /* renamed from: a */
    public int compareTo(Country country) {
        if (TextUtils.isEmpty(this.b)) {
            return -1;
        }
        if (country == null || TextUtils.isEmpty(country.b)) {
            return 1;
        }
        return this.b.compareTo(country.b);
    }

    public void a(String str) {
        this.c = str;
    }

    public void b(String str) {
        this.a = str;
    }
}
