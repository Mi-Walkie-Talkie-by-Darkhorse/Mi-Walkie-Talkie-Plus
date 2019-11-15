package com.xiaomi.push.service;

import android.accounts.Account;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.tencent.tauth.AuthActivity;
import com.xiaomi.channel.commonutils.android.f;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.mipush.sdk.Constants;
import com.xiaomi.push.service.XMPushService.h;
import com.xiaomi.smack.l;
import com.xiaomi.smack.packet.c;
import com.xiaomi.smack.util.g;
import com.xiaomi.tinyData.d;
import com.xiaomi.xmpush.thrift.a;
import com.xiaomi.xmpush.thrift.ac;
import com.xiaomi.xmpush.thrift.af;
import com.xiaomi.xmpush.thrift.ar;
import com.xiaomi.xmpush.thrift.p;
import com.xiaomi.xmpush.thrift.s;
import com.xiaomi.xmpush.thrift.x;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;

public class u {
    public static Intent a(byte[] bArr, long j) {
        ac a = a(bArr);
        if (a == null) {
            return null;
        }
        Intent intent = new Intent("com.xiaomi.mipush.RECEIVE_MESSAGE");
        intent.putExtra("mipush_payload", bArr);
        intent.putExtra("mrt", Long.toString(j));
        intent.setPackage(a.f);
        return intent;
    }

    public static ac a(Context context, ac acVar) {
        return a(context, acVar, false, false, false);
    }

    public static ac a(Context context, ac acVar, boolean z, boolean z2, boolean z3) {
        x xVar = new x();
        xVar.b(acVar.h());
        s m = acVar.m();
        if (m != null) {
            xVar.a(m.b());
            xVar.a(m.d());
            if (!TextUtils.isEmpty(m.f())) {
                xVar.c(m.f());
            }
        }
        xVar.a(ar.a(context, acVar));
        xVar.b(ar.a(z, z2, z3));
        ac a = ac.a(acVar.j(), acVar.h(), xVar, a.AckMessage);
        s a2 = acVar.m().a();
        a2.a("mat", Long.toString(System.currentTimeMillis()));
        a.a(a2);
        return a;
    }

    public static ac a(byte[] bArr) {
        ac acVar = new ac();
        try {
            ar.a(acVar, bArr);
            return acVar;
        } catch (Throwable th) {
            b.a(th);
            return null;
        }
    }

    private static void a(XMPushService xMPushService, ac acVar) {
        xMPushService.a((h) new v(4, xMPushService, acVar));
    }

    private static void a(XMPushService xMPushService, ac acVar, String str) {
        xMPushService.a((h) new z(4, xMPushService, acVar, str));
    }

    private static void a(XMPushService xMPushService, ac acVar, String str, String str2) {
        xMPushService.a((h) new aa(4, xMPushService, acVar, str, str2));
    }

    public static void a(XMPushService xMPushService, ac acVar, boolean z, boolean z2, boolean z3) {
        xMPushService.a((h) new ab(4, xMPushService, acVar, z, z2, z3));
    }

