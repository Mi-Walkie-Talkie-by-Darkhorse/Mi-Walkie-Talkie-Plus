package com.mi.milinkforgame.sdk.config;

import com.mi.milinkforgame.sdk.base.data.Convert;

public class IpInfo {
    public String ip;
    public int operator;
    public int port;
    public String remark;
    public int type;

    public IpInfo() {
        this.port = 0;
        this.remark = null;
    }

    public IpInfo(byte[] bArr, int i, int i2, int i3) {
        this.operator = i3;
        this.ip = Convert.IPv4ToStr(bArr);
        this.port = i;
        this.remark = null;
        this.type = i2;
    }

    public IpInfo(String str, int i, int i2, int i3) {
        this.operator = i3;
        this.ip = str;
        this.port = i;
        this.remark = null;
        this.type = i2;
    }

    public String getIp() {
        return this.ip;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(" operator = ");
        sb.append(this.operator);
        sb.append(" ip = ");
        sb.append(this.ip);
        sb.append(" port = ");
        sb.append(this.port);
        sb.append(" type = ");
        sb.append(this.type);
        return sb.toString();
    }

    public void setPort(int i) {
        this.port = i;
    }

    public int getPort() {
        return this.port;
    }
}
