package com.ifengyu.intercom.node.transport;

import android.text.TextUtils;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.google.protobuf.ByteString;
import com.google.zxing.common.StringUtils;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.bean.BeanUserLocation;
import com.ifengyu.intercom.node.ConnectionConfiguration;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_CONNCODE;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfo;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfo.SHARK_CHTYPE;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOperate;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOperate.SHARK_CH_UERR;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelStateOperate;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelStateOperate.SHARK_STOPTION;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_Connect;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_Connect.Builder;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_Connect.SHARK_APPTYPE;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParam;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_LocationInfo;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_SWITCH;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatistics;
import com.ifengyu.intercom.ui.setting.SealSharkChannel;
import java.io.UnsupportedEncodingException;

/* compiled from: SharkCommandHelper */
public class g {
    public static SHARK_Connect a(ConnectionConfiguration connectionConfiguration) {
        Builder newBuilder = SHARK_Connect.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setConnCode(SHARK_CONNCODE.SHARK_CONNECT);
        String e = connectionConfiguration.e();
        if (!TextUtils.isEmpty(e)) {
            newBuilder.setDeviceId(Integer.parseInt(e));
        }
        newBuilder.setDeviceType(4);
        newBuilder.setAppMode(SHARK_APPTYPE.SHARK_OWN_APP);
        SHARK_Connect build = newBuilder.build();
        s.a("SharkCommandHelper", "getConnectQuery:" + build.toString());
        return build;
    }

    public static SHARK_DeviceParam a() {
        SHARK_DeviceParam.Builder newBuilder = SHARK_DeviceParam.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setFullInquiry(SHARK_SWITCH.SHARK_ON);
        SHARK_DeviceParam build = newBuilder.build();
        s.a("SharkCommandHelper", "getDeviceParamQuery:" + build.toString());
        return build;
    }

    public static SHARK_DeviceParam a(String str) {
        SHARK_DeviceParam.Builder newBuilder = SHARK_DeviceParam.newBuilder();
        newBuilder.setVersion(1);
        try {
            newBuilder.setDeviceName(ByteString.copyFrom(str.getBytes(StringUtils.GB2312)));
            newBuilder.setBleName(ByteString.copyFrom(str.getBytes("UTF-8")));
        } catch (UnsupportedEncodingException e) {
            ThrowableExtension.printStackTrace(e);
        }
        SHARK_DeviceParam build = newBuilder.build();
        s.a("SharkCommandHelper", "getDeviceParamQuery:" + build.toString());
        return build;
    }

    public static SHARK_DeviceParam b() {
        SHARK_DeviceParam.Builder newBuilder = SHARK_DeviceParam.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setActivate(1);
        SHARK_DeviceParam build = newBuilder.build();
        s.a("SharkCommandHelper", "getDeviceParamQuery:" + build.toString());
        return build;
    }

    public static SHARK_ChannelStateOperate a(boolean z) {
        int i = 1;
        SHARK_ChannelStateOperate.Builder newBuilder = SHARK_ChannelStateOperate.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setOption(SHARK_STOPTION.SHARK_ST_UPDATE);
        if (z) {
            i = 2;
        }
        newBuilder.setStateMode(i);
        SHARK_ChannelStateOperate build = newBuilder.build();
        s.a("SharkCommandHelper", "getSetDoubleCHModeChannelStateOperate:" + build.toString());
        return build;
    }

    public static SHARK_DeviceParam c() {
        SHARK_DeviceParam.Builder newBuilder = SHARK_DeviceParam.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setTimeStamp((int) (System.currentTimeMillis() / 1000));
        SHARK_DeviceParam build = newBuilder.build();
        s.a("SharkCommandHelper", "getDeviceParamQuery:" + build.toString());
        return build;
    }

    public static SHARK_DeviceParam b(boolean z) {
        SHARK_DeviceParam.Builder newBuilder = SHARK_DeviceParam.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setShareLoc(z ? SHARK_SWITCH.SHARK_ON : SHARK_SWITCH.SHARK_OFF);
        SHARK_DeviceParam build = newBuilder.build();
        s.a("SharkCommandHelper", "getDeviceParamQuery:" + build.toString());
        return build;
    }

    public static SHARK_DeviceParam a(int i) {
        SHARK_DeviceParam.Builder newBuilder = SHARK_DeviceParam.newBuilder();
        newBuilder.setVersion(1);
        SHARK_ChannelInfo.Builder newBuilder2 = SHARK_ChannelInfo.newBuilder();
        newBuilder2.setChTxPower(i);
        newBuilder.setCh(newBuilder2);
        SHARK_DeviceParam build = newBuilder.build();
        s.a("SharkCommandHelper", "getDeviceParamQuery:" + build.toString());
        return build;
    }

