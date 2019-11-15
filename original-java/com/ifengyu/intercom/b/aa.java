package com.ifengyu.intercom.b;

import android.support.annotation.NonNull;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.google.protobuf.Message;
import com.google.zxing.common.StringUtils;
import com.ifengyu.intercom.bean.BeanUserLocation;
import com.ifengyu.intercom.bean.BtEarBean;
import com.ifengyu.intercom.node.SendDataWrap;
import com.ifengyu.intercom.node.transport.f;
import com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfo;
import com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION;
import com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelStateOperate.SEAL_STOPTION;
import com.ifengyu.intercom.protos.SealProtos.SEAL_SWITCH;
import com.ifengyu.intercom.ui.setting.SealSharkChannel;
import com.mi.milinkforgame.sdk.client.ClientConstants;

/* compiled from: SealCmdUtils */
public class aa {
    public static void a() {
        a(SendDataWrap.a(5, (Message) f.a(), (int) ClientConstants.LOGIN_RET_CODE_PASSTOKEN_NEEDED));
    }

    public static void b() {
        a(SendDataWrap.a(5, (Message) f.b(), (int) ClientConstants.LOGIN_RET_CODE_PASSTOKEN_EXPIRED));
    }

    public static void a(String str) {
        a(SendDataWrap.a(5, (Message) f.a(str), (int) ClientConstants.LOGIN_RET_CODE_PASSTOKEN_EXPIRED));
    }

    public static void a(int i) {
        a(SendDataWrap.a(5, (Message) f.d(i), (int) ClientConstants.LOGIN_RET_CODE_PASSTOKEN_EXPIRED));
    }

    public static void a(boolean z) {
        a(SendDataWrap.a(5, (Message) f.a(z), (int) ClientConstants.LOGIN_RET_CODE_PASSTOKEN_EXPIRED));
    }

    public static void b(boolean z) {
        a(SendDataWrap.a(5, (Message) f.b(z), (int) ClientConstants.LOGIN_RET_CODE_PASSTOKEN_EXPIRED));
    }

    public static void b(int i) {
        a(SendDataWrap.a(5, (Message) f.a(i), (int) ClientConstants.LOGIN_RET_CODE_PASSTOKEN_EXPIRED));
    }

    public static void c(boolean z) {
        a(SendDataWrap.a(5, (Message) f.c(z), (int) ClientConstants.LOGIN_RET_CODE_PASSTOKEN_EXPIRED));
    }

    public static void d(boolean z) {
        a(SendDataWrap.a(5, (Message) f.d(z), (int) ClientConstants.LOGIN_RET_CODE_PASSTOKEN_EXPIRED));
    }

    public static void c(int i) {
        a(SendDataWrap.a(5, (Message) f.b(i), (int) ClientConstants.LOGIN_RET_CODE_PASSTOKEN_EXPIRED));
    }

    public static void d(int i) {
        a(SendDataWrap.a(5, (Message) f.c(i), (int) ClientConstants.LOGIN_RET_CODE_PASSTOKEN_EXPIRED));
    }

    public static void e(int i) {
        a(SendDataWrap.a(5, (Message) f.e(i), (int) ClientConstants.LOGIN_RET_CODE_PASSTOKEN_EXPIRED));
    }

    public static void c() {
        a(SendDataWrap.a(5, (Message) f.a((SealSharkChannel) null, SEAL_STOPTION.SEAL_ST_QUERY), 20006));
    }

    public static void a(SealSharkChannel sealSharkChannel) {
        a(SendDataWrap.a(5, (Message) f.a(sealSharkChannel, SEAL_STOPTION.SEAL_ST_UPDATE), 20007));
    }

    public static void b(SealSharkChannel sealSharkChannel) {
        a(SendDataWrap.a(5, (Message) f.a(sealSharkChannel, SEAL_CHOPTION.SEAL_CH_INSERT), 20010));
    }

    public static void c(SealSharkChannel sealSharkChannel) {
        a(SendDataWrap.a(5, (Message) f.a(sealSharkChannel, SEAL_CHOPTION.SEAL_CH_MODIFY), 20010));
    }

    public static void d(SealSharkChannel sealSharkChannel) {
        a(SendDataWrap.a(5, (Message) f.a(sealSharkChannel, SEAL_CHOPTION.SEAL_CH_DELETE), 20010));
    }

    public static void e(SealSharkChannel sealSharkChannel) {
        a(SendDataWrap.a(5, (Message) f.a(sealSharkChannel, SEAL_CHOPTION.SEAL_CH_QUERY), 20009));
    }

    public static void f(SealSharkChannel sealSharkChannel) {
        a(SendDataWrap.a(5, (Message) f.b(sealSharkChannel, SEAL_CHOPTION.SEAL_CH_QUERY), 20009));
    }

    public static void d() {
        a(SendDataWrap.a(5, (Message) f.a(SEAL_CHOPTION.SEAL_CH_QUERY), 20009));
    }

    public static void a(BeanUserLocation beanUserLocation) {
        a(SendDataWrap.a(5, (Message) f.a(beanUserLocation), 20016));
    }

