package com.ifengyu.intercom.p216ui.fragment;

import com.ifengyu.library.event.SimpleEvent;
import org.greenrobot.eventbus.EventBus;

/* compiled from: lambda */
/* renamed from: com.ifengyu.intercom.ui.fragment.t0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class RunnableC4559t0 implements Runnable {

    /* renamed from: a */
    public static final /* synthetic */ RunnableC4559t0 f15260a = new RunnableC4559t0();

    private /* synthetic */ RunnableC4559t0() {
    }

    @Override // java.lang.Runnable
    public final void run() {
        EventBus.m174c().m164m(new SimpleEvent(10));
    }
}
