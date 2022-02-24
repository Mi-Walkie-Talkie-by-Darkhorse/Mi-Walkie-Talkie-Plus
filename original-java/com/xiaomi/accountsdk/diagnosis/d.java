package com.xiaomi.accountsdk.diagnosis;

import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
class d implements DiagnosisLogInterface {
    @Override // com.xiaomi.accountsdk.diagnosis.DiagnosisLogInterface
    public void log(String str) {
    }

    @Override // com.xiaomi.accountsdk.diagnosis.DiagnosisLogInterface
    public String logGetRequest(String str, Map<String, String> map, String str2, Map<String, String> map2, Map<String, String> map3) {
        return null;
    }

    @Override // com.xiaomi.accountsdk.diagnosis.DiagnosisLogInterface
    public String logPostRequest(String str, Map<String, String> map, String str2, Map<String, String> map2, Map<String, String> map3, Map<String, String> map4) {
        return null;
    }

    @Override // com.xiaomi.accountsdk.diagnosis.DiagnosisLogInterface
    public void logRequestException(Exception exc) {
    }

    @Override // com.xiaomi.accountsdk.diagnosis.DiagnosisLogInterface
    public void logResponse(String str, String str2, Map<String, List<String>> map, Map<String, String> map2) {
    }

    @Override // com.xiaomi.accountsdk.diagnosis.DiagnosisLogInterface
    public void logResponseCode(String str, int i) {
    }

    @Override // com.xiaomi.accountsdk.diagnosis.DiagnosisLogInterface
    public void logResponseDecryptedBody(String str) {
    }
}
