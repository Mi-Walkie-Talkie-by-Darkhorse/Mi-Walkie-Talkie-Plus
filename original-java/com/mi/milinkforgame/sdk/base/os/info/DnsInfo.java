package com.mi.milinkforgame.sdk.base.os.info;

import com.xiaomi.mipush.sdk.Constants;

public class DnsInfo {
    protected String currAltDns = "none";
    protected String currPreDns = "none";
    protected String wifiAltDns = "none";
    protected String wifiPreDns = "none";

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("[").append(this.currPreDns == null ? "none" : this.currPreDns).append(Constants.ACCEPT_TIME_SEPARATOR_SP);
        stringBuffer.append(this.currAltDns == null ? "none" : this.currAltDns).append(";");
        stringBuffer.append(this.wifiPreDns == null ? "none" : this.wifiPreDns).append(";");
        stringBuffer.append(this.wifiAltDns == null ? "none" : this.wifiAltDns).append("]");
        return stringBuffer.toString();
    }

    public String getCurrPreDns() {
        return this.currPreDns;
    }

    public void setCurrPreDns(String str) {
        this.currPreDns = str;
    }

    public String getCurrAltDns() {
        return this.currAltDns;
    }

    public void setCurrAltDns(String str) {
        this.currAltDns = str;
    }

    public String getWifiPreDns() {
        return this.wifiPreDns;
    }

    public void setWifiPreDns(String str) {
        this.wifiPreDns = str;
    }

    public String getWifiAltDns() {
        return this.wifiAltDns;
    }

    public void setWifiAltDns(String str) {
        this.wifiAltDns = str;
    }
}
