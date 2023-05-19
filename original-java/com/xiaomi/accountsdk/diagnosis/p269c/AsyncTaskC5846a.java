package com.xiaomi.accountsdk.diagnosis.p269c;

import android.os.AsyncTask;
import android.os.Build;
import android.text.TextUtils;
import android.util.Base64;
import com.xiaomi.accountsdk.diagnosis.C5839b;
import com.xiaomi.accountsdk.diagnosis.DiagnosisController;
import com.xiaomi.accountsdk.diagnosis.p270d.C5851a;
import com.xiaomi.accountsdk.diagnosis.p271e.C5854b;
import com.xiaomi.accountsdk.diagnosis.p271e.C5855c;
import com.xiaomi.accountsdk.diagnosis.p271e.C5858e;
import com.xiaomi.accountsdk.diagnosis.p271e.C5859f;
import com.xiaomi.infra.galaxy.fds.android.model.PutObjectResult;
import com.xiaomi.mipush.sdk.Constants;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Locale;
import java.util.Random;

/* renamed from: com.xiaomi.accountsdk.diagnosis.c.a */
/* loaded from: classes2.dex */
public class AsyncTaskC5846a extends AsyncTask<Void, Void, String> {

    /* renamed from: a */
    private final InterfaceC5847a f20780a;

    /* renamed from: b */
    private final boolean f20781b;

    /* renamed from: c */
    private Random f20782c = new Random();

    /* renamed from: com.xiaomi.accountsdk.diagnosis.c.a$a */
    /* loaded from: classes2.dex */
    public interface InterfaceC5847a {
        void onFinished(boolean z, String str);
    }

    public AsyncTaskC5846a(InterfaceC5847a interfaceC5847a, boolean z) {
        this.f20780a = interfaceC5847a;
        this.f20781b = z;
    }

    /* renamed from: a */
    private String m4219a() {
        return String.valueOf(this.f20782c.nextInt(1000000));
    }

    /* renamed from: b */
    private String m4216b() {
        return Base64.encodeToString(Build.MODEL.getBytes(), 10);
    }

    /* renamed from: b */
    private String m4215b(String str) {
        return str + Constants.ACCEPT_TIME_SEPARATOR_SERVER + DiagnosisController.getLogName() + Constants.ACCEPT_TIME_SEPARATOR_SERVER + m4216b() + Constants.ACCEPT_TIME_SEPARATOR_SERVER + C5858e.m4191a(Locale.getDefault()) + Constants.ACCEPT_TIME_SEPARATOR_SERVER + (System.currentTimeMillis() / 1000);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a */
    public String doInBackground(Void... voidArr) {
        File[] listFiles;
        PutObjectResult putObjectResult;
        String diagnosisDomain = DiagnosisController.get().getDiagnosisDomain();
        if (!TextUtils.isEmpty(diagnosisDomain) || this.f20781b) {
            File m4195a = C5855c.m4195a();
            File m4231a = C5839b.m4231a();
            ArrayList arrayList = new ArrayList();
            for (File file : m4231a.listFiles()) {
                if (file.isFile() && file.getName().endsWith(".log")) {
                    arrayList.add(file);
                }
            }
            arrayList.add(m4195a);
            String m4219a = m4219a();
            File file2 = new File(C5839b.m4229c(), m4215b(m4219a) + ".zip");
            File parentFile = file2.getParentFile();
            if (!parentFile.exists()) {
                parentFile.mkdirs();
            }
            try {
                C5859f.m4190a((File[]) arrayList.toArray(new File[0]), file2);
                putObjectResult = C5851a.m4210a(file2, diagnosisDomain);
            } catch (IOException e) {
                e.printStackTrace();
                putObjectResult = null;
            }
            try {
                C5854b.m4202a(file2.getParentFile());
                C5854b.m4202a(m4195a.getParentFile());
            } catch (IOException e2) {
                e2.printStackTrace();
            }
            if (putObjectResult == null) {
                return null;
            }
            return m4219a;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a */
    public void onPostExecute(String str) {
        this.f20780a.onFinished(!TextUtils.isEmpty(str), str);
    }
}
