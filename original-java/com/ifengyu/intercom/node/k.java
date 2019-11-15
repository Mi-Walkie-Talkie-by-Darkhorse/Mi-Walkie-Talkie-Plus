package com.ifengyu.intercom.node;

import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.node.i.a;
import com.ifengyu.intercom.protos.MitalkProtos.Command;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* compiled from: NodeService */
public class k implements h {
    private static k a = null;
    private volatile boolean b = false;
    private Set<a> c = new HashSet();

    private k() {
    }

    public static k a() {
        if (a == null) {
            a = new k();
        }
        return a;
    }

    public void a(j jVar) {
        s.a("NodeService", "onDeviceConnected");
        this.b = true;
        for (a b2 : this.c) {
            b2.b(jVar.a());
        }
        MiTalkiApp.a().a(true);
        MiTalkiApp.a().b(true);
    }

    public void a(String str) {
        s.a("NodeService", "onDeviceDisConnected");
        this.b = false;
        for (a c2 : this.c) {
            c2.c(str);
        }
    }

    public void b(String str) {
        s.a("NodeService", "onDeviceConnConfrimRequest");
        for (a a2 : this.c) {
            a2.a(str);
        }
    }

    public void a(String str, ConnectionFailedReason connectionFailedReason) {
        s.a("NodeService", "onDeviceConnectFailed");
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            switch (connectionFailedReason) {
                case DENIED:
                    ((a) it.next()).d(str);
                    break;
                case VERSION_NOT_SUPPORT:
                    ((a) it.next()).e(str);
                    break;
                case LOWPOWER:
                    ((a) it.next()).f(str);
                    break;
            }
        }
    }

    public void a(String str, Command command) {
    }

    public void a(String str, m mVar) {
    }

    public void a(String str, n nVar) {
    }

    public void b(int i) {
    }

    public void a(String str, c cVar) {
    }

    public boolean b() {
        return this.b;
    }

    public void a(a aVar) {
        this.c.add(com.ifengyu.intercom.b.k.a(aVar));
    }

    public void b(a aVar) {
        this.c.remove(com.ifengyu.intercom.b.k.a(aVar));
    }
}
