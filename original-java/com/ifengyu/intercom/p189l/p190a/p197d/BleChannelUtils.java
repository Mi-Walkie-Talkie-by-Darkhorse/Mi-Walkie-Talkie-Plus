package com.ifengyu.intercom.p189l.p190a.p197d;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.oldDevice.model.DolphinChannelModel;
import com.ifengyu.intercom.device.oldDevice.model.SealSharkChannelModel;
import com.ifengyu.intercom.models.ChannelModel;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.p214p.ProtobufUtil;
import com.ifengyu.intercom.protos.BleProtos;
import com.ifengyu.intercom.protos.LiteProtos;
import com.ifengyu.intercom.protos.MitalkProtos;
import com.ifengyu.intercom.protos.SealProtos;
import com.ifengyu.intercom.protos.SharkProtos;
import com.ifengyu.library.utils.UIUtils;
import java.io.UnsupportedEncodingException;

/* renamed from: com.ifengyu.intercom.l.a.d.a */
/* loaded from: classes2.dex */
public class BleChannelUtils {
    /* renamed from: a */
    public static ChannelModel m11820a(@NonNull ChannelModel channelModel) {
        ChannelModel channelModel2 = new ChannelModel();
        channelModel2.setChannelSeq(channelModel.getChannelSeq());
        channelModel2.setReceiveFreq(channelModel.getReceiveFreq());
        channelModel2.setSendFreq(channelModel.getSendFreq());
        channelModel2.setReceiveToneType(channelModel.getReceiveToneType());
        channelModel2.setReceiveToneValue(channelModel.getReceiveToneValue());
        channelModel2.setSendToneType(channelModel.getSendToneType());
        channelModel2.setSendToneValue(channelModel.getSendToneValue());
        channelModel2.setChannelType(channelModel.getChannelType());
        if (!TextUtils.isEmpty(channelModel.getChannelName())) {
            channelModel2.setChannelName(channelModel.getChannelName());
        }
        return channelModel2;
    }

