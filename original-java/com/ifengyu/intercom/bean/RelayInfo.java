package com.ifengyu.intercom.bean;

import java.io.Serializable;

public class RelayInfo implements Serializable {
    private ChannelBean ch1;
    private ChannelBean ch2;

    public ChannelBean getCh1() {
        return this.ch1;
    }

    public void setCh1(ChannelBean channelBean) {
        this.ch1 = channelBean;
    }

    public ChannelBean getCh2() {
        return this.ch2;
    }

    public void setCh2(ChannelBean channelBean) {
        this.ch2 = channelBean;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        RelayInfo relayInfo = (RelayInfo) obj;
        if (relayInfo.getCh1() == null) {
            return false;
        }
        if (this.ch1 == null) {
            return false;
        }
        if (this.ch1.getNo() != relayInfo.getCh1().getNo()) {
            return false;
        }
        return true;
    }
}
