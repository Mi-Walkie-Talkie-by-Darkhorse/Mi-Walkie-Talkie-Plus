package com.xiaomi.mipush.sdk;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import com.xiaomi.channel.commonutils.logger.b;

class ac implements ServiceConnection {
    final /* synthetic */ z a;

    ac(z zVar) {
        this.a = zVar;
    }

    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this.a) {
            this.a.e = new Messenger(iBinder);
            this.a.j = false;
            for (Message send : this.a.i) {
                try {
                    this.a.e.send(send);
                } catch (RemoteException e) {
                    b.a((Throwable) e);
                }
            }
            this.a.i.clear();
        }
    }

    public void onServiceDisconnected(ComponentName componentName) {
        this.a.e = null;
        this.a.j = false;
    }
}
