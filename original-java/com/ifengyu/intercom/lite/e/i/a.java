package com.ifengyu.intercom.lite.e.i;

import androidx.annotation.NonNull;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import com.ifengyu.blelib.d.c;
import com.ifengyu.blelib.d.d;
import com.ifengyu.intercom.protos.LiteProtos;

/* compiled from: LiteCommendParser.java */
/* loaded from: classes2.dex */
public class a implements d {

    /* renamed from: a  reason: collision with root package name */
    private static final String f5402a = "a";

    @Override // com.ifengyu.blelib.d.d
    public c a(int i, @NonNull byte[] bArr) {
        Message message;
        try {
            if (i == 20002) {
                message = LiteProtos.ConnectResponse.parseFrom(bArr);
            } else if (i == 20004 || i == 20006) {
                message = LiteProtos.DevResponse.parseFrom(bArr);
            } else {
                if (!(i == 20008 || i == 20013)) {
                    if (i != 20015) {
                        if (i != 20019) {
                            if (i == 20024) {
                                message = LiteProtos.LoginResponse.parseFrom(bArr);
                            } else if (!(i == 20010 || i == 20011)) {
                                if (i != 20021) {
                                    if (i == 20022) {
                                        message = LiteProtos.BatchBrodFskResponse.parseFrom(bArr);
                                    } else {
                                        throw new InvalidProtocolBufferException("Unknown commendId(" + i + ")");
                                    }
                                }
                            }
                        }
                        message = LiteProtos.BatchBrodCfgResponse.parseFrom(bArr);
                    } else {
                        message = LiteProtos.OtaResponse.parseFrom(bArr);
                    }
                }
                message = LiteProtos.ChannelInfoResponse.parseFrom(bArr);
            }
            if (com.ifengyu.blelib.a.a()) {
                String str = f5402a;
                com.ifengyu.blelib.a.a(str, "parseFrom-->cmdId : " + i + ", message: " + message.toString());
            }
            return new c(i, message);
        } catch (InvalidProtocolBufferException e) {
            com.ifengyu.blelib.a.b(f5402a, e.getMessage(), e);
            return null;
        }
    }
}
