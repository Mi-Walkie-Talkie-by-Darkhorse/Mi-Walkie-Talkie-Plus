package com.ifengyu.intercom.greendao.bean;

/* compiled from: TrackPoint */
public class c {
    private Long a;
    private String b;
    private Integer c;
    private Integer d;
    private Integer e;
    private Integer f;
    private Integer g;
    private boolean h;

    public c(Long l, String str, Integer num, Integer num2, Integer num3, Integer num4, Integer num5, boolean z) {
        this.a = l;
        this.b = str;
        this.c = num;
        this.d = num2;
        this.e = num3;
        this.f = num4;
        this.g = num5;
        this.h = z;
    }

    public c() {
    }

    public Long a() {
        return this.a;
    }

    public void a(Long l) {
        this.a = l;
    }

    public String b() {
        return this.b;
    }

    public void a(String str) {
        this.b = str;
    }

    public Integer c() {
        return this.c;
    }

    public void a(Integer num) {
        this.c = num;
    }

    public Integer d() {
        return this.d;
    }

    public void b(Integer num) {
        this.d = num;
    }

    public Integer e() {
        return this.e;
    }

    public void c(Integer num) {
        this.e = num;
    }

    public Integer f() {
        return this.f;
    }

    public void d(Integer num) {
        this.f = num;
    }

    public Integer g() {
        return this.g;
    }

    public void e(Integer num) {
        this.g = num;
    }

    public boolean h() {
        return this.h;
    }

    public void a(boolean z) {
        this.h = z;
    }

    public String toString() {
        return "TrackPoint{id=" + this.a + ", trackID='" + this.b + '\'' + ", latitude=" + this.c + ", longitude=" + this.d + ", altitude=" + this.e + ", currentDistance=" + this.f + ", currentTime=" + this.g + ", isPausedPoint=" + this.h + '}';
    }
}
