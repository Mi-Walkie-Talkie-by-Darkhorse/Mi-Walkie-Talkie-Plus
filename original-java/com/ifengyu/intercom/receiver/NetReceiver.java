package com.ifengyu.intercom.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.ifengyu.intercom.event.NetEvent;
import com.ifengyu.library.utils.C4971k;
import com.ifengyu.library.utils.NetworkUtil;
import org.greenrobot.eventbus.EventBus;

/* loaded from: classes2.dex */
public class NetReceiver extends BroadcastReceiver {

    /* renamed from: a */
    private InterfaceC4327a f14664a;

    /* renamed from: com.ifengyu.intercom.receiver.NetReceiver$a */
    /* loaded from: classes2.dex */
    public interface InterfaceC4327a {
        /* renamed from: a */
        void m10704a();

        /* renamed from: b */
        void m10703b();
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
            boolean m8642d = NetworkUtil.m8642d(context);
            C4971k.m8654f("网络状态：-----", m8642d + "");
            if (m8642d) {
                EventBus.m174c().m161p(new NetEvent(true));
                InterfaceC4327a interfaceC4327a = this.f14664a;
                if (interfaceC4327a != null) {
                    interfaceC4327a.m10703b();
                    return;
                }
                return;
            }
            EventBus.m174c().m161p(new NetEvent(false));
            InterfaceC4327a interfaceC4327a2 = this.f14664a;
            if (interfaceC4327a2 != null) {
                interfaceC4327a2.m10704a();
            }
        }
    }
}
