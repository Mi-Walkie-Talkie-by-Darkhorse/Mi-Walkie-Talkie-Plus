package com.ifengyu.intercom.b;

import android.support.annotation.NonNull;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.google.zxing.common.StringUtils;
import com.ifengyu.intercom.node.f;
import com.ifengyu.intercom.protos.MitalkProtos.CHOPTION;
import com.ifengyu.intercom.protos.MitalkProtos.CHTYPE;
import com.ifengyu.intercom.protos.MitalkProtos.ChannelInfo;
import com.ifengyu.intercom.ui.setting.UserChannel;
import java.io.UnsupportedEncodingException;

/* compiled from: DolphinCmdUtils */
public class m {
    public static void a(UserChannel userChannel, boolean z) {
        if (z) {
            f.a().a(CHOPTION.ST_UPDATE, userChannel, null);
        } else {
            f.a().a(CHOPTION.ST_UPDATE, null, userChannel);
        }
    }

    public static void a() {
        f.a().a(CHOPTION.ST_QUERY, null, null);
    }

    public static void a(UserChannel userChannel) {
        f.a().a(CHOPTION.CH_QUERY, userChannel, null);
    }

    public static void a(UserChannel userChannel, UserChannel userChannel2) {
        f.a().a(CHOPTION.CH_QUERY, userChannel, userChannel2);
    }

    public static void b(UserChannel userChannel) {
        if (w.a == 1 && userChannel.c() == 8) {
            f.a().a(CHOPTION.CH_INSERT, new UserChannel(null, userChannel.b(), userChannel.c(), userChannel.d(), userChannel.e(), userChannel.f(), 0, 0), new UserChannel(null, userChannel.b(), userChannel.c(), userChannel.d(), userChannel.g(), userChannel.h(), 0, 0));
        } else {
            f.a().a(CHOPTION.CH_INSERT, userChannel, null);
        }
    }

    public static void c(UserChannel userChannel) {
        if (w.a == 1 && userChannel.c() == 8) {
            f.a().a(CHOPTION.CH_MODIFY, new UserChannel(null, userChannel.b(), userChannel.c(), userChannel.d(), userChannel.e(), userChannel.f(), 0, 0), new UserChannel(null, userChannel.b(), userChannel.c(), userChannel.d(), userChannel.g(), userChannel.h(), 0, 0));
        } else {
            f.a().a(CHOPTION.CH_MODIFY, userChannel, null);
        }
    }

    public static void b(UserChannel userChannel, boolean z) {
        if (z) {
            f.a().a(CHOPTION.CH_DELETE, userChannel, null);
        } else {
            f.a().a(CHOPTION.CH_DELETE, null, userChannel);
        }
    }

    public static int a(int i, int i2, int i3) {
        switch (i) {
            case 2:
                if (i3 == 0) {
                    return i2 + 41;
                }
                if (i3 == 1) {
                    return i2 + 125;
                }
                return 0;
            case 3:
                return i2 + 1;
            default:
                return 0;
        }
    }

    public static UserChannel a(@NonNull ChannelInfo channelInfo) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5 = 0;
        try {
            UserChannel userChannel = new UserChannel();
            userChannel.a(Long.valueOf((long) (channelInfo.getType() == CHTYPE.RELAY ? channelInfo.getNo() + 100 : channelInfo.getNo())));
            if (channelInfo.hasNo()) {
                i = channelInfo.getNo();
            } else {
                i = 0;
            }
            userChannel.a(i);
            userChannel.b(channelInfo.hasType() ? channelInfo.getType().getNumber() : -1);
            userChannel.a(channelInfo.hasName() ? channelInfo.getName().toString(StringUtils.GB2312) : "");
            if (channelInfo.hasFreq()) {
                i2 = channelInfo.getFreq();
            } else {
                i2 = 0;
            }
            userChannel.c(i2);
            if (channelInfo.hasCssType()) {
                i3 = a(channelInfo.getCssType(), channelInfo.getCssCode(), channelInfo.getCssInvert());
            } else {
                i3 = 0;
            }
            userChannel.d(i3);
            if (channelInfo.hasFreq2()) {
                i4 = channelInfo.getFreq2();
            } else {
                i4 = 0;
            }
            userChannel.e(i4);
            if (channelInfo.hasCssType2()) {
                i5 = a(channelInfo.getCssType2(), channelInfo.getCssCode2(), channelInfo.getCssInvert2());
            }
            userChannel.f(i5);
            return userChannel;
        } catch (UnsupportedEncodingException e) {
            ThrowableExtension.printStackTrace(e);
            return null;
        }
    }

    public static UserChannel a(@NonNull ChannelInfo channelInfo, @NonNull ChannelInfo channelInfo2) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5 = 0;
        UserChannel userChannel = new UserChannel();
        try {
            userChannel.a(Long.valueOf((long) (channelInfo.getType() == CHTYPE.RELAY ? channelInfo.getNo() + 100 : channelInfo.getNo())));
            if (channelInfo.hasNo()) {
                i = channelInfo.getNo();
            } else {
                i = 0;
            }
            userChannel.a(i);
            userChannel.b(channelInfo.hasType() ? channelInfo.getType().getNumber() : -1);
            userChannel.a(channelInfo.hasName() ? channelInfo.getName().toString(StringUtils.GB2312) : "");
            if (channelInfo.hasFreq()) {
                i2 = channelInfo.getFreq();
            } else {
                i2 = 0;
            }
            userChannel.c(i2);
            if (channelInfo.hasCssType()) {
                i3 = a(channelInfo.getCssType(), channelInfo.getCssCode(), channelInfo.getCssInvert());
            } else {
                i3 = 0;
            }
            userChannel.d(i3);
            if (channelInfo2.hasFreq()) {
                i4 = channelInfo2.getFreq();
            } else {
                i4 = 0;
            }
            userChannel.e(i4);
            if (channelInfo2.hasCssType()) {
                i5 = a(channelInfo2.getCssType(), channelInfo2.getCssCode(), channelInfo2.getCssInvert());
            }
            userChannel.f(i5);
        } catch (UnsupportedEncodingException e) {
            ThrowableExtension.printStackTrace(e);
        }
        return userChannel;
    }
}
