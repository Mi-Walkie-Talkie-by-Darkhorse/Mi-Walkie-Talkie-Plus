package com.xiaomi.push.service;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.text.TextUtils;
import com.ifengyu.intercom.bean.QRConstants;
import com.just.agentweb.DefaultWebClient;
import com.tencent.open.SocialConstants;
import com.umeng.analytics.pro.UMCommonContent;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.mipush.sdk.Constants;
import com.xiaomi.push.C5971ad;
import com.xiaomi.push.C6000az;
import com.xiaomi.push.C6011bg;
import com.xiaomi.push.C6013bi;
import com.xiaomi.push.C6023bo;
import com.xiaomi.push.C6193gk;
import com.xiaomi.push.C6242i;
import com.xiaomi.push.C6306l;
import com.xiaomi.push.EnumC6310p;
import java.util.Map;
import java.util.TreeMap;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.xiaomi.push.service.s */
/* loaded from: classes2.dex */
public class C6459s {

    /* renamed from: a */
    private static C6457r f23231a;

    /* renamed from: a */
    private static InterfaceC6460a f23232a;

    /* renamed from: com.xiaomi.push.service.s$a */
    /* loaded from: classes2.dex */
    public interface InterfaceC6460a {
        /* renamed from: a */
        void mo1286a();
    }

    /* renamed from: a */
    private static int m1295a(Context context) {
        return context.getSharedPreferences("mipush_account", 0).getInt("enc_req_fail_count", 0);
    }

