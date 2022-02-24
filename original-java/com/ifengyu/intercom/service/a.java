package com.ifengyu.intercom.service;

import android.content.Context;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.node.e;
import com.ifengyu.intercom.node.j;
import com.ifengyu.intercom.node.p;
import com.ifengyu.intercom.node.q.d;

/* compiled from: WalkTalkInitializer.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f5986a = "a";

    /* renamed from: b  reason: collision with root package name */
    private static boolean f5987b = false;

    /* renamed from: c  reason: collision with root package name */
    private static p f5988c;
    private static d d;

    public static synchronized d a() {
        d dVar;
        synchronized (a.class) {
            dVar = d;
        }
        return dVar;
    }

    public static synchronized p b() {
        p pVar;
        synchronized (a.class) {
            pVar = f5988c;
        }
        return pVar;
    }

    public static synchronized boolean a(Context context) {
        synchronized (a.class) {
            if (f5987b) {
                z.d(f5986a, "Attempted to re-initialize walktalk statics, ignoring");
                return true;
            }
            f5988c = new p(context);
            d.a(context);
            d = d.c();
            j b2 = j.b();
            e d2 = e.d();
            com.ifengyu.intercom.h.a a2 = com.ifengyu.intercom.h.a.a();
            f5988c.a(d2);
            f5988c.a(a2);
            f5988c.a(b2);
            d.a(f5988c);
            f5987b = true;
            return true;
        }
    }
}
