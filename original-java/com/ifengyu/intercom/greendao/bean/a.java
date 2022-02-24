package com.ifengyu.intercom.greendao.bean;

/* compiled from: TileDownloadState.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private Long f5284a;

    /* renamed from: b  reason: collision with root package name */
    private Double f5285b;

    /* renamed from: c  reason: collision with root package name */
    private Double f5286c;
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

    public a(Long l, Double d, Double d2, Double d3, Double d4, Integer num, Integer num2, Integer num3, Integer num4, String str, String str2, Integer num5, Boolean bool) {
        this.f5284a = l;
        this.f5285b = d;
        this.f5286c = d2;
        this.d = d3;
        this.e = d4;
        this.f = num;
        this.g = num2;
        this.h = num3;
        this.i = num4;
        this.j = str;
        this.k = str2;
        this.l = num5;
        this.m = bool;
    }

    public void a(Long l) {
        this.f5284a = l;
    }

    public void b(Double d) {
        this.f5285b = d;
    }

    public void c(Double d) {
        this.e = d;
    }

    public Long d() {
        return this.f5284a;
    }

    public void e(Integer num) {
        this.f = num;
    }

    public Double f() {
        return this.d;
    }

    public Double g() {
        return this.f5285b;
    }

    public Double h() {
        return this.e;
    }

    public Double i() {
        return this.f5286c;
    }

    public Integer j() {
        return this.l;
    }

    public String k() {
        return this.j;
    }

    public Integer l() {
        return this.h;
    }

    public Integer m() {
        return this.f;
    }

    public String toString() {
        return "TileDownloadState{id=" + this.f5284a + ", latitudeTopLeft=" + this.f5285b + ", longitudeTopLeft=" + this.f5286c + ", latitudeBottomRight=" + this.d + ", longitudeBottomRight=" + this.e + ", zoomLevel=" + this.f + ", all=" + this.g + ", sucess=" + this.h + ", failure=" + this.i + ", size='" + this.j + "', dirName='" + this.k + "', mapType=" + this.l + ", isDownloading=" + this.m + '}';
    }

    public void a(Double d) {
        this.d = d;
    }

    public void b(Integer num) {
        this.i = num;
    }

    public Integer c() {
        return this.i;
    }

    public void d(Double d) {
        this.f5286c = d;
    }

    public Boolean e() {
        return this.m;
    }

    public Integer a() {
        return this.g;
    }

    public void b(String str) {
        this.j = str;
    }

    public void c(Integer num) {
        this.l = num;
    }

    public void d(Integer num) {
        this.h = num;
    }

    public void a(Integer num) {
        this.g = num;
    }

    public String b() {
        return this.k;
    }

    public void a(String str) {
        this.k = str;
    }

    public void a(Boolean bool) {
        this.m = bool;
    }

    public a() {
    }
}
