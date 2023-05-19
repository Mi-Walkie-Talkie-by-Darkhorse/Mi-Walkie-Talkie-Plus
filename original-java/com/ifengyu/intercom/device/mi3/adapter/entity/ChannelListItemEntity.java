package com.ifengyu.intercom.device.mi3.adapter.entity;

import com.ifengyu.intercom.models.ChannelModel;

/* loaded from: classes2.dex */
public class ChannelListItemEntity {
    public static final int STATUS_ANOTHER = 2;
    public static final int STATUS_CURRENT = 1;
    public static final int STATUS_NORMAL = 0;
    private ChannelModel channel;
    private int status;

    public ChannelListItemEntity() {
        this.status = 0;
    }

    public ChannelModel getChannel() {
        return this.channel;
    }

    public int getStatus() {
        return this.status;
    }

    public void setChannel(ChannelModel channelModel) {
        this.channel = channelModel;
    }

    public void setStatus(int i) {
        this.status = i;
    }

    public ChannelListItemEntity(int i, ChannelModel channelModel) {
        this.status = 0;
        this.status = i;
        this.channel = channelModel;
    }
}
