package com.ifengyu.intercom.node.transport;

import android.support.annotation.NonNull;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.google.protobuf.ByteString;
import com.google.zxing.common.StringUtils;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.bean.BeanUserLocation;
import com.ifengyu.intercom.node.ConnectionConfiguration;
import com.ifengyu.intercom.protos.MitalkProtos.CHOPTION;
import com.ifengyu.intercom.protos.MitalkProtos.CHTYPE;
import com.ifengyu.intercom.protos.MitalkProtos.CONNCODE;
import com.ifengyu.intercom.protos.MitalkProtos.ChannelInfo;
import com.ifengyu.intercom.protos.MitalkProtos.Command;
import com.ifengyu.intercom.protos.MitalkProtos.Command.Builder;
import com.ifengyu.intercom.protos.MitalkProtos.Connect;
import com.ifengyu.intercom.protos.MitalkProtos.LocationSync;
import com.ifengyu.intercom.protos.MitalkProtos.ParamUpdate;
import com.ifengyu.intercom.protos.MitalkProtos.STATEMODE;
import com.ifengyu.intercom.protos.MitalkProtos.StateUpdate;
import com.ifengyu.intercom.ui.setting.UserChannel;
import java.io.UnsupportedEncodingException;

/* compiled from: DolphinCommandHelper */
public class d {
    public static Command a(Builder builder, BeanUserLocation beanUserLocation) {
        LocationSync.Builder newBuilder = LocationSync.newBuilder();
        newBuilder.setVersion(w.a);
        newBuilder.setTime(beanUserLocation.getTime());
        newBuilder.setLongitude(beanUserLocation.getLongitudeInt());
        newBuilder.setLatitude(beanUserLocation.getLatitudeInt());
        newBuilder.setAltitude(beanUserLocation.getAltitude());
        try {
            newBuilder.setUserName(ByteString.copyFrom(beanUserLocation.getName().getBytes(StringUtils.GB2312)));
        } catch (UnsupportedEncodingException e) {
            ThrowableExtension.printStackTrace(e);
        }
        newBuilder.setUserId(Integer.parseInt(beanUserLocation.getUserID()));
        s.a("DolphinCommandHelper", "locationSync: " + newBuilder.toString());
        builder.setLocationSync(newBuilder);
        return builder.build();
    }

    public static Command a(Builder builder) {
        ParamUpdate.Builder newBuilder = ParamUpdate.newBuilder();
        newBuilder.setVersion(w.a);
        s.a("DolphinCommandHelper", "paramUpdate: " + newBuilder.toString());
        builder.setParamQuery(newBuilder);
        return builder.build();
    }

    public static Command a(Builder builder, int i, String str) {
        ParamUpdate.Builder newBuilder = ParamUpdate.newBuilder();
        newBuilder.setVersion(w.a);
        try {
            newBuilder.setUserId(i);
            newBuilder.setUserName(ByteString.copyFrom(str.getBytes(StringUtils.GB2312)));
        } catch (UnsupportedEncodingException e) {
            ThrowableExtension.printStackTrace(e);
        }
        s.a("DolphinCommandHelper", "paramUpdate: " + newBuilder.toString());
        builder.setParamUpdate(newBuilder);
        return builder.build();
    }

    public static Command a(Builder builder, String str) {
        ParamUpdate.Builder newBuilder = ParamUpdate.newBuilder();
        newBuilder.setVersion(w.a);
        try {
            byte[] bytes = str.getBytes("UTF-8");
            byte[] bytes2 = str.getBytes(StringUtils.GB2312);
            byte[] bArr = new byte[(bytes.length + 1)];
            for (int i = 0; i < bytes.length; i++) {
                bArr[i] = bytes[i];
            }
            bArr[bArr.length - 1] = 0;
            newBuilder.setDevNameGBK(ByteString.copyFrom(bytes2));
            newBuilder.setDevNameUTF8(ByteString.copyFrom(bArr));
        } catch (UnsupportedEncodingException e) {
            ThrowableExtension.printStackTrace(e);
        }
        s.a("DolphinCommandHelper", "paramUpdate: " + newBuilder.toString());
        builder.setParamUpdate(newBuilder);
        return builder.build();
    }

