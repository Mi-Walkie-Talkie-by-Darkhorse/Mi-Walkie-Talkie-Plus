package com.sina.weibo.sdk.statistic;

import com.sina.weibo.sdk.utils.c;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: WBAgentHandler */
class i {
    private static i a;
    private static CopyOnWriteArrayList<f> b;
    private static Map<String, f> c;
    private static int d = 5;

    public static synchronized i a() {
        i iVar;
        synchronized (i.class) {
            if (a == null) {
                a = new i();
            }
            iVar = a;
        }
        return iVar;
    }

    private i() {
        b = new CopyOnWriteArrayList<>();
        c = new HashMap();
        c.b("WBAgent", "init handler");
    }

    public void a(String str, String str2, Map<String, String> map) {
        b bVar = new b(str, str2, map);
        bVar.a(LogType.EVENT);
        synchronized (b) {
            b.add(bVar);
        }
        if (map == null) {
            c.a("WBAgent", "event--- page:" + str + " ,event name:" + str2);
        } else {
            c.a("WBAgent", "event--- page:" + str + " ,event name:" + str2 + " ,extend:" + map.toString());
        }
        if (b.size() >= d) {
            synchronized (b) {
                a(b);
                b.clear();
            }
        }
    }

    private synchronized void a(CopyOnWriteArrayList<f> copyOnWriteArrayList) {
        final String a2 = c.a(copyOnWriteArrayList);
        h.a(new Runnable() {
            public void run() {
                d.a(d.a("app_logs"), a2, true);
            }
        });
    }
}
