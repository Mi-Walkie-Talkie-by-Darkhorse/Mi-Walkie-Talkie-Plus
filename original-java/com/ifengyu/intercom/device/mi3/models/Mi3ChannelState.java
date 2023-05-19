package com.ifengyu.intercom.device.mi3.models;

import com.ifengyu.intercom.models.ChannelModel;
import com.ifengyu.intercom.p189l.p190a.p197d.BleChannelUtils;
import com.ifengyu.intercom.protos.BleProtos;

/* loaded from: classes2.dex */
public class Mi3ChannelState {
    private ChannelModel ch1Model;
    private ChannelModel ch2Model;

    public ChannelModel getCh1Model() {
        return this.ch1Model;
    }

    public ChannelModel getCh2Model() {
        return this.ch2Model;
    }

    public void setCh1Model(ChannelModel channelModel) {
        this.ch1Model = channelModel;
    }

    public void setCh2Model(ChannelModel channelModel) {
        this.ch2Model = channelModel;
    }

    public void setFrom(BleProtos.Channel channel) {
        if (channel.hasCh1() && channel.getCh1().hasSeq()) {
            setCh1Model(BleChannelUtils.m11816e(channel.getCh1()));
        }
        if (channel.hasCh2() && channel.getCh2().hasSeq()) {
            setCh2Model(BleChannelUtils.m11816e(channel.getCh2()));
        }
    }

    public BleProtos.Channel toProtoChannel() {
        BleProtos.Channel.Builder newBuilder = BleProtos.Channel.newBuilder();
        ChannelModel channelModel = this.ch1Model;
        if (channelModel != null) {
            newBuilder.setCh1(BleChannelUtils.m11811j(channelModel));
        } else {
            newBuilder.setCh1(BleProtos.Frequency.newBuilder().build());
        }
        ChannelModel channelModel2 = this.ch2Model;
        if (channelModel2 != null) {
            newBuilder.setCh2(BleChannelUtils.m11811j(channelModel2));
        } else {
            newBuilder.setCh2(BleProtos.Frequency.newBuilder().build());
        }
        return newBuilder.build();
    }
}
