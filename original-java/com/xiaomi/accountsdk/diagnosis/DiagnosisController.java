package com.xiaomi.accountsdk.diagnosis;

import android.content.Context;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.xiaomi.accountsdk.diagnosis.a.a;
import java.io.IOException;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public class DiagnosisController {

    /* renamed from: a  reason: collision with root package name */
    private static volatile Context f8606a;

    /* renamed from: b  reason: collision with root package name */
    private static String f8607b;

    /* renamed from: c  reason: collision with root package name */
    private String f8608c;

    /* loaded from: classes2.dex */
    private class CheckDiagnosisEnabledTask extends AsyncTask<Void, Void, Boolean> {

        /* renamed from: b  reason: collision with root package name */
        private final c f8610b;

        private CheckDiagnosisEnabledTask(c cVar) {
            this.f8610b = cVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public Boolean doInBackground(Void... voidArr) {
            return Boolean.valueOf(!TextUtils.isEmpty(DiagnosisController.this.getDiagnosisDomain()));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void onPostExecute(Boolean bool) {
            if (this.f8610b != null) {
                if (bool != null && bool.booleanValue()) {
                    this.f8610b.onLaunch();
                } else {
                    this.f8610b.onError();
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    private static class Holder {

        /* renamed from: a  reason: collision with root package name */
        static DiagnosisController f8611a = new DiagnosisController();

        private Holder() {
        }
    }

    private DiagnosisController() {
    }

    private static void a() {
        if (f8606a == null) {
            throw new RuntimeException("please call DiagnosisController.init() first!");
        }
    }

    private static void a(String str) {
        if (b(str)) {
            f8607b = str;
            return;
        }
        throw new IllegalArgumentException("name must be ^[A-Za-z]{0,10}$");
    }

    private String b() {
        try {
            a a2 = e.a();
            if (a2 == null) {
                return null;
            }
            String str = a2.f8617b;
            this.f8608c = str;
            return str;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    private static boolean b(String str) {
        return Pattern.compile("^[A-Za-z]{0,10}$").matcher(str).matches();
    }

    public static DiagnosisController get() {
        a();
        return Holder.f8611a;
    }

    public static Context getApplicationContext() {
        a();
        return f8606a;
    }

    public static String getLogName() {
        return f8607b;
    }

    public static void init(Context context, String str) {
        f8606a = context.getApplicationContext();
        DiagnosisLog.set(new a(f8606a));
        a(str);
    }

    public void checkStart(c cVar) {
        new CheckDiagnosisEnabledTask(cVar).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    public String getDiagnosisDomain() {
        return !TextUtils.isEmpty(this.f8608c) ? this.f8608c : b();
    }
}
