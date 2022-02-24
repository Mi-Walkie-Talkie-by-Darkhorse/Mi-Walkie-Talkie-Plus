package com.ifengyu.intercom.i;

import androidx.annotation.NonNull;
import com.google.zxing.common.StringUtils;
import com.ifengyu.intercom.node.e;
import com.ifengyu.intercom.protos.MitalkProtos;
import com.ifengyu.intercom.ui.setting.UserChannel;
import java.io.UnsupportedEncodingException;

/* compiled from: DolphinCmdUtils.java */
/* loaded from: classes2.dex */
public class q {
    public static int a(int i, int i2, int i3) {
        if (i != 2) {
            if (i != 3) {
                return 0;
            }
            return i2 + 1;
        } else if (i3 == 0) {
            return i2 + 41;
        } else {
            if (i3 == 1) {
                return i2 + 125;
            }
            return 0;
        }
    }

    public static void a() {
        e.d().a(MitalkProtos.CHOPTION.ST_QUERY, null, null);
    }

    public static void b(UserChannel userChannel, boolean z) {
        if (z) {
            e.d().a(MitalkProtos.CHOPTION.ST_UPDATE, userChannel, null);
        } else {
            e.d().a(MitalkProtos.CHOPTION.ST_UPDATE, null, userChannel);
        }
    }

    public static void c(UserChannel userChannel) {
        e.d().a(MitalkProtos.CHOPTION.CH_QUERY, userChannel, null);
    }

    public static void a(UserChannel userChannel, UserChannel userChannel2) {
        e.d().a(MitalkProtos.CHOPTION.CH_QUERY, userChannel, userChannel2);
    }

    public static void a(UserChannel userChannel) {
        if (d0.f5308a == 1 && userChannel.h() == 8) {
            e.d().a(MitalkProtos.CHOPTION.CH_INSERT, new UserChannel(null, userChannel.e(), userChannel.h(), userChannel.d(), userChannel.a(), userChannel.f(), 0, 0), new UserChannel(null, userChannel.e(), userChannel.h(), userChannel.d(), userChannel.b(), userChannel.g(), 0, 0));
        } else {
            e.d().a(MitalkProtos.CHOPTION.CH_INSERT, userChannel, null);
        }
    }

    public static void b(UserChannel userChannel) {
        if (d0.f5308a == 1 && userChannel.h() == 8) {
            e.d().a(MitalkProtos.CHOPTION.CH_MODIFY, new UserChannel(null, userChannel.e(), userChannel.h(), userChannel.d(), userChannel.a(), userChannel.f(), 0, 0), new UserChannel(null, userChannel.e(), userChannel.h(), userChannel.d(), userChannel.b(), userChannel.g(), 0, 0));
        } else {
            e.d().a(MitalkProtos.CHOPTION.CH_MODIFY, userChannel, null);
        }
    }

    public static void a(UserChannel userChannel, boolean z) {
        if (z) {
            e.d().a(MitalkProtos.CHOPTION.CH_DELETE, userChannel, null);
        } else {
            e.d().a(MitalkProtos.CHOPTION.CH_DELETE, null, userChannel);
        }
    }

    public static UserChannel a(@NonNull MitalkProtos.ChannelInfo channelInfo) {
        try {
            UserChannel userChannel = new UserChannel();
            userChannel.a(Long.valueOf(channelInfo.getType() == MitalkProtos.CHTYPE.RELAY ? channelInfo.getNo() + 100 : channelInfo.getNo()));
            int i = 0;
            userChannel.c(channelInfo.hasNo() ? channelInfo.getNo() : 0);
            userChannel.f(channelInfo.hasType() ? channelInfo.getType().getNumber() : -1);
            userChannel.a(channelInfo.hasName() ? channelInfo.getName().toString(StringUtils.GB2312) : "");
            userChannel.a(channelInfo.hasFreq() ? channelInfo.getFreq() : 0);
            userChannel.d(channelInfo.hasCssType() ? a(channelInfo.getCssType(), channelInfo.getCssCode(), channelInfo.getCssInvert()) : 0);
            userChannel.b(channelInfo.hasFreq2() ? channelInfo.getFreq2() : 0);
            if (channelInfo.hasCssType2()) {
                i = a(channelInfo.getCssType2(), channelInfo.getCssCode2(), channelInfo.getCssInvert2());
            }
            userChannel.e(i);
            return userChannel;
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static UserChannel a(@NonNull MitalkProtos.ChannelInfo channelInfo, @NonNull MitalkProtos.ChannelInfo channelInfo2) {
        UserChannel userChannel = new UserChannel();
        try {
            userChannel.a(Long.valueOf(channelInfo.getType() == MitalkProtos.CHTYPE.RELAY ? channelInfo.getNo() + 100 : channelInfo.getNo()));
            int i = 0;
            userChannel.c(channelInfo.hasNo() ? channelInfo.getNo() : 0);
            userChannel.f(channelInfo.hasType() ? channelInfo.getType().getNumber() : -1);
            userChannel.a(channelInfo.hasName() ? channelInfo.getName().toString(StringUtils.GB2312) : "");
            userChannel.a(channelInfo.hasFreq() ? channelInfo.getFreq() : 0);
            userChannel.d(channelInfo.hasCssType() ? a(channelInfo.getCssType(), channelInfo.getCssCode(), channelInfo.getCssInvert()) : 0);
            userChannel.b(channelInfo2.hasFreq() ? channelInfo2.getFreq() : 0);
            if (channelInfo2.hasCssType()) {
                i = a(channelInfo2.getCssType(), channelInfo2.getCssCode(), channelInfo2.getCssInvert());
            }
            userChannel.e(i);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return userChannel;
    }
}