    public static void a(XMPushService xMPushService, String str, byte[] bArr, Intent intent, boolean z) {
        ac a = a(bArr);
        s m = a.m();
        if (c(a) && a((Context) xMPushService, str)) {
            d(xMPushService, a);
        } else if (a(a) && !a((Context) xMPushService, str) && !b(a)) {
            e(xMPushService, a);
        } else if ((ae.b(a) && com.xiaomi.channel.commonutils.android.b.g(xMPushService, a.f)) || a((Context) xMPushService, intent)) {
            if (a.Registration == a.a()) {
                String j = a.j();
                Editor edit = xMPushService.getSharedPreferences("pref_registered_pkg_names", 0).edit();
                edit.putString(j, a.e);
                edit.commit();
                d.a((Context) xMPushService).a("Register Success, package name is " + j);
            }
            if (m != null && !TextUtils.isEmpty(m.h()) && !TextUtils.isEmpty(m.j()) && m.h != 1 && (ae.a(m.s()) || !ae.a((Context) xMPushService, a.f))) {
                boolean z2 = false;
                String str2 = null;
                if (m != null) {
                    if (m.j != null) {
                        str2 = (String) m.j.get("jobkey");
                    }
                    if (TextUtils.isEmpty(str2)) {
                        str2 = m.b();
                    }
                    z2 = af.a(xMPushService, a.f, str2);
                }
                if (z2) {
                    b.a("drop a duplicate message, key=" + str2);
                } else {
                    ae.b a2 = ae.a((Context) xMPushService, a, bArr);
                    if (a2.b > 0 && !TextUtils.isEmpty(a2.a)) {
                        g.a(xMPushService, a2.a, a2.b, true, System.currentTimeMillis());
                    }
                    if (!ae.b(a)) {
                        Intent intent2 = new Intent("com.xiaomi.mipush.MESSAGE_ARRIVED");
                        intent2.putExtra("mipush_payload", bArr);
                        intent2.setPackage(a.f);
                        try {
                            List queryBroadcastReceivers = xMPushService.getPackageManager().queryBroadcastReceivers(intent2, 0);
                            if (queryBroadcastReceivers != null && !queryBroadcastReceivers.isEmpty()) {
                                xMPushService.sendBroadcast(intent2, b.a(a.f));
                            }
                        } catch (Exception e) {
                            xMPushService.sendBroadcast(intent2, b.a(a.f));
                        }
                    }
                }
                if (z) {
                    a(xMPushService, a, false, true, false);
                } else {
                    c(xMPushService, a);
                }
            } else if ("com.xiaomi.xmsf".contains(a.f) && !a.c() && m != null && m.s() != null && m.s().containsKey("ab")) {
                c(xMPushService, a);
                b.c("receive abtest message. ack it." + m.b());
            } else if (a(xMPushService, str, a, m)) {
                xMPushService.sendBroadcast(intent, b.a(a.f));
            }
            if (a.a() == a.UnRegistration && !"com.xiaomi.xmsf".equals(xMPushService.getPackageName())) {
                xMPushService.stopSelf();
            }
        } else if (!com.xiaomi.channel.commonutils.android.b.g(xMPushService, a.f)) {
            a(xMPushService, a);
        } else {
            b.a("receive a mipush message, we can see the app, but we can't see the receiver.");
        }
    }

