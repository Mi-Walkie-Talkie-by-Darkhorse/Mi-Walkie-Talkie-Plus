package com.ifengyu.intercom.node.transport;

import androidx.annotation.NonNull;
import com.google.protobuf.ByteString;
import com.google.zxing.common.StringUtils;
import com.ifengyu.intercom.bean.BeanUserLocation;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.node.ConnectionConfiguration;
import com.ifengyu.intercom.protos.MitalkProtos;
import com.ifengyu.intercom.ui.setting.UserChannel;
import java.io.UnsupportedEncodingException;

/* compiled from: DolphinCommandHelper.java */
/* loaded from: classes2.dex */
public class d {

    /* compiled from: DolphinCommandHelper.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f5961a;

        static {
            int[] iArr = new int[MitalkProtos.CHOPTION.values().length];
            f5961a = iArr;
            try {
                iArr[MitalkProtos.CHOPTION.CH_MODIFY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f5961a[MitalkProtos.CHOPTION.CH_INSERT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f5961a[MitalkProtos.CHOPTION.ST_UPDATE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f5961a[MitalkProtos.CHOPTION.CH_QUERY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f5961a[MitalkProtos.CHOPTION.CH_DELETE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f5961a[MitalkProtos.CHOPTION.ST_QUERY.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public static MitalkProtos.Command a(MitalkProtos.Command.Builder builder, BeanUserLocation beanUserLocation) {
        MitalkProtos.LocationSync.Builder newBuilder = MitalkProtos.LocationSync.newBuilder();
        newBuilder.setVersion(d0.f5308a);
        newBuilder.setTime(beanUserLocation.getTime());
        newBuilder.setLongitude(beanUserLocation.getLongitudeInt());
        newBuilder.setLatitude(beanUserLocation.getLatitudeInt());
        newBuilder.setAltitude(beanUserLocation.getAltitude());
        try {
            newBuilder.setUserName(ByteString.copyFrom(beanUserLocation.getName().getBytes(StringUtils.GB2312)));
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        newBuilder.setUserId(Integer.parseInt(beanUserLocation.getUserID()));
        z.d("DolphinCommandHelper", "locationSync: " + newBuilder.toString());
        builder.setLocationSync(newBuilder);
        return builder.build();
    }

    public static MitalkProtos.Command b(MitalkProtos.Command.Builder builder) {
        MitalkProtos.ParamUpdate.Builder newBuilder = MitalkProtos.ParamUpdate.newBuilder();
        newBuilder.setVersion(d0.f5308a);
        z.d("DolphinCommandHelper", "paramUpdate: " + newBuilder.toString());
        builder.setParamQuery(newBuilder);
        return builder.build();
    }

    public static MitalkProtos.Command a(MitalkProtos.Command.Builder builder, int i, String str) {
        MitalkProtos.ParamUpdate.Builder newBuilder = MitalkProtos.ParamUpdate.newBuilder();
        newBuilder.setVersion(d0.f5308a);
        try {
            newBuilder.setUserId(i);
            newBuilder.setUserName(ByteString.copyFrom(str.getBytes(StringUtils.GB2312)));
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        z.d("DolphinCommandHelper", "paramUpdate: " + newBuilder.toString());
        builder.setParamUpdate(newBuilder);
        return builder.build();
    }

    public static MitalkProtos.Command a(MitalkProtos.Command.Builder builder, String str) {
        MitalkProtos.ParamUpdate.Builder newBuilder = MitalkProtos.ParamUpdate.newBuilder();
        newBuilder.setVersion(d0.f5308a);
        try {
            byte[] bytes = str.getBytes("UTF-8");
            byte[] bytes2 = str.getBytes(StringUtils.GB2312);
            int length = bytes.length + 1;
            byte[] bArr = new byte[length];
            for (int i = 0; i < bytes.length; i++) {
                bArr[i] = bytes[i];
            }
            bArr[length - 1] = 0;
            newBuilder.setDevNameGBK(ByteString.copyFrom(bytes2));
            newBuilder.setDevNameUTF8(ByteString.copyFrom(bArr));
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        z.d("DolphinCommandHelper", "paramUpdate: " + newBuilder.toString());
        builder.setParamUpdate(newBuilder);
        return builder.build();
    }

    public static MitalkProtos.Command a(MitalkProtos.Command.Builder builder, MitalkProtos.STATEMODE statemode) {
        MitalkProtos.ParamUpdate.Builder newBuilder = MitalkProtos.ParamUpdate.newBuilder();
        newBuilder.setVersion(d0.f5308a);
        newBuilder.setStateMode(statemode);
        z.d("DolphinCommandHelper", "paramUpdate: " + newBuilder.toString());
        builder.setParamUpdate(newBuilder);
        return builder.build();
    }

    public static MitalkProtos.Command a(MitalkProtos.Command.Builder builder, int i) {
        MitalkProtos.ParamUpdate.Builder newBuilder = MitalkProtos.ParamUpdate.newBuilder();
        newBuilder.setVersion(d0.f5308a);
        newBuilder.setShareLoc(i);
        z.d("DolphinCommandHelper", "paramUpdate: " + newBuilder.toString());
        builder.setParamUpdate(newBuilder);
        return builder.build();
    }

    public static MitalkProtos.Command a(MitalkProtos.Command.Builder builder) {
        MitalkProtos.ParamUpdate.Builder newBuilder = MitalkProtos.ParamUpdate.newBuilder();
        newBuilder.setVersion(d0.f5308a);
        newBuilder.setActivateChannel(1);
        z.d("DolphinCommandHelper", "paramUpdate: " + newBuilder.toString());
        builder.setParamUpdate(newBuilder);
        return builder.build();
    }

    public static MitalkProtos.Command a(MitalkProtos.Command.Builder builder, UserChannel userChannel, UserChannel userChannel2, MitalkProtos.CHOPTION choption) {
        MitalkProtos.StateUpdate.Builder newBuilder = MitalkProtos.StateUpdate.newBuilder();
        newBuilder.setOption(choption);
        newBuilder.setVersion(d0.f5308a);
        int i = a.f5961a[choption.ordinal()];
        if (i == 1 || i == 2) {
            if (userChannel != null) {
                MitalkProtos.ChannelInfo.Builder ch1Builder = newBuilder.getCh1Builder();
                a(userChannel, ch1Builder);
                newBuilder.setCh1(ch1Builder);
            }
            if (userChannel2 != null) {
                MitalkProtos.ChannelInfo.Builder ch2Builder = newBuilder.getCh2Builder();
                a(userChannel2, ch2Builder);
                newBuilder.setCh2(ch2Builder);
            }
        } else if (i == 3 || i == 4 || i == 5) {
            if (userChannel != null) {
                MitalkProtos.ChannelInfo.Builder ch1Builder2 = newBuilder.getCh1Builder();
                MitalkProtos.CHTYPE valueOf = MitalkProtos.CHTYPE.valueOf(userChannel.h());
                MitalkProtos.ChannelInfo.Builder no2 = ch1Builder2.setNo(userChannel.e());
                if (valueOf == null) {
                    valueOf = MitalkProtos.CHTYPE.SCAN;
                }
                no2.setType(valueOf);
                newBuilder.setCh1(ch1Builder2);
            }
            if (userChannel2 != null) {
                MitalkProtos.ChannelInfo.Builder ch2Builder2 = newBuilder.getCh2Builder();
                MitalkProtos.CHTYPE valueOf2 = MitalkProtos.CHTYPE.valueOf(userChannel2.h());
                MitalkProtos.ChannelInfo.Builder no3 = ch2Builder2.setNo(userChannel2.e());
                if (valueOf2 == null) {
                    valueOf2 = MitalkProtos.CHTYPE.SCAN;
                }
                no3.setType(valueOf2);
                newBuilder.setCh2(ch2Builder2);
            }
        }
        z.a("DolphinCommandHelper", "stateUpdate:" + newBuilder.toString());
        builder.setStateQuery(newBuilder);
        return builder.build();
    }

    @NonNull
    private static MitalkProtos.ChannelInfo.Builder a(UserChannel userChannel, MitalkProtos.ChannelInfo.Builder builder) {
        try {
            builder.setNo(userChannel.e()).setType(MitalkProtos.CHTYPE.valueOf(userChannel.h())).setFreq(userChannel.a()).setName(ByteString.copyFrom(userChannel.d(), StringUtils.GB2312));
            if (userChannel.h() == 8) {
                int[] e = c0.e(userChannel.f());
                int[] e2 = c0.e(userChannel.g());
                builder.setFreq2(userChannel.b());
                builder.setCssType(e[0]);
                builder.setCssCode(e[1]);
                builder.setCssInvert(e[2]);
                builder.setCssType2(e2[0]);
                builder.setCssCode2(e2[1]);
                builder.setCssInvert2(e2[2]);
            }
        } catch (UnsupportedEncodingException e3) {
            e3.printStackTrace();
        }
        return builder;
    }

    public static MitalkProtos.Command a(MitalkProtos.Command.Builder builder, ConnectionConfiguration connectionConfiguration) {
        MitalkProtos.Connect.Builder newBuilder = MitalkProtos.Connect.newBuilder();
        newBuilder.setVersion(d0.f5308a);
        newBuilder.setConnCode(MitalkProtos.CONNCODE.CONNECT);
        String e = connectionConfiguration.e();
        if (e != null) {
            newBuilder.setDeviceId(Integer.parseInt(e));
        }
        z.a("DolphinCommandHelper", "connect:" + newBuilder.toString());
        builder.setConnectQuery(newBuilder);
        return builder.build();
    }
}
