package com.ifengyu.intercom.event;

import com.ifengyu.intercom.protos.MitalkProtos;
import java.io.Serializable;

/* loaded from: classes2.dex */
public class StateUpdateEvent implements Serializable {
    private MitalkProtos.ChannelInfo ch1;
    private MitalkProtos.ChannelInfo ch2;
    private boolean hasCh1;
    private boolean hasCh2;
    private boolean hasStateMode;
    private MitalkProtos.CHOPTION option;
    private MitalkProtos.STATECODE stateCode;
    private MitalkProtos.STATEMODE stateMode;
    private int version;

    public StateUpdateEvent() {
    }

    public MitalkProtos.ChannelInfo getCh1() {
        return this.ch1;
    }

    public MitalkProtos.ChannelInfo getCh2() {
        return this.ch2;
    }

    public MitalkProtos.CHOPTION getOption() {
        return this.option;
    }

    public MitalkProtos.STATECODE getStateCode() {
        return this.stateCode;
    }

    public MitalkProtos.STATEMODE getStateMode() {
        return this.stateMode;
    }

    public int getVersion() {
        return this.version;
    }

    public boolean isHasCh1() {
        return this.hasCh1;
    }

    public boolean isHasCh2() {
        return this.hasCh2;
    }

    public boolean isHasStateMode() {
        return this.hasStateMode;
    }

    public void setCh1(MitalkProtos.ChannelInfo channelInfo) {
        this.ch1 = channelInfo;
    }

    public void setCh2(MitalkProtos.ChannelInfo channelInfo) {
        this.ch2 = channelInfo;
    }

    public void setHasCh1(boolean z) {
        this.hasCh1 = z;
    }

    public void setHasCh2(boolean z) {
        this.hasCh2 = z;
    }

    public void setHasStateMode(boolean z) {
        this.hasStateMode = z;
    }

    public void setOption(MitalkProtos.CHOPTION choption) {
        this.option = choption;
    }

    public void setStateCode(MitalkProtos.STATECODE statecode) {
        this.stateCode = statecode;
    }

    public void setStateMode(MitalkProtos.STATEMODE statemode) {
        this.stateMode = statemode;
    }

    public void setVersion(int i) {
        this.version = i;
    }

    public StateUpdateEvent(MitalkProtos.StateUpdate stateUpdate) {
        this.version = stateUpdate.getVersion();
        this.stateCode = stateUpdate.getResult();
        this.stateMode = stateUpdate.getStateMode();
        this.option = stateUpdate.getOption();
        this.ch1 = stateUpdate.getCh1();
        this.ch2 = stateUpdate.getCh2();
        this.hasCh1 = stateUpdate.hasCh1();
        this.hasCh2 = stateUpdate.hasCh2();
        this.hasStateMode = stateUpdate.hasStateMode();
    }
}
