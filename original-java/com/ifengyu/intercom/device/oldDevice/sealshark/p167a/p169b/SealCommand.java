package com.ifengyu.intercom.device.oldDevice.sealshark.p167a.p169b;

import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import com.ifengyu.intercom.device.oldDevice.p175u.BaseCommand;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.protos.SealProtos;

/* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.a.b.a */
/* loaded from: classes2.dex */
public class SealCommand extends BaseCommand {

    /* compiled from: SealCommand.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.a.b.a$a */
    /* loaded from: classes2.dex */
    public static class C3637a {

        /* renamed from: a */
        private int f13133a;

        /* renamed from: b */
        private Message f13134b;

        /* renamed from: c */
        public SealCommand m13014c() {
            return new SealCommand(this);
        }

        /* renamed from: d */
        public C3637a m13013d(int i) {
            this.f13133a = i;
            return this;
        }

        /* renamed from: e */
        public C3637a m13012e(Message message) {
            this.f13134b = message;
            return this;
        }
    }

    public SealCommand(C3637a c3637a) {
        super(c3637a.f13133a, c3637a.f13134b);
    }

    /* renamed from: c */
    public static SealCommand m13017c(byte[] bArr, int i) throws InvalidProtocolBufferException {
        C3637a c3637a = new C3637a();
        c3637a.m13013d(i);
        if (i == 20002) {
            SealProtos.SEAL_Connect parseFrom = SealProtos.SEAL_Connect.parseFrom(bArr);
            C4161y.m11049f("SealCommand", "sealConnect:\n" + parseFrom.toString());
            c3637a.m13012e(parseFrom);
        } else if (i == 20005) {
            SealProtos.SEAL_DeviceParam parseFrom2 = SealProtos.SEAL_DeviceParam.parseFrom(bArr);
            C4161y.m11049f("SealCommand", "deviceParam:\n" + parseFrom2.toString());
            c3637a.m13012e(parseFrom2);
        } else if (i == 20008) {
            SealProtos.SEAL_ChannelStateOperate parseFrom3 = SealProtos.SEAL_ChannelStateOperate.parseFrom(bArr);
            C4161y.m11049f("SealCommand", "channelStateOperate:\n" + parseFrom3.toString());
            c3637a.m13012e(parseFrom3);
        } else if (i == 20011) {
            SealProtos.SEAL_ChannelInfoOperate parseFrom4 = SealProtos.SEAL_ChannelInfoOperate.parseFrom(bArr);
            C4161y.m11049f("SealCommand", "channelInfoOperate:\n" + parseFrom4.toString());
            c3637a.m13012e(parseFrom4);
        } else if (i == 20014) {
            SealProtos.SEAL_UpGradeFileResponse parseFrom5 = SealProtos.SEAL_UpGradeFileResponse.parseFrom(bArr);
            C4161y.m11049f("SealCommand", "upGradeFileResponse:\n" + parseFrom5.toString());
            c3637a.m13012e(parseFrom5);
        } else if (i == 20016) {
            SealProtos.SEAL_LocationInfo parseFrom6 = SealProtos.SEAL_LocationInfo.parseFrom(bArr);
            C4161y.m11049f("SealCommand", "locationInfo:\n" + parseFrom6.toString());
            c3637a.m13012e(parseFrom6);
        } else if (i == 20019) {
            SealProtos.SEAL_BtEarConnectState parseFrom7 = SealProtos.SEAL_BtEarConnectState.parseFrom(bArr);
            C4161y.m11049f("SealCommand", "btEarConnectState:\n" + parseFrom7.toString());
            c3637a.m13012e(parseFrom7);
        } else if (i == 20025) {
            SealProtos.SEAL_UserActionStatistics parseFrom8 = SealProtos.SEAL_UserActionStatistics.parseFrom(bArr);
            C4161y.m11049f("SealCommand", "userActionStatistics:\n" + parseFrom8.toString());
            c3637a.m13012e(parseFrom8);
        } else if (i == 20021) {
            SealProtos.SEAL_BtEarScanControl parseFrom9 = SealProtos.SEAL_BtEarScanControl.parseFrom(bArr);
            C4161y.m11049f("SealCommand", "btEarScanControl:\n" + parseFrom9.toString());
            c3637a.m13012e(parseFrom9);
        } else if (i == 20022) {
            SealProtos.SEAL_BtEarScanItem parseFrom10 = SealProtos.SEAL_BtEarScanItem.parseFrom(bArr);
            C4161y.m11049f("SealCommand", "btEarScanItem:\n" + parseFrom10.toString());
            c3637a.m13012e(parseFrom10);
        }
        return c3637a.m13014c();
    }

    public SealCommand(int i, Message message) {
        super(i, message);
    }
}
