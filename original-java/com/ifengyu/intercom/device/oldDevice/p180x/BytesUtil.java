package com.ifengyu.intercom.device.oldDevice.p180x;

import com.ifengyu.intercom.p214p.C4161y;
import com.xiaomi.mipush.sdk.Constants;
import java.util.Locale;

/* renamed from: com.ifengyu.intercom.device.oldDevice.x.a */
/* loaded from: classes2.dex */
public class BytesUtil {

    /* renamed from: a */
    private static final String f13657a = "a";

    /* renamed from: a */
    public static byte[] m12464a(short s) {
        return new byte[]{(byte) (s >>> 8), (byte) s};
    }

    /* renamed from: b */
    public static byte[] m12463b(String str) {
        if (str != null && str.length() != 0) {
            String[] split = str.toUpperCase(Locale.US).split(Constants.COLON_SEPARATOR);
            int length = split.length;
            String[] strArr = new String[length];
            for (int i = 0; i < length; i++) {
                strArr[i] = split[(split.length - i) - 1];
            }
            byte[] bArr = new byte[length];
            for (int i2 = 0; i2 < length; i2++) {
                bArr[i2] = (byte) Integer.parseInt(strArr[i2], 16);
            }
            return bArr;
        }
        C4161y.m11052c(f13657a, "String is null or nil");
        return null;
    }
}
