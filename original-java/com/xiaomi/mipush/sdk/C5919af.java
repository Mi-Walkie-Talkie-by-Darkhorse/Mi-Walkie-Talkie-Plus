package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.xiaomi.mipush.sdk.af */
/* loaded from: classes2.dex */
public class C5919af {

    /* renamed from: a */
    private static volatile C5919af f20882a;

    /* renamed from: a */
    private Context f20883a;

    /* renamed from: a */
    private List<C5964x> f20884a = new ArrayList();

    private C5919af(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f20883a = applicationContext;
        if (applicationContext == null) {
            this.f20883a = context;
        }
    }

    /* renamed from: a */
    public static C5919af m4028a(Context context) {
        if (f20882a == null) {
            synchronized (C5919af.class) {
                if (f20882a == null) {
                    f20882a = new C5919af(context);
                }
            }
        }
        return f20882a;
    }

    /* renamed from: a */
    public int m4025a(String str) {
        synchronized (this.f20884a) {
            C5964x c5964x = new C5964x();
            c5964x.f20981a = str;
            if (this.f20884a.contains(c5964x)) {
                for (C5964x c5964x2 : this.f20884a) {
                    if (c5964x2.equals(c5964x)) {
                        return c5964x2.f20980a;
                    }
                }
            }
            return 0;
        }
    }

    /* renamed from: a */
    public synchronized String m4027a(EnumC5935au enumC5935au) {
        return this.f20883a.getSharedPreferences("mipush_extra", 0).getString(enumC5935au.name(), "");
    }

    /* renamed from: a */
    public synchronized void m4026a(EnumC5935au enumC5935au, String str) {
        SharedPreferences sharedPreferences = this.f20883a.getSharedPreferences("mipush_extra", 0);
        sharedPreferences.edit().putString(enumC5935au.name(), str).commit();
    }

    /* renamed from: a */
    public void m4024a(String str) {
        synchronized (this.f20884a) {
            C5964x c5964x = new C5964x();
            c5964x.f20980a = 0;
            c5964x.f20981a = str;
            if (this.f20884a.contains(c5964x)) {
                this.f20884a.remove(c5964x);
            }
            this.f20884a.add(c5964x);
        }
    }

    /* renamed from: a */
    public boolean m4023a(String str) {
        synchronized (this.f20884a) {
            C5964x c5964x = new C5964x();
            c5964x.f20981a = str;
            return this.f20884a.contains(c5964x);
        }
    }

    /* renamed from: b */
    public void m4022b(String str) {
        synchronized (this.f20884a) {
            C5964x c5964x = new C5964x();
            c5964x.f20981a = str;
            if (this.f20884a.contains(c5964x)) {
                Iterator<C5964x> it2 = this.f20884a.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    C5964x next = it2.next();
                    if (c5964x.equals(next)) {
                        c5964x = next;
                        break;
                    }
                }
            }
            c5964x.f20980a++;
            this.f20884a.remove(c5964x);
            this.f20884a.add(c5964x);
        }
    }

    /* renamed from: c */
    public void m4021c(String str) {
        synchronized (this.f20884a) {
            C5964x c5964x = new C5964x();
            c5964x.f20981a = str;
            if (this.f20884a.contains(c5964x)) {
                this.f20884a.remove(c5964x);
            }
        }
    }
}
