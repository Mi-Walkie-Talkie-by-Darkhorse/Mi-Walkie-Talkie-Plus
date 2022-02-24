package com.ifengyu.intercom.node.q;

import android.content.Context;
import android.content.Intent;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.node.ConnectionConfiguration;
import com.ifengyu.intercom.node.btle.BtleCentralService;
import com.ifengyu.intercom.node.p;

/* compiled from: ConnectionServiceManager.java */
/* loaded from: classes2.dex */
public class d {
    private static final String f = "d";
    private static d g;

    /* renamed from: a  reason: collision with root package name */
    public boolean f5953a;

    /* renamed from: b  reason: collision with root package name */
    public final Object f5954b = new Object();

    /* renamed from: c  reason: collision with root package name */
    public final Context f5955c;
    public final a d;
    public p e;

    private d(Context context) {
        this.f5955c = context;
        this.d = new a(b.a(context));
    }

    public static synchronized void a(Context context) {
        synchronized (d.class) {
            if (g != null) {
                z.e(f, "already been initialized!");
            } else {
                g = new d(context);
            }
        }
    }

    public static d c() {
        return g;
    }

    public void b() {
        if (this.f5953a) {
            this.f5955c.stopService(new Intent(this.f5955c, BtleCentralService.class));
            for (ConnectionConfiguration connectionConfiguration : this.d.b()) {
                if (z.a()) {
                    String str = f;
                    z.a(str, "trying to starting conn service for " + connectionConfiguration);
                }
                if (connectionConfiguration.g() || connectionConfiguration.f()) {
                    int g2 = d0.g();
                    if (g2 == 1 || g2 == 5 || g2 == 4) {
                        if (d0.a(g2)) {
                            this.f5955c.startService(a(connectionConfiguration));
                        }
                    }
                }
            }
        }
    }

    public void c(ConnectionConfiguration connectionConfiguration) {
        if (z.a()) {
            String str = f;
            z.a(str, "trying to starting conn service for: " + connectionConfiguration.toString());
        }
        synchronized (this.f5954b) {
            if (this.f5953a && connectionConfiguration.g()) {
                this.f5955c.startService(a(connectionConfiguration));
            }
        }
    }

    public void a(p pVar) {
        this.e = pVar;
    }

    public void a() {
        synchronized (this.f5954b) {
            if (!this.f5953a) {
                this.f5953a = true;
                b();
            }
        }
    }

    public void c(String str) {
        if (str != null) {
            ConnectionConfiguration a2 = a(str);
            if (a2 == null) {
                z.a(f, "didn't remove any config, skipping update");
                return;
            }
            a2.a(false);
            a2.b(false);
            b(a2);
            this.f5955c.startService(a(a2).putExtra("connection_remove", true));
        }
    }

    public void b(String str, boolean z) {
        if (str != null) {
            ConnectionConfiguration a2 = a(str);
            if (a2 == null) {
                z.c(f, "didn't remove any config, skipping update");
                return;
            }
            a2.a(false);
            a2.b(false);
            b(a2);
            Intent intent = new Intent(this.f5955c, BtleCentralService.class);
            intent.putExtra("connection_config", a2);
            intent.putExtra("connection_remove", true);
            intent.putExtra("notReConn", z);
            this.f5955c.startService(intent);
        }
    }

    public Intent a(ConnectionConfiguration connectionConfiguration) {
        Intent intent = new Intent(this.f5955c, BtleCentralService.class);
        intent.putExtra("connection_config", connectionConfiguration);
        String str = f;
        z.d(str, "getIntent() " + intent);
        return intent;
    }

    public void a(String str, boolean z) {
        ConnectionConfiguration a2 = this.d.a(str);
        if (a2 != null) {
            this.f5955c.startService(a(a2).putExtra("ble_priority", z ? 1 : 2));
        } else {
            z.a(f, "requestConnectionPrio: null btAddress, ignore.");
        }
    }

    public ConnectionConfiguration a(String str) {
        return this.d.a(str);
    }

    public void b(String str) {
        this.d.b(str);
    }

    public void b(ConnectionConfiguration connectionConfiguration) {
        this.d.a(connectionConfiguration);
    }
}