    private static void a(XMPushService xMPushService, byte[] bArr, long j) {
        boolean a;
        ac a2 = a(bArr);
        if (a2 != null) {
            if (TextUtils.isEmpty(a2.f)) {
                b.a("receive a mipush message without package name");
                return;
            }
            Long valueOf = Long.valueOf(System.currentTimeMillis());
            Intent a3 = a(bArr, valueOf.longValue());
            String a4 = ae.a(a2);
            g.a(xMPushService, a4, j, true, System.currentTimeMillis());
            s m = a2.m();
            if (m != null) {
                m.a("mrt", Long.toString(valueOf.longValue()));
            }
            if (a.SendMessage == a2.a() && r.a((Context) xMPushService).a(a2.f) && !ae.b(a2)) {
                String str = "";
                if (m != null) {
                    str = m.b();
                }
                b.a("Drop a message for unregistered, msgid=" + str);
                a(xMPushService, a2, a2.f);
            } else if (a.SendMessage == a2.a() && r.a((Context) xMPushService).c(a2.f) && !ae.b(a2)) {
                String str2 = "";
                if (m != null) {
                    str2 = m.b();
                }
                b.a("Drop a message for push closed, msgid=" + str2);
                a(xMPushService, a2, a2.f);
            } else if (a.SendMessage != a2.a() || TextUtils.equals(xMPushService.getPackageName(), "com.xiaomi.xmsf") || TextUtils.equals(xMPushService.getPackageName(), a2.f)) {
                if (!(m == null || m.b() == null)) {
                    b.a(String.format("receive a message, appid=%1$s, msgid= %2$s", new Object[]{a2.h(), m.b()}));
                }
                if (m != null) {
                    Map s = m.s();
                    if (s != null && s.containsKey("hide") && "true".equalsIgnoreCase((String) s.get("hide"))) {
                        c(xMPushService, a2);
                        return;
                    }
                }
                if (!(m == null || m.s() == null || !m.s().containsKey("__miid"))) {
                    String str3 = (String) m.s().get("__miid");
                    Account a5 = f.a(xMPushService);
                    if ((a5 == null) || (!TextUtils.equals(str3, a5.name))) {
                        b.a(new StringBuilder().append(str3).append(" should be login, but got ").append(a5).toString() == null ? "nothing" : a5.name);
                        a(xMPushService, a2, "miid already logout or anther already login", new StringBuilder().append(str3).append(" should be login, but got ").append(a5).toString() == null ? "nothing" : a5.name);
                        return;
                    }
                }
                boolean z = m != null && a(m.s());
                if (z) {
                    if (h.e(xMPushService)) {
                        if (!(a(m) && h.d(xMPushService))) {
                            a = true;
                        } else if (b(xMPushService, a2)) {
                            a = a(xMPushService, m, bArr);
                        } else {
                            return;
                        }
                        a(xMPushService, a2, true, false, false);
                        if (!a) {
                            return;
                        }
                    } else {
                        return;
                    }
                }
                a(xMPushService, a4, bArr, a3, z);
            } else {
                b.a("Receive a message with wrong package name, expect " + xMPushService.getPackageName() + ", received " + a2.f);
                a(xMPushService, a2, "unmatched_package", "package should be " + xMPushService.getPackageName() + ", but got " + a2.f);
            }
        }
    }

    private static boolean a(Context context, Intent intent) {
        try {
            List queryBroadcastReceivers = context.getPackageManager().queryBroadcastReceivers(intent, 32);
            return queryBroadcastReceivers != null && !queryBroadcastReceivers.isEmpty();
        } catch (Exception e) {
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
            return !packageManager.queryBroadcastReceivers(intent2, 32).isEmpty() || !packageManager.queryIntentServices(intent, 32).isEmpty();
        } catch (Exception e) {
            b.a((Throwable) e);
            return false;
        }
    }

