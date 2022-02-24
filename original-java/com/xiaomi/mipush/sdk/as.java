package com.xiaomi.mipush.sdk;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import com.xiaomi.channel.commonutils.logger.b;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class as implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ao f8696a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public as(ao aoVar) {
        this.f8696a = aoVar;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        List<Message> list;
        List list2;
        Messenger messenger;
        synchronized (this.f8696a) {
            this.f8696a.f49a = new Messenger(iBinder);
            this.f8696a.f8691c = false;
            list = this.f8696a.f52a;
            for (Message message : list) {
                try {
                    messenger = this.f8696a.f49a;
                    messenger.send(message);
                } catch (RemoteException e) {
                    b.a(e);
                }
            }
            list2 = this.f8696a.f52a;
            list2.clear();
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        this.f8696a.f49a = null;
        this.f8696a.f8691c = false;
    }
}
