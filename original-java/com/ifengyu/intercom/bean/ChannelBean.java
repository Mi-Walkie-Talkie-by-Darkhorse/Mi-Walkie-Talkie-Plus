package com.ifengyu.intercom.bean;

import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.google.zxing.common.StringUtils;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.protos.MitalkProtos.ChannelInfo;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;

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
    private int no;
    private int type;

    public ChannelBean() {
    }

    public ChannelBean(int i, int i2, String str, String str2) {
        this.type = i;
        this.no = i2;
        this.freq = str;
        this.name = str2;
    }

    public ChannelBean(int i, int i2, String str, String str2, int i3, int i4, int i5) {
        this.type = i;
        this.no = i2;
        this.freq = str;
        this.name = str2;
        this.cssType = i3;
        this.cssCode = i4;
        this.cssInvert = i5;
    }

    public ChannelBean(ChannelInfo channelInfo) {
        this.no = channelInfo.getNo();
        this.type = channelInfo.getType().getNumber();
        this.freq = channelInfo.hasFreq() ? v.c(channelInfo.getFreq()) : "";
        try {
            this.name = new String(channelInfo.getName().toByteArray(), StringUtils.GB2312);
        } catch (UnsupportedEncodingException e) {
            ThrowableExtension.printStackTrace(e);
        }
        this.cssType = channelInfo.getCssType();
        this.cssInvert = channelInfo.getCssInvert();
        this.cssCode = channelInfo.getCssCode();
    }

    public int getType() {
        return this.type;
    }

    public int getNo() {
        return this.no;
    }

    public String getFreq() {
        return this.freq;
    }

    public String getName() {
        return this.name;
    }

    public void setType(int i) {
        this.type = i;
    }

    public void setNo(int i) {
        this.no = i;
    }

    public void setFreq(String str) {
        this.freq = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public int getCssType() {
        return this.cssType;
    }

    public void setCssType(int i) {
        this.cssType = i;
    }

    public int getCssCode() {
        return this.cssCode;
    }

    public void setCssCode(int i) {
        this.cssCode = i;
    }

    public int getCssInvert() {
        return this.cssInvert;
    }

    public void setCssInvert(int i) {
        this.cssInvert = i;
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
        if (getNo() != ((ChannelBean) obj).getNo()) {
            return false;
        }
        return true;
    }

    public String toString() {
        return "ChannelBean{type=" + this.type + ", no=" + this.no + ", freq='" + this.freq + '\'' + ", name='" + this.name + '\'' + ", cssType=" + this.cssType + ", cssCode=" + this.cssCode + ", cssInvert=" + this.cssInvert + '}';
    }
}
