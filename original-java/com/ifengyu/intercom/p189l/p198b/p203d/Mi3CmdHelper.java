package com.ifengyu.intercom.p189l.p198b.p203d;

import com.google.protobuf.ByteString;
import com.google.protobuf.Message;
import com.ifengyu.intercom.bean.BeanUserLocation;
import com.ifengyu.intercom.models.ChannelModel;
import com.ifengyu.intercom.p189l.p190a.p197d.BleChannelUtils;
import com.ifengyu.intercom.protos.BleProtos;
import java.io.UnsupportedEncodingException;

/* renamed from: com.ifengyu.intercom.l.b.d.a */
/* loaded from: classes2.dex */
public class Mi3CmdHelper {
    /* renamed from: a */
    public static Message m11573a() {
        return BleProtos.ImportConfigFile.newBuilder().setState(BleProtos.ImportState.ImportFINISH).build();
    }

    /* renamed from: b */
    public static Message m11572b() {
        return BleProtos.ImportConfigFile.newBuilder().setState(BleProtos.ImportState.ImportSTART).build();
    }

    /* renamed from: c */
    public static BleProtos.ConnectInfo m11571c(byte[] bArr) {
        BleProtos.ConnectInfo.Builder newBuilder = BleProtos.ConnectInfo.newBuilder();
        if (bArr != null && bArr.length > 0) {
            newBuilder.setToken(ByteString.copyFrom(bArr));
        }
        return newBuilder.build();
    }

    /* renamed from: d */
    public static Message m11570d(int i, int i2) {
        return BleProtos.Frequency.newBuilder().setType(i2).setSeq(i).build();
    }

    /* renamed from: e */
    public static BleProtos.DeviceInfo m11569e() {
        return BleProtos.DeviceInfo.newBuilder().build();
    }

    /* renamed from: f */
    public static Message m11568f(BeanUserLocation beanUserLocation) {
        BleProtos.LocationInfo.Builder newBuilder = BleProtos.LocationInfo.newBuilder();
        newBuilder.setUserId(Integer.parseInt(beanUserLocation.getUserID()));
        try {
            newBuilder.setUserName(ByteString.copyFrom(beanUserLocation.getName().getBytes("GB2312")));
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        newBuilder.setLongitude(beanUserLocation.getLongitudeInt());
        newBuilder.setLatitude(beanUserLocation.getLatitudeInt());
        newBuilder.setAltitude(beanUserLocation.getAltitude());
        newBuilder.setTimestamp(beanUserLocation.getTime());
        return newBuilder.build();
    }

    /* renamed from: g */
    public static BleProtos.OtaInfo m11567g() {
        return BleProtos.OtaInfo.newBuilder().setState(BleProtos.OtaState.END).build();
    }

    /* renamed from: h */
    public static BleProtos.OtaInfo m11566h(int i) {
        return BleProtos.OtaInfo.newBuilder().setState(BleProtos.OtaState.START).setFSize(i).build();
    }

    /* renamed from: i */
    public static BleProtos.PublicKey m11565i(byte[] bArr) {
        return BleProtos.PublicKey.newBuilder().setValue(ByteString.copyFrom(bArr)).build();
    }

    /* renamed from: j */
    public static Message m11564j() {
        return BleProtos.Frequency.newBuilder().setType(2).build();
    }

    /* renamed from: k */
    public static Message m11563k() {
        return BleProtos.Frequency.newBuilder().setType(1).build();
    }

    /* renamed from: l */
    public static Message m11562l() {
        return BleProtos.Channel.newBuilder().build();
    }

    /* renamed from: m */
    public static Message m11561m(int i, int i2) {
        return BleProtos.Frequency.newBuilder().setSeq(i).setType(i2).build();
    }

    /* renamed from: n */
    public static Message m11560n(boolean z) {
        return BleProtos.DeviceInfo.newBuilder().setConfigInfo(BleProtos.DeviceConfig.newBuilder().setShareLoc(z ? BleProtos.Switch.ON : BleProtos.Switch.OFF).build()).build();
    }

    /* renamed from: o */
    public static Message m11559o(ChannelModel channelModel, int i) {
        BleProtos.Channel.Builder newBuilder = BleProtos.Channel.newBuilder();
        if (i == 1) {
            newBuilder.setCh1(BleChannelUtils.m11811j(channelModel));
            newBuilder.setCh2(BleProtos.Frequency.newBuilder().build());
        } else {
            newBuilder.setCh1(BleProtos.Frequency.newBuilder().build());
            newBuilder.setCh2(BleChannelUtils.m11811j(channelModel));
        }
        return newBuilder.build();
    }

    /* renamed from: p */
    public static Message m11558p(ChannelModel channelModel) {
        return BleChannelUtils.m11811j(channelModel);
    }

    /* renamed from: q */
    public static Message m11557q(String str) {
        BleProtos.DeviceConfig deviceConfig;
        try {
            deviceConfig = BleProtos.DeviceConfig.newBuilder().setName(ByteString.copyFrom(str, "GB2312")).setAdvName(ByteString.copyFromUtf8(str)).build();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            deviceConfig = null;
        }
        return BleProtos.DeviceInfo.newBuilder().setConfigInfo(deviceConfig).build();
    }

    /* renamed from: r */
    public static Message m11556r(BleProtos.VoxType voxType) {
        return BleProtos.DeviceInfo.newBuilder().setTalkInfo(BleProtos.DeviceTalkInfo.newBuilder().setVox(voxType).build()).build();
    }
}
