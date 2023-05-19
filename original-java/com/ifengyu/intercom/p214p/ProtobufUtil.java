package com.ifengyu.intercom.p214p;

import com.google.protobuf.ByteString;
import java.io.UnsupportedEncodingException;

/* renamed from: com.ifengyu.intercom.p.h0 */
/* loaded from: classes2.dex */
public class ProtobufUtil {
    /* renamed from: a */
    public static String m11169a(ByteString byteString) {
        try {
            return byteString.toString("GB2312");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: b */
    public static ByteString m11168b(String str) {
        try {
            return ByteString.copyFrom(str, "GB2312");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return null;
        }
    }
}
