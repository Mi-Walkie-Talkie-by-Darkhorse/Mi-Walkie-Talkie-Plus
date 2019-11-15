package com.tencent.bugly.mimsg.crashreport.crash.jni;

import com.tencent.bugly.mimsg.crashreport.crash.CrashDetailBean;
import java.util.Map;

/* compiled from: BUGLY */
public interface NativeExceptionHandler {
    void handleNativeException(int i, int i2, long j, long j2, String str, String str2, String str3, String str4, int i3, String str5, int i4, int i5, int i6, String str6, String str7);

    void handleNativeException2(int i, int i2, long j, long j2, String str, String str2, String str3, String str4, int i3, String str5, int i4, int i5, int i6, String str6, String str7, String[] strArr);

    CrashDetailBean packageCrashDatas(String str, String str2, long j, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, byte[] bArr, Map<String, String> map, boolean z);
}
