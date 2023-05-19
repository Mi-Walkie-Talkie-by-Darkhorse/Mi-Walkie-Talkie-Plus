package com.ifengyu.intercom.device.common.event;

import com.ifengyu.intercom.models.ChannelModel;
import java.util.List;

/* loaded from: classes2.dex */
public class ConfigFileEvent {
    private final List<ChannelModel> customList;
    private final List<ChannelModel> remoteList;

    public ConfigFileEvent(List<ChannelModel> list, List<ChannelModel> list2) {
        this.customList = list;
        this.remoteList = list2;
    }

    public List<ChannelModel> getCustomList() {
        return this.customList;
    }

    public List<ChannelModel> getRemoteList() {
        return this.remoteList;
    }
}
