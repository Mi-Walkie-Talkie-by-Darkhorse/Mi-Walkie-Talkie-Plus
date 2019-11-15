package com.ifengyu.intercom.node.transport;

import android.text.TextUtils;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.google.protobuf.ByteString;
import com.google.zxing.common.StringUtils;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.bean.BeanUserLocation;
import com.ifengyu.intercom.bean.BtEarBean;
import com.ifengyu.intercom.node.ConnectionConfiguration;
import com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarConnectState;
import com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarConnectState.SEAL_BTEAR_OPTION;
import com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarInfo;
import com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarInfo.SEAL_BTEARTYPE;
import com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarScanControl;
import com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarScanControl.SEAL_BTEAR_CONTROL;
import com.ifengyu.intercom.protos.SealProtos.SEAL_CONNCODE;
import com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfo;
import com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfo.SEAL_CHTYPE;
import com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOperate;
import com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION;
import com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOperate.SEAL_CH_UERR;
import com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelStateOperate;
import com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelStateOperate.SEAL_STOPTION;
import com.ifengyu.intercom.protos.SealProtos.SEAL_Connect;
import com.ifengyu.intercom.protos.SealProtos.SEAL_Connect.Builder;
import com.ifengyu.intercom.protos.SealProtos.SEAL_Connect.SEAL_APPTYPE;
import com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParam;
import com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParam.SEAL_VOICETYPE;
import com.ifengyu.intercom.protos.SealProtos.SEAL_LocationInfo;
import com.ifengyu.intercom.protos.SealProtos.SEAL_SWITCH;
import com.ifengyu.intercom.protos.SealProtos.SEAL_UserActionStatistics;
import com.ifengyu.intercom.ui.setting.SealSharkChannel;
import java.io.UnsupportedEncodingException;

/* compiled from: SealCommandHelper */
public class f {
    public static SEAL_Connect a(ConnectionConfiguration connectionConfiguration) {
        Builder newBuilder = SEAL_Connect.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setConnCode(SEAL_CONNCODE.SEAL_CONNECT);
        String e = connectionConfiguration.e();
        if (!TextUtils.isEmpty(e)) {
            newBuilder.setDeviceId(Integer.parseInt(e));
        }
        newBuilder.setDeviceType(5);
        newBuilder.setAppMode(SEAL_APPTYPE.SEAL_OWN_APP);
        SEAL_Connect build = newBuilder.build();
        s.a("SealCommandHelper", "getConnectQuery:" + build.toString());
        return build;
    }

    public static SEAL_DeviceParam a() {
        SEAL_DeviceParam.Builder newBuilder = SEAL_DeviceParam.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setFullInquiry(SEAL_SWITCH.SEAL_ON);
        SEAL_DeviceParam build = newBuilder.build();
        s.a("SealCommandHelper", "getDeviceParamQuery:" + build.toString());
        return build;
    }

    public static SEAL_DeviceParam a(String str) {
        SEAL_DeviceParam.Builder newBuilder = SEAL_DeviceParam.newBuilder();
        newBuilder.setVersion(1);
        try {
            newBuilder.setDeviceName(ByteString.copyFrom(str.getBytes(StringUtils.GB2312)));
            newBuilder.setBleName(ByteString.copyFrom(str.getBytes("UTF-8")));
        } catch (UnsupportedEncodingException e) {
            ThrowableExtension.printStackTrace(e);
        }
        SEAL_DeviceParam build = newBuilder.build();
        s.a("SealCommandHelper", "getDeviceParamQuery:" + build.toString());
        return build;
    }

    public static SEAL_DeviceParam b() {
        SEAL_DeviceParam.Builder newBuilder = SEAL_DeviceParam.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setActivate(1);
        SEAL_DeviceParam build = newBuilder.build();
        s.a("SealCommandHelper", "getDeviceParamQuery:" + build.toString());
        return build;
    }

    public static SEAL_DeviceParam a(boolean z) {
        SEAL_DeviceParam.Builder newBuilder = SEAL_DeviceParam.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setShareLoc(z ? SEAL_SWITCH.SEAL_ON : SEAL_SWITCH.SEAL_OFF);
        SEAL_DeviceParam build = newBuilder.build();
        s.a("SealCommandHelper", "getDeviceParamQuery:" + build.toString());
        return build;
    }

    public static SEAL_DeviceParam b(boolean z) {
        SEAL_DeviceParam.Builder newBuilder = SEAL_DeviceParam.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setVoiceAlert(z ? SEAL_SWITCH.SEAL_ON : SEAL_SWITCH.SEAL_OFF);
        SEAL_DeviceParam build = newBuilder.build();
        s.a("SealCommandHelper", "getDeviceParamQuery:" + build.toString());
        return build;
    }

