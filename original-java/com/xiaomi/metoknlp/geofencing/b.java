package com.xiaomi.metoknlp.geofencing;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;
import com.xiaomi.metoknlp.geofencing.c.a;

class b implements ServiceConnection {
    final /* synthetic */ a a;

    b(a aVar) {
        this.a = aVar;
    }

    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        Log.v("GeoFencingServiceWrapper", "*** GeoFencingService connected ***");
        this.a.b = a.a(iBinder);
        if (this.a.g != null) {
            this.a.g.sendEmptyMessage(3);
            this.a.g.sendEmptyMessageDelayed(2, 60000);
        }
    }

    public void onServiceDisconnected(ComponentName componentName) {
        Log.v("GeoFencingServiceWrapper", "*** GeoFencingService disconnected ***");
        this.a.b = null;
    }
}
