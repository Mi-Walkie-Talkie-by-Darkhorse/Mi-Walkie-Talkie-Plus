package com.tencent.open.web.security;

/* compiled from: ProGuard */
public class JniInterface {
    public static native boolean BackSpaceChar(boolean z, int i);

    public static native boolean clearAllPWD();

    public static native String getPWDKeyToMD5(String str);

    public static native boolean insetTextToArray(int i, String str, int i2);
}
