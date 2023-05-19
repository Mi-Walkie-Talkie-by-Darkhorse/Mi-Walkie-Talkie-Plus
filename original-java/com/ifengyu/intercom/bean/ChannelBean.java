package com.ifengyu.intercom.bean;

import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.protos.MitalkProtos;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;

/* loaded from: classes2.dex */
public class ChannelBean implements Serializable {
    public static final int FLAG_NORAML = 0;
    public static final int FLAG_OPPOSITION = 1;
    public static final int TYPE_CH_PRESET = 0;
    public static final int TYPE_CH_PUBLIC = 1;
    public static final int TYPE_CH_RADIO = 3;
    public static final int TYPE_CH_RELAY = 8;
    public static final int TYPE_CH_SCAN = 7;
    public static final int TYPE_CH_SOS = 4;
    public static final int TYPE_CH_TEAM = 6;
    public static final int TYPE_CH_TEMP = 5;
    public static final int TYPE_CH_USERDEFINE = 2;
    public static final int TYPE_CSS_ANALOG = 3;
    public static final int TYPE_CSS_DIGITAL = 2;
    public static final int TYPE_CSS_NONE = 0;
    private int cssCode;
    private int cssInvert;
    private int cssType;
    private String freq;
    private String name;

    /* renamed from: no */
    private int f12116no;
    private int type;

    public ChannelBean() {
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && getNo() == ((ChannelBean) obj).getNo();
    }

    public int getCssCode() {
        return this.cssCode;
    }

    public int getCssInvert() {
        return this.cssInvert;
    }

    public int getCssType() {
        return this.cssType;
    }

    public String getFreq() {
        return this.freq;
    }

    public String getName() {
        return this.name;
    }

    public int getNo() {
        return this.f12116no;
    }

    public int getType() {
        return this.type;
    }

    public void setCssCode(int i) {
        this.cssCode = i;
    }

    public void setCssInvert(int i) {
        this.cssInvert = i;
    }

    public void setCssType(int i) {
        this.cssType = i;
    }

    public void setFreq(String str) {
        this.freq = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setNo(int i) {
        this.f12116no = i;
    }

    public void setType(int i) {
        this.type = i;
    }

    public String toString() {
        return "ChannelBean{type=" + this.type + ", no=" + this.f12116no + ", freq='" + this.freq + "', name='" + this.name + "', cssType=" + this.cssType + ", cssCode=" + this.cssCode + ", cssInvert=" + this.cssInvert + '}';
    }

    public ChannelBean(int i, int i2, String str, String str2) {
        this.type = i;
        this.f12116no = i2;
        this.freq = str;
        this.name = str2;
    }

    public ChannelBean(int i, int i2, String str, String str2, int i3, int i4, int i5) {
        this.type = i;
        this.f12116no = i2;
        this.freq = str;
        this.name = str2;
        this.cssType = i3;
        this.cssCode = i4;
        this.cssInvert = i5;
    }

    public ChannelBean(MitalkProtos.ChannelInfo channelInfo) {
        this.f12116no = channelInfo.getNo();
        this.type = channelInfo.getType().getNumber();
        this.freq = channelInfo.hasFreq() ? MethodsUtils.m11290j(channelInfo.getFreq()) : "";
        try {
            this.name = new String(channelInfo.getName().toByteArray(), "GB2312");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        this.cssType = channelInfo.getCssType();
        this.cssInvert = channelInfo.getCssInvert();
        this.cssCode = channelInfo.getCssCode();
    }
}
