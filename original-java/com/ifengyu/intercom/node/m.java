package com.ifengyu.intercom.node;

import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarConnectState;
import com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarScanControl;
import com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarScanItem;
import com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOperate;
import com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelStateOperate;
import com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParam;
import com.ifengyu.intercom.protos.SealProtos.SEAL_LocationInfo;
import com.ifengyu.intercom.protos.SealProtos.SEAL_UpGradeFileResponse;
import com.ifengyu.intercom.protos.SealProtos.SEAL_UserActionStatistics;

/* compiled from: SealCommand */
public class m extends a {

    /* compiled from: SealCommand */
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

        public m a() {
            return new m(this);
        }
    }

    public m(a aVar) {
        super(aVar.a, aVar.b);
    }

    public static m a(byte[] bArr, int i) throws InvalidProtocolBufferException {
        a aVar = new a();
        aVar.a(i);
        switch (i) {
            case 20005:
                SEAL_DeviceParam parseFrom = SEAL_DeviceParam.parseFrom(bArr);
                s.c("SealCommand", "deviceParam:\n" + parseFrom.toString());
                aVar.a((Message) parseFrom);
                break;
            case 20008:
                SEAL_ChannelStateOperate parseFrom2 = SEAL_ChannelStateOperate.parseFrom(bArr);
                s.c("SealCommand", "channelStateOperate:\n" + parseFrom2.toString());
                aVar.a((Message) parseFrom2);
                break;
            case 20011:
                SEAL_ChannelInfoOperate parseFrom3 = SEAL_ChannelInfoOperate.parseFrom(bArr);
                s.c("SealCommand", "channelInfoOperate:\n" + parseFrom3.toString());
                aVar.a((Message) parseFrom3);
                break;
            case 20014:
                SEAL_UpGradeFileResponse parseFrom4 = SEAL_UpGradeFileResponse.parseFrom(bArr);
                s.c("SealCommand", "upGradeFileResponse:\n" + parseFrom4.toString());
                aVar.a((Message) parseFrom4);
                break;
            case 20016:
                SEAL_LocationInfo parseFrom5 = SEAL_LocationInfo.parseFrom(bArr);
                s.c("SealCommand", "locationInfo:\n" + parseFrom5.toString());
                aVar.a((Message) parseFrom5);
                break;
            case 20019:
                SEAL_BtEarConnectState parseFrom6 = SEAL_BtEarConnectState.parseFrom(bArr);
                s.c("SealCommand", "btEarConnectState:\n" + parseFrom6.toString());
                aVar.a((Message) parseFrom6);
                break;
            case 20021:
                SEAL_BtEarScanControl parseFrom7 = SEAL_BtEarScanControl.parseFrom(bArr);
                s.c("SealCommand", "btEarScanControl:\n" + parseFrom7.toString());
                aVar.a((Message) parseFrom7);
                break;
            case 20022:
                SEAL_BtEarScanItem parseFrom8 = SEAL_BtEarScanItem.parseFrom(bArr);
                s.c("SealCommand", "btEarScanItem:\n" + parseFrom8.toString());
                aVar.a((Message) parseFrom8);
                break;
            case 20025:
                SEAL_UserActionStatistics parseFrom9 = SEAL_UserActionStatistics.parseFrom(bArr);
                s.c("SealCommand", "userActionStatistics:\n" + parseFrom9.toString());
                aVar.a((Message) parseFrom9);
                break;
        }
        return aVar.a();
    }
}
