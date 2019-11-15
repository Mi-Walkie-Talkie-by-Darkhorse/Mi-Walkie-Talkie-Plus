package com.ifengyu.intercom.greendao.bean;

/* compiled from: TileDownloadState */
public class a {
    private Long a;
    private Double b;
    private Double c;
    private Double d;
    private Double e;
    private Integer f;
    private Integer g;
    private Integer h;
    private Integer i;
    private String j;
    private String k;
    private Integer l;
    private Boolean m;

    public a(Long l2, Double d2, Double d3, Double d4, Double d5, Integer num, Integer num2, Integer num3, Integer num4, String str, String str2, Integer num5, Boolean bool) {
        this.a = l2;
        this.b = d2;
        this.c = d3;
        this.d = d4;
        this.e = d5;
        this.f = num;
        this.g = num2;
        this.h = num3;
        this.i = num4;
        this.j = str;
        this.k = str2;
        this.l = num5;
        this.m = bool;
    }

    public a() {
    }

    public Long a() {
        return this.a;
    }

    public void a(Long l2) {
        this.a = l2;
    }

    public Double b() {
        return this.b;
    }

    public void a(Double d2) {
        this.b = d2;
    }

    public Double c() {
        return this.c;
    }

    public void b(Double d2) {
        this.c = d2;
    }

    public Double d() {
        return this.d;
    }

    public void c(Double d2) {
        this.d = d2;
    }

    public Double e() {
        return this.e;
    }

    public void d(Double d2) {
        this.e = d2;
    }

    public Integer f() {
        return this.f;
    }

    public void a(Integer num) {
        this.f = num;
    }

    public Integer g() {
        return this.g;
    }

    public void b(Integer num) {
        this.g = num;
    }

    public Integer h() {
        return this.h;
    }

    public void c(Integer num) {
        this.h = num;
    }

    public Integer i() {
        return this.i;
    }

    public void d(Integer num) {
        this.i = num;
    }

    public String j() {
        return this.j;
    }

    public void a(String str) {
        this.j = str;
    }

    public String k() {
        return this.k;
    }

    public void b(String str) {
        this.k = str;
    }

    public Integer l() {
        return this.l;
    }

    public void e(Integer num) {
        this.l = num;
    }

    public Boolean m() {
        return this.m;
    }

    public void a(Boolean bool) {
        this.m = bool;
    }

    public String toString() {
        return "TileDownloadState{id=" + this.a + ", latitudeTopLeft=" + this.b + ", longitudeTopLeft=" + this.c + ", latitudeBottomRight=" + this.d + ", longitudeBottomRight=" + this.e + ", zoomLevel=" + this.f + ", all=" + this.g + ", sucess=" + this.h + ", failure=" + this.i + ", size='" + this.j + '\'' + ", dirName='" + this.k + '\'' + ", mapType=" + this.l + ", isDownloading=" + this.m + '}';
    }
}
