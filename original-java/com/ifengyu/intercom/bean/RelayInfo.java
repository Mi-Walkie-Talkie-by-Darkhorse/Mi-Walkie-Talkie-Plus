package com.ifengyu.intercom.bean;

import java.io.Serializable;

/* loaded from: classes.dex */
public class RelayInfo implements Serializable {
    private ChannelBean ch1;
    private ChannelBean ch2;

    public boolean equals(Object obj) {
        ChannelBean channelBean;
        if (this == obj) {
            return true;
        }
        if (obj == null || RelayInfo.class != obj.getClass()) {
            return false;
        }
        RelayInfo relayInfo = (RelayInfo) obj;
        return (relayInfo.getCh1() == null || (channelBean = this.ch1) == null || channelBean.getNo() != relayInfo.getCh1().getNo()) ? false : true;
    }

    public ChannelBean getCh1() {
        return this.ch1;
    }

    public ChannelBean getCh2() {
        return this.ch2;
    }

    public void setCh1(ChannelBean channelBean) {
        this.ch1 = channelBean;
    }

    public void setCh2(ChannelBean channelBean) {
        this.ch2 = channelBean;
    }
}
