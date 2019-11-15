package com.ksyun.ks3.model;

import java.util.Date;

/* compiled from: Part */
public class c {
    private int a;
    private Date b;
    private String c;
    private long d;

    public String toString() {
        return "Part[partNumber=" + this.a + ";lastModified=" + this.b + ";ETag=" + this.c + ";size=" + this.d + "]";
    }

    public int a() {
        return this.a;
    }

    public void a(int i) {
        this.a = i;
    }

    public void a(Date date) {
        this.b = date;
    }

    public String b() {
        return this.c;
    }

    public void a(String str) {
        this.c = str;
    }

    public void a(long j) {
        this.d = j;
    }
}
