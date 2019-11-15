package com.sina.weibo.sdk.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.StatFs;
import android.provider.Settings.Secure;
import android.support.v4.os.EnvironmentCompat;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.im.account.UserInfo;
import com.mi.mimsgsdk.utils.Network;
import com.sina.weibo.sdk.exception.WeiboException;
import com.sina.weibo.sdk.net.f;
import com.tencent.connect.common.Constants;
import com.xiaomi.account.openauth.XiaomiOAuthConstants;
import java.io.File;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.spec.X509EncodedKeySpec;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONException;
import org.json.JSONObject;

public class AidTask implements Serializable {
    private static AidTask a = null;
    private static final long serialVersionUID = 1;
    private Context b;
    private String c;
    /* access modifiers changed from: private */
    public a d;
    /* access modifiers changed from: private */
    public volatile ReentrantLock e = new ReentrantLock(true);
    private c f;

    public static final class a {
        private String a;
        private String b;

        public String a() {
            return this.a;
        }

        public static a a(String str) throws WeiboException {
            a aVar = new a();
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.has(XiaomiOAuthConstants.EXTRA_ERROR_CODE_2) || jSONObject.has("error_code")) {
                    c.a("AidTask", "loadAidFromNet has error !!!");
                    throw new WeiboException("loadAidFromNet has error !!!");
                }
                aVar.a = jSONObject.optString("aid", "");
                aVar.b = jSONObject.optString("sub", "");
                return aVar;
            } catch (JSONException e) {
                c.a("AidTask", "loadAidFromNet JSONException Msg : " + e.getMessage());
                throw new WeiboException("loadAidFromNet has error !!!");
            }
        }

        /* access modifiers changed from: 0000 */
        public a b() {
            a aVar = new a();
            aVar.a = this.a;
            aVar.b = this.b;
            return aVar;
        }
    }

    public interface b {
        void a(a aVar);

        void a(Exception exc);
    }

    private static class c extends Handler {
        private WeakReference<b> a;

        public c(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message message) {
            b bVar = (b) this.a.get();
            switch (message.what) {
                case 1001:
                    if (bVar != null) {
                        bVar.a(((a) message.obj).b());
                        return;
                    }
                    return;
                case 1002:
                    if (bVar != null) {
                        bVar.a((Exception) (WeiboException) message.obj);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    private AidTask(Context context) {
        this.b = context.getApplicationContext();
        this.f = new c(this.b.getMainLooper());
        new Thread(new Runnable() {
            public void run() {
                for (int i = 0; i < 1; i++) {
                    try {
                        AidTask.this.a(i).delete();
                    } catch (Exception e) {
                    }
                }
            }
        }).start();
    }

    public static synchronized AidTask a(Context context) {
        AidTask aidTask;
        synchronized (AidTask.class) {
            if (a == null) {
                a = new AidTask(context);
            }
            aidTask = a;
        }
        return aidTask;
    }

    public void a(String str) {
        if (!TextUtils.isEmpty(str)) {
            c.c("AidTask", "aidTaskInit ");
            c(str);
        }
    }

    private void c(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.c = str;
            new Thread(new Runnable() {
                public void run() {
                    if (!AidTask.this.e.tryLock()) {
                        c.c("AidTask", "tryLock : false, return");
                        return;
                    }
                    a b = AidTask.this.a();
                    if (b == null) {
                        int i = 1;
                        do {
                            i++;
                            try {
                                String c = AidTask.this.b();
                                a a2 = a.a(c);
                                AidTask.this.d(c);
                                AidTask.this.d = a2;
                                break;
                            } catch (WeiboException e) {
                                c.c("AidTask", "AidTaskInit WeiboException Msg : " + e.getMessage());
                                if (i >= 3) {
                                }
                            }
                        } while (i >= 3);
                    } else {
                        AidTask.this.d = b;
                    }
                    AidTask.this.e.unlock();
                }
            }).start();
        }
    }

    public a b(String str) throws WeiboException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        c.c("AidTask", "getAidSync ");
        if (this.d == null) {
            a(str);
        }
        return this.d;
    }

    /* JADX WARNING: type inference failed for: r1v1, types: [java.io.FileInputStream] */
    /* JADX WARNING: type inference failed for: r1v4 */
    /* JADX WARNING: type inference failed for: r1v5, types: [java.io.FileInputStream] */
    /* JADX WARNING: type inference failed for: r1v8 */
    /* JADX WARNING: type inference failed for: r1v11 */
    /* JADX WARNING: type inference failed for: r1v12 */
    /* access modifiers changed from: private */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x0035 A[SYNTHETIC, Splitter:B:21:0x0035] */
    /* JADX WARNING: Unknown variable types count: 2 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized com.sina.weibo.sdk.utils.AidTask.a a() {
        /*
            r5 = this;
            r0 = 0
            monitor-enter(r5)
            r1 = 1
            java.io.File r2 = r5.a(r1)     // Catch:{ Exception -> 0x0025, all -> 0x002f }
            java.io.FileInputStream r1 = new java.io.FileInputStream     // Catch:{ Exception -> 0x0025, all -> 0x002f }
            r1.<init>(r2)     // Catch:{ Exception -> 0x0025, all -> 0x002f }
            int r2 = r1.available()     // Catch:{ Exception -> 0x0042, all -> 0x0040 }
            byte[] r2 = new byte[r2]     // Catch:{ Exception -> 0x0042, all -> 0x0040 }
            r1.read(r2)     // Catch:{ Exception -> 0x0042, all -> 0x0040 }
            java.lang.String r3 = new java.lang.String     // Catch:{ Exception -> 0x0042, all -> 0x0040 }
            r3.<init>(r2)     // Catch:{ Exception -> 0x0042, all -> 0x0040 }
            com.sina.weibo.sdk.utils.AidTask$a r0 = com.sina.weibo.sdk.utils.AidTask.a.a(r3)     // Catch:{ Exception -> 0x0042, all -> 0x0040 }
            if (r1 == 0) goto L_0x0023
            r1.close()     // Catch:{ IOException -> 0x003c }
        L_0x0023:
            monitor-exit(r5)
            return r0
        L_0x0025:
            r1 = move-exception
            r1 = r0
        L_0x0027:
            if (r1 == 0) goto L_0x0023
            r1.close()     // Catch:{ IOException -> 0x002d }
            goto L_0x0023
        L_0x002d:
            r1 = move-exception
            goto L_0x0023
        L_0x002f:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
        L_0x0033:
            if (r1 == 0) goto L_0x0038
            r1.close()     // Catch:{ IOException -> 0x003e }
        L_0x0038:
            throw r0     // Catch:{ all -> 0x0039 }
        L_0x0039:
            r0 = move-exception
            monitor-exit(r5)
            throw r0
        L_0x003c:
            r1 = move-exception
            goto L_0x0023
        L_0x003e:
            r1 = move-exception
            goto L_0x0038
        L_0x0040:
            r0 = move-exception
            goto L_0x0033
        L_0x0042:
            r2 = move-exception
            goto L_0x0027
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sina.weibo.sdk.utils.AidTask.a():com.sina.weibo.sdk.utils.AidTask$a");
    }

    /* access modifiers changed from: private */
    public File a(int i) {
        return new File(this.b.getFilesDir(), "weibo_sdk_aid" + i);
    }

    /* access modifiers changed from: private */
    public String b() throws WeiboException {
        String str = "https://api.weibo.com/oauth2/getaid.json";
        String packageName = this.b.getPackageName();
        String a2 = i.a(this.b, packageName);
        String b2 = b(this.b);
        f fVar = new f(this.c);
        fVar.a("appkey", this.c);
        fVar.a("mfp", b2);
        fVar.a("packagename", packageName);
        fVar.a("key_hash", a2);
        try {
            String b3 = com.sina.weibo.sdk.net.c.b(this.b, "https://api.weibo.com/oauth2/getaid.json", "GET", fVar);
            c.a("AidTask", "loadAidFromNet response : " + b3);
            return b3;
        } catch (WeiboException e2) {
            c.a("AidTask", "loadAidFromNet WeiboException Msg : " + e2.getMessage());
            throw e2;
        }
    }

    /* access modifiers changed from: private */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0027 A[SYNTHETIC, Splitter:B:18:0x0027] */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0030 A[SYNTHETIC, Splitter:B:23:0x0030] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized void d(java.lang.String r5) {
        /*
            r4 = this;
            monitor-enter(r4)
            boolean r0 = android.text.TextUtils.isEmpty(r5)     // Catch:{ all -> 0x0034 }
            if (r0 == 0) goto L_0x0009
        L_0x0007:
            monitor-exit(r4)
            return
        L_0x0009:
            r1 = 0
            r0 = 1
            java.io.File r2 = r4.a(r0)     // Catch:{ Exception -> 0x0023, all -> 0x002d }
            java.io.FileOutputStream r0 = new java.io.FileOutputStream     // Catch:{ Exception -> 0x0023, all -> 0x002d }
            r0.<init>(r2)     // Catch:{ Exception -> 0x0023, all -> 0x002d }
            byte[] r1 = r5.getBytes()     // Catch:{ Exception -> 0x003e, all -> 0x0039 }
            r0.write(r1)     // Catch:{ Exception -> 0x003e, all -> 0x0039 }
            if (r0 == 0) goto L_0x0007
            r0.close()     // Catch:{ IOException -> 0x0021 }
            goto L_0x0007
        L_0x0021:
            r0 = move-exception
            goto L_0x0007
        L_0x0023:
            r0 = move-exception
            r0 = r1
        L_0x0025:
            if (r0 == 0) goto L_0x0007
            r0.close()     // Catch:{ IOException -> 0x002b }
            goto L_0x0007
        L_0x002b:
            r0 = move-exception
            goto L_0x0007
        L_0x002d:
            r0 = move-exception
        L_0x002e:
            if (r1 == 0) goto L_0x0033
            r1.close()     // Catch:{ IOException -> 0x0037 }
        L_0x0033:
            throw r0     // Catch:{ all -> 0x0034 }
        L_0x0034:
            r0 = move-exception
            monitor-exit(r4)
            throw r0
        L_0x0037:
            r1 = move-exception
            goto L_0x0033
        L_0x0039:
            r1 = move-exception
            r3 = r1
            r1 = r0
            r0 = r3
            goto L_0x002e
        L_0x003e:
            r1 = move-exception
            goto L_0x0025
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sina.weibo.sdk.utils.AidTask.d(java.lang.String):void");
    }

    private static String b(Context context) {
        String str;
        String str2 = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDHHM0Fi2Z6+QYKXqFUX2Cy6AaWq3cPi+GSn9oeAwQbPZR75JB7Netm0HtBVVbtPhzT7UO2p1JhFUKWqrqoYuAjkgMVPmA0sFrQohns5EE44Y86XQopD4ZO+dE5KjUZFE6vrPO3rWW3np2BqlgKpjnYZri6TJApmIpGcQg9/G/3zQIDAQAB";
        String str3 = "";
        try {
            str = new String(c(context).getBytes(), "UTF-8");
        } catch (UnsupportedEncodingException e2) {
            str = str3;
        }
        c.a("AidTask", "genMfpString() utf-8 string : " + str);
        try {
            String a2 = a(str, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDHHM0Fi2Z6+QYKXqFUX2Cy6AaWq3cPi+GSn9oeAwQbPZR75JB7Netm0HtBVVbtPhzT7UO2p1JhFUKWqrqoYuAjkgMVPmA0sFrQohns5EE44Y86XQopD4ZO+dE5KjUZFE6vrPO3rWW3np2BqlgKpjnYZri6TJApmIpGcQg9/G/3zQIDAQAB");
            c.a("AidTask", "encryptRsa() string : " + a2);
            return a2;
        } catch (Exception e3) {
            c.c("AidTask", e3.getMessage());
            return "";
        }
    }

    private static String c(Context context) {
        String str;
        JSONObject jSONObject = new JSONObject();
        try {
            String c2 = c();
            if (!TextUtils.isEmpty(c2)) {
                jSONObject.put("1", c2);
            }
            String d2 = d(context);
            if (!TextUtils.isEmpty(d2)) {
                jSONObject.put("2", d2);
            }
            String e2 = e(context);
            if (!TextUtils.isEmpty(e2)) {
                jSONObject.put("3", e2);
            }
            String f2 = f(context);
            if (!TextUtils.isEmpty(f2)) {
                jSONObject.put("4", f2);
            }
            String g = g(context);
            if (!TextUtils.isEmpty(g)) {
                jSONObject.put("5", g);
            }
            String h = h(context);
            if (!TextUtils.isEmpty(h)) {
                jSONObject.put(Constants.VIA_SHARE_TYPE_INFO, h);
            }
            String d3 = d();
            if (!TextUtils.isEmpty(d3)) {
                jSONObject.put("7", d3);
            }
            String i = i(context);
            if (!TextUtils.isEmpty(i)) {
                jSONObject.put(Constants.VIA_REPORT_TYPE_SHARE_TO_QQ, i);
            }
            String e3 = e();
            if (!TextUtils.isEmpty(e3)) {
                jSONObject.put(Constants.VIA_REPORT_TYPE_JOININ_GROUP, e3);
            }
            String f3 = f();
            if (!TextUtils.isEmpty(f3)) {
                jSONObject.put(Constants.VIA_REPORT_TYPE_MAKE_FRIEND, f3);
            }
            String g2 = g();
            if (!TextUtils.isEmpty(g2)) {
                jSONObject.put(Constants.VIA_REPORT_TYPE_WPA_STATE, g2);
            }
            String j = j(context);
            if (!TextUtils.isEmpty(j)) {
                jSONObject.put(Constants.VIA_REPORT_TYPE_START_WAP, j);
            }
            String k = k(context);
            if (!TextUtils.isEmpty(k)) {
                jSONObject.put(Constants.VIA_REPORT_TYPE_START_GROUP, k);
            }
            String h2 = h();
            if (!TextUtils.isEmpty(h2)) {
                jSONObject.put("18", h2);
            }
            String l = l(context);
            if (!TextUtils.isEmpty(l)) {
                jSONObject.put(Constants.VIA_ACT_TYPE_NINETEEN, l);
            }
            String str2 = "";
            try {
                str = i.c(context);
            } catch (Exception e4) {
                ThrowableExtension.printStackTrace(e4);
            }
            if (!TextUtils.isEmpty(str)) {
                jSONObject.put("20", str);
            }
            return jSONObject.toString();
        } catch (JSONException e5) {
            return "";
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x00c2 A[SYNTHETIC, Splitter:B:19:0x00c2] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.lang.String a(java.lang.String r9, java.lang.String r10) throws java.lang.Exception {
        /*
            java.lang.String r0 = "RSA/ECB/PKCS1Padding"
            javax.crypto.Cipher r3 = javax.crypto.Cipher.getInstance(r0)
            java.security.PublicKey r0 = e(r10)
            r1 = 1
            r3.init(r1, r0)
            r2 = 0
            java.lang.String r0 = "UTF-8"
            byte[] r4 = r9.getBytes(r0)
            java.io.ByteArrayOutputStream r1 = new java.io.ByteArrayOutputStream     // Catch:{ all -> 0x00be }
            r1.<init>()     // Catch:{ all -> 0x00be }
            r0 = 0
        L_0x001b:
            r2 = 117(0x75, float:1.64E-43)
            int r2 = a(r4, r0, r2)     // Catch:{ all -> 0x00ca }
            r5 = -1
            if (r2 != r5) goto L_0x008b
            r1.flush()     // Catch:{ all -> 0x00ca }
            byte[] r0 = r1.toByteArray()     // Catch:{ all -> 0x00ca }
            java.lang.String r2 = "AidTask"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ all -> 0x00ca }
            java.lang.String r4 = "encryptRsa total enBytes len = "
            r3.<init>(r4)     // Catch:{ all -> 0x00ca }
            int r4 = r0.length     // Catch:{ all -> 0x00ca }
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ all -> 0x00ca }
            java.lang.String r3 = r3.toString()     // Catch:{ all -> 0x00ca }
            com.sina.weibo.sdk.utils.c.a(r2, r3)     // Catch:{ all -> 0x00ca }
            byte[] r0 = com.sina.weibo.sdk.utils.b.b(r0)     // Catch:{ all -> 0x00ca }
            java.lang.String r2 = "AidTask"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ all -> 0x00ca }
            java.lang.String r4 = "encryptRsa total base64byte len = "
            r3.<init>(r4)     // Catch:{ all -> 0x00ca }
            int r4 = r0.length     // Catch:{ all -> 0x00ca }
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ all -> 0x00ca }
            java.lang.String r3 = r3.toString()     // Catch:{ all -> 0x00ca }
            com.sina.weibo.sdk.utils.c.a(r2, r3)     // Catch:{ all -> 0x00ca }
            java.lang.String r2 = "01"
            java.lang.String r2 = new java.lang.String     // Catch:{ all -> 0x00ca }
            java.lang.String r3 = "UTF-8"
            r2.<init>(r0, r3)     // Catch:{ all -> 0x00ca }
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ all -> 0x00ca }
            java.lang.String r3 = "01"
            r0.<init>(r3)     // Catch:{ all -> 0x00ca }
            java.lang.StringBuilder r0 = r0.append(r2)     // Catch:{ all -> 0x00ca }
            java.lang.String r0 = r0.toString()     // Catch:{ all -> 0x00ca }
            java.lang.String r2 = "AidTask"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ all -> 0x00ca }
            java.lang.String r4 = "encryptRsa total base64string : "
            r3.<init>(r4)     // Catch:{ all -> 0x00ca }
            java.lang.StringBuilder r3 = r3.append(r0)     // Catch:{ all -> 0x00ca }
            java.lang.String r3 = r3.toString()     // Catch:{ all -> 0x00ca }
            com.sina.weibo.sdk.utils.c.a(r2, r3)     // Catch:{ all -> 0x00ca }
            if (r1 == 0) goto L_0x008a
            r1.close()     // Catch:{ IOException -> 0x00c6 }
        L_0x008a:
            return r0
        L_0x008b:
            byte[] r5 = r3.doFinal(r4, r0, r2)     // Catch:{ all -> 0x00ca }
            r1.write(r5)     // Catch:{ all -> 0x00ca }
            java.lang.String r6 = "AidTask"
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch:{ all -> 0x00ca }
            java.lang.String r8 = "encryptRsa offset = "
            r7.<init>(r8)     // Catch:{ all -> 0x00ca }
            java.lang.StringBuilder r7 = r7.append(r0)     // Catch:{ all -> 0x00ca }
            java.lang.String r8 = "     len = "
            java.lang.StringBuilder r7 = r7.append(r8)     // Catch:{ all -> 0x00ca }
            java.lang.StringBuilder r7 = r7.append(r2)     // Catch:{ all -> 0x00ca }
            java.lang.String r8 = "     enBytes len = "
            java.lang.StringBuilder r7 = r7.append(r8)     // Catch:{ all -> 0x00ca }
            int r5 = r5.length     // Catch:{ all -> 0x00ca }
            java.lang.StringBuilder r5 = r7.append(r5)     // Catch:{ all -> 0x00ca }
            java.lang.String r5 = r5.toString()     // Catch:{ all -> 0x00ca }
            com.sina.weibo.sdk.utils.c.a(r6, r5)     // Catch:{ all -> 0x00ca }
            int r0 = r0 + r2
            goto L_0x001b
        L_0x00be:
            r0 = move-exception
            r1 = r2
        L_0x00c0:
            if (r1 == 0) goto L_0x00c5
            r1.close()     // Catch:{ IOException -> 0x00c8 }
        L_0x00c5:
            throw r0
        L_0x00c6:
            r1 = move-exception
            goto L_0x008a
        L_0x00c8:
            r1 = move-exception
            goto L_0x00c5
        L_0x00ca:
            r0 = move-exception
            goto L_0x00c0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sina.weibo.sdk.utils.AidTask.a(java.lang.String, java.lang.String):java.lang.String");
    }

    private static int a(byte[] bArr, int i, int i2) {
        if (i >= bArr.length) {
            return -1;
        }
        return Math.min(bArr.length - i, i2);
    }

    private static PublicKey e(String str) throws Exception {
        return KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(b.a(str.getBytes())));
    }

    private static String c() {
        try {
            return "Android " + VERSION.RELEASE;
        } catch (Exception e2) {
            return "";
        }
    }

    private static String d(Context context) {
        try {
            return ((TelephonyManager) context.getSystemService(UserInfo.TYPE_PHONE)).getDeviceId();
        } catch (Exception e2) {
            return "";
        }
    }

    private static String e(Context context) {
        try {
            return ((TelephonyManager) context.getSystemService(UserInfo.TYPE_PHONE)).getDeviceId();
        } catch (Exception e2) {
            return "";
        }
    }

    private static String f(Context context) {
        try {
            return ((TelephonyManager) context.getSystemService(UserInfo.TYPE_PHONE)).getSubscriberId();
        } catch (Exception e2) {
            return "";
        }
    }

    private static String g(Context context) {
        try {
            WifiManager wifiManager = (WifiManager) context.getSystemService(Network.NETWORK_TYPE_WIFI);
            if (wifiManager == null) {
                return "";
            }
            WifiInfo connectionInfo = wifiManager.getConnectionInfo();
            return connectionInfo != null ? connectionInfo.getMacAddress() : "";
        } catch (Exception e2) {
            return "";
        }
    }

    private static String h(Context context) {
        try {
            return ((TelephonyManager) context.getSystemService(UserInfo.TYPE_PHONE)).getSimSerialNumber();
        } catch (Exception e2) {
            return "";
        }
    }

    private static String d() {
        String str = "";
        try {
            Class cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", new Class[]{String.class, String.class}).invoke(cls, new Object[]{"ro.serialno", EnvironmentCompat.MEDIA_UNKNOWN});
        } catch (Exception e2) {
            return str;
        }
    }

    private static String i(Context context) {
        try {
            return Secure.getString(context.getContentResolver(), "android_id");
        } catch (Exception e2) {
            return "";
        }
    }

    private static String e() {
        try {
            return Build.CPU_ABI;
        } catch (Exception e2) {
            return "";
        }
    }

    private static String f() {
        try {
            return Build.MODEL;
        } catch (Exception e2) {
            return "";
        }
    }

    private static String g() {
        try {
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            return Long.toString(((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize()));
        } catch (Exception e2) {
            return "";
        }
    }

    private static String j(Context context) {
        try {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
            return new StringBuilder(String.valueOf(String.valueOf(displayMetrics.widthPixels))).append("*").append(String.valueOf(displayMetrics.heightPixels)).toString();
        } catch (Exception e2) {
            return "";
        }
    }

    private static String k(Context context) {
        try {
            WifiInfo connectionInfo = ((WifiManager) context.getSystemService(Network.NETWORK_TYPE_WIFI)).getConnectionInfo();
            if (connectionInfo != null) {
                return connectionInfo.getSSID();
            }
        } catch (Exception e2) {
        }
        return "";
    }

    private static String h() {
        try {
            return Build.BRAND;
        } catch (Exception e2) {
            return "";
        }
    }

    private static String l(Context context) {
        String str = "none";
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                if (activeNetworkInfo.getType() == 0) {
                    switch (activeNetworkInfo.getSubtype()) {
                        case 1:
                        case 2:
                        case 4:
                        case 7:
                        case 11:
                            return "2G";
                        case 3:
                        case 5:
                        case 6:
                        case 8:
                        case 9:
                        case 10:
                        case 12:
                        case 14:
                        case 15:
                            return "3G";
                        case 13:
                            return "4G";
                        default:
                            return "none";
                    }
                } else if (activeNetworkInfo.getType() == 1) {
                    return Network.NETWORK_TYPE_WIFI;
                }
            }
            return str;
        } catch (Exception e2) {
            return str;
        }
    }
}
