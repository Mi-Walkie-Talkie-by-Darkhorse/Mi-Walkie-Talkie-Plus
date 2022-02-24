package com.ifengyu.intercom.i;

import androidx.annotation.NonNull;
import com.google.zxing.common.StringUtils;
import com.ifengyu.intercom.bean.BeanUserLocation;
import com.ifengyu.intercom.bean.BtEarBean;
import com.ifengyu.intercom.node.SendDataWrap;
import com.ifengyu.intercom.node.e;
import com.ifengyu.intercom.node.transport.f;
import com.ifengyu.intercom.protos.SealProtos;
import com.ifengyu.intercom.ui.setting.SealSharkChannel;

/* compiled from: SealCmdUtils.java */
/* loaded from: classes2.dex */
public class g0 {
    public static void a(String str) {
        a(SendDataWrap.a(5, f.a(str), 20004));
    }

    public static void b(int i) {
        a(SendDataWrap.a(5, f.c(i), 20004));
    }

    public static void c() {
        a(SendDataWrap.a(5, f.a(), 20004));
    }

    public static void d(boolean z) {
        a(SendDataWrap.a(5, f.b(z), 20004));
    }

    public static void e(int i) {
        a(SendDataWrap.a(5, f.e(i), 20004));
    }

    public static void f(SealSharkChannel sealSharkChannel) {
        a(SendDataWrap.a(5, f.a(sealSharkChannel, SealProtos.SEAL_ChannelStateOperate.SEAL_STOPTION.SEAL_ST_UPDATE), 20007));
    }

    public static void g() {
        a(SendDataWrap.a(5, f.e(), 20020));
    }

    public static void h() {
        a(SendDataWrap.a(5, f.b(), 20003));
    }

    public static void i() {
        a(SendDataWrap.a(5, f.f(), 20024));
    }

    public static void a(boolean z) {
        a(SendDataWrap.a(5, f.a(z), 20004));
    }

    public static void b(boolean z) {
        a(SendDataWrap.a(5, f.c(z), 20004));
    }

    public static void c(int i) {
        a(SendDataWrap.a(5, f.b(i), 20004));
    }

    public static void d(int i) {
        a(SendDataWrap.a(5, f.d(i), 20004));
    }

    public static void e(SealSharkChannel sealSharkChannel) {
        a(SendDataWrap.a(5, f.b(sealSharkChannel, SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION.SEAL_CH_QUERY), 20009));
    }

    public static void f() {
        a(SendDataWrap.a(5, f.d(), 20020));
    }

    public static void a(int i) {
        a(SendDataWrap.a(5, f.a(i), 20004));
    }

    public static void b() {
        a(SendDataWrap.a(5, f.a((SealSharkChannel) null, SealProtos.SEAL_ChannelStateOperate.SEAL_STOPTION.SEAL_ST_QUERY), 20006));
    }

    public static void c(boolean z) {
        a(SendDataWrap.a(5, f.d(z), 20004));
    }

    public static void d(SealSharkChannel sealSharkChannel) {
        a(SendDataWrap.a(5, f.a(sealSharkChannel, SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION.SEAL_CH_QUERY), 20009));
    }

    public static void e() {
        a(SendDataWrap.a(5, f.c(), 20018));
    }

    public static void a(SealSharkChannel sealSharkChannel) {
        a(SendDataWrap.a(5, f.a(sealSharkChannel, SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION.SEAL_CH_DELETE), 20010));
    }

    public static void b(SealSharkChannel sealSharkChannel) {
        a(SendDataWrap.a(5, f.a(sealSharkChannel, SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION.SEAL_CH_INSERT), 20010));
    }

    public static void c(SealSharkChannel sealSharkChannel) {
        a(SendDataWrap.a(5, f.a(sealSharkChannel, SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION.SEAL_CH_MODIFY), 20010));
    }

    public static void d() {
        a(SendDataWrap.a(5, f.g(), 20017));
    }

