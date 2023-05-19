package com.ifengyu.intercom.p185i;

import com.ifengyu.intercom.device.common.event.ConnectStateEvent;
import com.ifengyu.intercom.models.DeviceModel;
import com.ifengyu.intercom.p189l.p190a.p197d.RxBus;
import io.reactivex.functions.Consumer;

/* compiled from: lambda */
/* renamed from: com.ifengyu.intercom.i.b0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3859b0 implements Consumer {

    /* renamed from: a */
    public static final /* synthetic */ C3859b0 f13734a = new C3859b0();

    private /* synthetic */ C3859b0() {
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        DeviceModel deviceModel = (DeviceModel) obj;
        RxBus.m11806d().m11805e(new ConnectStateEvent(ConnectStateEvent.STATE_CONNECTED));
    }
}
