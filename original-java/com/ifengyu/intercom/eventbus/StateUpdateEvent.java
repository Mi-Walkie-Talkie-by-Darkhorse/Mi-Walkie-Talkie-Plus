package com.ifengyu.intercom.eventbus;

import com.ifengyu.intercom.protos.MitalkProtos.CHOPTION;
import com.ifengyu.intercom.protos.MitalkProtos.ChannelInfo;
import com.ifengyu.intercom.protos.MitalkProtos.STATECODE;
import com.ifengyu.intercom.protos.MitalkProtos.STATEMODE;
import com.ifengyu.intercom.protos.MitalkProtos.StateUpdate;
import java.io.Serializable;

public class StateUpdateEvent implements Serializable {
    private int a;
    private CHOPTION b;
    private STATECODE c;
    private STATEMODE d;
    private ChannelInfo e;
    private ChannelInfo f;
    private boolean g;
    private boolean h;
    private boolean i;

    public StateUpdateEvent() {
    }

    public StateUpdateEvent(StateUpdate stateUpdate) {
        this.a = stateUpdate.getVersion();
        this.c = stateUpdate.getResult();
        this.d = stateUpdate.getStateMode();
        this.b = stateUpdate.getOption();
        this.e = stateUpdate.getCh1();
        this.f = stateUpdate.getCh2();
        this.g = stateUpdate.hasCh1();
        this.h = stateUpdate.hasCh2();
        this.i = stateUpdate.hasStateMode();
    }

    public CHOPTION a() {
        return this.b;
    }

    public STATECODE b() {
        return this.c;
    }

    public STATEMODE c() {
        return this.d;
    }

    public ChannelInfo d() {
        return this.e;
    }

    public ChannelInfo e() {
        return this.f;
    }

    public boolean f() {
        return this.g;
    }

    public boolean g() {
        return this.h;
    }
}
