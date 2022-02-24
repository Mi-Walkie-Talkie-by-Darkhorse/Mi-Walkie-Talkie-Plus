package com.ifengyu.intercom.lite.e.h;

import com.google.protobuf.ByteString;
import com.google.protobuf.Message;
import com.ifengyu.intercom.protos.LiteProtos;
import com.ifengyu.library.a.l;

/* compiled from: CmdHelper.java */
/* loaded from: classes2.dex */
public class a {
    public static Message a(String str, byte[] bArr) {
        LiteProtos.ConnectRequest.Builder version = LiteProtos.ConnectRequest.newBuilder().setAppType(LiteProtos.APP_TYPE.FY_APP).setVersion(1);
        if (!l.b(str)) {
            version.setDeviceId(Integer.parseInt(str));
        }
        if (!com.ifengyu.blelib.d.a.b(bArr)) {
            version.setPublicKey(ByteString.copyFrom(bArr));
        }
        return version.build();
    }

    public static LiteProtos.DevRequest b(int i) {
        return a(LiteProtos.DevInfo.newBuilder().setBand(i));
    }

    public static LiteProtos.ChannelInfoRequest c() {
        LiteProtos.ChannelInfoRequest.Builder newBuilder = LiteProtos.ChannelInfoRequest.newBuilder();
        newBuilder.setVersion(1);
        return newBuilder.build();
    }

    public static LiteProtos.DevRequest d() {
        return LiteProtos.DevRequest.newBuilder().setVersion(1).build();
    }

    public static LiteProtos.DevRequest b(boolean z) {
        return a(LiteProtos.DevInfo.newBuilder().setKeyVoice(z ? LiteProtos.SWITCH.ON : LiteProtos.SWITCH.OFF));
    }

    public static LiteProtos.DevRequest c(int i) {
        return a(LiteProtos.DevInfo.newBuilder().setSq(i));
    }

    public static LiteProtos.DevRequest d(boolean z) {
        return a(LiteProtos.DevInfo.newBuilder().setVox(z ? LiteProtos.SWITCH.ON : LiteProtos.SWITCH.OFF));
    }

    public static LiteProtos.OtaRequest b() {
        return LiteProtos.OtaRequest.newBuilder().setVersion(1).setFCmd(LiteProtos.OtaRequest.FILE_CMD.START).setFType(LiteProtos.OtaRequest.FILE_TYPE.MCU_UPLOAD_FILE).build();
    }

    public static LiteProtos.DevRequest c(boolean z) {
        return a(LiteProtos.DevInfo.newBuilder().setPolite(z ? LiteProtos.SWITCH.ON : LiteProtos.SWITCH.OFF));
    }

    public static Message a(byte[] bArr) {
        LiteProtos.LoginRequest.Builder version = LiteProtos.LoginRequest.newBuilder().setVersion(1);
        if (bArr != null && bArr.length > 0) {
            version.setToken(ByteString.copyFrom(bArr));
        }
        return version.build();
    }

    public static LiteProtos.ChannelInfoRequest a(int i) {
        LiteProtos.ChannelInfoRequest.Builder newBuilder = LiteProtos.ChannelInfoRequest.newBuilder();
        newBuilder.setVersion(1).setChannelInfo(LiteProtos.ChannelInfo.newBuilder().setRxFreq(0).setTxFreq(0).setRxCss(0).setTxCss(0).setSeq(i));
        return newBuilder.build();
    }

    public static LiteProtos.ChannelInfoRequest a(int i, int i2, int i3, int i4, int i5) {
        return LiteProtos.ChannelInfoRequest.newBuilder().setVersion(1).setChannelInfo(LiteProtos.ChannelInfo.newBuilder().setSeq(i).setRxFreq(i2).setRxCss(i3).setTxFreq(i4).setTxCss(i5)).build();
    }

    public static LiteProtos.ChannelInfoRequest a(LiteProtos.ChannelInfo channelInfo) {
        return LiteProtos.ChannelInfoRequest.newBuilder().setVersion(1).setChannelInfo(channelInfo).build();
    }

    public static LiteProtos.DevRequest a(LiteProtos.LANGUAGE_TYPE language_type) {
        return a(LiteProtos.DevInfo.newBuilder().setLangType(language_type));
    }

    public static LiteProtos.DevRequest a(boolean z) {
        return a(LiteProtos.DevInfo.newBuilder().setBootVoice(z ? LiteProtos.SWITCH.ON : LiteProtos.SWITCH.OFF));
    }

    public static LiteProtos.DevRequest a(String str) {
        return a(LiteProtos.DevInfo.newBuilder().setName(ByteString.copyFromUtf8(str)));
    }

    private static LiteProtos.DevRequest a(LiteProtos.DevInfo.Builder builder) {
        return LiteProtos.DevRequest.newBuilder().setVersion(1).setDevInfo(builder).build();
    }

    public static LiteProtos.BatchBrodCfgRequest a() {
        return LiteProtos.BatchBrodCfgRequest.newBuilder().setVersion(1).build();
    }
}