    public static SHARK_ChannelStateOperate a(SealSharkChannel sealSharkChannel, boolean z, SHARK_STOPTION shark_stoption) {
        SHARK_ChannelStateOperate.Builder newBuilder = SHARK_ChannelStateOperate.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setOption(shark_stoption);
        switch (shark_stoption) {
            case SHARK_ST_UPDATE:
                if (sealSharkChannel != null) {
                    SHARK_ChannelInfo.Builder newBuilder2 = SHARK_ChannelInfo.newBuilder();
                    if (sealSharkChannel.c() == 0) {
                        newBuilder2.setChType(SHARK_CHTYPE.SHARK_PUBLIC);
                    } else if (sealSharkChannel.c() == 1) {
                        newBuilder2.setChType(SHARK_CHTYPE.SHARK_REMOTE);
                    } else {
                        newBuilder2.setChType(SHARK_CHTYPE.SHARK_USERDEF);
                    }
                    newBuilder2.setChNo(sealSharkChannel.b());
                    if (!z) {
                        newBuilder.setCh2(newBuilder2);
                        break;
                    } else {
                        newBuilder.setCh1(newBuilder2);
                        break;
                    }
                }
                break;
        }
        SHARK_ChannelStateOperate build = newBuilder.build();
        s.a("SharkCommandHelper", "getChannelStateOperateMessage:" + build.toString());
        return build;
    }

    public static SHARK_ChannelInfoOperate a(SealSharkChannel sealSharkChannel, SHARK_CHOPTION shark_choption) {
        SHARK_ChannelInfoOperate.Builder newBuilder = SHARK_ChannelInfoOperate.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setOption(shark_choption);
        switch (shark_choption) {
            case SHARK_CH_INSERT:
            case SHARK_CH_MODIFY:
                if (sealSharkChannel != null) {
                    try {
                        SHARK_ChannelInfo.Builder chBuilder = newBuilder.getChBuilder();
                        if (sealSharkChannel.c() == 0) {
                            chBuilder.setChType(SHARK_CHTYPE.SHARK_PUBLIC);
                        } else if (sealSharkChannel.c() == 1) {
                            chBuilder.setChType(SHARK_CHTYPE.SHARK_REMOTE);
                        } else {
                            chBuilder.setChType(SHARK_CHTYPE.SHARK_USERDEF);
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
            case SHARK_CH_DELETE:
                SHARK_ChannelInfo.Builder chBuilder2 = newBuilder.getChBuilder();
                chBuilder2.setChNo(sealSharkChannel.b());
                if (sealSharkChannel.c() == 0) {
                    chBuilder2.setChType(SHARK_CHTYPE.SHARK_PUBLIC);
                } else if (sealSharkChannel.c() == 1) {
                    chBuilder2.setChType(SHARK_CHTYPE.SHARK_REMOTE);
                } else {
                    chBuilder2.setChType(SHARK_CHTYPE.SHARK_USERDEF);
                }
                newBuilder.setCh(chBuilder2);
                break;
            case SHARK_CH_QUERY:
                SHARK_ChannelInfo.Builder chBuilder3 = newBuilder.getChBuilder();
                if (sealSharkChannel.c() == 0) {
                    chBuilder3.setChType(SHARK_CHTYPE.SHARK_PUBLIC);
                } else if (sealSharkChannel.c() == 1) {
                    chBuilder3.setChType(SHARK_CHTYPE.SHARK_REMOTE);
                } else {
                    chBuilder3.setChType(SHARK_CHTYPE.SHARK_USERDEF);
                }
                newBuilder.setCh(chBuilder3);
                break;
        }
        SHARK_ChannelInfoOperate build = newBuilder.build();
        s.a("SharkCommandHelper", "getChannelInfoOperateQuery:" + build.toString());
        return build;
    }

    public static SHARK_ChannelInfoOperate b(SealSharkChannel sealSharkChannel, SHARK_CHOPTION shark_choption) {
        SHARK_ChannelInfoOperate.Builder newBuilder = SHARK_ChannelInfoOperate.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setOption(shark_choption);
        SHARK_ChannelInfo.Builder chBuilder = newBuilder.getChBuilder();
        if (sealSharkChannel.c() == 0) {
            chBuilder.setChType(SHARK_CHTYPE.SHARK_PUBLIC);
        } else if (sealSharkChannel.c() == 1) {
            chBuilder.setChType(SHARK_CHTYPE.SHARK_REMOTE);
        } else {
            chBuilder.setChType(SHARK_CHTYPE.SHARK_USERDEF);
        }
        chBuilder.setChNo(sealSharkChannel.b());
        newBuilder.setCh(chBuilder);
        SHARK_ChannelInfoOperate build = newBuilder.build();
        s.a("SharkCommandHelper", "getChannelInfoSingleChannelQueryMessage:" + build.toString());
        return build;
    }

    public static SHARK_ChannelInfoOperate a(SHARK_CHOPTION shark_choption) {
        SHARK_ChannelInfoOperate.Builder newBuilder = SHARK_ChannelInfoOperate.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setResult(SHARK_CH_UERR.SHARK_CH_OK);
        newBuilder.setOption(shark_choption);
        SHARK_ChannelInfoOperate build = newBuilder.build();
        s.a("SharkCommandHelper", "getChannelInfoOperateReceiveSuccessMessage:" + build.toString());
        return build;
    }

    public static SHARK_LocationInfo a(BeanUserLocation beanUserLocation) {
        SHARK_LocationInfo.Builder newBuilder = SHARK_LocationInfo.newBuilder();
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
        SHARK_LocationInfo build = newBuilder.build();
        s.a("SharkCommandHelper", "getLocationSyncMessage:" + build.toString());
        return build;
    }

    public static SHARK_UserActionStatistics d() {
        SHARK_UserActionStatistics build = SHARK_UserActionStatistics.newBuilder().build();
        s.a("SharkCommandHelper", "getSharkUserActionStatisticsQueryMessage:" + build.toString());
        return build;
    }
}
