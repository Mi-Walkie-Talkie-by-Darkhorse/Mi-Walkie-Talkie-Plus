package com.xiaomi.mipush.sdk;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.mipush.sdk.as */
/* loaded from: classes2.dex */
public class ServiceConnectionC5933as implements ServiceConnection {

    /* renamed from: a */
    final /* synthetic */ C5928ao f20918a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ServiceConnectionC5933as(C5928ao c5928ao) {
        this.f20918a = c5928ao;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        List<Message> list;
        List list2;
        Messenger messenger;
        synchronized (this.f20918a) {
            this.f20918a.f20906a = new Messenger(iBinder);
            this.f20918a.f20911c = false;
            list = this.f20918a.f20909a;
            for (Message message : list) {
                try {
                    messenger = this.f20918a.f20906a;
                    messenger.send(message);
                } catch (RemoteException e) {
                    AbstractC5876b.m4143a(e);
                }
            }
            list2 = this.f20918a.f20909a;
            list2.clear();
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        this.f20918a.f20906a = null;
        this.f20918a.f20911c = false;
    }
}
