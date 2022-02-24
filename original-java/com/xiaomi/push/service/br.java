package com.xiaomi.push.service;

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
public class br implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ServiceClient f9297a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public br(ServiceClient serviceClient) {
        this.f9297a = serviceClient;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        List<Message> list;
        List list2;
        Messenger messenger;
        synchronized (this.f9297a) {
            this.f9297a.f853b = new Messenger(iBinder);
            this.f9297a.f854b = false;
            list = this.f9297a.f851a;
            for (Message message : list) {
                try {
                    messenger = this.f9297a.f853b;
                    messenger.send(message);
                } catch (RemoteException e) {
                    b.a(e);
                }
            }
            list2 = this.f9297a.f851a;
            list2.clear();
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        this.f9297a.f853b = null;
        this.f9297a.f854b = false;
    }
}
