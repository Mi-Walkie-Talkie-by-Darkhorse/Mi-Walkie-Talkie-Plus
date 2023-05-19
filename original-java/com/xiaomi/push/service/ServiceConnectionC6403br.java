package com.xiaomi.push.service;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.push.service.br */
/* loaded from: classes2.dex */
public class ServiceConnectionC6403br implements ServiceConnection {

    /* renamed from: a */
    final /* synthetic */ ServiceClient f23123a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ServiceConnectionC6403br(ServiceClient serviceClient) {
        this.f23123a = serviceClient;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        List<Message> list;
        List list2;
        Messenger messenger;
        synchronized (this.f23123a) {
            this.f23123a.f22861b = new Messenger(iBinder);
            this.f23123a.f22862b = false;
            list = this.f23123a.f22859a;
            for (Message message : list) {
                try {
                    messenger = this.f23123a.f22861b;
                    messenger.send(message);
                } catch (RemoteException e) {
                    AbstractC5876b.m4143a(e);
                }
            }
            list2 = this.f23123a.f22859a;
            list2.clear();
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        this.f23123a.f22861b = null;
        this.f23123a.f22862b = false;
    }
}
