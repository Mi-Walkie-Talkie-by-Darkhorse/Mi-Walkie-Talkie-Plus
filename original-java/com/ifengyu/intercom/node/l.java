package com.ifengyu.intercom.node;

import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.protos.SealProtos;

/* compiled from: SealCommand.java */
/* loaded from: classes2.dex */
public class l extends a {

    /* compiled from: SealCommand.java */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private int f5929a;

        /* renamed from: b  reason: collision with root package name */
        private Message f5930b;

        public a a(int i) {
            this.f5929a = i;
            return this;
        }

        public a a(Message message) {
            this.f5930b = message;
            return this;
        }

        public l a() {
            return new l(this);
        }
    }

    public l(a aVar) {
        super(aVar.f5929a, aVar.f5930b);
    }

    public static l a(byte[] bArr, int i) throws InvalidProtocolBufferException {
        a aVar = new a();
        aVar.a(i);
        if (i == 20005) {
            SealProtos.SEAL_DeviceParam parseFrom = SealProtos.SEAL_DeviceParam.parseFrom(bArr);
            z.c("SealCommand", "deviceParam:\n" + parseFrom.toString());
            aVar.a(parseFrom);
        } else if (i == 20008) {
            SealProtos.SEAL_ChannelStateOperate parseFrom2 = SealProtos.SEAL_ChannelStateOperate.parseFrom(bArr);
            z.c("SealCommand", "channelStateOperate:\n" + parseFrom2.toString());
            aVar.a(parseFrom2);
        } else if (i == 20011) {
            SealProtos.SEAL_ChannelInfoOperate parseFrom3 = SealProtos.SEAL_ChannelInfoOperate.parseFrom(bArr);
            z.c("SealCommand", "channelInfoOperate:\n" + parseFrom3.toString());
            aVar.a(parseFrom3);
        } else if (i == 20014) {
            SealProtos.SEAL_UpGradeFileResponse parseFrom4 = SealProtos.SEAL_UpGradeFileResponse.parseFrom(bArr);
            z.c("SealCommand", "upGradeFileResponse:\n" + parseFrom4.toString());
            aVar.a(parseFrom4);
        } else if (i == 20016) {
            SealProtos.SEAL_LocationInfo parseFrom5 = SealProtos.SEAL_LocationInfo.parseFrom(bArr);
            z.c("SealCommand", "locationInfo:\n" + parseFrom5.toString());
            aVar.a(parseFrom5);
        } else if (i == 20019) {
            SealProtos.SEAL_BtEarConnectState parseFrom6 = SealProtos.SEAL_BtEarConnectState.parseFrom(bArr);
            z.c("SealCommand", "btEarConnectState:\n" + parseFrom6.toString());
            aVar.a(parseFrom6);
        } else if (i == 20025) {
            SealProtos.SEAL_UserActionStatistics parseFrom7 = SealProtos.SEAL_UserActionStatistics.parseFrom(bArr);
            z.c("SealCommand", "userActionStatistics:\n" + parseFrom7.toString());
            aVar.a(parseFrom7);
        } else if (i == 20021) {
            SealProtos.SEAL_BtEarScanControl parseFrom8 = SealProtos.SEAL_BtEarScanControl.parseFrom(bArr);
            z.c("SealCommand", "btEarScanControl:\n" + parseFrom8.toString());
            aVar.a(parseFrom8);
        } else if (i == 20022) {
            SealProtos.SEAL_BtEarScanItem parseFrom9 = SealProtos.SEAL_BtEarScanItem.parseFrom(bArr);
            z.c("SealCommand", "btEarScanItem:\n" + parseFrom9.toString());
            aVar.a(parseFrom9);
        }
        return aVar.a();
    }
}
