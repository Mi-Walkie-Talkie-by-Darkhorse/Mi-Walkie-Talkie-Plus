package com.ifengyu.intercom.service;

import android.content.Context;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.node.a.d;
import com.ifengyu.intercom.node.f;
import com.ifengyu.intercom.node.h;
import com.ifengyu.intercom.node.k;
import com.ifengyu.intercom.node.q;

/* compiled from: WalkTalkInitializer */
public class a {
    private static final String a = a.class.getSimpleName();
    private static boolean b = false;
    private static q c;
    private static d d;

    public static synchronized q a() {
        q qVar;
        synchronized (a.class) {
            qVar = c;
        }
        return qVar;
    }

    public static synchronized d b() {
        d dVar;
        synchronized (a.class) {
            dVar = d;
        }
        return dVar;
    }

    public static synchronized boolean a(Context context) {
        synchronized (a.class) {
            if (b) {
                s.a(a, "Attempted to re-initialize walktalk statics, ignoring");
            } else {
                c = new q(context);
                d.a(context);
                d = d.a();
                k a2 = k.a();
                f a3 = f.a();
                com.ifengyu.intercom.update.a a4 = com.ifengyu.intercom.update.a.a();
                c.a((h) a3);
                c.a((h) a4);
                c.a((h) a2);
                d.a(c);
                b = true;
            }
        }
        return true;
    }
}
