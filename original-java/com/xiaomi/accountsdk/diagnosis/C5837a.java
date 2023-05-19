package com.xiaomi.accountsdk.diagnosis;

import android.content.Context;
import com.xiaomi.accountsdk.diagnosis.p271e.C5853a;
import java.util.List;
import java.util.Map;

/* renamed from: com.xiaomi.accountsdk.diagnosis.a */
/* loaded from: classes2.dex */
public class C5837a implements DiagnosisLogInterface {

    /* renamed from: b */
    private static DiagnosisLogInterface f20765b = new C5867f();

    /* renamed from: c */
    private static DiagnosisLogInterface f20766c = new C5850d();

    /* renamed from: a */
    private Context f20767a;

    public C5837a(Context context) {
        this.f20767a = context;
    }

    /* renamed from: a */
    private DiagnosisLogInterface m4234a() {
        return m4233a(this.f20767a) ? f20765b : f20766c;
    }

    /* renamed from: a */
    private static boolean m4233a(Context context) {
        return C5853a.m4205a(context);
    }

    @Override // com.xiaomi.accountsdk.diagnosis.DiagnosisLogInterface
    public void log(String str) {
        m4234a().log(str);
    }

    @Override // com.xiaomi.accountsdk.diagnosis.DiagnosisLogInterface
    public String logGetRequest(String str, Map<String, String> map, String str2, Map<String, String> map2, Map<String, String> map3) {
        return m4234a().logGetRequest(str, map, str2, map2, map3);
    }

    @Override // com.xiaomi.accountsdk.diagnosis.DiagnosisLogInterface
    public String logPostRequest(String str, Map<String, String> map, String str2, Map<String, String> map2, Map<String, String> map3, Map<String, String> map4) {
        return m4234a().logPostRequest(str, map, str2, map2, map3, map4);
    }

    @Override // com.xiaomi.accountsdk.diagnosis.DiagnosisLogInterface
    public void logRequestException(Exception exc) {
        m4234a().logRequestException(exc);
    }

    @Override // com.xiaomi.accountsdk.diagnosis.DiagnosisLogInterface
    public void logResponse(String str, String str2, Map<String, List<String>> map, Map<String, String> map2) {
        m4234a().logResponse(str, str2, map, map2);
    }

    @Override // com.xiaomi.accountsdk.diagnosis.DiagnosisLogInterface
    public void logResponseCode(String str, int i) {
        m4234a().logResponseCode(str, i);
    }

    @Override // com.xiaomi.accountsdk.diagnosis.DiagnosisLogInterface
    public void logResponseDecryptedBody(String str) {
        m4234a().logResponseDecryptedBody(str);
    }
}
