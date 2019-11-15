package com.amap.api.mapcore.util;

/* compiled from: CityStateImp */
public abstract class bq {
    protected int a;
    protected am b;

    public abstract void c();

    public bq(int i, am amVar) {
        this.a = i;
        this.b = amVar;
    }

    public int b() {
        return this.a;
    }

    public boolean a(bq bqVar) {
        return bqVar.b() == b();
    }

    public void b(bq bqVar) {
        bk.a(b() + " ==> " + bqVar.b() + "   " + getClass() + "==>" + bqVar.getClass());
    }

    public void d() {
        bk.a("Wrong call start()  State: " + b() + "  " + getClass());
    }

    public void e() {
        bk.a("Wrong call continueDownload()  State: " + b() + "  " + getClass());
    }

    public void f() {
        bk.a("Wrong call pause()  State: " + b() + "  " + getClass());
    }

    public void a() {
        bk.a("Wrong call delete()  State: " + b() + "  " + getClass());
    }

    public void a(int i) {
        bk.a("Wrong call fail()  State: " + b() + "  " + getClass());
    }

    public void g() {
        bk.a("Wrong call hasNew()  State: " + b() + "  " + getClass());
    }

    public void h() {
        bk.a("Wrong call complete()  State: " + b() + "  " + getClass());
    }
}
