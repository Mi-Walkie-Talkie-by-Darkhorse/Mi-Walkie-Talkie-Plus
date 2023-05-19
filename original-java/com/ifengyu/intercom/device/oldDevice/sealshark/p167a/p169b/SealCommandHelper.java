package com.ifengyu.intercom.device.oldDevice.sealshark.p167a.p169b;

import android.text.TextUtils;
import com.google.protobuf.ByteString;
import com.ifengyu.intercom.bean.BeanUserLocation;
import com.ifengyu.intercom.bean.BtEarBean;
import com.ifengyu.intercom.device.oldDevice.model.SealSharkChannelModel;
import com.ifengyu.intercom.device.oldDevice.p180x.BytesUtil;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.protos.SealProtos;
import java.io.UnsupportedEncodingException;

/* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.a.b.b */
/* loaded from: classes2.dex */
public class SealCommandHelper {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SealCommandHelper.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.a.b.b$a */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C3638a {

        /* renamed from: a */
        static final /* synthetic */ int[] f13135a;

        /* renamed from: b */
        static final /* synthetic */ int[] f13136b;

        static {
            int[] iArr = new int[SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION.values().length];
            f13136b = iArr;
            try {
                iArr[SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION.SEAL_CH_INSERT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f13136b[SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION.SEAL_CH_MODIFY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f13136b[SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION.SEAL_CH_DELETE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f13136b[SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION.SEAL_CH_QUERY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[SealProtos.SEAL_ChannelStateOperate.SEAL_STOPTION.values().length];
            f13135a = iArr2;
            try {
                iArr2[SealProtos.SEAL_ChannelStateOperate.SEAL_STOPTION.SEAL_ST_UPDATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f13135a[SealProtos.SEAL_ChannelStateOperate.SEAL_STOPTION.SEAL_ST_QUERY.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* renamed from: a */
    public static SealProtos.SEAL_DeviceParam m13011a() {
        SealProtos.SEAL_DeviceParam.Builder newBuilder = SealProtos.SEAL_DeviceParam.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setActivate(1);
        SealProtos.SEAL_DeviceParam build = newBuilder.build();
        C4161y.m11043l("SealCommandHelper", "getDeviceParamQuery:" + build.toString());
        return build;
    }

    /* renamed from: b */
    public static SealProtos.SEAL_ChannelInfoOperate m13010b(SealSharkChannelModel sealSharkChannelModel, SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION seal_choption) {
        SealProtos.SEAL_ChannelInfoOperate.Builder newBuilder = SealProtos.SEAL_ChannelInfoOperate.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setOption(seal_choption);
        int i = C3638a.f13136b[seal_choption.ordinal()];
        if (i == 1 || i == 2) {
            if (sealSharkChannelModel != null) {
                try {
                    SealProtos.SEAL_ChannelInfo.Builder chBuilder = newBuilder.getChBuilder();
                    if (sealSharkChannelModel.getType() == 0) {
                        chBuilder.setChType(SealProtos.SEAL_ChannelInfo.SEAL_CHTYPE.SEAL_PUBLIC);
                    } else if (sealSharkChannelModel.getType() == 1) {
                        chBuilder.setChType(SealProtos.SEAL_ChannelInfo.SEAL_CHTYPE.SEAL_REMOTE);
                    } else {
                        chBuilder.setChType(SealProtos.SEAL_ChannelInfo.SEAL_CHTYPE.SEAL_USERDEF);
                    }
                    chBuilder.setChNo(sealSharkChannelModel.getNo()).setChRxFreq(sealSharkChannelModel.getRxFreq()).setChTxFreq(sealSharkChannelModel.getTxFreq()).setChName(ByteString.copyFrom(sealSharkChannelModel.getName(), "GB2312")).setChRxCss(sealSharkChannelModel.getRxCss()).setChTxCss(sealSharkChannelModel.getTxCss());
                    newBuilder.setCh(chBuilder);
                } catch (UnsupportedEncodingException e) {
                    e.printStackTrace();
                }
            }
        } else if (i == 3) {
            SealProtos.SEAL_ChannelInfo.Builder chBuilder2 = newBuilder.getChBuilder();
            chBuilder2.setChNo(sealSharkChannelModel.getNo());
            if (sealSharkChannelModel.getType() == 0) {
                chBuilder2.setChType(SealProtos.SEAL_ChannelInfo.SEAL_CHTYPE.SEAL_PUBLIC);
            } else if (sealSharkChannelModel.getType() == 1) {
                chBuilder2.setChType(SealProtos.SEAL_ChannelInfo.SEAL_CHTYPE.SEAL_REMOTE);
            } else {
                chBuilder2.setChType(SealProtos.SEAL_ChannelInfo.SEAL_CHTYPE.SEAL_USERDEF);
            }
            newBuilder.setCh(chBuilder2);
        } else if (i == 4) {
            SealProtos.SEAL_ChannelInfo.Builder chBuilder3 = newBuilder.getChBuilder();
            if (sealSharkChannelModel.getType() == 0) {
                chBuilder3.setChType(SealProtos.SEAL_ChannelInfo.SEAL_CHTYPE.SEAL_PUBLIC);
            } else if (sealSharkChannelModel.getType() == 1) {
                chBuilder3.setChType(SealProtos.SEAL_ChannelInfo.SEAL_CHTYPE.SEAL_REMOTE);
            } else {
                chBuilder3.setChType(SealProtos.SEAL_ChannelInfo.SEAL_CHTYPE.SEAL_USERDEF);
            }
            newBuilder.setCh(chBuilder3);
        }
        SealProtos.SEAL_ChannelInfoOperate build = newBuilder.build();
        C4161y.m11043l("SealCommandHelper", "getChannelInfoOperateQuery:" + build.toString());
        return build;
    }

    /* renamed from: c */
    public static SealProtos.SEAL_ChannelInfoOperate m13009c(SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION seal_choption) {
        SealProtos.SEAL_ChannelInfoOperate.Builder newBuilder = SealProtos.SEAL_ChannelInfoOperate.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setResult(SealProtos.SEAL_ChannelInfoOperate.SEAL_CH_UERR.SEAL_CH_OK);
        newBuilder.setOption(seal_choption);
        SealProtos.SEAL_ChannelInfoOperate build = newBuilder.build();
        C4161y.m11043l("SealCommandHelper", "getChannelInfoOperateReceiveSuccessMessage:" + build.toString());
        return build;
    }

    /* renamed from: d */
    public static SealProtos.SEAL_ChannelInfoOperate m13008d(SealSharkChannelModel sealSharkChannelModel, SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION seal_choption) {
        SealProtos.SEAL_ChannelInfoOperate.Builder newBuilder = SealProtos.SEAL_ChannelInfoOperate.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setOption(seal_choption);
        SealProtos.SEAL_ChannelInfo.Builder chBuilder = newBuilder.getChBuilder();
        if (sealSharkChannelModel.getType() == 0) {
            chBuilder.setChType(SealProtos.SEAL_ChannelInfo.SEAL_CHTYPE.SEAL_PUBLIC);
        } else if (sealSharkChannelModel.getType() == 1) {
            chBuilder.setChType(SealProtos.SEAL_ChannelInfo.SEAL_CHTYPE.SEAL_REMOTE);
        } else {
            chBuilder.setChType(SealProtos.SEAL_ChannelInfo.SEAL_CHTYPE.SEAL_USERDEF);
        }
        chBuilder.setChNo(sealSharkChannelModel.getNo());
        newBuilder.setCh(chBuilder);
        SealProtos.SEAL_ChannelInfoOperate build = newBuilder.build();
        C4161y.m11043l("SealCommandHelper", "getChannelInfoSingleChannelQueryMessage:" + build.toString());
        return build;
    }

    /* renamed from: e */
    public static SealProtos.SEAL_ChannelStateOperate m13007e(SealSharkChannelModel sealSharkChannelModel, SealProtos.SEAL_ChannelStateOperate.SEAL_STOPTION seal_stoption) {
        SealProtos.SEAL_ChannelStateOperate.Builder newBuilder = SealProtos.SEAL_ChannelStateOperate.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setOption(seal_stoption);
        if (C3638a.f13135a[seal_stoption.ordinal()] == 1 && sealSharkChannelModel != null) {
            SealProtos.SEAL_ChannelInfo.Builder newBuilder2 = SealProtos.SEAL_ChannelInfo.newBuilder();
            if (sealSharkChannelModel.getType() == 0) {
                newBuilder2.setChType(SealProtos.SEAL_ChannelInfo.SEAL_CHTYPE.SEAL_PUBLIC);
            } else if (sealSharkChannelModel.getType() == 1) {
                newBuilder2.setChType(SealProtos.SEAL_ChannelInfo.SEAL_CHTYPE.SEAL_REMOTE);
            } else {
                newBuilder2.setChType(SealProtos.SEAL_ChannelInfo.SEAL_CHTYPE.SEAL_USERDEF);
            }
            newBuilder2.setChNo(sealSharkChannelModel.getNo());
            newBuilder.setCh1(newBuilder2);
        }
        SealProtos.SEAL_ChannelStateOperate build = newBuilder.build();
        C4161y.m11043l("SealCommandHelper", "getChannelStateOperateMessage:" + build.toString());
        return build;
    }

    /* renamed from: f */
    public static SealProtos.SEAL_Connect m13006f(String str) {
        SealProtos.SEAL_Connect.Builder newBuilder = SealProtos.SEAL_Connect.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setConnCode(SealProtos.SEAL_CONNCODE.SEAL_CONNECT);
        if (!TextUtils.isEmpty(str)) {
            newBuilder.setDeviceId(Integer.parseInt(str));
        }
        newBuilder.setDeviceType(5);
        newBuilder.setAppMode(SealProtos.SEAL_Connect.SEAL_APPTYPE.SEAL_OWN_APP);
        SealProtos.SEAL_Connect build = newBuilder.build();
        C4161y.m11043l("SealCommandHelper", "getConnectQuery:" + build.toString());
        return build;
    }

    /* renamed from: g */
    public static SealProtos.SEAL_DeviceParam m13005g() {
        SealProtos.SEAL_DeviceParam.Builder newBuilder = SealProtos.SEAL_DeviceParam.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setFullInquiry(SealProtos.SEAL_SWITCH.SEAL_ON);
        SealProtos.SEAL_DeviceParam build = newBuilder.build();
        C4161y.m11043l("SealCommandHelper", "getDeviceParamQuery:" + build.toString());
        return build;
    }

    /* renamed from: h */
    public static SealProtos.SEAL_LocationInfo m13004h(BeanUserLocation beanUserLocation) {
        SealProtos.SEAL_LocationInfo.Builder newBuilder = SealProtos.SEAL_LocationInfo.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setUserId(Integer.parseInt(beanUserLocation.getUserID()));
        try {
            newBuilder.setUserName(ByteString.copyFrom(beanUserLocation.getName().getBytes("GB2312")));
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        newBuilder.setLongitude(beanUserLocation.getLongitudeInt());
        newBuilder.setLatitude(beanUserLocation.getLatitudeInt());
        newBuilder.setAltitude(beanUserLocation.getAltitude());
        newBuilder.setTimeSync(beanUserLocation.getTime());
        SealProtos.SEAL_LocationInfo build = newBuilder.build();
        C4161y.m11043l("SealCommandHelper", "getLocationSyncMessage:" + build.toString());
        return build;
    }

    /* renamed from: i */
    public static SealProtos.SEAL_BtEarConnectState m13003i(BtEarBean btEarBean) {
        SealProtos.SEAL_BtEarConnectState.Builder newBuilder = SealProtos.SEAL_BtEarConnectState.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setOption(SealProtos.SEAL_BtEarConnectState.SEAL_BTEAR_OPTION.SEAL_BTEAR_CONNECT);
        SealProtos.SEAL_BtEarInfo.Builder btEarBuilder = newBuilder.getBtEarBuilder();
        try {
            byte[] m12463b = BytesUtil.m12463b(btEarBean.getDevice().getAddress());
            if (m12463b != null) {
                btEarBuilder.setMac(ByteString.copyFrom(m12463b));
            }
            btEarBuilder.setName(ByteString.copyFrom(btEarBean.getDevice().getName().getBytes("UTF-8")));
            btEarBuilder.setRssi(btEarBean.getRssi());
            btEarBuilder.setType(SealProtos.SEAL_BtEarInfo.SEAL_BTEARTYPE.SEAL_BTEAR_NORMAL);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        newBuilder.setBtEar(btEarBuilder);
        SealProtos.SEAL_BtEarConnectState build = newBuilder.build();
        C4161y.m11043l("SealCommandHelper", "getSealBtEarConnectMessage:" + build.toString());
        return build;
    }

    /* renamed from: j */
    public static SealProtos.SEAL_BtEarConnectState m13002j() {
        SealProtos.SEAL_BtEarConnectState.Builder newBuilder = SealProtos.SEAL_BtEarConnectState.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setOption(SealProtos.SEAL_BtEarConnectState.SEAL_BTEAR_OPTION.SEAL_BTEAR_DISCONNECT);
        SealProtos.SEAL_BtEarConnectState build = newBuilder.build();
        C4161y.m11043l("SealCommandHelper", "getSealBtEarDisConnectMessage:" + build.toString());
        return build;
    }

    /* renamed from: k */
    public static SealProtos.SEAL_BtEarScanControl m13001k() {
        SealProtos.SEAL_BtEarScanControl.Builder newBuilder = SealProtos.SEAL_BtEarScanControl.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setOption(SealProtos.SEAL_BtEarScanControl.SEAL_BTEAR_CONTROL.SEAL_BTEAR_SCAN_START);
        SealProtos.SEAL_BtEarScanControl build = newBuilder.build();
        C4161y.m11043l("SealCommandHelper", "getSealBtEarScanControlStartMessage:" + build.toString());
        return build;
    }

    /* renamed from: l */
    public static SealProtos.SEAL_BtEarScanControl m13000l() {
        SealProtos.SEAL_BtEarScanControl.Builder newBuilder = SealProtos.SEAL_BtEarScanControl.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setOption(SealProtos.SEAL_BtEarScanControl.SEAL_BTEAR_CONTROL.SEAL_BTEAR_SCAN_STOP);
        SealProtos.SEAL_BtEarScanControl build = newBuilder.build();
        C4161y.m11043l("SealCommandHelper", "getSealBtEarScanControlStopMessage:" + build.toString());
        return build;
    }

    /* renamed from: m */
    public static SealProtos.SEAL_UserActionStatistics m12999m() {
        SealProtos.SEAL_UserActionStatistics build = SealProtos.SEAL_UserActionStatistics.newBuilder().build();
        C4161y.m11043l("SealCommandHelper", "getSealUserActionStatisticsQueryMessage:" + build.toString());
        return build;
    }

    /* renamed from: n */
    public static SealProtos.SEAL_BtEarConnectState m12998n() {
        SealProtos.SEAL_BtEarConnectState.Builder newBuilder = SealProtos.SEAL_BtEarConnectState.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setOption(SealProtos.SEAL_BtEarConnectState.SEAL_BTEAR_OPTION.SEAL_BTEAR_QUERY);
        SealProtos.SEAL_BtEarConnectState build = newBuilder.build();
        C4161y.m11043l("SealCommandHelper", "getSendSealBtEarConnectStateQueryMessage:" + build.toString());
        return build;
    }

    /* renamed from: o */
    public static SealProtos.SEAL_DeviceParam m12997o(int i) {
        SealProtos.SEAL_DeviceParam.Builder newBuilder = SealProtos.SEAL_DeviceParam.newBuilder();
        newBuilder.setVersion(1);
        SealProtos.SEAL_ChannelInfo.Builder newBuilder2 = SealProtos.SEAL_ChannelInfo.newBuilder();
        newBuilder2.setChBand(i);
        newBuilder.setCh(newBuilder2);
        SealProtos.SEAL_DeviceParam build = newBuilder.build();
        C4161y.m11043l("SealCommandHelper", "getDeviceParamQuery:" + build.toString());
        return build;
    }

    /* renamed from: p */
    public static SealProtos.SEAL_DeviceParam m12996p(int i) {
        SealProtos.SEAL_DeviceParam.Builder newBuilder = SealProtos.SEAL_DeviceParam.newBuilder();
        newBuilder.setVersion(1);
        SealProtos.SEAL_ChannelInfo.Builder newBuilder2 = SealProtos.SEAL_ChannelInfo.newBuilder();
        newBuilder2.setChVox(i);
        newBuilder.setCh(newBuilder2);
        SealProtos.SEAL_DeviceParam build = newBuilder.build();
        C4161y.m11043l("SealCommandHelper", "getDeviceParamQuery:" + build.toString());
        return build;
    }

    /* renamed from: q */
    public static SealProtos.SEAL_DeviceParam m12995q(boolean z) {
        SealProtos.SEAL_DeviceParam.Builder newBuilder = SealProtos.SEAL_DeviceParam.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setIsAllPublic(z ? SealProtos.SEAL_SWITCH.SEAL_ON : SealProtos.SEAL_SWITCH.SEAL_OFF);
        SealProtos.SEAL_DeviceParam build = newBuilder.build();
        C4161y.m11043l("SealCommandHelper", "getDeviceParamQuery:" + build.toString());
        return build;
    }

    /* renamed from: r */
    public static SealProtos.SEAL_DeviceParam m12994r(String str) {
        SealProtos.SEAL_DeviceParam.Builder newBuilder = SealProtos.SEAL_DeviceParam.newBuilder();
        newBuilder.setVersion(1);
        try {
            newBuilder.setDeviceName(ByteString.copyFrom(str.getBytes("GB2312")));
            newBuilder.setBleName(ByteString.copyFrom(str.getBytes("UTF-8")));
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        SealProtos.SEAL_DeviceParam build = newBuilder.build();
        C4161y.m11043l("SealCommandHelper", "getDeviceParamQuery:" + build.toString());
        return build;
    }

    /* renamed from: s */
    public static SealProtos.SEAL_DeviceParam m12993s(int i) {
        SealProtos.SEAL_DeviceParam.Builder newBuilder = SealProtos.SEAL_DeviceParam.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setPwsaveMode(i);
        SealProtos.SEAL_DeviceParam build = newBuilder.build();
        C4161y.m11043l("SealCommandHelper", "getDeviceParamQuery:" + build.toString());
        return build;
    }

    /* renamed from: t */
    public static SealProtos.SEAL_DeviceParam m12992t(boolean z) {
        SealProtos.SEAL_DeviceParam.Builder newBuilder = SealProtos.SEAL_DeviceParam.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setShareLoc(z ? SealProtos.SEAL_SWITCH.SEAL_ON : SealProtos.SEAL_SWITCH.SEAL_OFF);
        SealProtos.SEAL_DeviceParam build = newBuilder.build();
        C4161y.m11043l("SealCommandHelper", "getDeviceParamQuery:" + build.toString());
        return build;
    }

    /* renamed from: u */
    public static SealProtos.SEAL_DeviceParam m12991u(int i) {
        SealProtos.SEAL_DeviceParam.Builder newBuilder = SealProtos.SEAL_DeviceParam.newBuilder();
        newBuilder.setVersion(1);
        SealProtos.SEAL_ChannelInfo.Builder newBuilder2 = SealProtos.SEAL_ChannelInfo.newBuilder();
        newBuilder2.setChSq(i);
        newBuilder.setCh(newBuilder2);
        SealProtos.SEAL_DeviceParam build = newBuilder.build();
        C4161y.m11043l("SealCommandHelper", "getDeviceParamQuery:" + build.toString());
        return build;
    }

    /* renamed from: v */
    public static SealProtos.SEAL_DeviceParam m12990v(boolean z) {
        SealProtos.SEAL_DeviceParam.Builder newBuilder = SealProtos.SEAL_DeviceParam.newBuilder();
        newBuilder.setVersion(1);
        SealProtos.SEAL_ChannelInfo.Builder newBuilder2 = SealProtos.SEAL_ChannelInfo.newBuilder();
        newBuilder2.setChPolite(z ? SealProtos.SEAL_SWITCH.SEAL_ON : SealProtos.SEAL_SWITCH.SEAL_OFF);
        newBuilder.setCh(newBuilder2);
        SealProtos.SEAL_DeviceParam build = newBuilder.build();
        C4161y.m11043l("SealCommandHelper", "getDeviceParamQuery:" + build.toString());
        return build;
    }

    /* renamed from: w */
    public static SealProtos.SEAL_DeviceParam m12989w(boolean z) {
        SealProtos.SEAL_DeviceParam.Builder newBuilder = SealProtos.SEAL_DeviceParam.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setVoiceAlert(z ? SealProtos.SEAL_SWITCH.SEAL_ON : SealProtos.SEAL_SWITCH.SEAL_OFF);
        SealProtos.SEAL_DeviceParam build = newBuilder.build();
        C4161y.m11043l("SealCommandHelper", "getDeviceParamQuery:" + build.toString());
        return build;
    }

    /* renamed from: x */
    public static SealProtos.SEAL_DeviceParam m12988x(int i) {
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
        C4161y.m11043l("SealCommandHelper", "getDeviceParamQuery:" + build.toString());
        return build;
    }
}
