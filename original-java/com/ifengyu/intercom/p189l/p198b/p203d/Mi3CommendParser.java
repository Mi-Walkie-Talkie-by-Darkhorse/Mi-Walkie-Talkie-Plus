package com.ifengyu.intercom.p189l.p198b.p203d;

import androidx.annotation.NonNull;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import com.ifengyu.blelib.p152c.Commend;
import com.ifengyu.blelib.p152c.CommendParser;
import com.ifengyu.intercom.protos.BleProtos;
import com.ifengyu.library.utils.C4971k;

/* renamed from: com.ifengyu.intercom.l.b.d.b */
/* loaded from: classes2.dex */
public class Mi3CommendParser implements CommendParser {

    /* renamed from: a */
    private static final String f14263a = "b";

    @Override // com.ifengyu.blelib.p152c.CommendParser
    /* renamed from: a */
    public Commend mo11555a(int i, @NonNull byte[] bArr) {
        Message parseFrom;
        try {
            if (i == 20002) {
                parseFrom = BleProtos.PublicKey.parseFrom(bArr);
            } else if (i != 20004) {
                if (i != 20011) {
                    if (i != 20021) {
                        if (i != 20034) {
                            if (i != 20051) {
                                if (i == 20053) {
                                    parseFrom = BleProtos.ImportConfigFile.parseFrom(bArr);
                                } else if (i != 20013 && i != 20014) {
                                    if (i != 20027 && i != 20028) {
                                        if (i != 20031 && i != 20032) {
                                            if (i == 20061 || i == 20062) {
                                                parseFrom = BleProtos.OtaInfo.parseFrom(bArr);
                                            } else if (i != 20071 && i != 20072) {
                                                throw new InvalidProtocolBufferException("Unknown commendId(" + i + ")");
                                            } else {
                                                parseFrom = BleProtos.LocationInfo.parseFrom(bArr);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        parseFrom = BleProtos.Channel.parseFrom(bArr);
                    }
                    parseFrom = BleProtos.Frequency.parseFrom(bArr);
                }
                parseFrom = BleProtos.DeviceInfo.parseFrom(bArr);
            } else {
                parseFrom = BleProtos.ConnectInfo.parseFrom(bArr);
            }
            if (C4971k.m8653g()) {
                String str = f14263a;
                C4971k.m8659a(str, "parseFrom--> [ cmdId = " + i + " ]\n" + parseFrom.toString());
            }
            return new Commend(i, parseFrom);
        } catch (InvalidProtocolBufferException e) {
            C4971k.m8656d(f14263a, e.getMessage(), e);
            return new Commend(i, null);
        }
    }
}
