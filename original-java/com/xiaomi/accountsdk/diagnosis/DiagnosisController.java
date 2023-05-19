package com.xiaomi.accountsdk.diagnosis;

import android.content.Context;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.xiaomi.accountsdk.diagnosis.p267a.C5838a;
import java.io.IOException;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public class DiagnosisController {

    /* renamed from: a */
    private static volatile Context f20756a;

    /* renamed from: b */
    private static String f20757b;

    /* renamed from: c */
    private String f20758c;

    /* loaded from: classes2.dex */
    private class CheckDiagnosisEnabledTask extends AsyncTask<Void, Void, Boolean> {

        /* renamed from: b */
        private final InterfaceC5845c f20760b;

        private CheckDiagnosisEnabledTask(InterfaceC5845c interfaceC5845c) {
            this.f20760b = interfaceC5845c;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Boolean doInBackground(Void... voidArr) {
            return Boolean.valueOf(!TextUtils.isEmpty(DiagnosisController.this.getDiagnosisDomain()));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Boolean bool) {
            if (this.f20760b != null) {
                if (bool != null && bool.booleanValue()) {
                    this.f20760b.onLaunch();
                } else {
                    this.f20760b.onError();
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    private static class Holder {

        /* renamed from: a */
        static DiagnosisController f20761a = new DiagnosisController();

        private Holder() {
        }
    }

    private DiagnosisController() {
    }

    /* renamed from: a */
    private static void m4238a() {
        if (f20756a == null) {
            throw new RuntimeException("please call DiagnosisController.init() first!");
        }
    }

    /* renamed from: a */
    private static void m4237a(String str) {
        if (!m4235b(str)) {
            throw new IllegalArgumentException("name must be ^[A-Za-z]{0,10}$");
        }
        f20757b = str;
    }

    /* renamed from: b */
    private String m4236b() {
        try {
            C5838a m4207a = C5852e.m4207a();
            if (m4207a != null) {
                String str = m4207a.f20769b;
                this.f20758c = str;
                return str;
            }
            return null;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: b */
    private static boolean m4235b(String str) {
        return Pattern.compile("^[A-Za-z]{0,10}$").matcher(str).matches();
    }

    public static DiagnosisController get() {
        m4238a();
        return Holder.f20761a;
    }

    public static Context getApplicationContext() {
        m4238a();
        return f20756a;
    }

    public static String getLogName() {
        return f20757b;
    }

    public static void init(Context context, String str) {
        f20756a = context.getApplicationContext();
        DiagnosisLog.set(new C5837a(f20756a));
        m4237a(str);
    }

    public void checkStart(InterfaceC5845c interfaceC5845c) {
        new CheckDiagnosisEnabledTask(interfaceC5845c).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    public String getDiagnosisDomain() {
        return !TextUtils.isEmpty(this.f20758c) ? this.f20758c : m4236b();
    }
}
