package com.ifengyu.intercom.b;

import android.support.annotation.NonNull;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.google.protobuf.Message;
import com.google.zxing.common.StringUtils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.bean.BeanUserLocation;
import com.ifengyu.intercom.node.SendDataWrap;
import com.ifengyu.intercom.node.f;
import com.ifengyu.intercom.node.transport.g;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfo;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelStateOperate.SHARK_STOPTION;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_SWITCH;
import com.ifengyu.intercom.ui.setting.SealSharkChannel;
import com.mi.milinkforgame.sdk.client.ClientConstants;

/* compiled from: SharkCmdUtils */
public class ab {
    public static void a() {
        a(SendDataWrap.a(4, (Message) g.a(), (int) ClientConstants.LOGIN_RET_CODE_PASSTOKEN_NEEDED));
    }

    public static void b() {
        a(SendDataWrap.a(4, (Message) g.b(), (int) ClientConstants.LOGIN_RET_CODE_PASSTOKEN_EXPIRED));
    }

    public static void a(String str) {
        a(SendDataWrap.a(4, (Message) g.a(str), (int) ClientConstants.LOGIN_RET_CODE_PASSTOKEN_EXPIRED));
    }

    public static void a(boolean z) {
        a(SendDataWrap.a(4, (Message) g.a(z), 20007));
    }

    public static void a(int i) {
        a(SendDataWrap.a(4, (Message) g.a(i), (int) ClientConstants.LOGIN_RET_CODE_PASSTOKEN_EXPIRED));
    }

    public static void b(boolean z) {
        a(SendDataWrap.a(4, (Message) g.b(z), (int) ClientConstants.LOGIN_RET_CODE_PASSTOKEN_EXPIRED));
    }

    public static void c() {
        a(SendDataWrap.a(4, (Message) g.c(), (int) ClientConstants.LOGIN_RET_CODE_PASSTOKEN_EXPIRED));
    }

    public static void d() {
        a(SendDataWrap.a(4, (Message) g.a(null, true, SHARK_STOPTION.SHARK_ST_QUERY), 20006));
    }

    public static void a(SealSharkChannel sealSharkChannel, boolean z) {
        a(SendDataWrap.a(4, (Message) g.a(sealSharkChannel, z, SHARK_STOPTION.SHARK_ST_UPDATE), 20007));
    }

    public static void a(SealSharkChannel sealSharkChannel) {
        a(SendDataWrap.a(4, (Message) g.a(sealSharkChannel, SHARK_CHOPTION.SHARK_CH_INSERT), 20010));
    }

    public static void b(SealSharkChannel sealSharkChannel) {
        a(SendDataWrap.a(4, (Message) g.a(sealSharkChannel, SHARK_CHOPTION.SHARK_CH_MODIFY), 20010));
    }

    public static void c(SealSharkChannel sealSharkChannel) {
        a(SendDataWrap.a(4, (Message) g.a(sealSharkChannel, SHARK_CHOPTION.SHARK_CH_DELETE), 20010));
    }

    public static void d(SealSharkChannel sealSharkChannel) {
        a(SendDataWrap.a(4, (Message) g.a(sealSharkChannel, SHARK_CHOPTION.SHARK_CH_QUERY), 20009));
    }

    public static void e(SealSharkChannel sealSharkChannel) {
        a(SendDataWrap.a(5, (Message) g.b(sealSharkChannel, SHARK_CHOPTION.SHARK_CH_QUERY), 20009));
    }

    public static void e() {
        a(SendDataWrap.a(4, (Message) g.a(SHARK_CHOPTION.SHARK_CH_QUERY), 20009));
    }

    public static void a(BeanUserLocation beanUserLocation) {
        a(SendDataWrap.a(4, (Message) g.a(beanUserLocation), 20016));
    }

    private static void a(SendDataWrap sendDataWrap) {
        f.a().a(sendDataWrap);
    }

