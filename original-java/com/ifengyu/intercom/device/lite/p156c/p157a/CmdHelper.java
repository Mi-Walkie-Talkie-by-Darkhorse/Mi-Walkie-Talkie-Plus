package com.ifengyu.intercom.device.lite.p156c.p157a;

import com.google.protobuf.ByteString;
import com.ifengyu.blelib.p152c.ByteUtils;
import com.ifengyu.intercom.protos.LiteProtos;
import com.ifengyu.library.utils.C4975r;

/* renamed from: com.ifengyu.intercom.device.lite.c.a.a */
/* loaded from: classes2.dex */
public class CmdHelper {
    /* renamed from: a */
    public static LiteProtos.BatchBrodCfgRequest m14183a() {
        return LiteProtos.BatchBrodCfgRequest.newBuilder().setVersion(1).build();
    }

    /* renamed from: b */
    public static LiteProtos.ConnectRequest m14182b(String str, byte[] bArr) {
        LiteProtos.ConnectRequest.Builder version = LiteProtos.ConnectRequest.newBuilder().setAppType(LiteProtos.APP_TYPE.FY_APP).setVersion(1);
        if (!C4975r.m8620b(str)) {
            version.setDeviceId(Integer.parseInt(str));
        }
        if (!ByteUtils.m14361h(bArr)) {
            version.setPublicKey(ByteString.copyFrom(bArr));
        }
        return version.build();
    }

    /* renamed from: c */
    private static LiteProtos.DevRequest m14181c(LiteProtos.DevInfo.Builder builder) {
        return LiteProtos.DevRequest.newBuilder().setVersion(1).setDevInfo(builder).build();
    }

    /* renamed from: d */
    public static LiteProtos.LoginRequest m14180d(byte[] bArr) {
        LiteProtos.LoginRequest.Builder version = LiteProtos.LoginRequest.newBuilder().setVersion(1);
        if (bArr != null && bArr.length > 0) {
            version.setToken(ByteString.copyFrom(bArr));
        }
        return version.build();
    }

    /* renamed from: e */
    public static LiteProtos.OtaRequest m14179e() {
        return LiteProtos.OtaRequest.newBuilder().setVersion(1).setFCmd(LiteProtos.OtaRequest.FILE_CMD.START).setFType(LiteProtos.OtaRequest.FILE_TYPE.MCU_UPLOAD_FILE).build();
    }

    /* renamed from: f */
    public static LiteProtos.ChannelInfoRequest m14178f() {
        LiteProtos.ChannelInfoRequest.Builder newBuilder = LiteProtos.ChannelInfoRequest.newBuilder();
        newBuilder.setVersion(1);
        return newBuilder.build();
    }

    /* renamed from: g */
    public static LiteProtos.ChannelInfoRequest m14177g(int i) {
        LiteProtos.ChannelInfoRequest.Builder newBuilder = LiteProtos.ChannelInfoRequest.newBuilder();
        newBuilder.setVersion(1).setChannelInfo(LiteProtos.ChannelInfo.newBuilder().setRxFreq(0).setTxFreq(0).setRxCss(0).setTxCss(0).setSeq(i));
        return newBuilder.build();
    }

    /* renamed from: h */
    public static LiteProtos.DevRequest m14176h() {
        return LiteProtos.DevRequest.newBuilder().setVersion(1).build();
    }

    /* renamed from: i */
    public static LiteProtos.DevRequest m14175i(int i) {
        return m14181c(LiteProtos.DevInfo.newBuilder().setBand(i));
    }

    /* renamed from: j */
    public static LiteProtos.DevRequest m14174j(boolean z) {
        return m14181c(LiteProtos.DevInfo.newBuilder().setBootVoice(z ? LiteProtos.SWITCH.ON : LiteProtos.SWITCH.OFF));
    }

    /* renamed from: k */
    public static LiteProtos.ChannelInfoRequest m14173k(int i, int i2, int i3, int i4, int i5) {
        return LiteProtos.ChannelInfoRequest.newBuilder().setVersion(1).setChannelInfo(LiteProtos.ChannelInfo.newBuilder().setSeq(i).setRxFreq(i2).setRxCss(i3).setTxFreq(i4).setTxCss(i5)).build();
    }

    /* renamed from: l */
    public static LiteProtos.ChannelInfoRequest m14172l(LiteProtos.ChannelInfo channelInfo) {
        return LiteProtos.ChannelInfoRequest.newBuilder().setVersion(1).setChannelInfo(channelInfo).build();
    }

    /* renamed from: m */
    public static LiteProtos.DevRequest m14171m(boolean z) {
        return m14181c(LiteProtos.DevInfo.newBuilder().setKeyVoice(z ? LiteProtos.SWITCH.ON : LiteProtos.SWITCH.OFF));
    }

    /* renamed from: n */
    public static LiteProtos.DevRequest m14170n(LiteProtos.LANGUAGE_TYPE language_type) {
        return m14181c(LiteProtos.DevInfo.newBuilder().setLangType(language_type));
    }

    /* renamed from: o */
    public static LiteProtos.DevRequest m14169o(String str) {
        return m14181c(LiteProtos.DevInfo.newBuilder().setName(ByteString.copyFromUtf8(str)));
    }

    /* renamed from: p */
    public static LiteProtos.DevRequest m14168p(boolean z) {
        return m14181c(LiteProtos.DevInfo.newBuilder().setPolite(z ? LiteProtos.SWITCH.ON : LiteProtos.SWITCH.OFF));
    }

    /* renamed from: q */
    public static LiteProtos.DevRequest m14167q(int i) {
        return m14181c(LiteProtos.DevInfo.newBuilder().setSq(i));
    }

    /* renamed from: r */
    public static LiteProtos.DevRequest m14166r(boolean z) {
        return m14181c(LiteProtos.DevInfo.newBuilder().setVox(z ? LiteProtos.SWITCH.ON : LiteProtos.SWITCH.OFF));
    }
}
