package com.ifengyu.intercom.device.oldDevice.p177w.p179b;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.google.protobuf.ByteString;
import com.ifengyu.intercom.bean.BeanUserLocation;
import com.ifengyu.intercom.device.oldDevice.model.DolphinChannelModel;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.p214p.MiTalkClientUtil;
import com.ifengyu.intercom.protos.MitalkProtos;
import java.io.UnsupportedEncodingException;

/* renamed from: com.ifengyu.intercom.device.oldDevice.w.b.a */
/* loaded from: classes2.dex */
public class DolphinCommandHelper {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DolphinCommandHelper.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.w.b.a$a */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C3839a {

        /* renamed from: a */
        static final /* synthetic */ int[] f13656a;

        static {
            int[] iArr = new int[MitalkProtos.CHOPTION.values().length];
            f13656a = iArr;
            try {
                iArr[MitalkProtos.CHOPTION.CH_MODIFY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f13656a[MitalkProtos.CHOPTION.CH_INSERT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f13656a[MitalkProtos.CHOPTION.ST_UPDATE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f13656a[MitalkProtos.CHOPTION.CH_QUERY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f13656a[MitalkProtos.CHOPTION.CH_DELETE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f13656a[MitalkProtos.CHOPTION.ST_QUERY.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* renamed from: a */
    public static MitalkProtos.Command m12474a() {
        MitalkProtos.Command.Builder newBuilder = MitalkProtos.Command.newBuilder();
        MitalkProtos.ParamUpdate.Builder newBuilder2 = MitalkProtos.ParamUpdate.newBuilder();
        newBuilder2.setVersion(MiTalkClientUtil.f14440a);
        newBuilder2.setActivateChannel(1);
        C4161y.m11043l("DolphinCommandHelper", "paramUpdate: " + newBuilder2.toString());
        newBuilder.setParamUpdate(newBuilder2);
        return newBuilder.build();
    }

    @NonNull
    /* renamed from: b */
    private static MitalkProtos.ChannelInfo.Builder m12473b(DolphinChannelModel dolphinChannelModel, MitalkProtos.ChannelInfo.Builder builder) {
        try {
            builder.setNo(dolphinChannelModel.getNo()).setType(MitalkProtos.CHTYPE.valueOf(dolphinChannelModel.getType())).setFreq(dolphinChannelModel.getFreq()).setName(ByteString.copyFrom(dolphinChannelModel.getName(), "GB2312"));
            if (dolphinChannelModel.getType() == 8) {
                int[] m11280t = MethodsUtils.m11280t(dolphinChannelModel.getTone());
                int[] m11280t2 = MethodsUtils.m11280t(dolphinChannelModel.getTone2());
                builder.setFreq2(dolphinChannelModel.getFreq2());
                builder.setCssType(m11280t[0]);
                builder.setCssCode(m11280t[1]);
                builder.setCssInvert(m11280t[2]);
                builder.setCssType2(m11280t2[0]);
                builder.setCssCode2(m11280t2[1]);
                builder.setCssInvert2(m11280t2[2]);
            }
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return builder;
    }

    /* renamed from: c */
    public static MitalkProtos.Command m12472c(String str) {
        MitalkProtos.Command.Builder newBuilder = MitalkProtos.Command.newBuilder();
        MitalkProtos.Connect.Builder newBuilder2 = MitalkProtos.Connect.newBuilder();
        newBuilder2.setVersion(MiTalkClientUtil.f14440a);
        newBuilder2.setConnCode(MitalkProtos.CONNCODE.CONNECT);
        if (!TextUtils.isEmpty(str)) {
            newBuilder2.setDeviceId(Integer.parseInt(str));
        }
        C4161y.m11054a("DolphinCommandHelper", "connect:" + newBuilder2.toString());
        newBuilder.setConnectQuery(newBuilder2);
        return newBuilder.build();
    }

    /* renamed from: d */
    public static MitalkProtos.Command m12471d(BeanUserLocation beanUserLocation) {
        MitalkProtos.Command.Builder newBuilder = MitalkProtos.Command.newBuilder();
        MitalkProtos.LocationSync.Builder newBuilder2 = MitalkProtos.LocationSync.newBuilder();
        newBuilder2.setVersion(MiTalkClientUtil.f14440a);
        newBuilder2.setTime(beanUserLocation.getTime());
        newBuilder2.setLongitude(beanUserLocation.getLongitudeInt());
        newBuilder2.setLatitude(beanUserLocation.getLatitudeInt());
        newBuilder2.setAltitude(beanUserLocation.getAltitude());
        try {
            newBuilder2.setUserName(ByteString.copyFrom(beanUserLocation.getName().getBytes("GB2312")));
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        newBuilder2.setUserId(Integer.parseInt(beanUserLocation.getUserID()));
        C4161y.m11043l("DolphinCommandHelper", "locationSync: " + newBuilder2.toString());
        newBuilder.setLocationSync(newBuilder2);
        return newBuilder.build();
    }

    /* renamed from: e */
    public static MitalkProtos.Command m12470e() {
        MitalkProtos.Command.Builder newBuilder = MitalkProtos.Command.newBuilder();
        MitalkProtos.ParamUpdate.Builder newBuilder2 = MitalkProtos.ParamUpdate.newBuilder();
        newBuilder2.setVersion(MiTalkClientUtil.f14440a);
        C4161y.m11043l("DolphinCommandHelper", "paramUpdate: " + newBuilder2.toString());
        newBuilder.setParamQuery(newBuilder2);
        return newBuilder.build();
    }

    /* renamed from: f */
    public static MitalkProtos.Command m12469f(String str) {
        MitalkProtos.Command.Builder newBuilder = MitalkProtos.Command.newBuilder();
        MitalkProtos.ParamUpdate.Builder newBuilder2 = MitalkProtos.ParamUpdate.newBuilder();
        newBuilder2.setVersion(MiTalkClientUtil.f14440a);
        try {
            byte[] bytes = str.getBytes("UTF-8");
            byte[] bytes2 = str.getBytes("GB2312");
            int length = bytes.length + 1;
            byte[] bArr = new byte[length];
            for (int i = 0; i < bytes.length; i++) {
                bArr[i] = bytes[i];
            }
            bArr[length - 1] = 0;
            newBuilder2.setDevNameGBK(ByteString.copyFrom(bytes2));
            newBuilder2.setDevNameUTF8(ByteString.copyFrom(bArr));
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        C4161y.m11043l("DolphinCommandHelper", "paramUpdate: " + newBuilder2.toString());
        newBuilder.setParamUpdate(newBuilder2);
        return newBuilder.build();
    }

    /* renamed from: g */
    public static MitalkProtos.Command m12468g(int i, String str) {
        MitalkProtos.Command.Builder newBuilder = MitalkProtos.Command.newBuilder();
        MitalkProtos.ParamUpdate.Builder newBuilder2 = MitalkProtos.ParamUpdate.newBuilder();
        newBuilder2.setVersion(MiTalkClientUtil.f14440a);
        try {
            newBuilder2.setUserId(i);
            newBuilder2.setUserName(ByteString.copyFrom(str.getBytes("GB2312")));
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        C4161y.m11043l("DolphinCommandHelper", "paramUpdate: " + newBuilder2.toString());
        newBuilder.setParamUpdate(newBuilder2);
        return newBuilder.build();
    }

    /* renamed from: h */
    public static MitalkProtos.Command m12467h(MitalkProtos.STATEMODE statemode) {
        MitalkProtos.Command.Builder newBuilder = MitalkProtos.Command.newBuilder();
        MitalkProtos.ParamUpdate.Builder newBuilder2 = MitalkProtos.ParamUpdate.newBuilder();
        newBuilder2.setVersion(MiTalkClientUtil.f14440a);
        newBuilder2.setStateMode(statemode);
        C4161y.m11043l("DolphinCommandHelper", "paramUpdate: " + newBuilder2.toString());
        newBuilder.setParamUpdate(newBuilder2);
        return newBuilder.build();
    }

    /* renamed from: i */
    public static MitalkProtos.Command m12466i(int i) {
        MitalkProtos.Command.Builder newBuilder = MitalkProtos.Command.newBuilder();
        MitalkProtos.ParamUpdate.Builder newBuilder2 = MitalkProtos.ParamUpdate.newBuilder();
        newBuilder2.setVersion(MiTalkClientUtil.f14440a);
        newBuilder2.setShareLoc(i);
        C4161y.m11043l("DolphinCommandHelper", "paramUpdate: " + newBuilder2.toString());
        newBuilder.setParamUpdate(newBuilder2);
        return newBuilder.build();
    }

    /* renamed from: j */
    public static MitalkProtos.Command m12465j(DolphinChannelModel dolphinChannelModel, DolphinChannelModel dolphinChannelModel2, MitalkProtos.CHOPTION choption) {
        MitalkProtos.Command.Builder newBuilder = MitalkProtos.Command.newBuilder();
        MitalkProtos.StateUpdate.Builder newBuilder2 = MitalkProtos.StateUpdate.newBuilder();
        newBuilder2.setOption(choption);
        newBuilder2.setVersion(MiTalkClientUtil.f14440a);
        int i = C3839a.f13656a[choption.ordinal()];
        if (i == 1 || i == 2) {
            if (dolphinChannelModel != null) {
                MitalkProtos.ChannelInfo.Builder ch1Builder = newBuilder2.getCh1Builder();
                m12473b(dolphinChannelModel, ch1Builder);
                newBuilder2.setCh1(ch1Builder);
            }
            if (dolphinChannelModel2 != null) {
                MitalkProtos.ChannelInfo.Builder ch2Builder = newBuilder2.getCh2Builder();
                m12473b(dolphinChannelModel2, ch2Builder);
                newBuilder2.setCh2(ch2Builder);
            }
        } else if (i == 3 || i == 4 || i == 5) {
            if (dolphinChannelModel != null) {
                MitalkProtos.ChannelInfo.Builder ch1Builder2 = newBuilder2.getCh1Builder();
                MitalkProtos.CHTYPE valueOf = MitalkProtos.CHTYPE.valueOf(dolphinChannelModel.getType());
                MitalkProtos.ChannelInfo.Builder no2 = ch1Builder2.setNo(dolphinChannelModel.getNo());
                if (valueOf == null) {
                    valueOf = MitalkProtos.CHTYPE.SCAN;
                }
                no2.setType(valueOf);
                newBuilder2.setCh1(ch1Builder2);
            }
            if (dolphinChannelModel2 != null) {
                MitalkProtos.ChannelInfo.Builder ch2Builder2 = newBuilder2.getCh2Builder();
                MitalkProtos.CHTYPE valueOf2 = MitalkProtos.CHTYPE.valueOf(dolphinChannelModel2.getType());
                MitalkProtos.ChannelInfo.Builder no3 = ch2Builder2.setNo(dolphinChannelModel2.getNo());
                if (valueOf2 == null) {
                    valueOf2 = MitalkProtos.CHTYPE.SCAN;
                }
                no3.setType(valueOf2);
                newBuilder2.setCh2(ch2Builder2);
            }
        }
        C4161y.m11054a("DolphinCommandHelper", "stateUpdate:" + newBuilder2.toString());
        newBuilder.setStateQuery(newBuilder2);
        return newBuilder.build();
    }
}