    /* renamed from: a */
    public static synchronized C6457r m1294a(Context context) {
        synchronized (C6459s.class) {
            C6457r c6457r = f23231a;
            if (c6457r != null) {
                return c6457r;
            }
            SharedPreferences sharedPreferences = context.getSharedPreferences("mipush_account", 0);
            String string = sharedPreferences.getString(QRConstants.PARAMETER_NAME_UUID, null);
            String string2 = sharedPreferences.getString("token", null);
            String string3 = sharedPreferences.getString("security", null);
            String string4 = sharedPreferences.getString(Constants.APP_ID, null);
            String string5 = sharedPreferences.getString("app_token", null);
            String string6 = sharedPreferences.getString("package_name", null);
            String string7 = sharedPreferences.getString("device_id", null);
            int i = sharedPreferences.getInt("env_type", 1);
            if (!TextUtils.isEmpty(string7) && C6242i.m2506a(string7)) {
                string7 = C6242i.m2488i(context);
                sharedPreferences.edit().putString("device_id", string7).commit();
            }
            if (TextUtils.isEmpty(string) || TextUtils.isEmpty(string2) || TextUtils.isEmpty(string3)) {
                return null;
            }
            String m2488i = C6242i.m2488i(context);
            if (!"com.xiaomi.xmsf".equals(context.getPackageName()) && !TextUtils.isEmpty(m2488i) && !TextUtils.isEmpty(string7) && !string7.equals(m2488i)) {
                AbstractC5876b.m4147a("read_phone_state permission changes.");
            }
            C6457r c6457r2 = new C6457r(string, string2, string3, string4, string5, string6, i);
            f23231a = c6457r2;
            return c6457r2;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(37:3|4|(2:8|(34:10|11|(1:13)|14|(1:16)(1:119)|17|(1:19)(1:118)|20|(1:22)(1:117)|23|24|25|26|(1:28)(1:113)|29|(6:31|(1:33)|34|(1:38)|39|(1:41))|42|(1:44)|45|(6:48|49|50|52|53|46)|57|58|(11:63|64|(1:66)|67|68|(2:72|(4:74|75|76|(7:78|(1:80)|81|82|83|84|85)(6:88|89|(1:93)|94|95|96)))|107|(2:91|93)|94|95|96)|112|64|(0)|67|68|(3:70|72|(0))|107|(0)|94|95|96))|120|11|(0)|14|(0)(0)|17|(0)(0)|20|(0)(0)|23|24|25|26|(0)(0)|29|(0)|42|(0)|45|(1:46)|57|58|(12:60|63|64|(0)|67|68|(0)|107|(0)|94|95|96)|112|64|(0)|67|68|(0)|107|(0)|94|95|96) */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0093, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0094, code lost:
        com.xiaomi.channel.commonutils.logger.AbstractC5876b.m4143a(r0);
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0215, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0217, code lost:
        com.xiaomi.channel.commonutils.logger.AbstractC5876b.m4138d("device registration request failed. " + r0);
        r0 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0319 A[Catch: all -> 0x032e, TryCatch #6 {, blocks: (B:4:0x0005, B:6:0x001a, B:8:0x0022, B:10:0x0038, B:12:0x0044, B:14:0x0055, B:15:0x005a, B:19:0x0066, B:23:0x0072, B:27:0x007e, B:28:0x0088, B:34:0x009c, B:36:0x00a5, B:38:0x00cd, B:40:0x00d9, B:41:0x00ec, B:43:0x00f6, B:45:0x00fc, B:46:0x0110, B:48:0x0116, B:49:0x011b, B:51:0x013e, B:52:0x0147, B:53:0x017e, B:55:0x0184, B:56:0x018b, B:59:0x019a, B:60:0x01cb, B:62:0x01eb, B:65:0x01f2, B:67:0x0209, B:70:0x0210, B:74:0x0217, B:76:0x022e, B:78:0x0234, B:99:0x02eb, B:100:0x02fc, B:106:0x0319, B:108:0x031f, B:109:0x0327, B:103:0x0303, B:31:0x0094), top: B:121:0x0005, inners: #1, #4, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:124:0x023e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0055 A[Catch: all -> 0x032e, TryCatch #6 {, blocks: (B:4:0x0005, B:6:0x001a, B:8:0x0022, B:10:0x0038, B:12:0x0044, B:14:0x0055, B:15:0x005a, B:19:0x0066, B:23:0x0072, B:27:0x007e, B:28:0x0088, B:34:0x009c, B:36:0x00a5, B:38:0x00cd, B:40:0x00d9, B:41:0x00ec, B:43:0x00f6, B:45:0x00fc, B:46:0x0110, B:48:0x0116, B:49:0x011b, B:51:0x013e, B:52:0x0147, B:53:0x017e, B:55:0x0184, B:56:0x018b, B:59:0x019a, B:60:0x01cb, B:62:0x01eb, B:65:0x01f2, B:67:0x0209, B:70:0x0210, B:74:0x0217, B:76:0x022e, B:78:0x0234, B:99:0x02eb, B:100:0x02fc, B:106:0x0319, B:108:0x031f, B:109:0x0327, B:103:0x0303, B:31:0x0094), top: B:121:0x0005, inners: #1, #4, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009c A[Catch: all -> 0x032e, TryCatch #6 {, blocks: (B:4:0x0005, B:6:0x001a, B:8:0x0022, B:10:0x0038, B:12:0x0044, B:14:0x0055, B:15:0x005a, B:19:0x0066, B:23:0x0072, B:27:0x007e, B:28:0x0088, B:34:0x009c, B:36:0x00a5, B:38:0x00cd, B:40:0x00d9, B:41:0x00ec, B:43:0x00f6, B:45:0x00fc, B:46:0x0110, B:48:0x0116, B:49:0x011b, B:51:0x013e, B:52:0x0147, B:53:0x017e, B:55:0x0184, B:56:0x018b, B:59:0x019a, B:60:0x01cb, B:62:0x01eb, B:65:0x01f2, B:67:0x0209, B:70:0x0210, B:74:0x0217, B:76:0x022e, B:78:0x0234, B:99:0x02eb, B:100:0x02fc, B:106:0x0319, B:108:0x031f, B:109:0x0327, B:103:0x0303, B:31:0x0094), top: B:121:0x0005, inners: #1, #4, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00cd A[Catch: all -> 0x032e, TryCatch #6 {, blocks: (B:4:0x0005, B:6:0x001a, B:8:0x0022, B:10:0x0038, B:12:0x0044, B:14:0x0055, B:15:0x005a, B:19:0x0066, B:23:0x0072, B:27:0x007e, B:28:0x0088, B:34:0x009c, B:36:0x00a5, B:38:0x00cd, B:40:0x00d9, B:41:0x00ec, B:43:0x00f6, B:45:0x00fc, B:46:0x0110, B:48:0x0116, B:49:0x011b, B:51:0x013e, B:52:0x0147, B:53:0x017e, B:55:0x0184, B:56:0x018b, B:59:0x019a, B:60:0x01cb, B:62:0x01eb, B:65:0x01f2, B:67:0x0209, B:70:0x0210, B:74:0x0217, B:76:0x022e, B:78:0x0234, B:99:0x02eb, B:100:0x02fc, B:106:0x0319, B:108:0x031f, B:109:0x0327, B:103:0x0303, B:31:0x0094), top: B:121:0x0005, inners: #1, #4, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x013e A[Catch: all -> 0x032e, TryCatch #6 {, blocks: (B:4:0x0005, B:6:0x001a, B:8:0x0022, B:10:0x0038, B:12:0x0044, B:14:0x0055, B:15:0x005a, B:19:0x0066, B:23:0x0072, B:27:0x007e, B:28:0x0088, B:34:0x009c, B:36:0x00a5, B:38:0x00cd, B:40:0x00d9, B:41:0x00ec, B:43:0x00f6, B:45:0x00fc, B:46:0x0110, B:48:0x0116, B:49:0x011b, B:51:0x013e, B:52:0x0147, B:53:0x017e, B:55:0x0184, B:56:0x018b, B:59:0x019a, B:60:0x01cb, B:62:0x01eb, B:65:0x01f2, B:67:0x0209, B:70:0x0210, B:74:0x0217, B:76:0x022e, B:78:0x0234, B:99:0x02eb, B:100:0x02fc, B:106:0x0319, B:108:0x031f, B:109:0x0327, B:103:0x0303, B:31:0x0094), top: B:121:0x0005, inners: #1, #4, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0184 A[Catch: all -> 0x032e, TRY_LEAVE, TryCatch #6 {, blocks: (B:4:0x0005, B:6:0x001a, B:8:0x0022, B:10:0x0038, B:12:0x0044, B:14:0x0055, B:15:0x005a, B:19:0x0066, B:23:0x0072, B:27:0x007e, B:28:0x0088, B:34:0x009c, B:36:0x00a5, B:38:0x00cd, B:40:0x00d9, B:41:0x00ec, B:43:0x00f6, B:45:0x00fc, B:46:0x0110, B:48:0x0116, B:49:0x011b, B:51:0x013e, B:52:0x0147, B:53:0x017e, B:55:0x0184, B:56:0x018b, B:59:0x019a, B:60:0x01cb, B:62:0x01eb, B:65:0x01f2, B:67:0x0209, B:70:0x0210, B:74:0x0217, B:76:0x022e, B:78:0x0234, B:99:0x02eb, B:100:0x02fc, B:106:0x0319, B:108:0x031f, B:109:0x0327, B:103:0x0303, B:31:0x0094), top: B:121:0x0005, inners: #1, #4, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x020f  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x022e A[Catch: all -> 0x032e, TryCatch #6 {, blocks: (B:4:0x0005, B:6:0x001a, B:8:0x0022, B:10:0x0038, B:12:0x0044, B:14:0x0055, B:15:0x005a, B:19:0x0066, B:23:0x0072, B:27:0x007e, B:28:0x0088, B:34:0x009c, B:36:0x00a5, B:38:0x00cd, B:40:0x00d9, B:41:0x00ec, B:43:0x00f6, B:45:0x00fc, B:46:0x0110, B:48:0x0116, B:49:0x011b, B:51:0x013e, B:52:0x0147, B:53:0x017e, B:55:0x0184, B:56:0x018b, B:59:0x019a, B:60:0x01cb, B:62:0x01eb, B:65:0x01f2, B:67:0x0209, B:70:0x0210, B:74:0x0217, B:76:0x022e, B:78:0x0234, B:99:0x02eb, B:100:0x02fc, B:106:0x0319, B:108:0x031f, B:109:0x0327, B:103:0x0303, B:31:0x0094), top: B:121:0x0005, inners: #1, #4, #5 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static synchronized C6457r m1289a(Context context, String str, String str2, String str3) {
        String str4;
        String m2511a;
        int m2516a;
        String m1451a;
        boolean z;
        C6011bg c6011bg;
        boolean z2;
        String m3680a;
        String str5;
        JSONObject jSONObject;
        String m2494d;
        synchronized (C6459s.class) {
            TreeMap treeMap = new TreeMap();
            treeMap.put("devid", C6242i.m2508a(context, false));
            C6457r c6457r = f23231a;
            if (c6457r != null && !TextUtils.isEmpty(c6457r.f23220a)) {
                treeMap.put(QRConstants.PARAMETER_NAME_UUID, f23231a.f23220a);
                int lastIndexOf = f23231a.f23220a.lastIndexOf("/");
                if (lastIndexOf != -1) {
                    str4 = f23231a.f23220a.substring(lastIndexOf + 1);
                    C6000az.m3729a(context).m3727a(treeMap);
                    m2511a = C6242i.m2511a(context);
                    if (!TextUtils.isEmpty(m2511a)) {
                        treeMap.put("gaid", m2511a);
                    }
                    String str6 = !m1292a(context) ? "1000271" : str2;
                    String str7 = !m1292a(context) ? "420100086271" : str3;
                    String str8 = !m1292a(context) ? "com.xiaomi.xmsf" : str;
                    treeMap.put("appid", str6);
                    treeMap.put("apptoken", str7);
                    PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str8, 16384);
                    treeMap.put("appversion", packageInfo == null ? String.valueOf(packageInfo.versionCode) : "0");
                    treeMap.put("sdkversion", Integer.toString(40082));
                    treeMap.put("packagename", str8);
                    treeMap.put("model", Build.MODEL);
                    treeMap.put("board", Build.BOARD);
                    if (!C6306l.m1837d()) {
                        String str9 = TextUtils.isEmpty(C6242i.m2494d(context)) ? "" : "" + C6023bo.m3620a(m2494d);
                        String m2491f = C6242i.m2491f(context);
                        if (!TextUtils.isEmpty(str9) && !TextUtils.isEmpty(m2491f)) {
                            str9 = str9 + Constants.ACCEPT_TIME_SEPARATOR_SP + m2491f;
                        }
                        if (!TextUtils.isEmpty(str9)) {
                            treeMap.put(Constants.EXTRA_KEY_IMEI_MD5, str9);
                        }
                    }
                    treeMap.put(UMCommonContent.f19432x, Build.VERSION.RELEASE + Constants.ACCEPT_TIME_SEPARATOR_SERVER + Build.VERSION.INCREMENTAL);
                    m2516a = C6242i.m2516a();
                    if (m2516a >= 0) {
                        treeMap.put("space_id", Integer.toString(m2516a));
                    }
                    treeMap.put(Constants.PHONE_BRAND, Build.BRAND + "");
                    treeMap.put("ram", C6242i.m2515a());
                    treeMap.put("rom", C6242i.m2504b());
                    JSONObject jSONObject2 = new JSONObject();
                    for (Map.Entry entry : treeMap.entrySet()) {
                        try {
                            jSONObject2.put((String) entry.getKey(), entry.getValue());
                        } catch (JSONException e) {
                            AbstractC5876b.m4138d("failed to add data in json format: k=" + ((String) entry.getKey()) + ",v=" + ((String) entry.getValue()) + ". " + e);
                        }
                    }
                    m1451a = C6401bp.m1451a(jSONObject2.toString());
                    TreeMap treeMap2 = new TreeMap();
                    treeMap2.put("requestData", m1451a);
                    treeMap2.put("keyPairVer", "1");
                    if (m1295a(context) < 2 && !TextUtils.isEmpty(m1451a)) {
                        AbstractC5876b.m4147a("r.data = " + m1451a);
                        z = true;
                        String m1288a = m1288a(context, z);
                        if (z) {
                            treeMap = treeMap2;
                        }
                        c6011bg = C6013bi.m3672a(context, m1288a, treeMap);
                        if (c6011bg != null && c6011bg.f21098a == 200) {
                            m3680a = c6011bg.m3680a();
                            if (!TextUtils.isEmpty(m3680a)) {
                                try {
                                    jSONObject = new JSONObject(m3680a);
                                } catch (JSONException e2) {
                                    e = e2;
                                    z2 = z;
                                } catch (Throwable th) {
                                    th = th;
                                    z2 = z;
                                }
                                try {
                                } catch (JSONException e3) {
                                    e = e3;
                                    str5 = "failed to parse respone json data. " + e;
                                    AbstractC5876b.m4138d(str5);
                                    if (z2) {
                                    }
                                    AbstractC5876b.m4147a("fail to register push account. meet error.");
                                    return null;
                                } catch (Throwable th2) {
                                    th = th2;
                                    str5 = "unknow throwable. " + th;
                                    AbstractC5876b.m4138d(str5);
                                    if (z2) {
                                    }
                                    AbstractC5876b.m4147a("fail to register push account. meet error.");
                                    return null;
                                }
                                if (jSONObject.getInt("code") != 0) {
                                    z2 = z;
                                    C6463v.m1275a(context, jSONObject.getInt("code"), jSONObject.optString(SocialConstants.PARAM_COMMENT));
                                    AbstractC5876b.m4147a("device registration resp: " + m3680a);
                                    if (z2 && C6013bi.m3661c(context)) {
                                        m1291a(context, m1295a(context) + 1);
                                    }
                                    AbstractC5876b.m4147a("fail to register push account. meet error.");
                                    return null;
                                }
                                JSONObject jSONObject3 = jSONObject.getJSONObject("data");
                                String string = jSONObject3.getString("ssecurity");
                                String string2 = jSONObject3.getString("token");
                                String string3 = jSONObject3.getString("userId");
                                if (TextUtils.isEmpty(str4)) {
                                    str4 = "an" + C6023bo.m3621a(6);
                                }
                                C6457r c6457r2 = new C6457r(string3 + "@xiaomi.com/" + str4, string2, string, str6, str7, str8, C5971ad.m3797a());
                                m1290a(context, c6457r2);
                                f23231a = c6457r2;
                                m1291a(context, 0);
                                AbstractC5876b.m4147a("device registration is successful. " + string3);
                                return c6457r2;
                            }
                        }
                        z2 = z;
                        if (z2) {
                            m1291a(context, m1295a(context) + 1);
                        }
                        AbstractC5876b.m4147a("fail to register push account. meet error.");
                        return null;
                    }
                    z = false;
                    String m1288a2 = m1288a(context, z);
                    if (z) {
                    }
                    c6011bg = C6013bi.m3672a(context, m1288a2, treeMap);
                    if (c6011bg != null) {
                        m3680a = c6011bg.m3680a();
                        if (!TextUtils.isEmpty(m3680a)) {
                        }
                    }
                    z2 = z;
                    if (z2) {
                    }
                    AbstractC5876b.m4147a("fail to register push account. meet error.");
                    return null;
                }
            }
            str4 = null;
            C6000az.m3729a(context).m3727a(treeMap);
            m2511a = C6242i.m2511a(context);
            if (!TextUtils.isEmpty(m2511a)) {
            }
            if (!m1292a(context)) {
            }
            if (!m1292a(context)) {
            }
            if (!m1292a(context)) {
            }
            treeMap.put("appid", str6);
            treeMap.put("apptoken", str7);
            PackageInfo packageInfo2 = context.getPackageManager().getPackageInfo(str8, 16384);
            treeMap.put("appversion", packageInfo2 == null ? String.valueOf(packageInfo2.versionCode) : "0");
            treeMap.put("sdkversion", Integer.toString(40082));
            treeMap.put("packagename", str8);
            treeMap.put("model", Build.MODEL);
            treeMap.put("board", Build.BOARD);
            if (!C6306l.m1837d()) {
            }
            treeMap.put(UMCommonContent.f19432x, Build.VERSION.RELEASE + Constants.ACCEPT_TIME_SEPARATOR_SERVER + Build.VERSION.INCREMENTAL);
            m2516a = C6242i.m2516a();
            if (m2516a >= 0) {
            }
            treeMap.put(Constants.PHONE_BRAND, Build.BRAND + "");
            treeMap.put("ram", C6242i.m2515a());
            treeMap.put("rom", C6242i.m2504b());
            JSONObject jSONObject22 = new JSONObject();
            while (r9.hasNext()) {
            }
            m1451a = C6401bp.m1451a(jSONObject22.toString());
            TreeMap treeMap22 = new TreeMap();
            treeMap22.put("requestData", m1451a);
            treeMap22.put("keyPairVer", "1");
            if (m1295a(context) < 2) {
                AbstractC5876b.m4147a("r.data = " + m1451a);
                z = true;
                String m1288a22 = m1288a(context, z);
                if (z) {
                }
                c6011bg = C6013bi.m3672a(context, m1288a22, treeMap);
                if (c6011bg != null) {
                }
                z2 = z;
                if (z2) {
                }
                AbstractC5876b.m4147a("fail to register push account. meet error.");
                return null;
            }
            z = false;
            String m1288a222 = m1288a(context, z);
            if (z) {
            }
            c6011bg = C6013bi.m3672a(context, m1288a222, treeMap);
            if (c6011bg != null) {
            }
            z2 = z;
            if (z2) {
            }
            AbstractC5876b.m4147a("fail to register push account. meet error.");
            return null;
        }
    }

    /* renamed from: a */
    private static String m1288a(Context context, boolean z) {
        StringBuilder sb;
        String str;
        String m1719a = C6338a.m1718a(context).m1719a();
        String str2 = z ? "/pass/v2/register/encrypt" : "/pass/v2/register";
        if (C5971ad.m3794b()) {
            sb = new StringBuilder();
            sb.append(DefaultWebClient.HTTP_SCHEME);
            sb.append(C6193gk.f21750b);
            str = ":9085";
        } else if (EnumC6310p.China.name().equals(m1719a)) {
            sb = new StringBuilder();
            str = "https://cn.register.xmpush.xiaomi.com";
        } else if (EnumC6310p.Global.name().equals(m1719a)) {
            sb = new StringBuilder();
            str = "https://register.xmpush.global.xiaomi.com";
        } else if (EnumC6310p.Europe.name().equals(m1719a)) {
            sb = new StringBuilder();
            str = "https://fr.register.xmpush.global.xiaomi.com";
        } else if (EnumC6310p.Russia.name().equals(m1719a)) {
            sb = new StringBuilder();
            str = "https://ru.register.xmpush.global.xiaomi.com";
        } else if (EnumC6310p.India.name().equals(m1719a)) {
            sb = new StringBuilder();
            str = "https://idmb.register.xmpush.global.xiaomi.com";
        } else {
            sb = new StringBuilder();
            sb.append(DefaultWebClient.HTTPS_SCHEME);
            str = C5971ad.m3796a() ? "sandbox.xmpush.xiaomi.com" : "register.xmpush.xiaomi.com";
        }
        sb.append(str);
        sb.append(str2);
        return sb.toString();
    }

    /* renamed from: a */
    public static void m1296a() {
        InterfaceC6460a interfaceC6460a = f23232a;
        if (interfaceC6460a != null) {
            interfaceC6460a.mo1286a();
        }
    }

    /* renamed from: a */
    public static void m1293a(Context context) {
        context.getSharedPreferences("mipush_account", 0).edit().clear().commit();
        f23231a = null;
        m1296a();
    }

    /* renamed from: a */
    private static void m1291a(Context context, int i) {
        SharedPreferences.Editor edit = context.getSharedPreferences("mipush_account", 0).edit();
        edit.putInt("enc_req_fail_count", i);
        edit.commit();
    }

    /* renamed from: a */
    public static void m1290a(Context context, C6457r c6457r) {
        SharedPreferences.Editor edit = context.getSharedPreferences("mipush_account", 0).edit();
        edit.putString(QRConstants.PARAMETER_NAME_UUID, c6457r.f23220a);
        edit.putString("security", c6457r.f23222c);
        edit.putString("token", c6457r.f23221b);
        edit.putString(Constants.APP_ID, c6457r.f23223d);
        edit.putString("package_name", c6457r.f23225f);
        edit.putString("app_token", c6457r.f23224e);
        edit.putString("device_id", C6242i.m2488i(context));
        edit.putInt("env_type", c6457r.f23219a);
        edit.commit();
        m1296a();
    }

    /* renamed from: a */
    public static void m1287a(InterfaceC6460a interfaceC6460a) {
        f23232a = interfaceC6460a;
    }

    /* renamed from: a */
    private static boolean m1292a(Context context) {
        return context.getPackageName().equals("com.xiaomi.xmsf");
    }
}
