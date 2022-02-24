package com.ifengyu.intercom.eventbus;

import com.ifengyu.intercom.protos.MitalkProtos;
import java.io.Serializable;

/* loaded from: classes.dex */
public class StateUpdateEvent implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private MitalkProtos.CHOPTION f5227a;

    /* renamed from: b  reason: collision with root package name */
    private MitalkProtos.STATECODE f5228b;

    /* renamed from: c  reason: collision with root package name */
    private MitalkProtos.STATEMODE f5229c;
    private MitalkProtos.ChannelInfo d;
    private MitalkProtos.ChannelInfo e;
    private boolean f;
    private boolean g;

    public StateUpdateEvent(MitalkProtos.StateUpdate stateUpdate) {
        stateUpdate.getVersion();
        this.f5228b = stateUpdate.getResult();
        this.f5229c = stateUpdate.getStateMode();
        this.f5227a = stateUpdate.getOption();
        this.d = stateUpdate.getCh1();
        this.e = stateUpdate.getCh2();
        this.f = stateUpdate.hasCh1();
        this.g = stateUpdate.hasCh2();
        stateUpdate.hasStateMode();
    }

    public MitalkProtos.ChannelInfo a() {
        return this.d;
    }

    public MitalkProtos.ChannelInfo b() {
        return this.e;
    }

    public MitalkProtos.CHOPTION c() {
        return this.f5227a;
    }

    public MitalkProtos.STATECODE d() {
        return this.f5228b;
    }

    public MitalkProtos.STATEMODE e() {
        return this.f5229c;
    }

    public boolean f() {
        return this.f;
    }

    public boolean g() {
        return this.g;
    }
}
