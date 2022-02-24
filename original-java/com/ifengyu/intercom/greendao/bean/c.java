package com.ifengyu.intercom.greendao.bean;

/* compiled from: TrackPoint.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private Long f5290a;

    /* renamed from: b  reason: collision with root package name */
    private String f5291b;

    /* renamed from: c  reason: collision with root package name */
    private Integer f5292c;
    private Integer d;
    private Integer e;
    private Integer f;
    private Integer g;
    private boolean h;

    public c(Long l, String str, Integer num, Integer num2, Integer num3, Integer num4, Integer num5, boolean z) {
        this.f5290a = l;
        this.f5291b = str;
        this.f5292c = num;
        this.d = num2;
        this.e = num3;
        this.f = num4;
        this.g = num5;
        this.h = z;
    }

    public void a(Long l) {
        this.f5290a = l;
    }

    public Integer b() {
        return this.f;
    }

    public Integer c() {
        return this.g;
    }

    public Long d() {
        return this.f5290a;
    }

    public void e(Integer num) {
        this.d = num;
    }

    public Integer f() {
        return this.f5292c;
    }

    public Integer g() {
        return this.d;
    }

    public String h() {
        return this.f5291b;
    }

    public String toString() {
        return "TrackPoint{id=" + this.f5290a + ", trackID='" + this.f5291b + "', latitude=" + this.f5292c + ", longitude=" + this.d + ", altitude=" + this.e + ", currentDistance=" + this.f + ", currentTime=" + this.g + ", isPausedPoint=" + this.h + '}';
    }

    public void a(String str) {
        this.f5291b = str;
    }

    public void b(Integer num) {
        this.f = num;
    }

    public void c(Integer num) {
        this.g = num;
    }

    public void d(Integer num) {
        this.f5292c = num;
    }

    public boolean e() {
        return this.h;
    }

    public Integer a() {
        return this.e;
    }

    public void a(Integer num) {
        this.e = num;
    }

    public void a(boolean z) {
        this.h = z;
    }

    public c() {
    }
}
