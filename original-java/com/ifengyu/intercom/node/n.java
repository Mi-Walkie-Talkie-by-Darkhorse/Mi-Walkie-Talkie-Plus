package com.ifengyu.intercom.node;

import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOperate;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelStateOperate;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParam;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_LocationInfo;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_UpGradeFileResponse;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatistics;

/* compiled from: SharkCommand */
public class n extends a {

    /* compiled from: SharkCommand */
    public static class a {
        /* access modifiers changed from: private */
        public int a;
        /* access modifiers changed from: private */
        public Message b;

        public a a(int i) {
            this.a = i;
            return this;
        }

        public a a(Message message) {
            this.b = message;
            return this;
        }

        public n a() {
            return new n(this);
        }
    }

    public n(a aVar) {
        super(aVar.a, aVar.b);
    }

    public static n a(byte[] bArr, int i) throws InvalidProtocolBufferException {
        a aVar = new a();
        aVar.a(i);
        switch (i) {
            case 20005:
                SHARK_DeviceParam parseFrom = SHARK_DeviceParam.parseFrom(bArr);
                s.c("SharkCommand", "deviceParam:\n" + parseFrom.toString());
                aVar.a((Message) parseFrom);
                break;
            case 20008:
                SHARK_ChannelStateOperate parseFrom2 = SHARK_ChannelStateOperate.parseFrom(bArr);
                s.c("SharkCommand", "channelStateOperate:\n" + parseFrom2.toString());
                aVar.a((Message) parseFrom2);
                break;
            case 20011:
                SHARK_ChannelInfoOperate parseFrom3 = SHARK_ChannelInfoOperate.parseFrom(bArr);
                s.c("SharkCommand", "channelInfoOperate:\n" + parseFrom3.toString());
                aVar.a((Message) parseFrom3);
                break;
            case 20014:
                SHARK_UpGradeFileResponse parseFrom4 = SHARK_UpGradeFileResponse.parseFrom(bArr);
                s.c("SharkCommand", "upGradeFileResponse:\n" + parseFrom4.toString());
                aVar.a((Message) parseFrom4);
                break;
            case 20016:
                SHARK_LocationInfo parseFrom5 = SHARK_LocationInfo.parseFrom(bArr);
                s.c("SharkCommand", "locationInfo:\n" + parseFrom5.toString());
                aVar.a((Message) parseFrom5);
                break;
            case 20025:
                SHARK_UserActionStatistics parseFrom6 = SHARK_UserActionStatistics.parseFrom(bArr);
                s.c("SharkCommand", "userActionStatistics:\n" + parseFrom6.toString());
                aVar.a((Message) parseFrom6);
                break;
        }
        return aVar.a();
    }
}
