package com.xiaomi.accountsdk.diagnosis.c;

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

/* loaded from: classes2.dex */
public class b extends AsyncTask<Void, Void, String> {

    /* renamed from: a  reason: collision with root package name */
    private final a f8627a;

    /* renamed from: b  reason: collision with root package name */
    private final int f8628b;
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: c  reason: collision with root package name */
    private final Context f8629c;

    /* loaded from: classes2.dex */
    public interface a {
        void onReadLog(String str);
    }

    public b(Context context, a aVar, int i) {
        this.f8629c = context.getApplicationContext();
        this.f8627a = aVar;
        this.f8628b = i;
    }

    private ArrayList<String> a(String[] strArr) {
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

    private String[] a() {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        String packageName = this.f8629c.getPackageName();
        ActivityManager activityManager = (ActivityManager) this.f8629c.getSystemService("activity");
        HashSet hashSet = new HashSet();
        if (!(activityManager == null || (runningAppProcesses = activityManager.getRunningAppProcesses()) == null)) {
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
    /* renamed from: a */
    public String doInBackground(Void... voidArr) {
        List a2 = a(a());
        if (a2 != null && a2.size() > this.f8628b) {
            a2 = a2.subList(a2.size() - this.f8628b, a2.size() - 1);
        }
        return TextUtils.join("\n", a2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public void onPostExecute(String str) {
        this.f8627a.onReadLog(str);
        super.onPostExecute(str);
    }
}