    public static void e() {
        a(SendDataWrap.a(5, (Message) f.c(), 20017));
    }

    public static void f() {
        a(SendDataWrap.a(5, (Message) f.d(), 20020));
    }

    public static void g() {
        a(SendDataWrap.a(5, (Message) f.e(), 20020));
    }

    public static void a(BtEarBean btEarBean) {
        a(SendDataWrap.a(5, (Message) f.a(btEarBean), 20018));
    }

    public static void h() {
        a(SendDataWrap.a(5, (Message) f.f(), 20018));
    }

    private static void a(SendDataWrap sendDataWrap) {
        com.ifengyu.intercom.node.f.a().a(sendDataWrap);
    }

    public static SealSharkChannel a(@NonNull SEAL_ChannelInfo sEAL_ChannelInfo) {
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
            if (sEAL_ChannelInfo.hasChNo() && sEAL_ChannelInfo.hasChType()) {
                sealSharkChannel.a(Long.valueOf(v.b(sEAL_ChannelInfo.getChType().getNumber(), sEAL_ChannelInfo.getChNo())));
            }
            sealSharkChannel.a(sEAL_ChannelInfo.hasChNo() ? sEAL_ChannelInfo.getChNo() : -1);
            if (sEAL_ChannelInfo.hasChType()) {
                i = sEAL_ChannelInfo.getChType().getNumber();
            } else {
                i = -1;
            }
            sealSharkChannel.b(i);
            if (sEAL_ChannelInfo.hasChTxPower()) {
                i2 = sEAL_ChannelInfo.getChTxPower();
            } else {
                i2 = -1;
            }
            sealSharkChannel.c(i2);
            if (sEAL_ChannelInfo.hasChRxFreq()) {
                i3 = sEAL_ChannelInfo.getChRxFreq();
            } else {
                i3 = -1;
            }
            sealSharkChannel.d(i3);
            if (sEAL_ChannelInfo.hasChTxFreq()) {
                i4 = sEAL_ChannelInfo.getChTxFreq();
            } else {
                i4 = -1;
            }
            sealSharkChannel.e(i4);
            if (sealSharkChannel.c() == 2) {
                if (sEAL_ChannelInfo.hasChName()) {
                    str2 = sEAL_ChannelInfo.getChName().toString(StringUtils.GB2312);
                } else {
                    str2 = null;
                }
                sealSharkChannel.a(str2);
            } else if (v.b()) {
                if (sEAL_ChannelInfo.hasChName()) {
                    str = sEAL_ChannelInfo.getChName().toString(StringUtils.GB2312);
                } else {
                    str = null;
                }
                sealSharkChannel.a(str);
            } else if (sealSharkChannel.c() == 0) {
                sealSharkChannel.a(String.format("Public Channel L%1$02d", new Object[]{Integer.valueOf(sealSharkChannel.b() + 1)}));
            } else if (sealSharkChannel.c() == 1) {
                sealSharkChannel.a(String.format("Amateur Channel H%1$02d", new Object[]{Integer.valueOf(sealSharkChannel.b() + 1)}));
            }
            if (sEAL_ChannelInfo.hasChSq()) {
                i5 = sEAL_ChannelInfo.getChSq();
            } else {
                i5 = -1;
            }
            sealSharkChannel.f(i5);
            if (sEAL_ChannelInfo.hasChVox()) {
                i6 = sEAL_ChannelInfo.getChVox();
            } else {
                i6 = -1;
            }
            sealSharkChannel.g(i6);
            if (sEAL_ChannelInfo.hasChRxCss()) {
                i7 = sEAL_ChannelInfo.getChRxCss();
            } else {
                i7 = -1;
            }
            sealSharkChannel.h(i7);
            if (sEAL_ChannelInfo.hasChTxCss()) {
                i8 = sEAL_ChannelInfo.getChTxCss();
            } else {
                i8 = -1;
            }
            sealSharkChannel.i(i8);
            if (!sEAL_ChannelInfo.hasChElim() || sEAL_ChannelInfo.getChElim() != SEAL_SWITCH.SEAL_ON) {
                z = false;
            } else {
                z = true;
            }
            sealSharkChannel.a(z);
            if (sEAL_ChannelInfo.hasChBand()) {
                i9 = sEAL_ChannelInfo.getChBand();
            }
            sealSharkChannel.j(i9);
            if (!sEAL_ChannelInfo.hasChPolite() || sEAL_ChannelInfo.getChPolite() != SEAL_SWITCH.SEAL_ON) {
                z2 = false;
            } else {
                z2 = true;
            }
            sealSharkChannel.b(z2);
            if (!sEAL_ChannelInfo.hasChType()) {
                return sealSharkChannel;
            }
            if (sEAL_ChannelInfo.getChType().getNumber() == 2) {
                z3 = false;
            }
            sealSharkChannel.c(z3);
            return sealSharkChannel;
        } catch (Exception e) {
            ThrowableExtension.printStackTrace(e);
            return null;
        }
    }

    public static void i() {
        a(SendDataWrap.a(5, (Message) f.g(), 20024));
    }
}
