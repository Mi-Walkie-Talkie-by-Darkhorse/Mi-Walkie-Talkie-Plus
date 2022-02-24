package com.ifengyu.intercom.node;

import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.protos.SharkProtos;

/* compiled from: SharkCommand.java */
/* loaded from: classes2.dex */
public class m extends a {

    /* compiled from: SharkCommand.java */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private int f5931a;

        /* renamed from: b  reason: collision with root package name */
        private Message f5932b;

        public a a(int i) {
            this.f5931a = i;
            return this;
        }

        public a a(Message message) {
            this.f5932b = message;
            return this;
        }

        public m a() {
            return new m(this);
        }
    }

    public m(a aVar) {
        super(aVar.f5931a, aVar.f5932b);
    }

    public static m a(byte[] bArr, int i) throws InvalidProtocolBufferException {
        a aVar = new a();
        aVar.a(i);
        if (i == 20005) {
            SharkProtos.SHARK_DeviceParam parseFrom = SharkProtos.SHARK_DeviceParam.parseFrom(bArr);
            z.c("SharkCommand", "deviceParam:\n" + parseFrom.toString());
            aVar.a(parseFrom);
        } else if (i == 20008) {
            SharkProtos.SHARK_ChannelStateOperate parseFrom2 = SharkProtos.SHARK_ChannelStateOperate.parseFrom(bArr);
            z.c("SharkCommand", "channelStateOperate:\n" + parseFrom2.toString());
            aVar.a(parseFrom2);
        } else if (i == 20011) {
            SharkProtos.SHARK_ChannelInfoOperate parseFrom3 = SharkProtos.SHARK_ChannelInfoOperate.parseFrom(bArr);
            z.c("SharkCommand", "channelInfoOperate:\n" + parseFrom3.toString());
            aVar.a(parseFrom3);
        } else if (i == 20014) {
            SharkProtos.SHARK_UpGradeFileResponse parseFrom4 = SharkProtos.SHARK_UpGradeFileResponse.parseFrom(bArr);
            z.c("SharkCommand", "upGradeFileResponse:\n" + parseFrom4.toString());
            aVar.a(parseFrom4);
        } else if (i == 20016) {
            SharkProtos.SHARK_LocationInfo parseFrom5 = SharkProtos.SHARK_LocationInfo.parseFrom(bArr);
            z.c("SharkCommand", "locationInfo:\n" + parseFrom5.toString());
            aVar.a(parseFrom5);
        } else if (i == 20025) {
            SharkProtos.SHARK_UserActionStatistics parseFrom6 = SharkProtos.SHARK_UserActionStatistics.parseFrom(bArr);
            z.c("SharkCommand", "userActionStatistics:\n" + parseFrom6.toString());
            aVar.a(parseFrom6);
        }
        return aVar.a();
    }
}
