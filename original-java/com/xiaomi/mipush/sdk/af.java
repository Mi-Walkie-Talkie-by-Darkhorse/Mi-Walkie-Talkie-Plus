package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class af {

    /* renamed from: a  reason: collision with root package name */
    private static volatile af f8681a;

    /* renamed from: a  reason: collision with other field name */
    private Context f38a;

    /* renamed from: a  reason: collision with other field name */
    private List<x> f39a = new ArrayList();

    private af(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f38a = applicationContext;
        if (applicationContext == null) {
            this.f38a = context;
        }
    }

    public static af a(Context context) {
        if (f8681a == null) {
            synchronized (af.class) {
                if (f8681a == null) {
                    f8681a = new af(context);
                }
            }
        }
        return f8681a;
    }

    public int a(String str) {
        synchronized (this.f39a) {
            x xVar = new x();
            xVar.f78a = str;
            if (this.f39a.contains(xVar)) {
                for (x xVar2 : this.f39a) {
                    if (xVar2.equals(xVar)) {
                        return xVar2.f8727a;
                    }
                }
            }
            return 0;
        }
    }

    public synchronized String a(au auVar) {
        return this.f38a.getSharedPreferences("mipush_extra", 0).getString(auVar.name(), "");
    }

    public synchronized void a(au auVar, String str) {
        SharedPreferences sharedPreferences = this.f38a.getSharedPreferences("mipush_extra", 0);
        sharedPreferences.edit().putString(auVar.name(), str).commit();
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m18a(String str) {
        synchronized (this.f39a) {
            x xVar = new x();
            xVar.f8727a = 0;
            xVar.f78a = str;
            if (this.f39a.contains(xVar)) {
                this.f39a.remove(xVar);
            }
            this.f39a.add(xVar);
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m19a(String str) {
        synchronized (this.f39a) {
            x xVar = new x();
            xVar.f78a = str;
            return this.f39a.contains(xVar);
        }
    }

    public void b(String str) {
        synchronized (this.f39a) {
            x xVar = new x();
            xVar.f78a = str;
            if (this.f39a.contains(xVar)) {
                Iterator<x> it = this.f39a.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    x next = it.next();
                    if (xVar.equals(next)) {
                        xVar = next;
                        break;
                    }
                }
            }
            xVar.f8727a++;
            this.f39a.remove(xVar);
            this.f39a.add(xVar);
        }
    }

    public void c(String str) {
        synchronized (this.f39a) {
            x xVar = new x();
            xVar.f78a = str;
            if (this.f39a.contains(xVar)) {
                this.f39a.remove(xVar);
            }
        }
    }
}
