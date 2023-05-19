package com.ifengyu.intercom.device.oldDevice.sealshark.p171b.p173b;

import android.text.TextUtils;
import com.google.protobuf.ByteString;
import com.ifengyu.intercom.bean.BeanUserLocation;
import com.ifengyu.intercom.device.oldDevice.model.SealSharkChannelModel;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.protos.SharkProtos;
import java.io.UnsupportedEncodingException;

/* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.b.b.b */
/* loaded from: classes2.dex */
public class SharkCommandHelper {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SharkCommandHelper.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.b.b.b$a */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C3655a {

        /* renamed from: a */
        static final /* synthetic */ int[] f13187a;

        /* renamed from: b */
        static final /* synthetic */ int[] f13188b;

        static {
            int[] iArr = new int[SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION.values().length];
            f13188b = iArr;
            try {
                iArr[SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION.SHARK_CH_INSERT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f13188b[SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION.SHARK_CH_MODIFY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f13188b[SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION.SHARK_CH_DELETE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f13188b[SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION.SHARK_CH_QUERY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[SharkProtos.SHARK_ChannelStateOperate.SHARK_STOPTION.values().length];
            f13187a = iArr2;
            try {
                iArr2[SharkProtos.SHARK_ChannelStateOperate.SHARK_STOPTION.SHARK_ST_UPDATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f13187a[SharkProtos.SHARK_ChannelStateOperate.SHARK_STOPTION.SHARK_ST_QUERY.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* renamed from: a */
    public static SharkProtos.SHARK_DeviceParam m12950a() {
        SharkProtos.SHARK_DeviceParam.Builder newBuilder = SharkProtos.SHARK_DeviceParam.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setActivate(1);
        SharkProtos.SHARK_DeviceParam build = newBuilder.build();
        C4161y.m11043l("SharkCommandHelper", "getDeviceParamQuery:" + build.toString());
        return build;
    }

    /* renamed from: b */
    public static SharkProtos.SHARK_ChannelInfoOperate m12949b(SealSharkChannelModel sealSharkChannelModel, SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION shark_choption) {
        SharkProtos.SHARK_ChannelInfoOperate.Builder newBuilder = SharkProtos.SHARK_ChannelInfoOperate.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setOption(shark_choption);
        int i = C3655a.f13188b[shark_choption.ordinal()];
        if (i == 1 || i == 2) {
            if (sealSharkChannelModel != null) {
                try {
                    SharkProtos.SHARK_ChannelInfo.Builder chBuilder = newBuilder.getChBuilder();
                    if (sealSharkChannelModel.getType() == 0) {
                        chBuilder.setChType(SharkProtos.SHARK_ChannelInfo.SHARK_CHTYPE.SHARK_PUBLIC);
                    } else if (sealSharkChannelModel.getType() == 1) {
                        chBuilder.setChType(SharkProtos.SHARK_ChannelInfo.SHARK_CHTYPE.SHARK_REMOTE);
                    } else {
                        chBuilder.setChType(SharkProtos.SHARK_ChannelInfo.SHARK_CHTYPE.SHARK_USERDEF);
                    }
                    chBuilder.setChNo(sealSharkChannelModel.getNo()).setChRxFreq(sealSharkChannelModel.getRxFreq()).setChTxFreq(sealSharkChannelModel.getTxFreq()).setChName(ByteString.copyFrom(sealSharkChannelModel.getName(), "GB2312")).setChRxCss(sealSharkChannelModel.getRxCss()).setChTxCss(sealSharkChannelModel.getTxCss());
                    newBuilder.setCh(chBuilder);
                } catch (UnsupportedEncodingException e) {
                    e.printStackTrace();
                }
            }
        } else if (i == 3) {
            SharkProtos.SHARK_ChannelInfo.Builder chBuilder2 = newBuilder.getChBuilder();
            chBuilder2.setChNo(sealSharkChannelModel.getNo());
            if (sealSharkChannelModel.getType() == 0) {
                chBuilder2.setChType(SharkProtos.SHARK_ChannelInfo.SHARK_CHTYPE.SHARK_PUBLIC);
            } else if (sealSharkChannelModel.getType() == 1) {
                chBuilder2.setChType(SharkProtos.SHARK_ChannelInfo.SHARK_CHTYPE.SHARK_REMOTE);
            } else {
                chBuilder2.setChType(SharkProtos.SHARK_ChannelInfo.SHARK_CHTYPE.SHARK_USERDEF);
            }
            newBuilder.setCh(chBuilder2);
        } else if (i == 4) {
            SharkProtos.SHARK_ChannelInfo.Builder chBuilder3 = newBuilder.getChBuilder();
            if (sealSharkChannelModel.getType() == 0) {
                chBuilder3.setChType(SharkProtos.SHARK_ChannelInfo.SHARK_CHTYPE.SHARK_PUBLIC);
            } else if (sealSharkChannelModel.getType() == 1) {
                chBuilder3.setChType(SharkProtos.SHARK_ChannelInfo.SHARK_CHTYPE.SHARK_REMOTE);
            } else {
                chBuilder3.setChType(SharkProtos.SHARK_ChannelInfo.SHARK_CHTYPE.SHARK_USERDEF);
            }
            newBuilder.setCh(chBuilder3);
        }
        SharkProtos.SHARK_ChannelInfoOperate build = newBuilder.build();
        C4161y.m11043l("SharkCommandHelper", "getChannelInfoOperateQuery:" + build.toString());
        return build;
    }

    /* renamed from: c */
    public static SharkProtos.SHARK_ChannelInfoOperate m12948c(SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION shark_choption) {
        SharkProtos.SHARK_ChannelInfoOperate.Builder newBuilder = SharkProtos.SHARK_ChannelInfoOperate.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setResult(SharkProtos.SHARK_ChannelInfoOperate.SHARK_CH_UERR.SHARK_CH_OK);
        newBuilder.setOption(shark_choption);
        SharkProtos.SHARK_ChannelInfoOperate build = newBuilder.build();
        C4161y.m11043l("SharkCommandHelper", "getChannelInfoOperateReceiveSuccessMessage:" + build.toString());
        return build;
    }

    /* renamed from: d */
    public static SharkProtos.SHARK_ChannelInfoOperate m12947d(SealSharkChannelModel sealSharkChannelModel, SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION shark_choption) {
        SharkProtos.SHARK_ChannelInfoOperate.Builder newBuilder = SharkProtos.SHARK_ChannelInfoOperate.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setOption(shark_choption);
        SharkProtos.SHARK_ChannelInfo.Builder chBuilder = newBuilder.getChBuilder();
        if (sealSharkChannelModel.getType() == 0) {
            chBuilder.setChType(SharkProtos.SHARK_ChannelInfo.SHARK_CHTYPE.SHARK_PUBLIC);
        } else if (sealSharkChannelModel.getType() == 1) {
            chBuilder.setChType(SharkProtos.SHARK_ChannelInfo.SHARK_CHTYPE.SHARK_REMOTE);
        } else {
            chBuilder.setChType(SharkProtos.SHARK_ChannelInfo.SHARK_CHTYPE.SHARK_USERDEF);
        }
        chBuilder.setChNo(sealSharkChannelModel.getNo());
        newBuilder.setCh(chBuilder);
        SharkProtos.SHARK_ChannelInfoOperate build = newBuilder.build();
        C4161y.m11043l("SharkCommandHelper", "getChannelInfoSingleChannelQueryMessage:" + build.toString());
        return build;
    }

    /* renamed from: e */
    public static SharkProtos.SHARK_ChannelStateOperate m12946e(SealSharkChannelModel sealSharkChannelModel, boolean z, SharkProtos.SHARK_ChannelStateOperate.SHARK_STOPTION shark_stoption) {
        SharkProtos.SHARK_ChannelStateOperate.Builder newBuilder = SharkProtos.SHARK_ChannelStateOperate.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setOption(shark_stoption);
        if (C3655a.f13187a[shark_stoption.ordinal()] == 1 && sealSharkChannelModel != null) {
            SharkProtos.SHARK_ChannelInfo.Builder newBuilder2 = SharkProtos.SHARK_ChannelInfo.newBuilder();
            if (sealSharkChannelModel.getType() == 0) {
                newBuilder2.setChType(SharkProtos.SHARK_ChannelInfo.SHARK_CHTYPE.SHARK_PUBLIC);
            } else if (sealSharkChannelModel.getType() == 1) {
                newBuilder2.setChType(SharkProtos.SHARK_ChannelInfo.SHARK_CHTYPE.SHARK_REMOTE);
            } else {
                newBuilder2.setChType(SharkProtos.SHARK_ChannelInfo.SHARK_CHTYPE.SHARK_USERDEF);
            }
            newBuilder2.setChNo(sealSharkChannelModel.getNo());
            if (z) {
                newBuilder.setCh1(newBuilder2);
            } else {
                newBuilder.setCh2(newBuilder2);
            }
        }
        SharkProtos.SHARK_ChannelStateOperate build = newBuilder.build();
        C4161y.m11043l("SharkCommandHelper", "getChannelStateOperateMessage:" + build.toString());
        return build;
    }

    /* renamed from: f */
    public static SharkProtos.SHARK_Connect m12945f(String str) {
        SharkProtos.SHARK_Connect.Builder newBuilder = SharkProtos.SHARK_Connect.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setConnCode(SharkProtos.SHARK_CONNCODE.SHARK_CONNECT);
        if (!TextUtils.isEmpty(str)) {
            newBuilder.setDeviceId(Integer.parseInt(str));
        }
        newBuilder.setDeviceType(4);
        newBuilder.setAppMode(SharkProtos.SHARK_Connect.SHARK_APPTYPE.SHARK_OWN_APP);
        SharkProtos.SHARK_Connect build = newBuilder.build();
        C4161y.m11043l("SharkCommandHelper", "getConnectQuery:" + build.toString());
        return build;
    }

    /* renamed from: g */
    public static SharkProtos.SHARK_DeviceParam m12944g() {
        SharkProtos.SHARK_DeviceParam.Builder newBuilder = SharkProtos.SHARK_DeviceParam.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setFullInquiry(SharkProtos.SHARK_SWITCH.SHARK_ON);
        SharkProtos.SHARK_DeviceParam build = newBuilder.build();
        C4161y.m11043l("SharkCommandHelper", "getDeviceParamQuery:" + build.toString());
        return build;
    }

    /* renamed from: h */
    public static SharkProtos.SHARK_LocationInfo m12943h(BeanUserLocation beanUserLocation) {
        SharkProtos.SHARK_LocationInfo.Builder newBuilder = SharkProtos.SHARK_LocationInfo.newBuilder();
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
        SharkProtos.SHARK_LocationInfo build = newBuilder.build();
        C4161y.m11043l("SharkCommandHelper", "getLocationSyncMessage:" + build.toString());
        return build;
    }

    /* renamed from: i */
    public static SharkProtos.SHARK_ChannelStateOperate m12942i(boolean z) {
        SharkProtos.SHARK_ChannelStateOperate.Builder newBuilder = SharkProtos.SHARK_ChannelStateOperate.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setOption(SharkProtos.SHARK_ChannelStateOperate.SHARK_STOPTION.SHARK_ST_UPDATE);
        newBuilder.setStateMode(z ? 2 : 1);
        SharkProtos.SHARK_ChannelStateOperate build = newBuilder.build();
        C4161y.m11043l("SharkCommandHelper", "getSetDoubleCHModeChannelStateOperate:" + build.toString());
        return build;
    }

    /* renamed from: j */
    public static SharkProtos.SHARK_DeviceParam m12941j(String str) {
        SharkProtos.SHARK_DeviceParam.Builder newBuilder = SharkProtos.SHARK_DeviceParam.newBuilder();
        newBuilder.setVersion(1);
        try {
            newBuilder.setDeviceName(ByteString.copyFrom(str.getBytes("GB2312")));
            newBuilder.setBleName(ByteString.copyFrom(str.getBytes("UTF-8")));
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        SharkProtos.SHARK_DeviceParam build = newBuilder.build();
        C4161y.m11043l("SharkCommandHelper", "getDeviceParamQuery:" + build.toString());
        return build;
    }

    /* renamed from: k */
    public static SharkProtos.SHARK_DeviceParam m12940k(int i) {
        SharkProtos.SHARK_DeviceParam.Builder newBuilder = SharkProtos.SHARK_DeviceParam.newBuilder();
        newBuilder.setVersion(1);
        SharkProtos.SHARK_ChannelInfo.Builder newBuilder2 = SharkProtos.SHARK_ChannelInfo.newBuilder();
        newBuilder2.setChTxPower(i);
        newBuilder.setCh(newBuilder2);
        SharkProtos.SHARK_DeviceParam build = newBuilder.build();
        C4161y.m11043l("SharkCommandHelper", "getDeviceParamQuery:" + build.toString());
        return build;
    }

    /* renamed from: l */
    public static SharkProtos.SHARK_DeviceParam m12939l(boolean z) {
        SharkProtos.SHARK_DeviceParam.Builder newBuilder = SharkProtos.SHARK_DeviceParam.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setShareLoc(z ? SharkProtos.SHARK_SWITCH.SHARK_ON : SharkProtos.SHARK_SWITCH.SHARK_OFF);
        SharkProtos.SHARK_DeviceParam build = newBuilder.build();
        C4161y.m11043l("SharkCommandHelper", "getDeviceParamQuery:" + build.toString());
        return build;
    }

    /* renamed from: m */
    public static SharkProtos.SHARK_DeviceParam m12938m() {
        SharkProtos.SHARK_DeviceParam.Builder newBuilder = SharkProtos.SHARK_DeviceParam.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setTimeStamp((int) (System.currentTimeMillis() / 1000));
        SharkProtos.SHARK_DeviceParam build = newBuilder.build();
        C4161y.m11043l("SharkCommandHelper", "getDeviceParamQuery:" + build.toString());
        return build;
    }

    /* renamed from: n */
    public static SharkProtos.SHARK_UserActionStatistics m12937n() {
        SharkProtos.SHARK_UserActionStatistics build = SharkProtos.SHARK_UserActionStatistics.newBuilder().build();
        C4161y.m11043l("SharkCommandHelper", "getSharkUserActionStatisticsQueryMessage:" + build.toString());
        return build;
    }
}
