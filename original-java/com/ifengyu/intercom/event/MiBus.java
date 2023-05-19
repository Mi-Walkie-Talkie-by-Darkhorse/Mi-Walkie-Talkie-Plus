package com.ifengyu.intercom.event;

import com.squareup.otto.Bus;
import com.squareup.otto.ThreadEnforcer;

/* loaded from: classes2.dex */
public class MiBus {
    private static Bus bus = new Bus(ThreadEnforcer.f18566a);

    private MiBus() {
    }

    public static Bus getInstance() {
        return bus;
    }
}
