package com.ifengyu.intercom.node.transport;

import android.text.TextUtils;
import com.google.protobuf.ByteString;
import com.google.zxing.common.StringUtils;
import com.ifengyu.intercom.bean.BeanUserLocation;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.node.ConnectionConfiguration;
import com.ifengyu.intercom.protos.SharkProtos;
import com.ifengyu.intercom.ui.setting.SealSharkChannel;
import java.io.UnsupportedEncodingException;

/* compiled from: SharkCommandHelper.java */
/* loaded from: classes2.dex */
public class g {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SharkCommandHelper.java */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f5964a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f5965b;

        static {
            int[] iArr = new int[SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION.values().length];
            f5965b = iArr;
            try {
                iArr[SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION.SHARK_CH_INSERT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f5965b[SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION.SHARK_CH_MODIFY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f5965b[SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION.SHARK_CH_DELETE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f5965b[SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION.SHARK_CH_QUERY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[SharkProtos.SHARK_ChannelStateOperate.SHARK_STOPTION.values().length];
            f5964a = iArr2;
            try {
                iArr2[SharkProtos.SHARK_ChannelStateOperate.SHARK_STOPTION.SHARK_ST_UPDATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f5964a[SharkProtos.SHARK_ChannelStateOperate.SHARK_STOPTION.SHARK_ST_QUERY.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public static SharkProtos.SHARK_Connect a(ConnectionConfiguration connectionConfiguration) {
        SharkProtos.SHARK_Connect.Builder newBuilder = SharkProtos.SHARK_Connect.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setConnCode(SharkProtos.SHARK_CONNCODE.SHARK_CONNECT);
        String e = connectionConfiguration.e();
        if (!TextUtils.isEmpty(e)) {
            newBuilder.setDeviceId(Integer.parseInt(e));
        }
        newBuilder.setDeviceType(4);
        newBuilder.setAppMode(SharkProtos.SHARK_Connect.SHARK_APPTYPE.SHARK_OWN_APP);
        SharkProtos.SHARK_Connect build = newBuilder.build();
        z.d("SharkCommandHelper", "getConnectQuery:" + build.toString());
        return build;
    }

    public static SharkProtos.SHARK_DeviceParam b() {
        SharkProtos.SHARK_DeviceParam.Builder newBuilder = SharkProtos.SHARK_DeviceParam.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setFullInquiry(SharkProtos.SHARK_SWITCH.SHARK_ON);
        SharkProtos.SHARK_DeviceParam build = newBuilder.build();
        z.d("SharkCommandHelper", "getDeviceParamQuery:" + build.toString());
        return build;
    }

    public static SharkProtos.SHARK_DeviceParam c() {
        SharkProtos.SHARK_DeviceParam.Builder newBuilder = SharkProtos.SHARK_DeviceParam.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setTimeStamp((int) (System.currentTimeMillis() / 1000));
        SharkProtos.SHARK_DeviceParam build = newBuilder.build();
        z.d("SharkCommandHelper", "getDeviceParamQuery:" + build.toString());
        return build;
    }

    public static SharkProtos.SHARK_UserActionStatistics d() {
        SharkProtos.SHARK_UserActionStatistics build = SharkProtos.SHARK_UserActionStatistics.newBuilder().build();
        z.d("SharkCommandHelper", "getSharkUserActionStatisticsQueryMessage:" + build.toString());
        return build;
    }

    public static SharkProtos.SHARK_DeviceParam b(boolean z) {
        SharkProtos.SHARK_DeviceParam.Builder newBuilder = SharkProtos.SHARK_DeviceParam.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setShareLoc(z ? SharkProtos.SHARK_SWITCH.SHARK_ON : SharkProtos.SHARK_SWITCH.SHARK_OFF);
        SharkProtos.SHARK_DeviceParam build = newBuilder.build();
        z.d("SharkCommandHelper", "getDeviceParamQuery:" + build.toString());
        return build;
    }

    public static SharkProtos.SHARK_DeviceParam a(String str) {
        SharkProtos.SHARK_DeviceParam.Builder newBuilder = SharkProtos.SHARK_DeviceParam.newBuilder();
        newBuilder.setVersion(1);
        try {
            newBuilder.setDeviceName(ByteString.copyFrom(str.getBytes(StringUtils.GB2312)));
            newBuilder.setBleName(ByteString.copyFrom(str.getBytes("UTF-8")));
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        SharkProtos.SHARK_DeviceParam build = newBuilder.build();
        z.d("SharkCommandHelper", "getDeviceParamQuery:" + build.toString());
        return build;
    }

    public static SharkProtos.SHARK_ChannelInfoOperate b(SealSharkChannel sealSharkChannel, SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION shark_choption) {
        SharkProtos.SHARK_ChannelInfoOperate.Builder newBuilder = SharkProtos.SHARK_ChannelInfoOperate.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setOption(shark_choption);
        SharkProtos.SHARK_ChannelInfo.Builder chBuilder = newBuilder.getChBuilder();
        if (sealSharkChannel.n() == 0) {
            chBuilder.setChType(SharkProtos.SHARK_ChannelInfo.SHARK_CHTYPE.SHARK_PUBLIC);
        } else if (sealSharkChannel.n() == 1) {
            chBuilder.setChType(SharkProtos.SHARK_ChannelInfo.SHARK_CHTYPE.SHARK_REMOTE);
        } else {
            chBuilder.setChType(SharkProtos.SHARK_ChannelInfo.SHARK_CHTYPE.SHARK_USERDEF);
        }
        chBuilder.setChNo(sealSharkChannel.f());
        newBuilder.setCh(chBuilder);
        SharkProtos.SHARK_ChannelInfoOperate build = newBuilder.build();
        z.d("SharkCommandHelper", "getChannelInfoSingleChannelQueryMessage:" + build.toString());
        return build;
    }

    public static SharkProtos.SHARK_DeviceParam a() {
        SharkProtos.SHARK_DeviceParam.Builder newBuilder = SharkProtos.SHARK_DeviceParam.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setActivate(1);
        SharkProtos.SHARK_DeviceParam build = newBuilder.build();
        z.d("SharkCommandHelper", "getDeviceParamQuery:" + build.toString());
        return build;
    }

    public static SharkProtos.SHARK_ChannelStateOperate a(boolean z) {
        SharkProtos.SHARK_ChannelStateOperate.Builder newBuilder = SharkProtos.SHARK_ChannelStateOperate.newBuilder();
        int i = 1;
        newBuilder.setVersion(1);
        newBuilder.setOption(SharkProtos.SHARK_ChannelStateOperate.SHARK_STOPTION.SHARK_ST_UPDATE);
        if (z) {
            i = 2;
        }
        newBuilder.setStateMode(i);
        SharkProtos.SHARK_ChannelStateOperate build = newBuilder.build();
        z.d("SharkCommandHelper", "getSetDoubleCHModeChannelStateOperate:" + build.toString());
        return build;
    }

    public static SharkProtos.SHARK_DeviceParam a(int i) {
        SharkProtos.SHARK_DeviceParam.Builder newBuilder = SharkProtos.SHARK_DeviceParam.newBuilder();
        newBuilder.setVersion(1);
        SharkProtos.SHARK_ChannelInfo.Builder newBuilder2 = SharkProtos.SHARK_ChannelInfo.newBuilder();
        newBuilder2.setChTxPower(i);
        newBuilder.setCh(newBuilder2);
        SharkProtos.SHARK_DeviceParam build = newBuilder.build();
        z.d("SharkCommandHelper", "getDeviceParamQuery:" + build.toString());
        return build;
    }

    public static SharkProtos.SHARK_ChannelStateOperate a(SealSharkChannel sealSharkChannel, boolean z, SharkProtos.SHARK_ChannelStateOperate.SHARK_STOPTION shark_stoption) {
        SharkProtos.SHARK_ChannelStateOperate.Builder newBuilder = SharkProtos.SHARK_ChannelStateOperate.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setOption(shark_stoption);
        if (a.f5964a[shark_stoption.ordinal()] == 1 && sealSharkChannel != null) {
            SharkProtos.SHARK_ChannelInfo.Builder newBuilder2 = SharkProtos.SHARK_ChannelInfo.newBuilder();
            if (sealSharkChannel.n() == 0) {
                newBuilder2.setChType(SharkProtos.SHARK_ChannelInfo.SHARK_CHTYPE.SHARK_PUBLIC);
            } else if (sealSharkChannel.n() == 1) {
                newBuilder2.setChType(SharkProtos.SHARK_ChannelInfo.SHARK_CHTYPE.SHARK_REMOTE);
            } else {
                newBuilder2.setChType(SharkProtos.SHARK_ChannelInfo.SHARK_CHTYPE.SHARK_USERDEF);
            }
            newBuilder2.setChNo(sealSharkChannel.f());
            if (z) {
                newBuilder.setCh1(newBuilder2);
            } else {
                newBuilder.setCh2(newBuilder2);
            }
        }
        SharkProtos.SHARK_ChannelStateOperate build = newBuilder.build();
        z.d("SharkCommandHelper", "getChannelStateOperateMessage:" + build.toString());
        return build;
    }

    public static SharkProtos.SHARK_ChannelInfoOperate a(SealSharkChannel sealSharkChannel, SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION shark_choption) {
        SharkProtos.SHARK_ChannelInfoOperate.Builder newBuilder = SharkProtos.SHARK_ChannelInfoOperate.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setOption(shark_choption);
        int i = a.f5965b[shark_choption.ordinal()];
        if (i == 1 || i == 2) {
            if (sealSharkChannel != null) {
                try {
                    SharkProtos.SHARK_ChannelInfo.Builder chBuilder = newBuilder.getChBuilder();
                    if (sealSharkChannel.n() == 0) {
                        chBuilder.setChType(SharkProtos.SHARK_ChannelInfo.SHARK_CHTYPE.SHARK_PUBLIC);
                    } else if (sealSharkChannel.n() == 1) {
                        chBuilder.setChType(SharkProtos.SHARK_ChannelInfo.SHARK_CHTYPE.SHARK_REMOTE);
                    } else {
                        chBuilder.setChType(SharkProtos.SHARK_ChannelInfo.SHARK_CHTYPE.SHARK_USERDEF);
                    }
                    chBuilder.setChNo(sealSharkChannel.f()).setChRxFreq(sealSharkChannel.i()).setChTxFreq(sealSharkChannel.l()).setChName(ByteString.copyFrom(sealSharkChannel.e(), StringUtils.GB2312)).setChRxCss(sealSharkChannel.h()).setChTxCss(sealSharkChannel.k());
                    newBuilder.setCh(chBuilder);
                } catch (UnsupportedEncodingException e) {
                    e.printStackTrace();
                }
            }
        } else if (i == 3) {
            SharkProtos.SHARK_ChannelInfo.Builder chBuilder2 = newBuilder.getChBuilder();
            chBuilder2.setChNo(sealSharkChannel.f());
            if (sealSharkChannel.n() == 0) {
                chBuilder2.setChType(SharkProtos.SHARK_ChannelInfo.SHARK_CHTYPE.SHARK_PUBLIC);
            } else if (sealSharkChannel.n() == 1) {
                chBuilder2.setChType(SharkProtos.SHARK_ChannelInfo.SHARK_CHTYPE.SHARK_REMOTE);
            } else {
                chBuilder2.setChType(SharkProtos.SHARK_ChannelInfo.SHARK_CHTYPE.SHARK_USERDEF);
            }
            newBuilder.setCh(chBuilder2);
        } else if (i == 4) {
            SharkProtos.SHARK_ChannelInfo.Builder chBuilder3 = newBuilder.getChBuilder();
            if (sealSharkChannel.n() == 0) {
                chBuilder3.setChType(SharkProtos.SHARK_ChannelInfo.SHARK_CHTYPE.SHARK_PUBLIC);
            } else if (sealSharkChannel.n() == 1) {
                chBuilder3.setChType(SharkProtos.SHARK_ChannelInfo.SHARK_CHTYPE.SHARK_REMOTE);
            } else {
                chBuilder3.setChType(SharkProtos.SHARK_ChannelInfo.SHARK_CHTYPE.SHARK_USERDEF);
            }
            newBuilder.setCh(chBuilder3);
        }
        SharkProtos.SHARK_ChannelInfoOperate build = newBuilder.build();
        z.d("SharkCommandHelper", "getChannelInfoOperateQuery:" + build.toString());
        return build;
    }

    public static SharkProtos.SHARK_ChannelInfoOperate a(SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION shark_choption) {
        SharkProtos.SHARK_ChannelInfoOperate.Builder newBuilder = SharkProtos.SHARK_ChannelInfoOperate.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setResult(SharkProtos.SHARK_ChannelInfoOperate.SHARK_CH_UERR.SHARK_CH_OK);
        newBuilder.setOption(shark_choption);
        SharkProtos.SHARK_ChannelInfoOperate build = newBuilder.build();
        z.d("SharkCommandHelper", "getChannelInfoOperateReceiveSuccessMessage:" + build.toString());
        return build;
    }

    public static SharkProtos.SHARK_LocationInfo a(BeanUserLocation beanUserLocation) {
        SharkProtos.SHARK_LocationInfo.Builder newBuilder = SharkProtos.SHARK_LocationInfo.newBuilder();
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
        SharkProtos.SHARK_LocationInfo build = newBuilder.build();
        z.d("SharkCommandHelper", "getLocationSyncMessage:" + build.toString());
        return build;
    }
}
