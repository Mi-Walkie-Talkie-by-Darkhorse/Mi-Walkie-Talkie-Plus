package com.xiaomi.push;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.bk;
import com.xiaomi.push.jx;
import com.xiaomi.push.service.XMPushService;
import com.xiaomi.push.service.bs;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.NoSuchElementException;

/* loaded from: classes2.dex */
public class fu {

    /* renamed from: a  reason: collision with root package name */
    private int f8964a;

    /* renamed from: a  reason: collision with other field name */
    private long f384a;

    /* renamed from: a  reason: collision with other field name */
    private ft f386a;

    /* renamed from: a  reason: collision with other field name */
    private String f387a;

    /* renamed from: a  reason: collision with other field name */
    private boolean f388a = false;

    /* renamed from: a  reason: collision with other field name */
    private bk f385a = bk.a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        static final fu f8965a = new fu();
    }

    private fn a(bk.a aVar) {
        if (aVar.f132a == 0) {
            Object obj = aVar.f133a;
            if (obj instanceof fn) {
                return (fn) obj;
            }
            return null;
        }
        fn a2 = m286a();
        a2.a(fm.CHANNEL_STATS_COUNTER.a());
        a2.c(aVar.f132a);
        a2.c(aVar.f134a);
        return a2;
    }

    private fo a(int i) {
        ArrayList arrayList = new ArrayList();
        fo foVar = new fo(this.f387a, arrayList);
        if (!bi.e(this.f386a.f381a)) {
            foVar.a(i.k(this.f386a.f381a));
        }
        jz jzVar = new jz(i);
        jr a2 = new jx.a().a(jzVar);
        try {
            foVar.b(a2);
        } catch (jl unused) {
        }
        LinkedList<bk.a> a3 = this.f385a.m101a();
        while (a3.size() > 0) {
            try {
                fn a4 = a(a3.getLast());
                if (a4 != null) {
                    a4.b(a2);
                }
                if (jzVar.a_() > i) {
                    break;
                }
                if (a4 != null) {
                    arrayList.add(a4);
                }
                a3.removeLast();
            } catch (jl | NoSuchElementException unused2) {
            }
        }
        return foVar;
    }

    public static ft a() {
        ft ftVar;
        synchronized (a.f8965a) {
            ftVar = a.f8965a.f386a;
        }
        return ftVar;
    }

    /* renamed from: a  reason: collision with other method in class */
    public static fu m284a() {
        return a.f8965a;
    }

    /* renamed from: a  reason: collision with other method in class */
    private void m285a() {
        if (this.f388a && System.currentTimeMillis() - this.f384a > this.f8964a) {
            this.f388a = false;
            this.f384a = 0L;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a  reason: collision with other method in class */
    public synchronized fn m286a() {
        fn fnVar;
        fnVar = new fn();
        fnVar.a(bi.m94a((Context) this.f386a.f381a));
        fnVar.f358a = (byte) 0;
        fnVar.f362b = 1;
        fnVar.d((int) (System.currentTimeMillis() / 1000));
        return fnVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a  reason: collision with other method in class */
    public synchronized fo m287a() {
        fo foVar;
        foVar = null;
        if (b()) {
            int i = 750;
            if (!bi.e(this.f386a.f381a)) {
                i = 375;
            }
            foVar = a(i);
        }
        return foVar;
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m288a(int i) {
        if (i > 0) {
            int i2 = i * 1000;
            if (i2 > 604800000) {
                i2 = 604800000;
            }
            if (this.f8964a != i2 || !this.f388a) {
                this.f388a = true;
                this.f384a = System.currentTimeMillis();
                this.f8964a = i2;
                b.c("enable dot duration = " + i2 + " start = " + this.f384a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void a(fn fnVar) {
        this.f385a.a(fnVar);
    }

    public synchronized void a(XMPushService xMPushService) {
        this.f386a = new ft(xMPushService);
        this.f387a = "";
        bs.a().a(new fv(this));
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m289a() {
        return this.f388a;
    }

    boolean b() {
        m285a();
        return this.f388a && this.f385a.m100a() > 0;
    }
}