    public static SEAL_DeviceParam a(int i) {
        SEAL_DeviceParam.Builder newBuilder = SEAL_DeviceParam.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setPwsaveMode(i);
        SEAL_DeviceParam build = newBuilder.build();
        s.a("SealCommandHelper", "getDeviceParamQuery:" + build.toString());
        return build;
    }

    public static SEAL_DeviceParam c(boolean z) {
        SEAL_DeviceParam.Builder newBuilder = SEAL_DeviceParam.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setIsAllPublic(z ? SEAL_SWITCH.SEAL_ON : SEAL_SWITCH.SEAL_OFF);
        SEAL_DeviceParam build = newBuilder.build();
        s.a("SealCommandHelper", "getDeviceParamQuery:" + build.toString());
        return build;
    }

    public static SEAL_DeviceParam b(int i) {
        SEAL_DeviceParam.Builder newBuilder = SEAL_DeviceParam.newBuilder();
        newBuilder.setVersion(1);
        SEAL_ChannelInfo.Builder newBuilder2 = SEAL_ChannelInfo.newBuilder();
        newBuilder2.setChSq(i);
        newBuilder.setCh(newBuilder2);
        SEAL_DeviceParam build = newBuilder.build();
        s.a("SealCommandHelper", "getDeviceParamQuery:" + build.toString());
        return build;
    }

    public static SEAL_DeviceParam c(int i) {
        SEAL_DeviceParam.Builder newBuilder = SEAL_DeviceParam.newBuilder();
        newBuilder.setVersion(1);
        if (i == 3) {
            newBuilder.setVoiceType(SEAL_VOICETYPE.SEAL_VOICETYPE_ENGLISH);
        } else if (i == 2) {
            newBuilder.setVoiceType(SEAL_VOICETYPE.SEAL_VOICETYPE_CHINESE);
        } else {
            newBuilder.setVoiceType(SEAL_VOICETYPE.SEAL_VOICETYPE_CLOSE);
        }
        SEAL_DeviceParam build = newBuilder.build();
        s.a("SealCommandHelper", "getDeviceParamQuery:" + build.toString());
        return build;
    }

    public static SEAL_DeviceParam d(int i) {
        SEAL_DeviceParam.Builder newBuilder = SEAL_DeviceParam.newBuilder();
        newBuilder.setVersion(1);
        SEAL_ChannelInfo.Builder newBuilder2 = SEAL_ChannelInfo.newBuilder();
        newBuilder2.setChVox(i);
        newBuilder.setCh(newBuilder2);
        SEAL_DeviceParam build = newBuilder.build();
        s.a("SealCommandHelper", "getDeviceParamQuery:" + build.toString());
        return build;
    }

    public static SEAL_DeviceParam e(int i) {
        SEAL_DeviceParam.Builder newBuilder = SEAL_DeviceParam.newBuilder();
        newBuilder.setVersion(1);
        SEAL_ChannelInfo.Builder newBuilder2 = SEAL_ChannelInfo.newBuilder();
        newBuilder2.setChBand(i);
        newBuilder.setCh(newBuilder2);
        SEAL_DeviceParam build = newBuilder.build();
        s.a("SealCommandHelper", "getDeviceParamQuery:" + build.toString());
        return build;
    }

    public static SEAL_DeviceParam d(boolean z) {
        SEAL_DeviceParam.Builder newBuilder = SEAL_DeviceParam.newBuilder();
        newBuilder.setVersion(1);
        SEAL_ChannelInfo.Builder newBuilder2 = SEAL_ChannelInfo.newBuilder();
        newBuilder2.setChPolite(z ? SEAL_SWITCH.SEAL_ON : SEAL_SWITCH.SEAL_OFF);
        newBuilder.setCh(newBuilder2);
        SEAL_DeviceParam build = newBuilder.build();
        s.a("SealCommandHelper", "getDeviceParamQuery:" + build.toString());
        return build;
    }

    public static SEAL_ChannelStateOperate a(SealSharkChannel sealSharkChannel, SEAL_STOPTION seal_stoption) {
        SEAL_ChannelStateOperate.Builder newBuilder = SEAL_ChannelStateOperate.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setOption(seal_stoption);
        switch (seal_stoption) {
            case SEAL_ST_UPDATE:
                if (sealSharkChannel != null) {
                    SEAL_ChannelInfo.Builder newBuilder2 = SEAL_ChannelInfo.newBuilder();
                    if (sealSharkChannel.c() == 0) {
                        newBuilder2.setChType(SEAL_CHTYPE.SEAL_PUBLIC);
                    } else if (sealSharkChannel.c() == 1) {
                        newBuilder2.setChType(SEAL_CHTYPE.SEAL_REMOTE);
                    } else {
                        newBuilder2.setChType(SEAL_CHTYPE.SEAL_USERDEF);
                    }
                    newBuilder2.setChNo(sealSharkChannel.b());
                    newBuilder.setCh1(newBuilder2);
                    break;
                }
                break;
        }
        SEAL_ChannelStateOperate build = newBuilder.build();
        s.a("SealCommandHelper", "getChannelStateOperateMessage:" + build.toString());
        return build;
    }

