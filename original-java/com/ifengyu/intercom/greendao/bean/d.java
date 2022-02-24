package com.ifengyu.intercom.greendao.bean;

/* compiled from: UserLocation.java */
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private Long f5293a;

    /* renamed from: b  reason: collision with root package name */
    private Integer f5294b;

    /* renamed from: c  reason: collision with root package name */
    private String f5295c;
    private String d;
    private Integer e;
    private Integer f;
    private Integer g;
    private Integer h;
    private Integer i;
    private Integer j;
    private Integer k;

    public d(Long l, Integer num, String str, String str2, Integer num2, Integer num3, Integer num4, Integer num5, Integer num6, Integer num7, Integer num8) {
        this.f5293a = l;
        this.f5294b = num;
        this.f5295c = str;
        this.d = str2;
        this.e = num2;
        this.f = num3;
        this.g = num4;
        this.h = num5;
        this.i = num6;
        this.j = num7;
        this.k = num8;
    }

    public void a(Long l) {
        this.f5293a = l;
    }

    public void b(String str) {
        this.f5295c = str;
    }

    public Integer c() {
        return this.k;
    }

    public Long d() {
        return this.f5293a;
    }

    public String e() {
        return this.d;
    }

    public Integer f() {
        return this.f;
    }

    public Integer g() {
        return this.e;
    }

    public void h(Integer num) {
        this.f5294b = num;
    }

    public Integer i() {
        return this.j;
    }

    public Integer j() {
        return this.h;
    }

    public Integer k() {
        return this.f5294b;
    }

    public String toString() {
        return "UserLocation{id=" + this.f5293a + ", userid=" + this.f5294b + ", name='" + this.f5295c + "', imgurl='" + this.d + "', longitude=" + this.e + ", latitude=" + this.f + ", altitude=" + this.g + ", time=" + this.h + ", freq=" + this.i + ", rxCss=" + this.j + ", fromDevType=" + this.k + '}';
    }

    public void a(String str) {
        this.d = str;
    }

    public Integer b() {
        return this.i;
    }

    public void c(Integer num) {
        this.k = num;
    }

    public void d(Integer num) {
        this.f = num;
    }

    public void e(Integer num) {
        this.e = num;
    }

    public void f(Integer num) {
        this.j = num;
    }

    public void g(Integer num) {
        this.h = num;
    }

    public String h() {
        return this.f5295c;
    }

    public Integer a() {
        return this.g;
    }

    public void b(Integer num) {
        this.i = num;
    }

    public void a(Integer num) {
        this.g = num;
    }

    public d() {
    }
}
