package com.xiaomi.accountsdk.diagnosis;

import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public interface DiagnosisLogInterface {
    void log(String str);

    String logGetRequest(String str, Map<String, String> map, String str2, Map<String, String> map2, Map<String, String> map3);

    String logPostRequest(String str, Map<String, String> map, String str2, Map<String, String> map2, Map<String, String> map3, Map<String, String> map4);

    void logRequestException(Exception exc);

    void logResponse(String str, String str2, Map<String, List<String>> map, Map<String, String> map2);

    void logResponseCode(String str, int i);

    void logResponseDecryptedBody(String str);
}