    public static SEAL_ChannelInfoOperate a(SealSharkChannel sealSharkChannel, SEAL_CHOPTION seal_choption) {
        SEAL_ChannelInfoOperate.Builder newBuilder = SEAL_ChannelInfoOperate.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setOption(seal_choption);
        switch (seal_choption) {
            case SEAL_CH_INSERT:
            case SEAL_CH_MODIFY:
                if (sealSharkChannel != null) {
                    try {
                        SEAL_ChannelInfo.Builder chBuilder = newBuilder.getChBuilder();
                        if (sealSharkChannel.c() == 0) {
                            chBuilder.setChType(SEAL_CHTYPE.SEAL_PUBLIC);
                        } else if (sealSharkChannel.c() == 1) {
                            chBuilder.setChType(SEAL_CHTYPE.SEAL_REMOTE);
                        } else {
                            chBuilder.setChType(SEAL_CHTYPE.SEAL_USERDEF);
                        }
                        chBuilder.setChNo(sealSharkChannel.b()).setChRxFreq(sealSharkChannel.e()).setChTxFreq(sealSharkChannel.f()).setChName(ByteString.copyFrom(sealSharkChannel.g(), StringUtils.GB2312)).setChRxCss(sealSharkChannel.j()).setChTxCss(sealSharkChannel.k());
                        newBuilder.setCh(chBuilder);
                        break;
                    } catch (UnsupportedEncodingException e) {
                        ThrowableExtension.printStackTrace(e);
                        break;
                    }
                }
                break;
            case SEAL_CH_DELETE:
                SEAL_ChannelInfo.Builder chBuilder2 = newBuilder.getChBuilder();
                chBuilder2.setChNo(sealSharkChannel.b());
                if (sealSharkChannel.c() == 0) {
                    chBuilder2.setChType(SEAL_CHTYPE.SEAL_PUBLIC);
                } else if (sealSharkChannel.c() == 1) {
                    chBuilder2.setChType(SEAL_CHTYPE.SEAL_REMOTE);
                } else {
                    chBuilder2.setChType(SEAL_CHTYPE.SEAL_USERDEF);
                }
                newBuilder.setCh(chBuilder2);
                break;
            case SEAL_CH_QUERY:
                SEAL_ChannelInfo.Builder chBuilder3 = newBuilder.getChBuilder();
                if (sealSharkChannel.c() == 0) {
                    chBuilder3.setChType(SEAL_CHTYPE.SEAL_PUBLIC);
                } else if (sealSharkChannel.c() == 1) {
                    chBuilder3.setChType(SEAL_CHTYPE.SEAL_REMOTE);
                } else {
                    chBuilder3.setChType(SEAL_CHTYPE.SEAL_USERDEF);
                }
                newBuilder.setCh(chBuilder3);
                break;
        }
        SEAL_ChannelInfoOperate build = newBuilder.build();
        s.a("SealCommandHelper", "getChannelInfoOperateQuery:" + build.toString());
        return build;
    }

    public static SEAL_ChannelInfoOperate b(SealSharkChannel sealSharkChannel, SEAL_CHOPTION seal_choption) {
        SEAL_ChannelInfoOperate.Builder newBuilder = SEAL_ChannelInfoOperate.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setOption(seal_choption);
        SEAL_ChannelInfo.Builder chBuilder = newBuilder.getChBuilder();
        if (sealSharkChannel.c() == 0) {
            chBuilder.setChType(SEAL_CHTYPE.SEAL_PUBLIC);
        } else if (sealSharkChannel.c() == 1) {
            chBuilder.setChType(SEAL_CHTYPE.SEAL_REMOTE);
        } else {
            chBuilder.setChType(SEAL_CHTYPE.SEAL_USERDEF);
        }
        chBuilder.setChNo(sealSharkChannel.b());
        newBuilder.setCh(chBuilder);
        SEAL_ChannelInfoOperate build = newBuilder.build();
        s.a("SealCommandHelper", "getChannelInfoSingleChannelQueryMessage:" + build.toString());
        return build;
    }