    /* renamed from: b */
    public static DolphinChannelModel m11819b(@NonNull MitalkProtos.ChannelInfo channelInfo) {
        try {
            DolphinChannelModel dolphinChannelModel = new DolphinChannelModel();
            dolphinChannelModel.setNo(channelInfo.hasNo() ? channelInfo.getNo() : 0);
            dolphinChannelModel.setType(channelInfo.hasType() ? channelInfo.getType().getNumber() : -1);
            dolphinChannelModel.setName(channelInfo.hasName() ? channelInfo.getName().toString("GB2312") : "");
            dolphinChannelModel.setFreq(channelInfo.hasFreq() ? channelInfo.getFreq() : 0);
            dolphinChannelModel.setTone(channelInfo.hasCssType() ? m11813h(channelInfo.getCssType(), channelInfo.getCssCode(), channelInfo.getCssInvert()) : 0);
            dolphinChannelModel.setFreq2(channelInfo.hasFreq2() ? channelInfo.getFreq2() : 0);
            dolphinChannelModel.setTone2(channelInfo.hasCssType2() ? m11813h(channelInfo.getCssType2(), channelInfo.getCssCode2(), channelInfo.getCssInvert2()) : 0);
            return dolphinChannelModel;
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: c */
    public static DolphinChannelModel m11818c(@NonNull MitalkProtos.ChannelInfo channelInfo, @NonNull MitalkProtos.ChannelInfo channelInfo2) {
        try {
            DolphinChannelModel dolphinChannelModel = new DolphinChannelModel();
            dolphinChannelModel.setNo(channelInfo.hasNo() ? channelInfo.getNo() : 0);
            dolphinChannelModel.setType(channelInfo.hasType() ? channelInfo.getType().getNumber() : -1);
            dolphinChannelModel.setName(channelInfo.hasName() ? channelInfo.getName().toString("GB2312") : "");
            dolphinChannelModel.setFreq(channelInfo.hasFreq() ? channelInfo.getFreq() : 0);
            dolphinChannelModel.setTone(channelInfo.hasCssType() ? m11813h(channelInfo.getCssType(), channelInfo.getCssCode(), channelInfo.getCssInvert()) : 0);
            dolphinChannelModel.setFreq2(channelInfo2.hasFreq() ? channelInfo2.getFreq() : 0);
            dolphinChannelModel.setTone2(channelInfo2.hasCssType() ? m11813h(channelInfo2.getCssType(), channelInfo2.getCssCode(), channelInfo2.getCssInvert()) : 0);
            return dolphinChannelModel;
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: d */
    public static ChannelModel m11817d(@NonNull LiteProtos.ChannelInfo channelInfo) {
        ChannelModel channelModel = new ChannelModel();
        int seq = channelInfo.getSeq() - 1;
        if (seq < 0) {
            seq = 0;
        }
        channelModel.setChannelSeq(seq);
        channelModel.setReceiveFreq(channelInfo.getRxFreq());
        channelModel.setSendFreq(channelInfo.getTxFreq());
        int rxCss = ((channelInfo.getRxCss() >> 8) & 255) - 1;
        if (rxCss < 0) {
            rxCss = 0;
        }
        channelModel.setReceiveToneType(rxCss);
        channelModel.setReceiveToneValue(channelInfo.getRxCss() & 255);
        int txCss = ((channelInfo.getTxCss() >> 8) & 255) - 1;
        channelModel.setSendToneType(txCss >= 0 ? txCss : 0);
        channelModel.setSendToneValue(channelInfo.getTxCss() & 255);
        channelModel.setChannelType(2);
        return channelModel;
    }

    /* renamed from: e */
    public static ChannelModel m11816e(@NonNull BleProtos.Frequency frequency) {
        ChannelModel channelModel = new ChannelModel();
        int seq = frequency.getSeq();
        if (seq < 0) {
            seq = 0;
        }
        channelModel.setChannelSeq(seq);
        channelModel.setReceiveFreq(frequency.getRxFreq());
        channelModel.setSendFreq(frequency.getTxFreq());
        int rxCss = ((frequency.getRxCss() >> 8) & 255) - 1;
        if (rxCss < 0) {
            rxCss = 0;
        }
        channelModel.setReceiveToneType(rxCss);
        channelModel.setReceiveToneValue(frequency.getRxCss() & 255);
        int txCss = ((frequency.getTxCss() >> 8) & 255) - 1;
        channelModel.setSendToneType(txCss >= 0 ? txCss : 0);
        channelModel.setSendToneValue(frequency.getTxCss() & 255);
        channelModel.setChannelType(frequency.getType());
        if (frequency.hasName()) {
            channelModel.setChannelName(ProtobufUtil.m11169a(frequency.getName()));
        }
        return channelModel;
    }

    /* renamed from: f */
    public static SealSharkChannelModel m11815f(@NonNull SealProtos.SEAL_ChannelInfo sEAL_ChannelInfo) {
        try {
            SealSharkChannelModel sealSharkChannelModel = new SealSharkChannelModel();
            sealSharkChannelModel.setNo(sEAL_ChannelInfo.hasChNo() ? sEAL_ChannelInfo.getChNo() : -1);
            sealSharkChannelModel.setType(sEAL_ChannelInfo.hasChType() ? sEAL_ChannelInfo.getChType().getNumber() : -1);
            sealSharkChannelModel.setTxPower(sEAL_ChannelInfo.hasChTxPower() ? sEAL_ChannelInfo.getChTxPower() : -1);
            sealSharkChannelModel.setRxFreq(sEAL_ChannelInfo.hasChRxFreq() ? sEAL_ChannelInfo.getChRxFreq() : -1);
            sealSharkChannelModel.setTxFreq(sEAL_ChannelInfo.hasChTxFreq() ? sEAL_ChannelInfo.getChTxFreq() : -1);
            if (sealSharkChannelModel.getType() == 2) {
                sealSharkChannelModel.setName(sEAL_ChannelInfo.hasChName() ? sEAL_ChannelInfo.getChName().toString("GB2312") : null);
            } else if (MethodsUtils.m11296d()) {
                sealSharkChannelModel.setName(sEAL_ChannelInfo.hasChName() ? sEAL_ChannelInfo.getChName().toString("GB2312") : null);
            } else if (sealSharkChannelModel.getType() == 0) {
                sealSharkChannelModel.setName(String.format("Public Channel L%1$02d", Integer.valueOf(sealSharkChannelModel.getNo() + 1)));
            } else if (sealSharkChannelModel.getType() == 1) {
                sealSharkChannelModel.setName(String.format("Amateur Channel H%1$02d", Integer.valueOf(sealSharkChannelModel.getNo() + 1)));
            }
            sealSharkChannelModel.setSq(sEAL_ChannelInfo.hasChSq() ? sEAL_ChannelInfo.getChSq() : -1);
            sealSharkChannelModel.setVox(sEAL_ChannelInfo.hasChVox() ? sEAL_ChannelInfo.getChVox() : -1);
            sealSharkChannelModel.setRxCss(sEAL_ChannelInfo.hasChRxCss() ? sEAL_ChannelInfo.getChRxCss() : -1);
            sealSharkChannelModel.setTxCss(sEAL_ChannelInfo.hasChTxCss() ? sEAL_ChannelInfo.getChTxCss() : -1);
            sealSharkChannelModel.setElim(sEAL_ChannelInfo.hasChElim() && sEAL_ChannelInfo.getChElim() == SealProtos.SEAL_SWITCH.SEAL_ON);
            sealSharkChannelModel.setBand(sEAL_ChannelInfo.hasChBand() ? sEAL_ChannelInfo.getChBand() : -1);
            sealSharkChannelModel.setPolite(sEAL_ChannelInfo.hasChPolite() && sEAL_ChannelInfo.getChPolite() == SealProtos.SEAL_SWITCH.SEAL_ON);
            if (sEAL_ChannelInfo.hasChType()) {
                sealSharkChannelModel.setStChannel(sEAL_ChannelInfo.getChType().getNumber() != 2);
            }
            return sealSharkChannelModel;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: g */
    public static SealSharkChannelModel m11814g(@NonNull SharkProtos.SHARK_ChannelInfo sHARK_ChannelInfo) {
        try {
            SealSharkChannelModel sealSharkChannelModel = new SealSharkChannelModel();
            sealSharkChannelModel.setNo(sHARK_ChannelInfo.hasChNo() ? sHARK_ChannelInfo.getChNo() : -1);
            sealSharkChannelModel.setType(sHARK_ChannelInfo.hasChType() ? sHARK_ChannelInfo.getChType().getNumber() : -1);
            sealSharkChannelModel.setTxPower(sHARK_ChannelInfo.hasChTxPower() ? sHARK_ChannelInfo.getChTxPower() : -1);
            sealSharkChannelModel.setRxFreq(sHARK_ChannelInfo.hasChRxFreq() ? sHARK_ChannelInfo.getChRxFreq() : -1);
            sealSharkChannelModel.setTxFreq(sHARK_ChannelInfo.hasChTxFreq() ? sHARK_ChannelInfo.getChTxFreq() : -1);
            if (MethodsUtils.m11296d()) {
                sealSharkChannelModel.setName(sHARK_ChannelInfo.hasChName() ? sHARK_ChannelInfo.getChName().toString("GB2312") : null);
            } else if (sHARK_ChannelInfo.getChType().getNumber() == 2) {
                sealSharkChannelModel.setName(sHARK_ChannelInfo.hasChName() ? sHARK_ChannelInfo.getChName().toString("GB2312") : null);
            } else if (sHARK_ChannelInfo.getChType().getNumber() == 0) {
                sealSharkChannelModel.setName(UIUtils.m8602p(R.string.channel_public_d, Integer.valueOf(sealSharkChannelModel.getNo() + 1)));
            } else if (sHARK_ChannelInfo.getChType().getNumber() == 1) {
                sealSharkChannelModel.setName(UIUtils.m8602p(R.string.channel_long_distance_d, Integer.valueOf(sealSharkChannelModel.getNo() + 1)));
            }
            sealSharkChannelModel.setSq(sHARK_ChannelInfo.hasChSq() ? sHARK_ChannelInfo.getChSq() : -1);
            sealSharkChannelModel.setVox(sHARK_ChannelInfo.hasChVox() ? sHARK_ChannelInfo.getChVox() : -1);
            sealSharkChannelModel.setRxCss(sHARK_ChannelInfo.hasChRxCss() ? sHARK_ChannelInfo.getChRxCss() : -1);
            sealSharkChannelModel.setTxCss(sHARK_ChannelInfo.hasChTxCss() ? sHARK_ChannelInfo.getChTxCss() : -1);
            sealSharkChannelModel.setElim(sHARK_ChannelInfo.hasChElim() && sHARK_ChannelInfo.getChElim() == SharkProtos.SHARK_SWITCH.SHARK_ON);
            sealSharkChannelModel.setBand(sHARK_ChannelInfo.hasChBand() ? sHARK_ChannelInfo.getChBand() : -1);
            sealSharkChannelModel.setPolite(sHARK_ChannelInfo.hasChPolite() && sHARK_ChannelInfo.getChPolite() == SharkProtos.SHARK_SWITCH.SHARK_ON);
            if (sHARK_ChannelInfo.hasChType()) {
                sealSharkChannelModel.setStChannel(sHARK_ChannelInfo.getChType().getNumber() != 2);
            }
            return sealSharkChannelModel;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: h */
    public static int m11813h(int i, int i2, int i3) {
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

    /* renamed from: i */
    public static LiteProtos.ChannelInfo m11812i(@NonNull ChannelModel channelModel) {
        return LiteProtos.ChannelInfo.newBuilder().setSeq(channelModel.getChannelSeq() + 1).setRxFreq(channelModel.getReceiveFreq()).setRxCss(channelModel.getReceiveToneValue() == 0 ? 0 : ((channelModel.getReceiveToneType() + 1) << 8) + channelModel.getReceiveToneValue()).setTxFreq(channelModel.getSendFreq()).setTxCss(channelModel.getSendToneValue() != 0 ? ((channelModel.getSendToneType() + 1) << 8) + channelModel.getSendToneValue() : 0).build();
    }

    /* renamed from: j */
    public static BleProtos.Frequency m11811j(@NonNull ChannelModel channelModel) {
        BleProtos.Frequency.Builder type = BleProtos.Frequency.newBuilder().setSeq(channelModel.getChannelSeq()).setType(channelModel.getChannelType());
        if (channelModel.getReceiveFreq() != 0 && channelModel.getSendFreq() != 0) {
            return type.setRxFreq(channelModel.getReceiveFreq()).setRxCss(channelModel.getReceiveToneValue() == 0 ? 0 : ((channelModel.getReceiveToneType() + 1) << 8) + channelModel.getReceiveToneValue()).setTxFreq(channelModel.getSendFreq()).setTxCss(channelModel.getSendToneValue() != 0 ? channelModel.getSendToneValue() + ((channelModel.getSendToneType() + 1) << 8) : 0).setName(ProtobufUtil.m11168b(TextUtils.isEmpty(channelModel.getChannelName()) ? "" : channelModel.getChannelName())).build();
        }
        return type.build();
    }
}