    public static Command a(Builder builder, STATEMODE statemode) {
        ParamUpdate.Builder newBuilder = ParamUpdate.newBuilder();
        newBuilder.setVersion(w.a);
        newBuilder.setStateMode(statemode);
        s.a("DolphinCommandHelper", "paramUpdate: " + newBuilder.toString());
        builder.setParamUpdate(newBuilder);
        return builder.build();
    }

    public static Command a(Builder builder, int i) {
        ParamUpdate.Builder newBuilder = ParamUpdate.newBuilder();
        newBuilder.setVersion(w.a);
        newBuilder.setShareLoc(i);
        s.a("DolphinCommandHelper", "paramUpdate: " + newBuilder.toString());
        builder.setParamUpdate(newBuilder);
        return builder.build();
    }

    public static Command b(Builder builder) {
        ParamUpdate.Builder newBuilder = ParamUpdate.newBuilder();
        newBuilder.setVersion(w.a);
        newBuilder.setActivateChannel(1);
        s.a("DolphinCommandHelper", "paramUpdate: " + newBuilder.toString());
        builder.setParamUpdate(newBuilder);
        return builder.build();
    }

    public static Command a(Builder builder, UserChannel userChannel, UserChannel userChannel2, CHOPTION choption) {
        StateUpdate.Builder newBuilder = StateUpdate.newBuilder();
        newBuilder.setOption(choption);
        newBuilder.setVersion(w.a);
        switch (choption) {
            case CH_MODIFY:
            case CH_INSERT:
                if (userChannel != null) {
                    newBuilder.setCh1(a(userChannel, newBuilder.getCh1Builder()));
                }
                if (userChannel2 != null) {
                    newBuilder.setCh2(a(userChannel2, newBuilder.getCh2Builder()));
                    break;
                }
                break;
            case ST_UPDATE:
            case CH_QUERY:
            case CH_DELETE:
                if (userChannel != null) {
                    ChannelInfo.Builder ch1Builder = newBuilder.getCh1Builder();
                    CHTYPE valueOf = CHTYPE.valueOf(userChannel.c());
                    ChannelInfo.Builder no = ch1Builder.setNo(userChannel.b());
                    if (valueOf == null) {
                        valueOf = CHTYPE.SCAN;
                    }
                    no.setType(valueOf);
                    newBuilder.setCh1(ch1Builder);
                }
                if (userChannel2 != null) {
                    ChannelInfo.Builder ch2Builder = newBuilder.getCh2Builder();
                    CHTYPE valueOf2 = CHTYPE.valueOf(userChannel2.c());
                    ChannelInfo.Builder no2 = ch2Builder.setNo(userChannel2.b());
                    if (valueOf2 == null) {
                        valueOf2 = CHTYPE.SCAN;
                    }
                    no2.setType(valueOf2);
                    newBuilder.setCh2(ch2Builder);
                    break;
                }
                break;
        }
        s.b("DolphinCommandHelper", "stateUpdate:" + newBuilder.toString());
        builder.setStateQuery(newBuilder);
        return builder.build();
    }

    @NonNull
    private static ChannelInfo.Builder a(UserChannel userChannel, ChannelInfo.Builder builder) {
        try {
            builder.setNo(userChannel.b()).setType(CHTYPE.valueOf(userChannel.c())).setFreq(userChannel.e()).setName(ByteString.copyFrom(userChannel.d(), StringUtils.GB2312));
            if (userChannel.c() == 8) {
                int[] g = v.g(userChannel.f());
                int[] g2 = v.g(userChannel.h());
                builder.setFreq2(userChannel.g());
                builder.setCssType(g[0]);
                builder.setCssCode(g[1]);
                builder.setCssInvert(g[2]);
                builder.setCssType2(g2[0]);
                builder.setCssCode2(g2[1]);
                builder.setCssInvert2(g2[2]);
            }
        } catch (UnsupportedEncodingException e) {
            ThrowableExtension.printStackTrace(e);
        }
        return builder;
    }

    public static Command a(Builder builder, ConnectionConfiguration connectionConfiguration) {
        Connect.Builder newBuilder = Connect.newBuilder();
        newBuilder.setVersion(w.a);
        newBuilder.setConnCode(CONNCODE.CONNECT);
        String e = connectionConfiguration.e();
        if (e != null) {
            newBuilder.setDeviceId(Integer.parseInt(e));
        }
        s.b("DolphinCommandHelper", "connect:" + newBuilder.toString());
        builder.setConnectQuery(newBuilder);
        return builder.build();
    }
}
