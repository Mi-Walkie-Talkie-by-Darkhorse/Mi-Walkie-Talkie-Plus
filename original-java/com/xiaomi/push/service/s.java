package com.xiaomi.push.service;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.just.agentweb.DefaultWebClient;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.mipush.sdk.Constants;
import com.xiaomi.push.ad;
import com.xiaomi.push.gk;
import com.xiaomi.push.i;
import com.xiaomi.push.p;

/* loaded from: classes2.dex */
public class s {

    /* renamed from: a  reason: collision with root package name */
    private static r f9358a;

    /* renamed from: a  reason: collision with other field name */
    private static a f1008a;

    /* loaded from: classes2.dex */
    public interface a {
        void a();
    }

    private static int a(Context context) {
        return context.getSharedPreferences("mipush_account", 0).getInt("enc_req_fail_count", 0);
    }

    /* renamed from: a  reason: collision with other method in class */
    public static synchronized r m648a(Context context) {
        synchronized (s.class) {
            if (f9358a != null) {
                return f9358a;
            }
            SharedPreferences sharedPreferences = context.getSharedPreferences("mipush_account", 0);
            String string = sharedPreferences.getString("uuid", null);
            String string2 = sharedPreferences.getString("token", null);
            String string3 = sharedPreferences.getString("security", null);
            String string4 = sharedPreferences.getString(Constants.APP_ID, null);
            String string5 = sharedPreferences.getString("app_token", null);
            String string6 = sharedPreferences.getString("package_name", null);
            String string7 = sharedPreferences.getString("device_id", null);
            int i = sharedPreferences.getInt("env_type", 1);
            if (!TextUtils.isEmpty(string7) && i.a(string7)) {
                string7 = i.i(context);
                sharedPreferences.edit().putString("device_id", string7).commit();
            }
            if (TextUtils.isEmpty(string) || TextUtils.isEmpty(string2) || TextUtils.isEmpty(string3)) {
                return null;
            }
            String i2 = i.i(context);
            if (!"com.xiaomi.xmsf".equals(context.getPackageName()) && !TextUtils.isEmpty(i2) && !TextUtils.isEmpty(string7) && !string7.equals(i2)) {
                b.m1a("read_phone_state permission changes.");
            }
            r rVar = new r(string, string2, string3, string4, string5, string6, i);
            f9358a = rVar;
            return rVar;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(37:108|4|(2:8|(34:10|12|(1:14)|15|(1:17)(1:18)|19|(1:21)(1:22)|23|(1:25)(1:26)|27|114|28|31|(1:33)(1:34)|35|(6:37|(1:39)|40|(1:44)|45|(1:47))|48|(1:50)|51|(6:54|112|55|121|120|52)|119|58|(11:63|65|(1:67)|110|68|(2:75|(4:116|77|118|(7:79|(1:81)|82|83|84|85|86)(6:87|88|(1:102)|103|104|105)))|98|(2:100|102)|103|104|105)|64|65|(0)|110|68|(3:73|75|(0))|98|(0)|103|104|105))|11|12|(0)|15|(0)(0)|19|(0)(0)|23|(0)(0)|27|114|28|31|(0)(0)|35|(0)|48|(0)|51|(1:52)|119|58|(12:60|63|65|(0)|110|68|(0)|98|(0)|103|104|105)|64|65|(0)|110|68|(0)|98|(0)|103|104|105) */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0095, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0096, code lost:
        com.xiaomi.channel.commonutils.logger.b.a(r0);
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0217, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0219, code lost:
        com.xiaomi.channel.commonutils.logger.b.d("device registration request failed. " + r0);
        r0 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x031b A[Catch: all -> 0x0330, TryCatch #0 {, blocks: (B:4:0x0005, B:6:0x001a, B:8:0x0024, B:10:0x003a, B:12:0x0046, B:14:0x0057, B:15:0x005c, B:19:0x0068, B:23:0x0074, B:27:0x0080, B:28:0x008a, B:30:0x0096, B:33:0x009e, B:35:0x00a7, B:37:0x00cf, B:39:0x00db, B:40:0x00ee, B:42:0x00f8, B:44:0x00fe, B:45:0x0112, B:47:0x0118, B:48:0x011d, B:50:0x0140, B:51:0x0149, B:52:0x0180, B:54:0x0186, B:55:0x018d, B:57:0x019c, B:58:0x01cd, B:60:0x01ed, B:63:0x01f4, B:65:0x020b, B:68:0x0212, B:71:0x0219, B:73:0x0230, B:75:0x0236, B:93:0x02ed, B:94:0x02fe, B:97:0x0305, B:100:0x031b, B:102:0x0321, B:103:0x0329), top: B:108:0x0005, inners: #2, #6, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0240 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0057 A[Catch: all -> 0x0330, TryCatch #0 {, blocks: (B:4:0x0005, B:6:0x001a, B:8:0x0024, B:10:0x003a, B:12:0x0046, B:14:0x0057, B:15:0x005c, B:19:0x0068, B:23:0x0074, B:27:0x0080, B:28:0x008a, B:30:0x0096, B:33:0x009e, B:35:0x00a7, B:37:0x00cf, B:39:0x00db, B:40:0x00ee, B:42:0x00f8, B:44:0x00fe, B:45:0x0112, B:47:0x0118, B:48:0x011d, B:50:0x0140, B:51:0x0149, B:52:0x0180, B:54:0x0186, B:55:0x018d, B:57:0x019c, B:58:0x01cd, B:60:0x01ed, B:63:0x01f4, B:65:0x020b, B:68:0x0212, B:71:0x0219, B:73:0x0230, B:75:0x0236, B:93:0x02ed, B:94:0x02fe, B:97:0x0305, B:100:0x031b, B:102:0x0321, B:103:0x0329), top: B:108:0x0005, inners: #2, #6, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x009e A[Catch: all -> 0x0330, TryCatch #0 {, blocks: (B:4:0x0005, B:6:0x001a, B:8:0x0024, B:10:0x003a, B:12:0x0046, B:14:0x0057, B:15:0x005c, B:19:0x0068, B:23:0x0074, B:27:0x0080, B:28:0x008a, B:30:0x0096, B:33:0x009e, B:35:0x00a7, B:37:0x00cf, B:39:0x00db, B:40:0x00ee, B:42:0x00f8, B:44:0x00fe, B:45:0x0112, B:47:0x0118, B:48:0x011d, B:50:0x0140, B:51:0x0149, B:52:0x0180, B:54:0x0186, B:55:0x018d, B:57:0x019c, B:58:0x01cd, B:60:0x01ed, B:63:0x01f4, B:65:0x020b, B:68:0x0212, B:71:0x0219, B:73:0x0230, B:75:0x0236, B:93:0x02ed, B:94:0x02fe, B:97:0x0305, B:100:0x031b, B:102:0x0321, B:103:0x0329), top: B:108:0x0005, inners: #2, #6, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00cf A[Catch: all -> 0x0330, TryCatch #0 {, blocks: (B:4:0x0005, B:6:0x001a, B:8:0x0024, B:10:0x003a, B:12:0x0046, B:14:0x0057, B:15:0x005c, B:19:0x0068, B:23:0x0074, B:27:0x0080, B:28:0x008a, B:30:0x0096, B:33:0x009e, B:35:0x00a7, B:37:0x00cf, B:39:0x00db, B:40:0x00ee, B:42:0x00f8, B:44:0x00fe, B:45:0x0112, B:47:0x0118, B:48:0x011d, B:50:0x0140, B:51:0x0149, B:52:0x0180, B:54:0x0186, B:55:0x018d, B:57:0x019c, B:58:0x01cd, B:60:0x01ed, B:63:0x01f4, B:65:0x020b, B:68:0x0212, B:71:0x0219, B:73:0x0230, B:75:0x0236, B:93:0x02ed, B:94:0x02fe, B:97:0x0305, B:100:0x031b, B:102:0x0321, B:103:0x0329), top: B:108:0x0005, inners: #2, #6, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0140 A[Catch: all -> 0x0330, TryCatch #0 {, blocks: (B:4:0x0005, B:6:0x001a, B:8:0x0024, B:10:0x003a, B:12:0x0046, B:14:0x0057, B:15:0x005c, B:19:0x0068, B:23:0x0074, B:27:0x0080, B:28:0x008a, B:30:0x0096, B:33:0x009e, B:35:0x00a7, B:37:0x00cf, B:39:0x00db, B:40:0x00ee, B:42:0x00f8, B:44:0x00fe, B:45:0x0112, B:47:0x0118, B:48:0x011d, B:50:0x0140, B:51:0x0149, B:52:0x0180, B:54:0x0186, B:55:0x018d, B:57:0x019c, B:58:0x01cd, B:60:0x01ed, B:63:0x01f4, B:65:0x020b, B:68:0x0212, B:71:0x0219, B:73:0x0230, B:75:0x0236, B:93:0x02ed, B:94:0x02fe, B:97:0x0305, B:100:0x031b, B:102:0x0321, B:103:0x0329), top: B:108:0x0005, inners: #2, #6, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0186 A[Catch: all -> 0x0330, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0005, B:6:0x001a, B:8:0x0024, B:10:0x003a, B:12:0x0046, B:14:0x0057, B:15:0x005c, B:19:0x0068, B:23:0x0074, B:27:0x0080, B:28:0x008a, B:30:0x0096, B:33:0x009e, B:35:0x00a7, B:37:0x00cf, B:39:0x00db, B:40:0x00ee, B:42:0x00f8, B:44:0x00fe, B:45:0x0112, B:47:0x0118, B:48:0x011d, B:50:0x0140, B:51:0x0149, B:52:0x0180, B:54:0x0186, B:55:0x018d, B:57:0x019c, B:58:0x01cd, B:60:0x01ed, B:63:0x01f4, B:65:0x020b, B:68:0x0212, B:71:0x0219, B:73:0x0230, B:75:0x0236, B:93:0x02ed, B:94:0x02fe, B:97:0x0305, B:100:0x031b, B:102:0x0321, B:103:0x0329), top: B:108:0x0005, inners: #2, #6, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0211  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0230 A[Catch: all -> 0x0330, TryCatch #0 {, blocks: (B:4:0x0005, B:6:0x001a, B:8:0x0024, B:10:0x003a, B:12:0x0046, B:14:0x0057, B:15:0x005c, B:19:0x0068, B:23:0x0074, B:27:0x0080, B:28:0x008a, B:30:0x0096, B:33:0x009e, B:35:0x00a7, B:37:0x00cf, B:39:0x00db, B:40:0x00ee, B:42:0x00f8, B:44:0x00fe, B:45:0x0112, B:47:0x0118, B:48:0x011d, B:50:0x0140, B:51:0x0149, B:52:0x0180, B:54:0x0186, B:55:0x018d, B:57:0x019c, B:58:0x01cd, B:60:0x01ed, B:63:0x01f4, B:65:0x020b, B:68:0x0212, B:71:0x0219, B:73:0x0230, B:75:0x0236, B:93:0x02ed, B:94:0x02fe, B:97:0x0305, B:100:0x031b, B:102:0x0321, B:103:0x0329), top: B:108:0x0005, inners: #2, #6, #7 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static synchronized com.xiaomi.push.service.r a(android.content.Context r17, java.lang.String r18, java.lang.String r19, java.lang.String r20) {
        /*
            Method dump skipped, instructions count: 819
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.s.a(android.content.Context, java.lang.String, java.lang.String, java.lang.String):com.xiaomi.push.service.r");
    }

    private static String a(Context context, boolean z) {
        StringBuilder sb;
        String str;
        String a2 = a.a(context).a();
        String str2 = z ? "/pass/v2/register/encrypt" : "/pass/v2/register";
        if (ad.b()) {
            sb = new StringBuilder();
            sb.append(DefaultWebClient.HTTP_SCHEME);
            sb.append(gk.f8994b);
            str = ":9085";
        } else if (p.China.name().equals(a2)) {
            sb = new StringBuilder();
            str = "https://cn.register.xmpush.xiaomi.com";
        } else if (p.Global.name().equals(a2)) {
            sb = new StringBuilder();
            str = "https://register.xmpush.global.xiaomi.com";
        } else if (p.Europe.name().equals(a2)) {
            sb = new StringBuilder();
            str = "https://fr.register.xmpush.global.xiaomi.com";
        } else if (p.Russia.name().equals(a2)) {
            sb = new StringBuilder();
            str = "https://ru.register.xmpush.global.xiaomi.com";
        } else if (p.India.name().equals(a2)) {
            sb = new StringBuilder();
            str = "https://idmb.register.xmpush.global.xiaomi.com";
        } else {
            sb = new StringBuilder();
            sb.append(DefaultWebClient.HTTPS_SCHEME);
            str = ad.m67a() ? "sandbox.xmpush.xiaomi.com" : "register.xmpush.xiaomi.com";
        }
        sb.append(str);
        sb.append(str2);
        return sb.toString();
    }

    public static void a() {
        a aVar = f1008a;
        if (aVar != null) {
            aVar.a();
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    public static void m649a(Context context) {
        context.getSharedPreferences("mipush_account", 0).edit().clear().commit();
        f9358a = null;
        a();
    }

    private static void a(Context context, int i) {
        SharedPreferences.Editor edit = context.getSharedPreferences("mipush_account", 0).edit();
        edit.putInt("enc_req_fail_count", i);
        edit.commit();
    }

    public static void a(Context context, r rVar) {
        SharedPreferences.Editor edit = context.getSharedPreferences("mipush_account", 0).edit();
        edit.putString("uuid", rVar.f1006a);
        edit.putString("security", rVar.f9353c);
        edit.putString("token", rVar.f9352b);
        edit.putString(Constants.APP_ID, rVar.d);
        edit.putString("package_name", rVar.f);
        edit.putString("app_token", rVar.e);
        edit.putString("device_id", i.i(context));
        edit.putInt("env_type", rVar.f9351a);
        edit.commit();
        a();
    }

    public static void a(a aVar) {
        f1008a = aVar;
    }

    /* renamed from: a  reason: collision with other method in class */
    private static boolean m650a(Context context) {
        return context.getPackageName().equals("com.xiaomi.xmsf");
    }
}
