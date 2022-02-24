package com.xiaomi.accountsdk.diagnosis.c;

import android.os.AsyncTask;
import android.os.Build;
import android.text.TextUtils;
import android.util.Base64;
import com.xiaomi.accountsdk.diagnosis.DiagnosisController;
import com.xiaomi.accountsdk.diagnosis.b;
import com.xiaomi.accountsdk.diagnosis.e.c;
import com.xiaomi.accountsdk.diagnosis.e.e;
import com.xiaomi.accountsdk.diagnosis.e.f;
import com.xiaomi.infra.galaxy.fds.android.model.PutObjectResult;
import com.xiaomi.mipush.sdk.Constants;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Locale;
import java.util.Random;

/* loaded from: classes2.dex */
public class a extends AsyncTask<Void, Void, String> {

    /* renamed from: a  reason: collision with root package name */
    private final AbstractC0233a f8624a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f8625b;

    /* renamed from: c  reason: collision with root package name */
    private Random f8626c = new Random();

    /* renamed from: com.xiaomi.accountsdk.diagnosis.c.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface AbstractC0233a {
        void onFinished(boolean z, String str);
    }

    public a(AbstractC0233a aVar, boolean z) {
        this.f8624a = aVar;
        this.f8625b = z;
    }

    private String a() {
        return String.valueOf(this.f8626c.nextInt(1000000));
    }

    private String b() {
        return Base64.encodeToString(Build.MODEL.getBytes(), 10);
    }

    private String b(String str) {
        return str + Constants.ACCEPT_TIME_SEPARATOR_SERVER + DiagnosisController.getLogName() + Constants.ACCEPT_TIME_SEPARATOR_SERVER + b() + Constants.ACCEPT_TIME_SEPARATOR_SERVER + e.a(Locale.getDefault()) + Constants.ACCEPT_TIME_SEPARATOR_SERVER + (System.currentTimeMillis() / 1000);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public String doInBackground(Void... voidArr) {
        File[] listFiles;
        PutObjectResult putObjectResult;
        String diagnosisDomain = DiagnosisController.get().getDiagnosisDomain();
        if (TextUtils.isEmpty(diagnosisDomain) && !this.f8625b) {
            return null;
        }
        File a2 = c.a();
        File a3 = b.a();
        ArrayList arrayList = new ArrayList();
        for (File file : a3.listFiles()) {
            if (file.isFile() && file.getName().endsWith(".log")) {
                arrayList.add(file);
            }
        }
        arrayList.add(a2);
        String a4 = a();
        File file2 = new File(b.c(), b(a4) + ".zip");
        File parentFile = file2.getParentFile();
        if (!parentFile.exists()) {
            parentFile.mkdirs();
        }
        try {
            f.a((File[]) arrayList.toArray(new File[0]), file2);
            putObjectResult = com.xiaomi.accountsdk.diagnosis.d.a.a(file2, diagnosisDomain);
        } catch (IOException e) {
            e.printStackTrace();
            putObjectResult = null;
        }
        try {
            com.xiaomi.accountsdk.diagnosis.e.b.a(file2.getParentFile());
            com.xiaomi.accountsdk.diagnosis.e.b.a(a2.getParentFile());
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        if (putObjectResult == null) {
            return null;
        }
        return a4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public void onPostExecute(String str) {
        this.f8624a.onFinished(!TextUtils.isEmpty(str), str);
    }
}
