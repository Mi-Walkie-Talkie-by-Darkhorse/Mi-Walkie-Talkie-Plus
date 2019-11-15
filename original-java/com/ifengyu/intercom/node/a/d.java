package com.ifengyu.intercom.node.a;

import android.content.Context;
import android.content.Intent;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.node.ConnectionConfiguration;
import com.ifengyu.intercom.node.btle.BtleCentralService;
import com.ifengyu.intercom.node.q;

/* compiled from: ConnectionServiceManager */
public class d {
    private static final String f = d.class.getSimpleName();
    private static d g;
    public boolean a;
    public final Object b = new Object();
    public final Context c;
    public final a d;
    public q e;

    private d(Context context) {
        this.c = context;
        this.d = new a(b.a(context));
    }

    public static synchronized void a(Context context) {
        synchronized (d.class) {
            if (g != null) {
                s.d(f, "already been initialized!");
            } else {
                g = new d(context);
            }
        }
    }

    public static d a() {
        return g;
    }

    public void a(q qVar) {
        this.e = qVar;
    }

    public void b() {
        synchronized (this.b) {
            if (!this.a) {
                this.a = true;
                c();
            }
        }
    }

    public void c() {
        if (this.a) {
            this.c.stopService(new Intent(this.c, BtleCentralService.class));
            for (ConnectionConfiguration connectionConfiguration : this.d.a()) {
                if (s.b()) {
                    s.b(f, "trying to starting conn service for " + connectionConfiguration);
                }
                if (connectionConfiguration.d()) {
                    this.c.startService(a(connectionConfiguration));
                }
            }
        }
    }

    public Intent a(ConnectionConfiguration connectionConfiguration) {
        Intent intent = new Intent(this.c, BtleCentralService.class);
        intent.putExtra("connection_config", connectionConfiguration);
        s.a(f, "getIntent() " + intent);
        return intent;
    }

    public void b(ConnectionConfiguration connectionConfiguration) {
        if (s.b()) {
            s.b(f, "trying to starting conn service for: " + connectionConfiguration.toString());
        }
        synchronized (this.b) {
            if (this.a && connectionConfiguration.d()) {
                this.c.startService(a(connectionConfiguration));
            }
        }
    }

    public void a(String str, boolean z) {
        int i;
        ConnectionConfiguration a2 = this.d.a(str);
        if (a2 != null) {
            if (z) {
                i = 1;
            } else {
                i = 2;
            }
            this.c.startService(a(a2).putExtra("ble_priority", i));
            return;
        }
        s.b(f, "requestConnectionPrio: null btAddress, ignore.");
    }

    public void a(String str) {
        if (str != null) {
            ConnectionConfiguration c2 = c(str);
            if (c2 == null) {
                s.b(f, "didn't remove any config, skipping update");
                return;
            }
            c2.a(false);
            c2.b(false);
            c(c2);
            this.c.startService(a(c2).putExtra("connection_remove", true));
        }
    }

    public void b(String str, boolean z) {
        if (str != null) {
            ConnectionConfiguration c2 = c(str);
            if (c2 == null) {
                s.c(f, "didn't remove any config, skipping update");
                return;
            }
            c2.a(false);
            c2.b(false);
            c(c2);
            Intent intent = new Intent(this.c, BtleCentralService.class);
            intent.putExtra("connection_config", c2);
            intent.putExtra("connection_remove", true);
            intent.putExtra("notReConn", z);
            this.c.startService(intent);
        }
    }

    public void b(String str) {
        this.d.b(str);
    }

    public void c(ConnectionConfiguration connectionConfiguration) {
        this.d.a(connectionConfiguration);
    }

    public ConnectionConfiguration c(String str) {
        return this.d.a(str);
    }
}
