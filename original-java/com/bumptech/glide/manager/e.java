package com.bumptech.glide.manager;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.bumptech.glide.manager.c.a;

/* compiled from: DefaultConnectivityMonitor */
class e implements c {
    final a a;
    boolean b;
    private final Context c;
    private boolean d;
    private final BroadcastReceiver e = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            boolean z = e.this.b;
            e.this.b = e.this.a(context);
            if (z != e.this.b) {
                e.this.a.a(e.this.b);
            }
        }
    };

    public e(Context context, a aVar) {
        this.c = context.getApplicationContext();
        this.a = aVar;
    }

    private void a() {
        if (!this.d) {
            this.b = a(this.c);
            this.c.registerReceiver(this.e, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            this.d = true;
        }
    }

    private void b() {
        if (this.d) {
            this.c.unregisterReceiver(this.e);
            this.d = false;
        }
    }

    /* access modifiers changed from: 0000 */
    public boolean a(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    public void c() {
        a();
    }

    public void d() {
        b();
    }

    public void e() {
    }
}
