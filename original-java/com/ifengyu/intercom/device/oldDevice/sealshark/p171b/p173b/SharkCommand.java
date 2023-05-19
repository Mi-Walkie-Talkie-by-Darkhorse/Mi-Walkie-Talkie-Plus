package com.ifengyu.intercom.device.oldDevice.sealshark.p171b.p173b;

import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import com.ifengyu.intercom.device.oldDevice.p175u.BaseCommand;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.protos.SharkProtos;

/* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.b.b.a */
/* loaded from: classes2.dex */
public class SharkCommand extends BaseCommand {

    /* compiled from: SharkCommand.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.b.b.a$a */
    /* loaded from: classes2.dex */
    public static class C3654a {

        /* renamed from: a */
        private int f13185a;

        /* renamed from: b */
        private Message f13186b;

        /* renamed from: c */
        public SharkCommand m12953c() {
            return new SharkCommand(this);
        }

        /* renamed from: d */
        public C3654a m12952d(int i) {
            this.f13185a = i;
            return this;
        }

        /* renamed from: e */
        public C3654a m12951e(Message message) {
            this.f13186b = message;
            return this;
        }
    }

    public SharkCommand(C3654a c3654a) {
        super(c3654a.f13185a, c3654a.f13186b);
    }

    /* renamed from: c */
    public static SharkCommand m12956c(byte[] bArr, int i) throws InvalidProtocolBufferException {
        C3654a c3654a = new C3654a();
        c3654a.m12952d(i);
        if (i == 20002) {
            SharkProtos.SHARK_Connect parseFrom = SharkProtos.SHARK_Connect.parseFrom(bArr);
            C4161y.m11049f("SharkCommand", "sharkConnect:\n" + parseFrom.toString());
            c3654a.m12951e(parseFrom);
        } else if (i == 20005) {
            SharkProtos.SHARK_DeviceParam parseFrom2 = SharkProtos.SHARK_DeviceParam.parseFrom(bArr);
            C4161y.m11049f("SharkCommand", "deviceParam:\n" + parseFrom2.toString());
            c3654a.m12951e(parseFrom2);
        } else if (i == 20008) {
            SharkProtos.SHARK_ChannelStateOperate parseFrom3 = SharkProtos.SHARK_ChannelStateOperate.parseFrom(bArr);
            C4161y.m11049f("SharkCommand", "channelStateOperate:\n" + parseFrom3.toString());
            c3654a.m12951e(parseFrom3);
        } else if (i == 20011) {
            SharkProtos.SHARK_ChannelInfoOperate parseFrom4 = SharkProtos.SHARK_ChannelInfoOperate.parseFrom(bArr);
            C4161y.m11049f("SharkCommand", "channelInfoOperate:\n" + parseFrom4.toString());
            c3654a.m12951e(parseFrom4);
        } else if (i == 20014) {
            SharkProtos.SHARK_UpGradeFileResponse parseFrom5 = SharkProtos.SHARK_UpGradeFileResponse.parseFrom(bArr);
            C4161y.m11049f("SharkCommand", "upGradeFileResponse:\n" + parseFrom5.toString());
            c3654a.m12951e(parseFrom5);
        } else if (i == 20016) {
            SharkProtos.SHARK_LocationInfo parseFrom6 = SharkProtos.SHARK_LocationInfo.parseFrom(bArr);
            C4161y.m11049f("SharkCommand", "locationInfo:\n" + parseFrom6.toString());
            c3654a.m12951e(parseFrom6);
        } else if (i == 20025) {
            SharkProtos.SHARK_UserActionStatistics parseFrom7 = SharkProtos.SHARK_UserActionStatistics.parseFrom(bArr);
            C4161y.m11049f("SharkCommand", "userActionStatistics:\n" + parseFrom7.toString());
            c3654a.m12951e(parseFrom7);
        }
        return c3654a.m12953c();
    }

    public SharkCommand(int i, Message message) {
        super(i, message);
    }
}
