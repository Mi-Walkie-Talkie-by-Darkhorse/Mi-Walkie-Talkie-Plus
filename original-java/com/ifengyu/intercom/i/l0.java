package com.ifengyu.intercom.i;

import android.annotation.SuppressLint;
import android.content.pm.PackageManager;
import android.os.Build;
import android.text.TextUtils;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.lite.d.e;
import com.ifengyu.intercom.lite.d.f;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.List;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import org.json.JSONObject;

/* compiled from: UserPrivacyUtil.java */
/* loaded from: classes2.dex */
public class l0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(Object obj) throws Exception {
    }

    @SuppressLint({"CheckResult"})
    public static void a(String str) {
        String str2;
        String N = d0.N();
        String valueOf = String.valueOf(System.currentTimeMillis());
        String b2 = a0.b(d0.O() + valueOf);
        try {
            str2 = MiTalkiApp.b().getPackageManager().getPackageInfo(MiTalkiApp.b().getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            str2 = "";
        }
        HashMap hashMap = new HashMap();
        hashMap.put("appVersion", str2);
        hashMap.put("did", d0.o());
        String a2 = a();
        if (!TextUtils.isEmpty(a2)) {
            hashMap.put("miuiVersion", a2);
        }
        hashMap.put("sys", "Android");
        hashMap.put("sysVersion", Build.VERSION.RELEASE);
        hashMap.put("type", str);
        e.a().b(N, valueOf, b2, RequestBody.create(MediaType.parse("application/json; charset=utf-8"), new JSONObject(hashMap).toString())).compose(f.b()).subscribe(c.f5304a, b.f5303a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b(Object obj) throws Exception {
    }

    @SuppressLint({"CheckResult"})
    public static void b(String str) {
        String str2;
        String N = d0.N();
        String valueOf = String.valueOf(System.currentTimeMillis());
        String b2 = a0.b(d0.O() + valueOf);
        try {
            str2 = MiTalkiApp.b().getPackageManager().getPackageInfo(MiTalkiApp.b().getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            str2 = "";
        }
        HashMap hashMap = new HashMap();
        hashMap.put("appVersion", str2);
        hashMap.put("did", d0.o());
        String a2 = a();
        if (!TextUtils.isEmpty(a2)) {
            hashMap.put("miuiVersion", a2);
        }
        hashMap.put("sys", "Android");
        hashMap.put("sysVersion", Build.VERSION.RELEASE);
        hashMap.put("type", str);
        e.a().d(N, valueOf, b2, RequestBody.create(MediaType.parse("application/json; charset=utf-8"), new JSONObject(hashMap).toString())).compose(f.b()).subscribe(d.f5307a, b.f5303a);
    }

    public static String c(String str) {
        BufferedReader bufferedReader;
        Throwable th;
        BufferedReader bufferedReader2 = null;
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("getprop " + str).getInputStream()), 1024);
            try {
                String readLine = bufferedReader.readLine();
                bufferedReader.close();
                try {
                    bufferedReader.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
                return readLine;
            } catch (IOException unused) {
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (IOException e2) {
                        e2.printStackTrace();
                    }
                }
                return null;
            } catch (Throwable th2) {
                th = th2;
                bufferedReader2 = bufferedReader;
                if (bufferedReader2 != null) {
                    try {
                        bufferedReader2.close();
                    } catch (IOException e3) {
                        e3.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (IOException unused2) {
            bufferedReader = null;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void c(Object obj) throws Exception {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void d(Object obj) throws Exception {
    }

    @SuppressLint({"CheckResult"})
    public static void a(List<String> list) {
        String str;
        String str2;
        for (String str3 : list) {
            char c2 = 65535;
            int hashCode = str3.hashCode();
            if (hashCode != -1888586689) {
                if (hashCode != 463403621) {
                    if (hashCode == 1365911975 && str3.equals("android.permission.WRITE_EXTERNAL_STORAGE")) {
                        c2 = 1;
                    }
                } else if (str3.equals("android.permission.CAMERA")) {
                    c2 = 2;
                }
            } else if (str3.equals("android.permission.ACCESS_FINE_LOCATION")) {
                c2 = 0;
            }
            String str4 = null;
            String str5 = c2 != 0 ? c2 != 1 ? c2 != 2 ? null : "camera" : "storage" : "location";
            if (!TextUtils.isEmpty(str5)) {
                String N = d0.N();
                if (!TextUtils.isEmpty(N)) {
                    str4 = String.valueOf(System.currentTimeMillis());
                    str = a0.b(d0.O() + str4);
                } else {
                    str = null;
                }
                try {
                    str2 = MiTalkiApp.b().getPackageManager().getPackageInfo(MiTalkiApp.b().getPackageName(), 0).versionName;
                } catch (PackageManager.NameNotFoundException e) {
                    e.printStackTrace();
                    str2 = "";
                }
                HashMap hashMap = new HashMap();
                hashMap.put("appVersion", str2);
                hashMap.put("did", d0.o());
                String a2 = a();
                if (!TextUtils.isEmpty(a2)) {
                    hashMap.put("miuiVersion", a2);
                }
                hashMap.put("sys", "Android");
                hashMap.put("sysVersion", Build.VERSION.RELEASE);
                hashMap.put("permissionName", str5);
                e.a().c(N, str4, str, RequestBody.create(MediaType.parse("application/json; charset=utf-8"), new JSONObject(hashMap).toString())).compose(f.b()).subscribe(e.f5311a, b.f5303a);
            }
        }
    }

    @SuppressLint({"CheckResult"})
    public static void b(List<String> list) {
        String str;
        String str2;
        for (String str3 : list) {
            char c2 = 65535;
            int hashCode = str3.hashCode();
            if (hashCode != -1888586689) {
                if (hashCode != 463403621) {
                    if (hashCode == 1365911975 && str3.equals("android.permission.WRITE_EXTERNAL_STORAGE")) {
                        c2 = 1;
                    }
                } else if (str3.equals("android.permission.CAMERA")) {
                    c2 = 2;
                }
            } else if (str3.equals("android.permission.ACCESS_FINE_LOCATION")) {
                c2 = 0;
            }
            String str4 = null;
            String str5 = c2 != 0 ? c2 != 1 ? c2 != 2 ? null : "camera" : "storage" : "location";
            if (!TextUtils.isEmpty(str5)) {
                String N = d0.N();
                if (!TextUtils.isEmpty(N)) {
                    str4 = String.valueOf(System.currentTimeMillis());
                    str = a0.b(d0.O() + str4);
                } else {
                    str = null;
                }
                try {
                    str2 = MiTalkiApp.b().getPackageManager().getPackageInfo(MiTalkiApp.b().getPackageName(), 0).versionName;
                } catch (PackageManager.NameNotFoundException e) {
                    e.printStackTrace();
                    str2 = "";
                }
                HashMap hashMap = new HashMap();
                hashMap.put("appVersion", str2);
                hashMap.put("did", d0.o());
                String a2 = a();
                if (!TextUtils.isEmpty(a2)) {
                    hashMap.put("miuiVersion", a2);
                }
                hashMap.put("sys", "Android");
                hashMap.put("sysVersion", Build.VERSION.RELEASE);
                hashMap.put("permissionName", str5);
                e.a().a(N, str4, str, RequestBody.create(MediaType.parse("application/json; charset=utf-8"), new JSONObject(hashMap).toString())).compose(f.b()).subscribe(f.f5312a, b.f5303a);
            }
        }
    }

    private static String a() {
        return c("ro.miui.ui.version.name");
    }
}