    public static void a() {
        a(SendDataWrap.a(5, f.a(SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION.SEAL_CH_QUERY), 20009));
    }

    public static void a(BeanUserLocation beanUserLocation) {
        a(SendDataWrap.a(5, f.a(beanUserLocation), 20016));
    }

    public static void a(BtEarBean btEarBean) {
        a(SendDataWrap.a(5, f.a(btEarBean), 20018));
    }

    private static void a(SendDataWrap sendDataWrap) {
        e.d().a(sendDataWrap);
    }

    public static SealSharkChannel a(@NonNull SealProtos.SEAL_ChannelInfo sEAL_ChannelInfo) {
        try {
            SealSharkChannel sealSharkChannel = new SealSharkChannel();
            if (sEAL_ChannelInfo.hasChNo() && sEAL_ChannelInfo.hasChType()) {
                sealSharkChannel.a(Long.valueOf(c0.a(sEAL_ChannelInfo.getChType().getNumber(), sEAL_ChannelInfo.getChNo())));
            }
            int i = -1;
            sealSharkChannel.b(sEAL_ChannelInfo.hasChNo() ? sEAL_ChannelInfo.getChNo() : -1);
            sealSharkChannel.i(sEAL_ChannelInfo.hasChType() ? sEAL_ChannelInfo.getChType().getNumber() : -1);
            sealSharkChannel.h(sEAL_ChannelInfo.hasChTxPower() ? sEAL_ChannelInfo.getChTxPower() : -1);
            sealSharkChannel.d(sEAL_ChannelInfo.hasChRxFreq() ? sEAL_ChannelInfo.getChRxFreq() : -1);
            sealSharkChannel.g(sEAL_ChannelInfo.hasChTxFreq() ? sEAL_ChannelInfo.getChTxFreq() : -1);
            boolean z = false;
            if (sealSharkChannel.n() == 2) {
                sealSharkChannel.a(sEAL_ChannelInfo.hasChName() ? sEAL_ChannelInfo.getChName().toString(StringUtils.GB2312) : null);
            } else if (c0.b()) {
                sealSharkChannel.a(sEAL_ChannelInfo.hasChName() ? sEAL_ChannelInfo.getChName().toString(StringUtils.GB2312) : null);
            } else if (sealSharkChannel.n() == 0) {
                sealSharkChannel.a(String.format("Public Channel L%1$02d", Integer.valueOf(sealSharkChannel.f() + 1)));
            } else if (sealSharkChannel.n() == 1) {
                sealSharkChannel.a(String.format("Amateur Channel H%1$02d", Integer.valueOf(sealSharkChannel.f() + 1)));
            }
            sealSharkChannel.e(sEAL_ChannelInfo.hasChSq() ? sEAL_ChannelInfo.getChSq() : -1);
            sealSharkChannel.j(sEAL_ChannelInfo.hasChVox() ? sEAL_ChannelInfo.getChVox() : -1);
            sealSharkChannel.c(sEAL_ChannelInfo.hasChRxCss() ? sEAL_ChannelInfo.getChRxCss() : -1);
            sealSharkChannel.f(sEAL_ChannelInfo.hasChTxCss() ? sEAL_ChannelInfo.getChTxCss() : -1);
            sealSharkChannel.a(sEAL_ChannelInfo.hasChElim() && sEAL_ChannelInfo.getChElim() == SealProtos.SEAL_SWITCH.SEAL_ON);
            if (sEAL_ChannelInfo.hasChBand()) {
                i = sEAL_ChannelInfo.getChBand();
            }
            sealSharkChannel.a(i);
            sealSharkChannel.c(sEAL_ChannelInfo.hasChPolite() && sEAL_ChannelInfo.getChPolite() == SealProtos.SEAL_SWITCH.SEAL_ON);
            if (sEAL_ChannelInfo.hasChType()) {
                if (sEAL_ChannelInfo.getChType().getNumber() != 2) {
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
