package com.ifengyu.intercom.node.transport;

import android.text.TextUtils;
import com.google.protobuf.ByteString;
import com.google.zxing.common.StringUtils;
import com.ifengyu.intercom.bean.BeanUserLocation;
import com.ifengyu.intercom.bean.BtEarBean;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.node.ConnectionConfiguration;
import com.ifengyu.intercom.protos.SealProtos;
import com.ifengyu.intercom.ui.setting.SealSharkChannel;
import java.io.UnsupportedEncodingException;

/* compiled from: SealCommandHelper.java */
/* loaded from: classes2.dex */
public class f {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SealCommandHelper.java */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f5962a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f5963b;

        static {
            int[] iArr = new int[SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION.values().length];
            f5963b = iArr;
            try {
                iArr[SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION.SEAL_CH_INSERT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f5963b[SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION.SEAL_CH_MODIFY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f5963b[SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION.SEAL_CH_DELETE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f5963b[SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION.SEAL_CH_QUERY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[SealProtos.SEAL_ChannelStateOperate.SEAL_STOPTION.values().length];
            f5962a = iArr2;
            try {
                iArr2[SealProtos.SEAL_ChannelStateOperate.SEAL_STOPTION.SEAL_ST_UPDATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f5962a[SealProtos.SEAL_ChannelStateOperate.SEAL_STOPTION.SEAL_ST_QUERY.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public static SealProtos.SEAL_Connect a(ConnectionConfiguration connectionConfiguration) {
        SealProtos.SEAL_Connect.Builder newBuilder = SealProtos.SEAL_Connect.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setConnCode(SealProtos.SEAL_CONNCODE.SEAL_CONNECT);
        String e = connectionConfiguration.e();
        if (!TextUtils.isEmpty(e)) {
            newBuilder.setDeviceId(Integer.parseInt(e));
        }
        newBuilder.setDeviceType(5);
        newBuilder.setAppMode(SealProtos.SEAL_Connect.SEAL_APPTYPE.SEAL_OWN_APP);
        SealProtos.SEAL_Connect build = newBuilder.build();
        z.d("SealCommandHelper", "getConnectQuery:" + build.toString());
        return build;
    }

    public static SealProtos.SEAL_DeviceParam b() {
        SealProtos.SEAL_DeviceParam.Builder newBuilder = SealProtos.SEAL_DeviceParam.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setFullInquiry(SealProtos.SEAL_SWITCH.SEAL_ON);
        SealProtos.SEAL_DeviceParam build = newBuilder.build();
        z.d("SealCommandHelper", "getDeviceParamQuery:" + build.toString());
        return build;
    }

    public static SealProtos.SEAL_DeviceParam c(int i) {
        SealProtos.SEAL_DeviceParam.Builder newBuilder = SealProtos.SEAL_DeviceParam.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setPwsaveMode(i);
        SealProtos.SEAL_DeviceParam build = newBuilder.build();
        z.d("SealCommandHelper", "getDeviceParamQuery:" + build.toString());
        return build;
    }

    public static SealProtos.SEAL_DeviceParam d(boolean z) {
        SealProtos.SEAL_DeviceParam.Builder newBuilder = SealProtos.SEAL_DeviceParam.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setVoiceAlert(z ? SealProtos.SEAL_SWITCH.SEAL_ON : SealProtos.SEAL_SWITCH.SEAL_OFF);
        SealProtos.SEAL_DeviceParam build = newBuilder.build();
        z.d("SealCommandHelper", "getDeviceParamQuery:" + build.toString());
        return build;
    }

    public static SealProtos.SEAL_DeviceParam e(int i) {
        SealProtos.SEAL_DeviceParam.Builder newBuilder = SealProtos.SEAL_DeviceParam.newBuilder();
        newBuilder.setVersion(1);
        if (i == 3) {
            newBuilder.setVoiceType(SealProtos.SEAL_DeviceParam.SEAL_VOICETYPE.SEAL_VOICETYPE_ENGLISH);
        } else if (i == 2) {
            newBuilder.setVoiceType(SealProtos.SEAL_DeviceParam.SEAL_VOICETYPE.SEAL_VOICETYPE_CHINESE);
        } else {
            newBuilder.setVoiceType(SealProtos.SEAL_DeviceParam.SEAL_VOICETYPE.SEAL_VOICETYPE_CLOSE);
        }
        SealProtos.SEAL_DeviceParam build = newBuilder.build();
        z.d("SealCommandHelper", "getDeviceParamQuery:" + build.toString());
        return build;
    }

    public static SealProtos.SEAL_UserActionStatistics f() {
        SealProtos.SEAL_UserActionStatistics build = SealProtos.SEAL_UserActionStatistics.newBuilder().build();
        z.d("SealCommandHelper", "getSealUserActionStatisticsQueryMessage:" + build.toString());
        return build;
    }

    public static SealProtos.SEAL_BtEarConnectState g() {
        SealProtos.SEAL_BtEarConnectState.Builder newBuilder = SealProtos.SEAL_BtEarConnectState.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setOption(SealProtos.SEAL_BtEarConnectState.SEAL_BTEAR_OPTION.SEAL_BTEAR_QUERY);
        SealProtos.SEAL_BtEarConnectState build = newBuilder.build();
        z.d("SealCommandHelper", "getSendSealBtEarConnectStateQueryMessage:" + build.toString());
        return build;
    }

    public static SealProtos.SEAL_DeviceParam b(boolean z) {
        SealProtos.SEAL_DeviceParam.Builder newBuilder = SealProtos.SEAL_DeviceParam.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setShareLoc(z ? SealProtos.SEAL_SWITCH.SEAL_ON : SealProtos.SEAL_SWITCH.SEAL_OFF);
        SealProtos.SEAL_DeviceParam build = newBuilder.build();
        z.d("SealCommandHelper", "getDeviceParamQuery:" + build.toString());
        return build;
    }

    public static SealProtos.SEAL_DeviceParam c(boolean z) {
        SealProtos.SEAL_DeviceParam.Builder newBuilder = SealProtos.SEAL_DeviceParam.newBuilder();
        newBuilder.setVersion(1);
        SealProtos.SEAL_ChannelInfo.Builder newBuilder2 = SealProtos.SEAL_ChannelInfo.newBuilder();
        newBuilder2.setChPolite(z ? SealProtos.SEAL_SWITCH.SEAL_ON : SealProtos.SEAL_SWITCH.SEAL_OFF);
        newBuilder.setCh(newBuilder2);
        SealProtos.SEAL_DeviceParam build = newBuilder.build();
        z.d("SealCommandHelper", "getDeviceParamQuery:" + build.toString());
        return build;
    }

    public static SealProtos.SEAL_DeviceParam d(int i) {
        SealProtos.SEAL_DeviceParam.Builder newBuilder = SealProtos.SEAL_DeviceParam.newBuilder();
        newBuilder.setVersion(1);
        SealProtos.SEAL_ChannelInfo.Builder newBuilder2 = SealProtos.SEAL_ChannelInfo.newBuilder();
        newBuilder2.setChSq(i);
        newBuilder.setCh(newBuilder2);
        SealProtos.SEAL_DeviceParam build = newBuilder.build();
        z.d("SealCommandHelper", "getDeviceParamQuery:" + build.toString());
        return build;
    }

    public static SealProtos.SEAL_BtEarScanControl e() {
        SealProtos.SEAL_BtEarScanControl.Builder newBuilder = SealProtos.SEAL_BtEarScanControl.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setOption(SealProtos.SEAL_BtEarScanControl.SEAL_BTEAR_CONTROL.SEAL_BTEAR_SCAN_STOP);
        SealProtos.SEAL_BtEarScanControl build = newBuilder.build();
        z.d("SealCommandHelper", "getSealBtEarScanControlStopMessage:" + build.toString());
        return build;
    }

    public static SealProtos.SEAL_DeviceParam a(String str) {
        SealProtos.SEAL_DeviceParam.Builder newBuilder = SealProtos.SEAL_DeviceParam.newBuilder();
        newBuilder.setVersion(1);
        try {
            newBuilder.setDeviceName(ByteString.copyFrom(str.getBytes(StringUtils.GB2312)));
            newBuilder.setBleName(ByteString.copyFrom(str.getBytes("UTF-8")));
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        SealProtos.SEAL_DeviceParam build = newBuilder.build();
        z.d("SealCommandHelper", "getDeviceParamQuery:" + build.toString());
        return build;
    }

    public static SealProtos.SEAL_DeviceParam b(int i) {
        SealProtos.SEAL_DeviceParam.Builder newBuilder = SealProtos.SEAL_DeviceParam.newBuilder();
        newBuilder.setVersion(1);
        SealProtos.SEAL_ChannelInfo.Builder newBuilder2 = SealProtos.SEAL_ChannelInfo.newBuilder();
        newBuilder2.setChVox(i);
        newBuilder.setCh(newBuilder2);
        SealProtos.SEAL_DeviceParam build = newBuilder.build();
        z.d("SealCommandHelper", "getDeviceParamQuery:" + build.toString());
        return build;
    }

    public static SealProtos.SEAL_BtEarConnectState c() {
        SealProtos.SEAL_BtEarConnectState.Builder newBuilder = SealProtos.SEAL_BtEarConnectState.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setOption(SealProtos.SEAL_BtEarConnectState.SEAL_BTEAR_OPTION.SEAL_BTEAR_DISCONNECT);
        SealProtos.SEAL_BtEarConnectState build = newBuilder.build();
        z.d("SealCommandHelper", "getSealBtEarDisConnectMessage:" + build.toString());
        return build;
    }

    public static SealProtos.SEAL_BtEarScanControl d() {
        SealProtos.SEAL_BtEarScanControl.Builder newBuilder = SealProtos.SEAL_BtEarScanControl.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setOption(SealProtos.SEAL_BtEarScanControl.SEAL_BTEAR_CONTROL.SEAL_BTEAR_SCAN_START);
        SealProtos.SEAL_BtEarScanControl build = newBuilder.build();
        z.d("SealCommandHelper", "getSealBtEarScanControlStartMessage:" + build.toString());
        return build;
    }

    public static SealProtos.SEAL_DeviceParam a() {
        SealProtos.SEAL_DeviceParam.Builder newBuilder = SealProtos.SEAL_DeviceParam.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setActivate(1);
        SealProtos.SEAL_DeviceParam build = newBuilder.build();
        z.d("SealCommandHelper", "getDeviceParamQuery:" + build.toString());
        return build;
    }

    public static SealProtos.SEAL_ChannelInfoOperate b(SealSharkChannel sealSharkChannel, SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION seal_choption) {
        SealProtos.SEAL_ChannelInfoOperate.Builder newBuilder = SealProtos.SEAL_ChannelInfoOperate.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setOption(seal_choption);
        SealProtos.SEAL_ChannelInfo.Builder chBuilder = newBuilder.getChBuilder();
        if (sealSharkChannel.n() == 0) {
            chBuilder.setChType(SealProtos.SEAL_ChannelInfo.SEAL_CHTYPE.SEAL_PUBLIC);
        } else if (sealSharkChannel.n() == 1) {
            chBuilder.setChType(SealProtos.SEAL_ChannelInfo.SEAL_CHTYPE.SEAL_REMOTE);
        } else {
            chBuilder.setChType(SealProtos.SEAL_ChannelInfo.SEAL_CHTYPE.SEAL_USERDEF);
        }
        chBuilder.setChNo(sealSharkChannel.f());
        newBuilder.setCh(chBuilder);
        SealProtos.SEAL_ChannelInfoOperate build = newBuilder.build();
        z.d("SealCommandHelper", "getChannelInfoSingleChannelQueryMessage:" + build.toString());
        return build;
    }

    public static SealProtos.SEAL_DeviceParam a(boolean z) {
        SealProtos.SEAL_DeviceParam.Builder newBuilder = SealProtos.SEAL_DeviceParam.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setIsAllPublic(z ? SealProtos.SEAL_SWITCH.SEAL_ON : SealProtos.SEAL_SWITCH.SEAL_OFF);
        SealProtos.SEAL_DeviceParam build = newBuilder.build();
        z.d("SealCommandHelper", "getDeviceParamQuery:" + build.toString());
        return build;
    }

    public static SealProtos.SEAL_DeviceParam a(int i) {
        SealProtos.SEAL_DeviceParam.Builder newBuilder = SealProtos.SEAL_DeviceParam.newBuilder();
        newBuilder.setVersion(1);
        SealProtos.SEAL_ChannelInfo.Builder newBuilder2 = SealProtos.SEAL_ChannelInfo.newBuilder();
        newBuilder2.setChBand(i);
        newBuilder.setCh(newBuilder2);
        SealProtos.SEAL_DeviceParam build = newBuilder.build();
        z.d("SealCommandHelper", "getDeviceParamQuery:" + build.toString());
        return build;
    }

    public static SealProtos.SEAL_ChannelStateOperate a(SealSharkChannel sealSharkChannel, SealProtos.SEAL_ChannelStateOperate.SEAL_STOPTION seal_stoption) {
        SealProtos.SEAL_ChannelStateOperate.Builder newBuilder = SealProtos.SEAL_ChannelStateOperate.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setOption(seal_stoption);
        if (a.f5962a[seal_stoption.ordinal()] == 1 && sealSharkChannel != null) {
            SealProtos.SEAL_ChannelInfo.Builder newBuilder2 = SealProtos.SEAL_ChannelInfo.newBuilder();
            if (sealSharkChannel.n() == 0) {
                newBuilder2.setChType(SealProtos.SEAL_ChannelInfo.SEAL_CHTYPE.SEAL_PUBLIC);
            } else if (sealSharkChannel.n() == 1) {
                newBuilder2.setChType(SealProtos.SEAL_ChannelInfo.SEAL_CHTYPE.SEAL_REMOTE);
            } else {
                newBuilder2.setChType(SealProtos.SEAL_ChannelInfo.SEAL_CHTYPE.SEAL_USERDEF);
            }
            newBuilder2.setChNo(sealSharkChannel.f());
            newBuilder.setCh1(newBuilder2);
        }
        SealProtos.SEAL_ChannelStateOperate build = newBuilder.build();
        z.d("SealCommandHelper", "getChannelStateOperateMessage:" + build.toString());
        return build;
    }

    public static SealProtos.SEAL_ChannelInfoOperate a(SealSharkChannel sealSharkChannel, SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION seal_choption) {
        SealProtos.SEAL_ChannelInfoOperate.Builder newBuilder = SealProtos.SEAL_ChannelInfoOperate.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setOption(seal_choption);
        int i = a.f5963b[seal_choption.ordinal()];
        if (i == 1 || i == 2) {
            if (sealSharkChannel != null) {
                try {
                    SealProtos.SEAL_ChannelInfo.Builder chBuilder = newBuilder.getChBuilder();
                    if (sealSharkChannel.n() == 0) {
                        chBuilder.setChType(SealProtos.SEAL_ChannelInfo.SEAL_CHTYPE.SEAL_PUBLIC);
                    } else if (sealSharkChannel.n() == 1) {
                        chBuilder.setChType(SealProtos.SEAL_ChannelInfo.SEAL_CHTYPE.SEAL_REMOTE);
                    } else {
                        chBuilder.setChType(SealProtos.SEAL_ChannelInfo.SEAL_CHTYPE.SEAL_USERDEF);
                    }
                    chBuilder.setChNo(sealSharkChannel.f()).setChRxFreq(sealSharkChannel.i()).setChTxFreq(sealSharkChannel.l()).setChName(ByteString.copyFrom(sealSharkChannel.e(), StringUtils.GB2312)).setChRxCss(sealSharkChannel.h()).setChTxCss(sealSharkChannel.k());
                    newBuilder.setCh(chBuilder);
                } catch (UnsupportedEncodingException e) {
                    e.printStackTrace();
                }
            }
        } else if (i == 3) {
            SealProtos.SEAL_ChannelInfo.Builder chBuilder2 = newBuilder.getChBuilder();
            chBuilder2.setChNo(sealSharkChannel.f());
            if (sealSharkChannel.n() == 0) {
                chBuilder2.setChType(SealProtos.SEAL_ChannelInfo.SEAL_CHTYPE.SEAL_PUBLIC);
            } else if (sealSharkChannel.n() == 1) {
                chBuilder2.setChType(SealProtos.SEAL_ChannelInfo.SEAL_CHTYPE.SEAL_REMOTE);
            } else {
                chBuilder2.setChType(SealProtos.SEAL_ChannelInfo.SEAL_CHTYPE.SEAL_USERDEF);
            }
            newBuilder.setCh(chBuilder2);
        } else if (i == 4) {
            SealProtos.SEAL_ChannelInfo.Builder chBuilder3 = newBuilder.getChBuilder();
            if (sealSharkChannel.n() == 0) {
                chBuilder3.setChType(SealProtos.SEAL_ChannelInfo.SEAL_CHTYPE.SEAL_PUBLIC);
            } else if (sealSharkChannel.n() == 1) {
                chBuilder3.setChType(SealProtos.SEAL_ChannelInfo.SEAL_CHTYPE.SEAL_REMOTE);
            } else {
                chBuilder3.setChType(SealProtos.SEAL_ChannelInfo.SEAL_CHTYPE.SEAL_USERDEF);
            }
            newBuilder.setCh(chBuilder3);
        }
        SealProtos.SEAL_ChannelInfoOperate build = newBuilder.build();
        z.d("SealCommandHelper", "getChannelInfoOperateQuery:" + build.toString());
        return build;
    }

    public static SealProtos.SEAL_ChannelInfoOperate a(SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION seal_choption) {
        SealProtos.SEAL_ChannelInfoOperate.Builder newBuilder = SealProtos.SEAL_ChannelInfoOperate.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setResult(SealProtos.SEAL_ChannelInfoOperate.SEAL_CH_UERR.SEAL_CH_OK);
        newBuilder.setOption(seal_choption);
        SealProtos.SEAL_ChannelInfoOperate build = newBuilder.build();
        z.d("SealCommandHelper", "getChannelInfoOperateReceiveSuccessMessage:" + build.toString());
        return build;
    }

    public static SealProtos.SEAL_LocationInfo a(BeanUserLocation beanUserLocation) {
        SealProtos.SEAL_LocationInfo.Builder newBuilder = SealProtos.SEAL_LocationInfo.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setUserId(Integer.parseInt(beanUserLocation.getUserID()));
        try {
            newBuilder.setUserName(ByteString.copyFrom(beanUserLocation.getName().getBytes(StringUtils.GB2312)));
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        newBuilder.setLongitude(beanUserLocation.getLongitudeInt());
        newBuilder.setLatitude(beanUserLocation.getLatitudeInt());
        newBuilder.setAltitude(beanUserLocation.getAltitude());
        newBuilder.setTimeSync(beanUserLocation.getTime());
        SealProtos.SEAL_LocationInfo build = newBuilder.build();
        z.d("SealCommandHelper", "getLocationSyncMessage:" + build.toString());
        return build;
    }

    public static SealProtos.SEAL_BtEarConnectState a(BtEarBean btEarBean) {
        SealProtos.SEAL_BtEarConnectState.Builder newBuilder = SealProtos.SEAL_BtEarConnectState.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setOption(SealProtos.SEAL_BtEarConnectState.SEAL_BTEAR_OPTION.SEAL_BTEAR_CONNECT);
        SealProtos.SEAL_BtEarInfo.Builder btEarBuilder = newBuilder.getBtEarBuilder();
        try {
            byte[] a2 = b.a(btEarBean.getDevice().getAddress());
            if (a2 != null) {
                btEarBuilder.setMac(ByteString.copyFrom(a2));
            }
            btEarBuilder.setName(ByteString.copyFrom(btEarBean.getDevice().getName().getBytes("UTF-8")));
            btEarBuilder.setRssi(btEarBean.getRssi());
            btEarBuilder.setType(SealProtos.SEAL_BtEarInfo.SEAL_BTEARTYPE.SEAL_BTEAR_NORMAL);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        newBuilder.setBtEar(btEarBuilder);
        SealProtos.SEAL_BtEarConnectState build = newBuilder.build();
        z.d("SealCommandHelper", "getSealBtEarConnectMessage:" + build.toString());
        return build;
    }
}
