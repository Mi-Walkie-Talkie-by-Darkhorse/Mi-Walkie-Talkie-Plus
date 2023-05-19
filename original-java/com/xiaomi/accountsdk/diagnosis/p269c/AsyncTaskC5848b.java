package com.xiaomi.accountsdk.diagnosis.p269c;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.content.Context;
import android.os.AsyncTask;
import android.os.Process;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

/* renamed from: com.xiaomi.accountsdk.diagnosis.c.b */
/* loaded from: classes2.dex */
public class AsyncTaskC5848b extends AsyncTask<Void, Void, String> {

    /* renamed from: a */
    private final InterfaceC5849a f20783a;

    /* renamed from: b */
    private final int f20784b;
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: c */
    private final Context f20785c;

    /* renamed from: com.xiaomi.accountsdk.diagnosis.c.b$a */
    /* loaded from: classes2.dex */
    public interface InterfaceC5849a {
        void onReadLog(String str);
    }

    public AsyncTaskC5848b(Context context, InterfaceC5849a interfaceC5849a, int i) {
        this.f20785c = context.getApplicationContext();
        this.f20783a = interfaceC5849a;
        this.f20784b = i;
    }

    /* renamed from: a */
    private ArrayList<String> m4212a(String[] strArr) {
        ArrayList<String> arrayList = new ArrayList<>();
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("logcat -d -v time").getInputStream()));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                int length = strArr.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        break;
                    } else if (readLine.contains(strArr[i])) {
                        arrayList.add(readLine);
                        break;
                    } else {
                        i++;
                    }
                }
            }
        } catch (IOException unused) {
        }
        return arrayList;
    }

    /* renamed from: a */
    private String[] m4214a() {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        String packageName = this.f20785c.getPackageName();
        ActivityManager activityManager = (ActivityManager) this.f20785c.getSystemService("activity");
        HashSet hashSet = new HashSet();
        if (activityManager != null && (runningAppProcesses = activityManager.getRunningAppProcesses()) != null) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                String str = runningAppProcessInfo.processName;
                if (str != null && str.contains(packageName)) {
                    hashSet.add(String.valueOf(runningAppProcessInfo.pid));
                }
            }
        }
        hashSet.add(String.valueOf(Process.myPid()));
        return (String[]) hashSet.toArray(new String[0]);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a */
    public String doInBackground(Void... voidArr) {
        List m4212a = m4212a(m4214a());
        if (m4212a != null && m4212a.size() > this.f20784b) {
            m4212a = m4212a.subList(m4212a.size() - this.f20784b, m4212a.size() - 1);
        }
        return TextUtils.join("\n", m4212a);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a */
    public void onPostExecute(String str) {
        this.f20783a.onReadLog(str);
        super.onPostExecute(str);
    }
}
