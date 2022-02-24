package com.xiaomi.push.service;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.text.TextUtils;
import com.umeng.analytics.pro.ai;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.Cif;
import com.xiaomi.push.en;
import com.xiaomi.push.fy;
import com.xiaomi.push.g;
import com.xiaomi.push.gu;
import com.xiaomi.push.gx;
import com.xiaomi.push.gz;
import com.xiaomi.push.ha;
import com.xiaomi.push.ho;
import com.xiaomi.push.hv;
import com.xiaomi.push.i;
import com.xiaomi.push.ii;
import com.xiaomi.push.il;
import com.xiaomi.push.ir;
import com.xiaomi.push.iu;
import com.xiaomi.push.jf;
import com.xiaomi.push.l;
import com.xiaomi.push.service.aj;
import com.xiaomi.push.service.bd;
import com.xiaomi.push.u;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class w {
    public static Intent a(byte[] bArr, long j) {
        ir a2 = a(bArr);
        if (a2 == null) {
            return null;
        }
        Intent intent = new Intent("com.xiaomi.mipush.RECEIVE_MESSAGE");
        intent.putExtra("mipush_payload", bArr);
        intent.putExtra("mrt", Long.toString(j));
        intent.setPackage(a2.f654b);
        return intent;
    }

    public static ir a(Context context, ir irVar) {
        return a(context, irVar, (Map<String, String>) null);
    }

    public static ir a(Context context, ir irVar, Map<String, String> map) {
        il ilVar = new il();
        ilVar.b(irVar.m431a());
        ii a2 = irVar.m430a();
        if (a2 != null) {
            ilVar.a(a2.m396a());
            ilVar.a(a2.m394a());
            if (!TextUtils.isEmpty(a2.m401b())) {
                ilVar.c(a2.m401b());
            }
        }
        ilVar.a(jf.a(context, irVar));
        ir a3 = af.a(irVar.b(), irVar.m431a(), ilVar, hv.AckMessage);
        ii a4 = irVar.m430a();
        if (a4 != null) {
            a4 = bo.a(a4.m395a());
        }
        a4.a("mat", Long.toString(System.currentTimeMillis()));
        if (map != null) {
            try {
                if (map.size() > 0) {
                    for (String str : map.keySet()) {
                        a4.a(str, map.get(str));
                    }
                }
            } catch (Throwable unused) {
            }
        }
        a3.a(a4);
        return a3;
    }

    public static ir a(byte[] bArr) {
        ir irVar = new ir();
        try {
            jf.a(irVar, bArr);
            return irVar;
        } catch (Throwable th) {
            b.a(th);
            return null;
        }
    }

    public static void a(Context context, ir irVar, byte[] bArr) {
        try {
            aj.a(irVar);
            irVar.m430a();
            aj.c a2 = aj.m581a(context, irVar, bArr);
            if (a2.f9238a > 0 && !TextUtils.isEmpty(a2.f913a)) {
                ho.a(context, a2.f913a, a2.f9238a, true, false, System.currentTimeMillis());
            }
            if (!l.m528a(context) || !ae.a(context, irVar, a2.f914a)) {
                b(context, irVar, bArr);
                return;
            }
            ae.m576a(context, irVar);
            b.m1a("consume this broadcast by tts");
        } catch (Exception e) {
            b.m1a("notify push msg error " + e);
            e.printStackTrace();
        }
    }

    private static void a(XMPushService xMPushService, ir irVar) {
        xMPushService.a(new x(4, xMPushService, irVar));
    }

    private static void a(XMPushService xMPushService, ir irVar, iu iuVar) {
        xMPushService.a(new ad(4, iuVar, irVar, xMPushService));
    }

    private static void a(XMPushService xMPushService, ir irVar, String str) {
        xMPushService.a(new ab(4, xMPushService, irVar, str));
    }

    private static void a(XMPushService xMPushService, ir irVar, String str, String str2) {
        xMPushService.a(new ac(4, xMPushService, irVar, str, str2));
    }

    /* JADX WARN: Removed duplicated region for block: B:137:0x03c9  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x03e3  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x042d  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x03ab A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void a(com.xiaomi.push.service.XMPushService r19, java.lang.String r20, byte[] r21, android.content.Intent r22) {
        /*
            Method dump skipped, instructions count: 1211
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.w.a(com.xiaomi.push.service.XMPushService, java.lang.String, byte[], android.content.Intent):void");
    }

    private static void a(XMPushService xMPushService, byte[] bArr, long j) {
        Map<String, String> a2;
        ir a3 = a(bArr);
        if (a3 != null) {
            if (TextUtils.isEmpty(a3.f654b)) {
                b.m1a("receive a mipush message without package name");
                return;
            }
            Long valueOf = Long.valueOf(System.currentTimeMillis());
            Intent a4 = a(bArr, valueOf.longValue());
            String a5 = aj.a(a3);
            ho.a(xMPushService, a5, j, true, true, System.currentTimeMillis());
            ii a6 = a3.m430a();
            if (!(a6 == null || a6.m396a() == null)) {
                b.e(String.format("receive a message. appid=%1$s, msgid= %2$s, action=%3$s", a3.m431a(), a6.m396a(), a3.a()));
            }
            if (a6 != null) {
                a6.a("mrt", Long.toString(valueOf.longValue()));
            }
            String str = "";
            if (hv.SendMessage == a3.a() && t.a(xMPushService).m651a(a3.f654b) && !aj.m584a(a3)) {
                if (a6 != null) {
                    str = a6.m396a();
                    if (aj.e(a3)) {
                        en.a(xMPushService.getApplicationContext()).a(a3.b(), aj.b(a3), str, "1");
                    }
                }
                b.m1a("Drop a message for unregistered, msgid=" + str);
                a(xMPushService, a3, a3.f654b);
            } else if (hv.SendMessage == a3.a() && t.a(xMPushService).m653c(a3.f654b) && !aj.m584a(a3)) {
                if (a6 != null) {
                    str = a6.m396a();
                    if (aj.e(a3)) {
                        en.a(xMPushService.getApplicationContext()).a(a3.b(), aj.b(a3), str, "2");
                    }
                }
                b.m1a("Drop a message for push closed, msgid=" + str);
                a(xMPushService, a3, a3.f654b);
            } else if (hv.SendMessage == a3.a() && !TextUtils.equals(xMPushService.getPackageName(), "com.xiaomi.xmsf") && !TextUtils.equals(xMPushService.getPackageName(), a3.f654b)) {
                b.m1a("Receive a message with wrong package name, expect " + xMPushService.getPackageName() + ", received " + a3.f654b);
                a(xMPushService, a3, "unmatched_package", "package should be " + xMPushService.getPackageName() + ", but got " + a3.f654b);
                if (a6 != null && aj.e(a3)) {
                    en.a(xMPushService.getApplicationContext()).a(a3.b(), aj.b(a3), a6.m396a(), "3");
                }
            } else if (hv.SendMessage == a3.a() && i.a() == 999 && i.a(xMPushService, a5)) {
                b.m1a("Receive the uninstalled dual app message");
                try {
                    af.a(xMPushService, af.a(a5, a3.m431a()));
                    b.m1a("uninstall " + a5 + " msg sent");
                } catch (gu e) {
                    b.d("Fail to send Message: " + e.getMessage());
                    xMPushService.a(10, e);
                }
                aj.m582a((Context) xMPushService, a5);
            } else if (a6 == null || (a2 = a6.m397a()) == null || !a2.containsKey("hide") || !"true".equalsIgnoreCase(a2.get("hide"))) {
                if (!(a6 == null || a6.m397a() == null || !a6.m397a().containsKey("__miid"))) {
                    String str2 = a6.m397a().get("__miid");
                    String a7 = u.a(xMPushService.getApplicationContext());
                    if (TextUtils.isEmpty(a7) || !TextUtils.equals(str2, a7)) {
                        if (aj.e(a3)) {
                            en.a(xMPushService.getApplicationContext()).a(a3.b(), aj.b(a3), a6.m396a(), "4");
                        }
                        b.m1a(str2 + " should be login, but got " + a7);
                        a(xMPushService, a3, "miid already logout or anther already login", str2 + " should be login, but got " + a7);
                        return;
                    }
                }
                a(xMPushService, a5, bArr, a4);
            } else {
                b(xMPushService, a3);
            }
        }
    }

    private static boolean a(Context context, Intent intent) {
        try {
            List<ResolveInfo> queryBroadcastReceivers = context.getPackageManager().queryBroadcastReceivers(intent, 32);
            if (queryBroadcastReceivers != null) {
                if (!queryBroadcastReceivers.isEmpty()) {
                    return true;
                }
            }
            return false;
        } catch (Exception unused) {
            return true;
        }
    }

    private static boolean a(Context context, String str) {
        Intent intent = new Intent("com.xiaomi.mipush.miui.CLICK_MESSAGE");
        intent.setPackage(str);
        Intent intent2 = new Intent("com.xiaomi.mipush.miui.RECEIVE_MESSAGE");
        intent2.setPackage(str);
        PackageManager packageManager = context.getPackageManager();
        try {
            List<ResolveInfo> queryBroadcastReceivers = packageManager.queryBroadcastReceivers(intent2, 32);
            List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 32);
            if (queryBroadcastReceivers.isEmpty()) {
                if (queryIntentServices.isEmpty()) {
                    return false;
                }
            }
            return true;
        } catch (Exception e) {
            b.a(e);
            return false;
        }
    }

    public static boolean a(Context context, String str, byte[] bArr) {
        if (!g.m304a(context, str)) {
            return false;
        }
        Intent intent = new Intent("com.xiaomi.mipush.MESSAGE_ARRIVED");
        intent.putExtra("mipush_payload", bArr);
        intent.setPackage(str);
        try {
            if (context.getPackageManager().queryBroadcastReceivers(intent, 0).isEmpty()) {
                return false;
            }
            b.m1a("broadcast message arrived.");
            context.sendBroadcast(intent, af.a(str));
            return true;
        } catch (Exception e) {
            b.m1a("meet error when broadcast message arrived. " + e);
            return false;
        }
    }

    private static boolean a(ir irVar) {
        return "com.xiaomi.xmsf".equals(irVar.f654b) && irVar.m430a() != null && irVar.m430a().m397a() != null && irVar.m430a().m397a().containsKey("miui_package_name");
    }

    private static boolean a(XMPushService xMPushService, String str, ir irVar, ii iiVar) {
        boolean z = true;
        if (iiVar != null && iiVar.m397a() != null && iiVar.m397a().containsKey("__check_alive") && iiVar.m397a().containsKey("__awake")) {
            iu iuVar = new iu();
            iuVar.b(irVar.m431a());
            iuVar.d(str);
            iuVar.c(Cif.AwakeSystemApp.f527a);
            iuVar.a(iiVar.m396a());
            iuVar.f666a = new HashMap();
            boolean a2 = g.m304a(xMPushService.getApplicationContext(), str);
            iuVar.f666a.put("app_running", Boolean.toString(a2));
            if (!a2) {
                boolean parseBoolean = Boolean.parseBoolean(iiVar.m397a().get("__awake"));
                iuVar.f666a.put("awaked", Boolean.toString(parseBoolean));
                if (!parseBoolean) {
                    z = false;
                }
            }
            try {
                af.a(xMPushService, af.a(irVar.b(), irVar.m431a(), iuVar, hv.Notification));
            } catch (gu e) {
                b.a(e);
            }
        }
        return z;
    }

    private static void b(Context context, ir irVar, byte[] bArr) {
        if (!aj.m584a(irVar)) {
            String a2 = aj.a(irVar);
            if (!TextUtils.isEmpty(a2) && !a(context, a2, bArr)) {
                en.a(context).b(a2, aj.b(irVar), irVar.m430a().m396a(), "1");
            }
        }
    }

    private static void b(XMPushService xMPushService, ir irVar) {
        xMPushService.a(new y(4, xMPushService, irVar));
    }

    private static boolean b(ir irVar) {
        Map<String, String> a2 = irVar.m430a().m397a();
        return a2 != null && a2.containsKey("notify_effect");
    }

    private static void c(XMPushService xMPushService, ir irVar) {
        xMPushService.a(new z(4, xMPushService, irVar));
    }

    private static boolean c(ir irVar) {
        if (irVar.m430a() == null || irVar.m430a().m397a() == null) {
            return false;
        }
        return "1".equals(irVar.m430a().m397a().get("obslete_ads_message"));
    }

    private static void d(XMPushService xMPushService, ir irVar) {
        xMPushService.a(new aa(4, xMPushService, irVar));
    }

    public void a(Context context, bd.b bVar, boolean z, int i, String str) {
        r a2;
        if (!z && (a2 = s.m648a(context)) != null && "token-expired".equals(str)) {
            s.a(context, a2.f, a2.d, a2.e);
        }
    }

    public void a(XMPushService xMPushService, fy fyVar, bd.b bVar) {
        try {
            a(xMPushService, fyVar.m296a(bVar.h), fyVar.c());
        } catch (IllegalArgumentException e) {
            b.a(e);
        }
    }

    public void a(XMPushService xMPushService, ha haVar, bd.b bVar) {
        if (haVar instanceof gz) {
            gz gzVar = (gz) haVar;
            gx a2 = gzVar.a(ai.az);
            if (a2 != null) {
                try {
                    a(xMPushService, bm.a(bm.a(bVar.h, gzVar.j()), a2.c()), ho.a(haVar.m335a()));
                } catch (IllegalArgumentException e) {
                    b.a(e);
                }
            }
        } else {
            b.m1a("not a mipush message");
        }
    }
}