    private static boolean a(XMPushService xMPushService, s sVar, byte[] bArr) {
        Map s = sVar.s();
        String[] split = ((String) s.get("__geo_ids")).split(Constants.ACCEPT_TIME_SEPARATOR_SP);
        ArrayList arrayList = new ArrayList();
        for (String str : split) {
            if (e.a((Context) xMPushService).a(str) != null) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("geo_id", str);
                contentValues.put("message_id", sVar.b());
                int parseInt = Integer.parseInt((String) s.get("__geo_action"));
                contentValues.put(AuthActivity.ACTION_KEY, Integer.valueOf(parseInt));
                contentValues.put("content", bArr);
                contentValues.put("deadline", Long.valueOf(Long.parseLong((String) s.get("__geo_deadline"))));
                if (TextUtils.equals(e.a((Context) xMPushService).c(str), "Enter") && parseInt == 1) {
                    return true;
                }
                arrayList.add(contentValues);
            }
        }
        if (!g.a((Context) xMPushService).a(arrayList)) {
            b.c("geofence added some new geofence message failed messagi_id:" + sVar.b());
        }
        return false;
    }

    private static boolean a(XMPushService xMPushService, String str, ac acVar, s sVar) {
        boolean z;
        if (sVar == null || sVar.s() == null || !sVar.s().containsKey("__check_alive") || !sVar.s().containsKey("__awake")) {
            return true;
        }
        af afVar = new af();
        afVar.b(acVar.h());
        afVar.d(str);
        afVar.c(p.AwakeSystemApp.T);
        afVar.a(sVar.b());
        afVar.h = new HashMap();
        boolean f = com.xiaomi.channel.commonutils.android.b.f(xMPushService.getApplicationContext(), str);
        afVar.h.put("app_running", Boolean.toString(f));
        if (!f) {
            boolean parseBoolean = Boolean.parseBoolean((String) sVar.s().get("__awake"));
            afVar.h.put("awaked", Boolean.toString(parseBoolean));
            if (!parseBoolean) {
                z = false;
                ac.a(xMPushService, ac.a(acVar.j(), acVar.h(), afVar, a.Notification));
                return z;
            }
        }
        z = true;
        try {
            ac.a(xMPushService, ac.a(acVar.j(), acVar.h(), afVar, a.Notification));
            return z;
        } catch (l e) {
            b.a((Throwable) e);
            return z;
        }
    }

    private static boolean a(ac acVar) {
        return "com.xiaomi.xmsf".equals(acVar.f) && acVar.m() != null && acVar.m().s() != null && acVar.m().s().containsKey("miui_package_name");
    }

    public static boolean a(s sVar) {
        if (sVar == null) {
            return false;
        }
        Map s = sVar.s();
        if (s != null) {
            return TextUtils.equals("1", (CharSequence) s.get("__geo_local_check"));
        }
        return false;
    }

    private static boolean a(Map<String, String> map) {
        return map != null && map.containsKey("__geo_ids");
    }

    private static boolean b(XMPushService xMPushService, ac acVar) {
        if (!h.a(xMPushService)) {
            return false;
        }
        if (!h.c(xMPushService)) {
            return false;
        }
        if (!com.xiaomi.channel.commonutils.android.b.g(xMPushService, acVar.f)) {
            a(xMPushService, acVar);
            return false;
        }
        Map s = acVar.m().s();
        if (s == null) {
            return false;
        }
        if (!com.tencent.connect.common.Constants.VIA_REPORT_TYPE_SET_AVATAR.contains((CharSequence) s.get("__geo_action"))) {
            return false;
        }
        return !TextUtils.isEmpty((CharSequence) s.get("__geo_ids"));
    }

    private static boolean b(ac acVar) {
        Map s = acVar.m().s();
        return s != null && s.containsKey("notify_effect");
    }

    private static void c(XMPushService xMPushService, ac acVar) {
        xMPushService.a((h) new w(4, xMPushService, acVar));
    }

    private static boolean c(ac acVar) {
        if (acVar.m() == null || acVar.m().s() == null) {
            return false;
        }
        return "1".equals(acVar.m().s().get("obslete_ads_message"));
    }

    private static void d(XMPushService xMPushService, ac acVar) {
        xMPushService.a((h) new x(4, xMPushService, acVar));
    }

    private static void e(XMPushService xMPushService, ac acVar) {
        xMPushService.a((h) new y(4, xMPushService, acVar));
    }

    public void a(Context context, am.b bVar, boolean z, int i, String str) {
        if (!z) {
            p a = q.a(context);
            if (a != null && "token-expired".equals(str)) {
                try {
                    q.a(context, a.d, a.e, a.f);
                } catch (IOException e) {
                    b.a((Throwable) e);
                } catch (JSONException e2) {
                    b.a((Throwable) e2);
                }
            }
        }
    }

    public void a(XMPushService xMPushService, com.xiaomi.slim.b bVar, am.b bVar2) {
        try {
            a(xMPushService, bVar.d(bVar2.i), (long) bVar.l());
        } catch (IllegalArgumentException e) {
            b.a((Throwable) e);
        }
    }

    public void a(XMPushService xMPushService, com.xiaomi.smack.packet.d dVar, am.b bVar) {
        if (dVar instanceof c) {
            c cVar = (c) dVar;
            com.xiaomi.smack.packet.a p = cVar.p("s");
            if (p != null) {
                try {
                    a(xMPushService, as.b(as.a(bVar.i, cVar.k()), p.c()), (long) g.a(dVar.c()));
                } catch (IllegalArgumentException e) {
                    b.a((Throwable) e);
                }
            }
        } else {
            b.a("not a mipush message");
        }
    }
}
