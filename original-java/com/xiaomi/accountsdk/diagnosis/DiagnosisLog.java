package com.xiaomi.accountsdk.diagnosis;

/* loaded from: classes2.dex */
public class DiagnosisLog {

    /* renamed from: a  reason: collision with root package name */
    private static DiagnosisLogInterface f8612a = new d();

    private DiagnosisLog() {
    }

    public static DiagnosisLogInterface get() {
        return f8612a;
    }

    public static void set(DiagnosisLogInterface diagnosisLogInterface) {
        f8612a = diagnosisLogInterface;
    }
}
