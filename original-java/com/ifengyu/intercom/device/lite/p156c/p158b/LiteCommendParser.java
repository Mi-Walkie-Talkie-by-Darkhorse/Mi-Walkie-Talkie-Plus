package com.ifengyu.intercom.device.lite.p156c.p158b;

import androidx.annotation.NonNull;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import com.ifengyu.blelib.p152c.Commend;
import com.ifengyu.blelib.p152c.CommendParser;
import com.ifengyu.intercom.protos.LiteProtos;
import com.ifengyu.library.utils.C4971k;

/* renamed from: com.ifengyu.intercom.device.lite.c.b.a */
/* loaded from: classes2.dex */
public class LiteCommendParser implements CommendParser {

    /* renamed from: a */
    private static final String f12172a = "a";

    @Override // com.ifengyu.blelib.p152c.CommendParser
    /* renamed from: a */
    public Commend mo11555a(int i, @NonNull byte[] bArr) {
        Message parseFrom;
        try {
            if (i == 20002) {
                parseFrom = LiteProtos.ConnectResponse.parseFrom(bArr);
            } else if (i != 20004 && i != 20006) {
                if (i != 20008 && i != 20013) {
                    if (i != 20015) {
                        if (i != 20019) {
                            if (i == 20024) {
                                parseFrom = LiteProtos.LoginResponse.parseFrom(bArr);
                            } else if (i != 20010 && i != 20011) {
                                if (i != 20021) {
                                    if (i == 20022) {
                                        parseFrom = LiteProtos.BatchBrodFskResponse.parseFrom(bArr);
                                    } else {
                                        throw new InvalidProtocolBufferException("Unknown commendId(" + i + ")");
                                    }
                                }
                            }
                        }
                        parseFrom = LiteProtos.BatchBrodCfgResponse.parseFrom(bArr);
                    } else {
                        parseFrom = LiteProtos.OtaResponse.parseFrom(bArr);
                    }
                }
                parseFrom = LiteProtos.ChannelInfoResponse.parseFrom(bArr);
            } else {
                parseFrom = LiteProtos.DevResponse.parseFrom(bArr);
            }
            if (C4971k.m8653g()) {
                String str = f12172a;
                C4971k.m8659a(str, "parseFrom--> [ cmdId = " + i + " ]\n" + parseFrom.toString());
            }
            return new Commend(i, parseFrom);
        } catch (InvalidProtocolBufferException e) {
            C4971k.m8656d(f12172a, e.getMessage(), e);
            return null;
        }
    }
}