    public static SEAL_ChannelInfoOperate a(SEAL_CHOPTION seal_choption) {
        SEAL_ChannelInfoOperate.Builder newBuilder = SEAL_ChannelInfoOperate.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setResult(SEAL_CH_UERR.SEAL_CH_OK);
        newBuilder.setOption(seal_choption);
        SEAL_ChannelInfoOperate build = newBuilder.build();
        s.a("SealCommandHelper", "getChannelInfoOperateReceiveSuccessMessage:" + build.toString());
        return build;
    }

    public static SEAL_LocationInfo a(BeanUserLocation beanUserLocation) {
        SEAL_LocationInfo.Builder newBuilder = SEAL_LocationInfo.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setUserId(Integer.parseInt(beanUserLocation.getUserID()));
        try {
            newBuilder.setUserName(ByteString.copyFrom(beanUserLocation.getName().getBytes(StringUtils.GB2312)));
        } catch (UnsupportedEncodingException e) {
            ThrowableExtension.printStackTrace(e);
        }
        newBuilder.setLongitude(beanUserLocation.getLongitudeInt());
        newBuilder.setLatitude(beanUserLocation.getLatitudeInt());
        newBuilder.setAltitude(beanUserLocation.getAltitude());
        newBuilder.setTimeSync(beanUserLocation.getTime());
        SEAL_LocationInfo build = newBuilder.build();
        s.a("SealCommandHelper", "getLocationSyncMessage:" + build.toString());
        return build;
    }

    public static SEAL_BtEarConnectState c() {
        SEAL_BtEarConnectState.Builder newBuilder = SEAL_BtEarConnectState.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setOption(SEAL_BTEAR_OPTION.SEAL_BTEAR_QUERY);
        SEAL_BtEarConnectState build = newBuilder.build();
        s.a("SealCommandHelper", "getSendSealBtEarConnectStateQueryMessage:" + build.toString());
        return build;
    }

    public static SEAL_BtEarScanControl d() {
        SEAL_BtEarScanControl.Builder newBuilder = SEAL_BtEarScanControl.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setOption(SEAL_BTEAR_CONTROL.SEAL_BTEAR_SCAN_START);
        SEAL_BtEarScanControl build = newBuilder.build();
        s.a("SealCommandHelper", "getSealBtEarScanControlStartMessage:" + build.toString());
        return build;
    }

    public static SEAL_BtEarScanControl e() {
        SEAL_BtEarScanControl.Builder newBuilder = SEAL_BtEarScanControl.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setOption(SEAL_BTEAR_CONTROL.SEAL_BTEAR_SCAN_STOP);
        SEAL_BtEarScanControl build = newBuilder.build();
        s.a("SealCommandHelper", "getSealBtEarScanControlStopMessage:" + build.toString());
        return build;
    }

    public static SEAL_BtEarConnectState a(BtEarBean btEarBean) {
        SEAL_BtEarConnectState.Builder newBuilder = SEAL_BtEarConnectState.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setOption(SEAL_BTEAR_OPTION.SEAL_BTEAR_CONNECT);
        SEAL_BtEarInfo.Builder btEarBuilder = newBuilder.getBtEarBuilder();
        try {
            byte[] a = b.a(btEarBean.getDevice().getAddress());
            if (a != null) {
                btEarBuilder.setMac(ByteString.copyFrom(a));
            }
            btEarBuilder.setName(ByteString.copyFrom(btEarBean.getDevice().getName().getBytes("UTF-8")));
            btEarBuilder.setRssi(btEarBean.getRssi());
            btEarBuilder.setType(SEAL_BTEARTYPE.SEAL_BTEAR_NORMAL);
        } catch (UnsupportedEncodingException e) {
            ThrowableExtension.printStackTrace(e);
        }
        newBuilder.setBtEar(btEarBuilder);
        SEAL_BtEarConnectState build = newBuilder.build();
        s.a("SealCommandHelper", "getSealBtEarConnectMessage:" + build.toString());
        return build;
    }

    public static SEAL_BtEarConnectState f() {
        SEAL_BtEarConnectState.Builder newBuilder = SEAL_BtEarConnectState.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setOption(SEAL_BTEAR_OPTION.SEAL_BTEAR_DISCONNECT);
        SEAL_BtEarConnectState build = newBuilder.build();
        s.a("SealCommandHelper", "getSealBtEarDisConnectMessage:" + build.toString());
        return build;
    }

    public static SEAL_UserActionStatistics g() {
        SEAL_UserActionStatistics build = SEAL_UserActionStatistics.newBuilder().build();
        s.a("SealCommandHelper", "getSealUserActionStatisticsQueryMessage:" + build.toString());
        return build;
    }
}