    public static SealSharkChannel a(@NonNull SHARK_ChannelInfo sHARK_ChannelInfo) {
        int i;
        int i2;
        int i3;
        int i4;
        String str;
        int i5;
        int i6;
        int i7;
        int i8;
        boolean z;
        boolean z2;
        String str2;
        boolean z3 = true;
        int i9 = -1;
        try {
            SealSharkChannel sealSharkChannel = new SealSharkChannel();
            if (sHARK_ChannelInfo.hasChNo() && sHARK_ChannelInfo.hasChType()) {
                sealSharkChannel.a(Long.valueOf(v.b(sHARK_ChannelInfo.getChType().getNumber(), sHARK_ChannelInfo.getChNo())));
            }
            sealSharkChannel.a(sHARK_ChannelInfo.hasChNo() ? sHARK_ChannelInfo.getChNo() : -1);
            if (sHARK_ChannelInfo.hasChType()) {
                i = sHARK_ChannelInfo.getChType().getNumber();
            } else {
                i = -1;
            }
            sealSharkChannel.b(i);
            if (sHARK_ChannelInfo.hasChTxPower()) {
                i2 = sHARK_ChannelInfo.getChTxPower();
            } else {
                i2 = -1;
            }
            sealSharkChannel.c(i2);
            if (sHARK_ChannelInfo.hasChRxFreq()) {
                i3 = sHARK_ChannelInfo.getChRxFreq();
            } else {
                i3 = -1;
            }
            sealSharkChannel.d(i3);
            if (sHARK_ChannelInfo.hasChTxFreq()) {
                i4 = sHARK_ChannelInfo.getChTxFreq();
            } else {
                i4 = -1;
            }
            sealSharkChannel.e(i4);
            if (v.b()) {
                if (sHARK_ChannelInfo.hasChName()) {
                    str2 = sHARK_ChannelInfo.getChName().toString(StringUtils.GB2312);
                } else {
                    str2 = null;
                }
                sealSharkChannel.a(str2);
            } else if (sHARK_ChannelInfo.getChType().getNumber() == 2) {
                if (sHARK_ChannelInfo.hasChName()) {
                    str = sHARK_ChannelInfo.getChName().toString(StringUtils.GB2312);
                } else {
                    str = null;
                }
                sealSharkChannel.a(str);
            } else if (sHARK_ChannelInfo.getChType().getNumber() == 0) {
                sealSharkChannel.a(ad.a((int) R.string.channel_public_d, Integer.valueOf(sealSharkChannel.b() + 1)));
            } else if (sHARK_ChannelInfo.getChType().getNumber() == 1) {
                sealSharkChannel.a(ad.a((int) R.string.channel_long_distance_d, Integer.valueOf(sealSharkChannel.b() + 1)));
            }
            if (sHARK_ChannelInfo.hasChSq()) {
                i5 = sHARK_ChannelInfo.getChSq();
            } else {
                i5 = -1;
            }
            sealSharkChannel.f(i5);
            if (sHARK_ChannelInfo.hasChVox()) {
                i6 = sHARK_ChannelInfo.getChVox();
            } else {
                i6 = -1;
            }
            sealSharkChannel.g(i6);
            if (sHARK_ChannelInfo.hasChRxCss()) {
                i7 = sHARK_ChannelInfo.getChRxCss();
            } else {
                i7 = -1;
            }
            sealSharkChannel.h(i7);
            if (sHARK_ChannelInfo.hasChTxCss()) {
                i8 = sHARK_ChannelInfo.getChTxCss();
            } else {
                i8 = -1;
            }
            sealSharkChannel.i(i8);
            if (!sHARK_ChannelInfo.hasChElim() || sHARK_ChannelInfo.getChElim() != SHARK_SWITCH.SHARK_ON) {
                z = false;
            } else {
                z = true;
            }
            sealSharkChannel.a(z);
            if (sHARK_ChannelInfo.hasChBand()) {
                i9 = sHARK_ChannelInfo.getChBand();
            }
            sealSharkChannel.j(i9);
            if (!sHARK_ChannelInfo.hasChPolite() || sHARK_ChannelInfo.getChPolite() != SHARK_SWITCH.SHARK_ON) {
                z2 = false;
            } else {
                z2 = true;
            }
            sealSharkChannel.b(z2);
            if (!sHARK_ChannelInfo.hasChType()) {
                return sealSharkChannel;
            }
            if (sHARK_ChannelInfo.getChType().getNumber() == 2) {
                z3 = false;
            }
            sealSharkChannel.c(z3);
            return sealSharkChannel;
        } catch (Exception e) {
            ThrowableExtension.printStackTrace(e);
            return null;
        }
    }

    public static void f() {
        a(SendDataWrap.a(4, (Message) g.d(), 20024));
    }
}
