package com.ifengyu.intercom.i;

import androidx.annotation.NonNull;
import com.google.zxing.common.StringUtils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.bean.BeanUserLocation;
import com.ifengyu.intercom.node.SendDataWrap;
import com.ifengyu.intercom.node.e;
import com.ifengyu.intercom.node.transport.g;
import com.ifengyu.intercom.protos.SharkProtos;
import com.ifengyu.intercom.ui.setting.SealSharkChannel;

/* compiled from: SharkCmdUtils.java */
/* loaded from: classes2.dex */
public class h0 {
    public static void a(String str) {
        a(SendDataWrap.a(4, g.a(str), 20004));
    }

    public static void b(boolean z) {
        a(SendDataWrap.a(4, g.b(z), 20004));
    }

    public static void c() {
        a(SendDataWrap.a(4, g.a(), 20004));
    }

    public static void d() {
        a(SendDataWrap.a(4, g.b(), 20003));
    }

    public static void e(SealSharkChannel sealSharkChannel) {
        a(SendDataWrap.a(5, g.b(sealSharkChannel, SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION.SHARK_CH_QUERY), 20009));
    }

    public static void f() {
        a(SendDataWrap.a(4, g.c(), 20004));
    }

    public static void a(boolean z) {
        a(SendDataWrap.a(4, g.a(z), 20007));
    }

    public static void b() {
        a(SendDataWrap.a(4, g.a(null, true, SharkProtos.SHARK_ChannelStateOperate.SHARK_STOPTION.SHARK_ST_QUERY), 20006));
    }

    public static void c(SealSharkChannel sealSharkChannel) {
        a(SendDataWrap.a(4, g.a(sealSharkChannel, SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION.SHARK_CH_MODIFY), 20010));
    }

    public static void d(SealSharkChannel sealSharkChannel) {
        a(SendDataWrap.a(4, g.a(sealSharkChannel, SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION.SHARK_CH_QUERY), 20009));
    }

    public static void e() {
        a(SendDataWrap.a(4, g.d(), 20024));
    }

    public static void a(int i) {
        a(SendDataWrap.a(4, g.a(i), 20004));
    }

    public static void b(SealSharkChannel sealSharkChannel) {
        a(SendDataWrap.a(4, g.a(sealSharkChannel, SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION.SHARK_CH_INSERT), 20010));
    }

    public static void a(SealSharkChannel sealSharkChannel, boolean z) {
        a(SendDataWrap.a(4, g.a(sealSharkChannel, z, SharkProtos.SHARK_ChannelStateOperate.SHARK_STOPTION.SHARK_ST_UPDATE), 20007));
    }

    public static void a(SealSharkChannel sealSharkChannel) {
        a(SendDataWrap.a(4, g.a(sealSharkChannel, SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION.SHARK_CH_DELETE), 20010));
    }

    public static void a() {
        a(SendDataWrap.a(4, g.a(SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION.SHARK_CH_QUERY), 20009));
    }

    public static void a(BeanUserLocation beanUserLocation) {
        a(SendDataWrap.a(4, g.a(beanUserLocation), 20016));
    }

    private static void a(SendDataWrap sendDataWrap) {
        e.d().a(sendDataWrap);
    }

    public static SealSharkChannel a(@NonNull SharkProtos.SHARK_ChannelInfo sHARK_ChannelInfo) {
        try {
            SealSharkChannel sealSharkChannel = new SealSharkChannel();
            if (sHARK_ChannelInfo.hasChNo() && sHARK_ChannelInfo.hasChType()) {
                sealSharkChannel.a(Long.valueOf(c0.a(sHARK_ChannelInfo.getChType().getNumber(), sHARK_ChannelInfo.getChNo())));
            }
            int i = -1;
            sealSharkChannel.b(sHARK_ChannelInfo.hasChNo() ? sHARK_ChannelInfo.getChNo() : -1);
            sealSharkChannel.i(sHARK_ChannelInfo.hasChType() ? sHARK_ChannelInfo.getChType().getNumber() : -1);
            sealSharkChannel.h(sHARK_ChannelInfo.hasChTxPower() ? sHARK_ChannelInfo.getChTxPower() : -1);
            sealSharkChannel.d(sHARK_ChannelInfo.hasChRxFreq() ? sHARK_ChannelInfo.getChRxFreq() : -1);
            sealSharkChannel.g(sHARK_ChannelInfo.hasChTxFreq() ? sHARK_ChannelInfo.getChTxFreq() : -1);
            boolean z = false;
            if (c0.b()) {
                sealSharkChannel.a(sHARK_ChannelInfo.hasChName() ? sHARK_ChannelInfo.getChName().toString(StringUtils.GB2312) : null);
            } else if (sHARK_ChannelInfo.getChType().getNumber() == 2) {
                sealSharkChannel.a(sHARK_ChannelInfo.hasChName() ? sHARK_ChannelInfo.getChName().toString(StringUtils.GB2312) : null);
            } else if (sHARK_ChannelInfo.getChType().getNumber() == 0) {
                sealSharkChannel.a(k0.a((int) R.string.channel_public_d, Integer.valueOf(sealSharkChannel.f() + 1)));
            } else if (sHARK_ChannelInfo.getChType().getNumber() == 1) {
                sealSharkChannel.a(k0.a((int) R.string.channel_long_distance_d, Integer.valueOf(sealSharkChannel.f() + 1)));
            }
            sealSharkChannel.e(sHARK_ChannelInfo.hasChSq() ? sHARK_ChannelInfo.getChSq() : -1);
            sealSharkChannel.j(sHARK_ChannelInfo.hasChVox() ? sHARK_ChannelInfo.getChVox() : -1);
            sealSharkChannel.c(sHARK_ChannelInfo.hasChRxCss() ? sHARK_ChannelInfo.getChRxCss() : -1);
            sealSharkChannel.f(sHARK_ChannelInfo.hasChTxCss() ? sHARK_ChannelInfo.getChTxCss() : -1);
            sealSharkChannel.a(sHARK_ChannelInfo.hasChElim() && sHARK_ChannelInfo.getChElim() == SharkProtos.SHARK_SWITCH.SHARK_ON);
            if (sHARK_ChannelInfo.hasChBand()) {
                i = sHARK_ChannelInfo.getChBand();
            }
            sealSharkChannel.a(i);
            sealSharkChannel.c(sHARK_ChannelInfo.hasChPolite() && sHARK_ChannelInfo.getChPolite() == SharkProtos.SHARK_SWITCH.SHARK_ON);
            if (sHARK_ChannelInfo.hasChType()) {
                if (sHARK_ChannelInfo.getChType().getNumber() != 2) {
                    z = true;
                }
                sealSharkChannel.b(z);
            }
            return sealSharkChannel;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
