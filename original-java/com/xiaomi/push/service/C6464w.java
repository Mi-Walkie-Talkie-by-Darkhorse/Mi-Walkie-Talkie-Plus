package com.xiaomi.push.service;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.text.TextUtils;
import com.autonavi.p090ae.gmap.utils.GLMapStaticValue;
import com.tencent.connect.common.Constants;
import com.umeng.analytics.pro.UMCommonContent;
import com.xiaomi.account.openauth.XiaomiOAuthConstants;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.AbstractC6211ha;
import com.xiaomi.push.C6072da;
import com.xiaomi.push.C6129en;
import com.xiaomi.push.C6173fy;
import com.xiaomi.push.C6175g;
import com.xiaomi.push.C6203gu;
import com.xiaomi.push.C6206gx;
import com.xiaomi.push.C6209gz;
import com.xiaomi.push.C6228ho;
import com.xiaomi.push.C6242i;
import com.xiaomi.push.C6251ii;
import com.xiaomi.push.C6254il;
import com.xiaomi.push.C6260ir;
import com.xiaomi.push.C6263iu;
import com.xiaomi.push.C6265iw;
import com.xiaomi.push.C6278jf;
import com.xiaomi.push.C6285jl;
import com.xiaomi.push.C6306l;
import com.xiaomi.push.C6469u;
import com.xiaomi.push.EnumC6237hv;
import com.xiaomi.push.EnumC6248if;
import com.xiaomi.push.InterfaceC6279jg;
import com.xiaomi.push.service.C6350aj;
import com.xiaomi.push.service.C6381bd;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* renamed from: com.xiaomi.push.service.w */
/* loaded from: classes2.dex */
public class C6464w {
    /* renamed from: a */
    public static Intent m1251a(byte[] bArr, long j) {
        C6260ir m1252a = m1252a(bArr);
        if (m1252a == null) {
            return null;
        }
        Intent intent = new Intent("com.xiaomi.mipush.RECEIVE_MESSAGE");
        intent.putExtra("mipush_payload", bArr);
        intent.putExtra("mrt", Long.toString(j));
        intent.setPackage(m1252a.f22471b);
        return intent;
    }

    /* renamed from: a */
    public static C6260ir m1268a(Context context, C6260ir c6260ir) {
        return m1267a(context, c6260ir, (Map<String, String>) null);
    }

    /* renamed from: a */
    public static C6260ir m1267a(Context context, C6260ir c6260ir, Map<String, String> map) {
        C6254il c6254il = new C6254il();
        c6254il.m2339b(c6260ir.m2232a());
        C6251ii m2233a = c6260ir.m2233a();
        if (m2233a != null) {
            c6254il.m2343a(m2233a.m2402a());
            c6254il.m2346a(m2233a.m2404a());
            if (!TextUtils.isEmpty(m2233a.m2390b())) {
                c6254il.m2336c(m2233a.m2390b());
            }
        }
        c6254il.m2342a(C6278jf.m1935a(context, c6260ir));
        C6260ir m1690a = C6346af.m1690a(c6260ir.m2219b(), c6260ir.m2232a(), c6254il, EnumC6237hv.AckMessage);
        C6251ii m2233a2 = c6260ir.m2233a();
        if (m2233a2 != null) {
            m2233a2 = C6400bo.m1452a(m2233a2.m2403a());
        }
        m2233a2.m2394a("mat", Long.toString(System.currentTimeMillis()));
        if (map != null) {
            try {
                if (map.size() > 0) {
                    for (String str : map.keySet()) {
                        m2233a2.m2394a(str, map.get(str));
                    }
                }
            } catch (Throwable unused) {
            }
        }
        m1690a.m2227a(m2233a2);
        return m1690a;
    }

    /* renamed from: a */
    public static C6260ir m1252a(byte[] bArr) {
        C6260ir c6260ir = new C6260ir();
        try {
            C6278jf.m1932a(c6260ir, bArr);
            return c6260ir;
        } catch (Throwable th) {
            AbstractC5876b.m4143a(th);
            return null;
        }
    }

    /* renamed from: a */
    public static void m1266a(Context context, C6260ir c6260ir, byte[] bArr) {
        try {
            C6350aj.m1657a(c6260ir);
            c6260ir.m2233a();
            C6350aj.C6353c m1678a = C6350aj.m1678a(context, c6260ir, bArr);
            if (m1678a.f22965a > 0 && !TextUtils.isEmpty(m1678a.f22966a)) {
                C6228ho.m2596a(context, m1678a.f22966a, m1678a.f22965a, true, false, System.currentTimeMillis());
            }
            if (!C6306l.m1851a(context) || !C6343ae.m1710a(context, c6260ir, m1678a.f22967a)) {
                m1250b(context, c6260ir, bArr);
                return;
            }
            C6343ae.m1711a(context, c6260ir);
            AbstractC5876b.m4147a("consume this broadcast by tts");
        } catch (Exception e) {
            AbstractC5876b.m4147a("notify push msg error " + e);
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    private static void m1259a(XMPushService xMPushService, C6260ir c6260ir) {
        xMPushService.m1783a(new C6465x(4, xMPushService, c6260ir));
    }

    /* renamed from: a */
    private static void m1258a(XMPushService xMPushService, C6260ir c6260ir, C6263iu c6263iu) {
        xMPushService.m1783a(new C6342ad(4, c6263iu, c6260ir, xMPushService));
    }

    /* renamed from: a */
    private static void m1257a(XMPushService xMPushService, C6260ir c6260ir, String str) {
        xMPushService.m1783a(new C6340ab(4, xMPushService, c6260ir, str));
    }

    /* renamed from: a */
    private static void m1256a(XMPushService xMPushService, C6260ir c6260ir, String str, String str2) {
        xMPushService.m1783a(new C6341ac(4, xMPushService, c6260ir, str, str2));
    }

    /* JADX WARN: Removed duplicated region for block: B:140:0x03c9  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x03e3  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x042d  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x03ab A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void m1254a(XMPushService xMPushService, String str, byte[] bArr, Intent intent) {
        boolean z;
        C6263iu c6263iu;
        String str2;
        int i;
        C6129en m3082a;
        String m2219b;
        String m2402a;
        int i2;
        String str3;
        String str4;
        C6129en m3082a2;
        String m2219b2;
        String m1644b;
        String m2402a2;
        String str5;
        String str6;
        C6260ir m1252a = m1252a(bArr);
        C6251ii m2233a = m1252a.m2233a();
        InterfaceC6279jg interfaceC6279jg = null;
        String str7 = null;
        if (bArr != null) {
            C6072da.m3401a(m1252a.m2219b(), xMPushService.getApplicationContext(), null, m1252a.m2234a(), bArr.length);
        }
        if (m1247c(m1252a) && m1264a(xMPushService, str)) {
            if (C6350aj.m1636e(m1252a)) {
                C6129en.m3082a(xMPushService.getApplicationContext()).m3075a(m1252a.m2219b(), C6350aj.m1644b(m1252a), m2233a.m2402a(), "5");
            }
            m1246c(xMPushService, m1252a);
        } else if (m1262a(m1252a) && !m1264a(xMPushService, str) && !m1249b(m1252a)) {
            if (C6350aj.m1636e(m1252a)) {
                C6129en.m3082a(xMPushService.getApplicationContext()).m3075a(m1252a.m2219b(), C6350aj.m1644b(m1252a), m2233a.m2402a(), Constants.VIA_SHARE_TYPE_INFO);
            }
            m1245d(xMPushService, m1252a);
        } else if ((!C6350aj.m1656a(m1252a) || !C6175g.m2805b((Context) xMPushService, m1252a.f22471b)) && !m1269a(xMPushService, intent)) {
            if (!C6175g.m2805b((Context) xMPushService, m1252a.f22471b)) {
                if (C6350aj.m1636e(m1252a)) {
                    C6129en.m3082a(xMPushService.getApplicationContext()).m3074b(m1252a.m2219b(), C6350aj.m1644b(m1252a), m2233a.m2402a(), "2");
                }
                m1259a(xMPushService, m1252a);
                return;
            }
            AbstractC5876b.m4147a("receive a mipush message, we can see the app, but we can't see the receiver.");
            if (C6350aj.m1636e(m1252a)) {
                C6129en.m3082a(xMPushService.getApplicationContext()).m3074b(m1252a.m2219b(), C6350aj.m1644b(m1252a), m2233a.m2402a(), "3");
            }
        } else {
            boolean z2 = false;
            if (EnumC6237hv.Registration == m1252a.m2234a()) {
                String m2219b3 = m1252a.m2219b();
                SharedPreferences.Editor edit = xMPushService.getSharedPreferences("pref_registered_pkg_names", 0).edit();
                edit.putString(m2219b3, m1252a.f22467a);
                edit.commit();
                C6265iw m1345a = C6447m.m1345a(m1252a);
                if (m1345a.m2105a() != 0 || TextUtils.isEmpty(m1345a.m2098b())) {
                    AbstractC5876b.m4138d("read regSecret failed");
                } else {
                    C6447m.m1346a(xMPushService, m2219b3, m1345a.m2098b());
                }
                C6461t.m1285a(xMPushService).m1277e(m2219b3);
                C6461t.m1285a(xMPushService).m1276f(m2219b3);
                C6129en.m3082a(xMPushService.getApplicationContext()).m3076a(m2219b3, "E100003", m2233a.m2402a(), 6003, null);
                if (!TextUtils.isEmpty(m2233a.m2402a())) {
                    intent.putExtra("messageId", m2233a.m2402a());
                    intent.putExtra("eventMessageType", 6000);
                }
            }
            if (C6350aj.m1639c(m1252a)) {
                C6129en.m3082a(xMPushService.getApplicationContext()).m3077a(m1252a.m2219b(), C6350aj.m1644b(m1252a), m2233a.m2402a(), 1001, System.currentTimeMillis(), null);
                if (!TextUtils.isEmpty(m2233a.m2402a())) {
                    intent.putExtra("messageId", m2233a.m2402a());
                    intent.putExtra("eventMessageType", XiaomiOAuthConstants.SCOPE_ACCESS_MI_ROUTER);
                }
            }
            if (C6350aj.m1643b(m1252a)) {
                C6129en.m3082a(xMPushService.getApplicationContext()).m3077a(m1252a.m2219b(), C6350aj.m1644b(m1252a), m2233a.m2402a(), 2001, System.currentTimeMillis(), null);
                if (!TextUtils.isEmpty(m2233a.m2402a())) {
                    intent.putExtra("messageId", m2233a.m2402a());
                    intent.putExtra("eventMessageType", 2000);
                }
            }
            if (C6350aj.m1656a(m1252a)) {
                C6129en.m3082a(xMPushService.getApplicationContext()).m3077a(m1252a.m2219b(), C6350aj.m1644b(m1252a), m2233a.m2402a(), GLMapStaticValue.AM_PARAMETERNAME_PROCESS_REALCITY, System.currentTimeMillis(), null);
                if (!TextUtils.isEmpty(m2233a.m2402a())) {
                    intent.putExtra("messageId", m2233a.m2402a());
                    intent.putExtra("eventMessageType", 3000);
                }
            }
            if (m2233a != null && !TextUtils.isEmpty(m2233a.m2382c()) && !TextUtils.isEmpty(m2233a.m2377d()) && m2233a.f22311b != 1 && (C6350aj.m1652a(m2233a.m2401a()) || !C6350aj.m1673a((Context) xMPushService, m1252a.f22471b))) {
                if (m2233a != null) {
                    Map<String, String> map = m2233a.f22309a;
                    str7 = map != null ? map.get("jobkey") : null;
                    if (TextUtils.isEmpty(str7)) {
                        str7 = m2233a.m2402a();
                    }
                    z2 = C6355al.m1634a(xMPushService, m1252a.f22471b, str7);
                }
                if (z2) {
                    C6129en.m3082a(xMPushService.getApplicationContext()).m3073c(m1252a.m2219b(), C6350aj.m1644b(m1252a), m2233a.m2402a(), "1:" + str7);
                    str6 = "drop a duplicate message, key=" + str7;
                } else if (C6306l.m1851a((Context) xMPushService) && C6343ae.m1708a(m1252a)) {
                    str6 = "receive pull down message";
                } else {
                    m1266a(xMPushService, m1252a, bArr);
                    m1248b(xMPushService, m1252a);
                }
                AbstractC5876b.m4147a(str6);
                m1248b(xMPushService, m1252a);
            } else if ("com.xiaomi.xmsf".contains(m1252a.f22471b) && !m1252a.m2218b() && m2233a != null && m2233a.m2401a() != null && m2233a.m2401a().containsKey("ab")) {
                m1248b(xMPushService, m1252a);
                AbstractC5876b.m4139c("receive abtest message. ack it." + m2233a.m2402a());
            } else if (m1255a(xMPushService, str, m1252a, m2233a)) {
                if (m2233a != null && !TextUtils.isEmpty(m2233a.m2402a())) {
                    if (C6350aj.m1643b(m1252a)) {
                        m3082a = C6129en.m3082a(xMPushService.getApplicationContext());
                        m2219b = m1252a.m2219b();
                        str4 = C6350aj.m1644b(m1252a);
                        m2402a = m2233a.m2402a();
                        i2 = 2002;
                        str3 = null;
                    } else {
                        if (C6350aj.m1656a(m1252a)) {
                            m3082a2 = C6129en.m3082a(xMPushService.getApplicationContext());
                            m2219b2 = m1252a.m2219b();
                            m1644b = C6350aj.m1644b(m1252a);
                            m2402a2 = m2233a.m2402a();
                            str5 = "7";
                        } else if (C6350aj.m1639c(m1252a)) {
                            m3082a2 = C6129en.m3082a(xMPushService.getApplicationContext());
                            m2219b2 = m1252a.m2219b();
                            m1644b = C6350aj.m1644b(m1252a);
                            m2402a2 = m2233a.m2402a();
                            str5 = Constants.VIA_SHARE_TYPE_PUBLISHVIDEO;
                        } else if (C6350aj.m1637d(m1252a)) {
                            m3082a = C6129en.m3082a(xMPushService.getApplicationContext());
                            m2219b = m1252a.m2219b();
                            m2402a = m2233a.m2402a();
                            i2 = 6004;
                            str3 = null;
                            str4 = "E100003";
                        }
                        m3082a2.m3075a(m2219b2, m1644b, m2402a2, str5);
                    }
                    m3082a.m3076a(m2219b, str4, m2402a, i2, str3);
                }
                if (EnumC6237hv.Notification == m1252a.f22464a) {
                    try {
                        interfaceC6279jg = C6416cb.m1396a(xMPushService, m1252a);
                    } catch (C6285jl e) {
                        AbstractC5876b.m4138d("receive a message which action string is not valid. " + e);
                    }
                    if (interfaceC6279jg == null) {
                        AbstractC5876b.m4138d("receiving an un-recognized notification message. " + m1252a.f22464a);
                        z = false;
                        if (z && (interfaceC6279jg instanceof C6263iu)) {
                            c6263iu = (C6263iu) interfaceC6279jg;
                            if (EnumC6248if.CancelPushMessage.f22236a.equals(c6263iu.f22505d) && c6263iu.m2195a() != null) {
                                str2 = c6263iu.m2195a().get(AbstractC6391bh.f23073N);
                                i = -2;
                                if (!TextUtils.isEmpty(str2)) {
                                    try {
                                        i = Integer.parseInt(str2);
                                    } catch (NumberFormatException e2) {
                                        AbstractC5876b.m4147a("parse notifyId from STRING to INT failed: " + e2);
                                    }
                                }
                                if (i < -1) {
                                    AbstractC5876b.m4147a("try to retract a message by notifyId=" + i);
                                    C6350aj.m1672a(xMPushService, m1252a.f22471b, i);
                                } else {
                                    AbstractC5876b.m4147a("try to retract a message by title&description.");
                                    C6350aj.m1668a(xMPushService, m1252a.f22471b, c6263iu.m2195a().get(AbstractC6391bh.f23071L), c6263iu.m2195a().get(AbstractC6391bh.f23072M));
                                }
                                if (m2233a != null && m2233a.m2401a() != null && C6306l.m1851a((Context) xMPushService) && "pulldown".equals(C6369av.m1543a((Object) m2233a.m2401a()))) {
                                    C6343ae.m1709a(m1252a);
                                }
                                m1258a(xMPushService, m1252a, c6263iu);
                                if (z2) {
                                    AbstractC5876b.m4147a("broadcast passthrough message.");
                                    xMPushService.sendBroadcast(intent, C6346af.m1692a(m1252a.f22471b));
                                }
                            }
                        }
                    } else {
                        z = true;
                        if (z) {
                            c6263iu = (C6263iu) interfaceC6279jg;
                            if (EnumC6248if.CancelPushMessage.f22236a.equals(c6263iu.f22505d)) {
                                str2 = c6263iu.m2195a().get(AbstractC6391bh.f23073N);
                                i = -2;
                                if (!TextUtils.isEmpty(str2)) {
                                }
                                if (i < -1) {
                                }
                                if (m2233a != null) {
                                    C6343ae.m1709a(m1252a);
                                }
                                m1258a(xMPushService, m1252a, c6263iu);
                                if (z2) {
                                }
                            }
                        }
                    }
                }
                z2 = true;
                if (z2) {
                }
            } else {
                C6129en.m3082a(xMPushService.getApplicationContext()).m3075a(m1252a.m2219b(), C6350aj.m1644b(m1252a), m2233a.m2402a(), "9");
            }
            if (m1252a.m2234a() != EnumC6237hv.UnRegistration || "com.xiaomi.xmsf".equals(xMPushService.getPackageName())) {
                return;
            }
            xMPushService.stopSelf();
        }
    }

    /* renamed from: a */
    private static void m1253a(XMPushService xMPushService, byte[] bArr, long j) {
        Map<String, String> m2401a;
        C6260ir m1252a = m1252a(bArr);
        if (m1252a == null) {
            return;
        }
        if (TextUtils.isEmpty(m1252a.f22471b)) {
            AbstractC5876b.m4147a("receive a mipush message without package name");
            return;
        }
        Long valueOf = Long.valueOf(System.currentTimeMillis());
        Intent m1251a = m1251a(bArr, valueOf.longValue());
        String m1657a = C6350aj.m1657a(m1252a);
        C6228ho.m2596a(xMPushService, m1657a, j, true, true, System.currentTimeMillis());
        C6251ii m2233a = m1252a.m2233a();
        if (m2233a != null && m2233a.m2402a() != null) {
            AbstractC5876b.m4137e(String.format("receive a message. appid=%1$s, msgid= %2$s, action=%3$s", m1252a.m2232a(), m2233a.m2402a(), m1252a.m2234a()));
        }
        if (m2233a != null) {
            m2233a.m2394a("mrt", Long.toString(valueOf.longValue()));
        }
        EnumC6237hv enumC6237hv = EnumC6237hv.SendMessage;
        String str = "";
        if (enumC6237hv == m1252a.m2234a() && C6461t.m1285a(xMPushService).m1283a(m1252a.f22471b) && !C6350aj.m1656a(m1252a)) {
            if (m2233a != null) {
                str = m2233a.m2402a();
                if (C6350aj.m1636e(m1252a)) {
                    C6129en.m3082a(xMPushService.getApplicationContext()).m3075a(m1252a.m2219b(), C6350aj.m1644b(m1252a), str, "1");
                }
            }
            AbstractC5876b.m4147a("Drop a message for unregistered, msgid=" + str);
            m1257a(xMPushService, m1252a, m1252a.f22471b);
        } else if (enumC6237hv == m1252a.m2234a() && C6461t.m1285a(xMPushService).m1279c(m1252a.f22471b) && !C6350aj.m1656a(m1252a)) {
            if (m2233a != null) {
                str = m2233a.m2402a();
                if (C6350aj.m1636e(m1252a)) {
                    C6129en.m3082a(xMPushService.getApplicationContext()).m3075a(m1252a.m2219b(), C6350aj.m1644b(m1252a), str, "2");
                }
            }
            AbstractC5876b.m4147a("Drop a message for push closed, msgid=" + str);
            m1257a(xMPushService, m1252a, m1252a.f22471b);
        } else if (enumC6237hv == m1252a.m2234a() && !TextUtils.equals(xMPushService.getPackageName(), "com.xiaomi.xmsf") && !TextUtils.equals(xMPushService.getPackageName(), m1252a.f22471b)) {
            AbstractC5876b.m4147a("Receive a message with wrong package name, expect " + xMPushService.getPackageName() + ", received " + m1252a.f22471b);
            m1256a(xMPushService, m1252a, "unmatched_package", "package should be " + xMPushService.getPackageName() + ", but got " + m1252a.f22471b);
            if (m2233a == null || !C6350aj.m1636e(m1252a)) {
                return;
            }
            C6129en.m3082a(xMPushService.getApplicationContext()).m3075a(m1252a.m2219b(), C6350aj.m1644b(m1252a), m2233a.m2402a(), "3");
        } else if (enumC6237hv == m1252a.m2234a() && C6242i.m2516a() == 999 && C6242i.m2509a(xMPushService, m1657a)) {
            AbstractC5876b.m4147a("Receive the uninstalled dual app message");
            try {
                C6346af.m1698a(xMPushService, C6346af.m1691a(m1657a, m1252a.m2232a()));
                AbstractC5876b.m4147a("uninstall " + m1657a + " msg sent");
            } catch (C6203gu e) {
                AbstractC5876b.m4138d("Fail to send Message: " + e.getMessage());
                xMPushService.m1793a(10, e);
            }
            C6350aj.m1674a((Context) xMPushService, m1657a);
        } else if (m2233a != null && (m2401a = m2233a.m2401a()) != null && m2401a.containsKey("hide") && "true".equalsIgnoreCase(m2401a.get("hide"))) {
            m1248b(xMPushService, m1252a);
        } else {
            if (m2233a != null && m2233a.m2401a() != null && m2233a.m2401a().containsKey("__miid")) {
                String str2 = m2233a.m2401a().get("__miid");
                String m1237a = C6469u.m1237a(xMPushService.getApplicationContext());
                if (TextUtils.isEmpty(m1237a) || !TextUtils.equals(str2, m1237a)) {
                    if (C6350aj.m1636e(m1252a)) {
                        C6129en.m3082a(xMPushService.getApplicationContext()).m3075a(m1252a.m2219b(), C6350aj.m1644b(m1252a), m2233a.m2402a(), "4");
                    }
                    AbstractC5876b.m4147a(str2 + " should be login, but got " + m1237a);
                    m1256a(xMPushService, m1252a, "miid already logout or anther already login", str2 + " should be login, but got " + m1237a);
                    return;
                }
            }
            m1254a(xMPushService, m1657a, bArr, m1251a);
        }
    }

    /* renamed from: a */
    private static boolean m1269a(Context context, Intent intent) {
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

    /* renamed from: a */
    private static boolean m1264a(Context context, String str) {
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
            AbstractC5876b.m4143a(e);
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m1263a(Context context, String str, byte[] bArr) {
        if (C6175g.m2810a(context, str)) {
            Intent intent = new Intent("com.xiaomi.mipush.MESSAGE_ARRIVED");
            intent.putExtra("mipush_payload", bArr);
            intent.setPackage(str);
            try {
                if (context.getPackageManager().queryBroadcastReceivers(intent, 0).isEmpty()) {
                    return false;
                }
                AbstractC5876b.m4147a("broadcast message arrived.");
                context.sendBroadcast(intent, C6346af.m1692a(str));
                return true;
            } catch (Exception e) {
                AbstractC5876b.m4147a("meet error when broadcast message arrived. " + e);
                return false;
            }
        }
        return false;
    }

    /* renamed from: a */
    private static boolean m1262a(C6260ir c6260ir) {
        return "com.xiaomi.xmsf".equals(c6260ir.f22471b) && c6260ir.m2233a() != null && c6260ir.m2233a().m2401a() != null && c6260ir.m2233a().m2401a().containsKey("miui_package_name");
    }

    /* renamed from: a */
    private static boolean m1255a(XMPushService xMPushService, String str, C6260ir c6260ir, C6251ii c6251ii) {
        boolean z = true;
        if (c6251ii != null && c6251ii.m2401a() != null && c6251ii.m2401a().containsKey("__check_alive") && c6251ii.m2401a().containsKey("__awake")) {
            C6263iu c6263iu = new C6263iu();
            c6263iu.m2180b(c6260ir.m2232a());
            c6263iu.m2173d(str);
            c6263iu.m2176c(EnumC6248if.AwakeSystemApp.f22236a);
            c6263iu.m2189a(c6251ii.m2402a());
            c6263iu.f22500a = new HashMap();
            boolean m2810a = C6175g.m2810a(xMPushService.getApplicationContext(), str);
            c6263iu.f22500a.put("app_running", Boolean.toString(m2810a));
            if (!m2810a) {
                boolean parseBoolean = Boolean.parseBoolean(c6251ii.m2401a().get("__awake"));
                c6263iu.f22500a.put("awaked", Boolean.toString(parseBoolean));
                if (!parseBoolean) {
                    z = false;
                }
            }
            try {
                C6346af.m1698a(xMPushService, C6346af.m1690a(c6260ir.m2219b(), c6260ir.m2232a(), c6263iu, EnumC6237hv.Notification));
            } catch (C6203gu e) {
                AbstractC5876b.m4143a(e);
            }
        }
        return z;
    }

    /* renamed from: b */
    private static void m1250b(Context context, C6260ir c6260ir, byte[] bArr) {
        if (C6350aj.m1656a(c6260ir)) {
            return;
        }
        String m1657a = C6350aj.m1657a(c6260ir);
        if (TextUtils.isEmpty(m1657a) || m1263a(context, m1657a, bArr)) {
            return;
        }
        C6129en.m3082a(context).m3074b(m1657a, C6350aj.m1644b(c6260ir), c6260ir.m2233a().m2402a(), "1");
    }

    /* renamed from: b */
    private static void m1248b(XMPushService xMPushService, C6260ir c6260ir) {
        xMPushService.m1783a(new C6466y(4, xMPushService, c6260ir));
    }

    /* renamed from: b */
    private static boolean m1249b(C6260ir c6260ir) {
        Map<String, String> m2401a = c6260ir.m2233a().m2401a();
        return m2401a != null && m2401a.containsKey("notify_effect");
    }

    /* renamed from: c */
    private static void m1246c(XMPushService xMPushService, C6260ir c6260ir) {
        xMPushService.m1783a(new C6467z(4, xMPushService, c6260ir));
    }

    /* renamed from: c */
    private static boolean m1247c(C6260ir c6260ir) {
        if (c6260ir.m2233a() == null || c6260ir.m2233a().m2401a() == null) {
            return false;
        }
        return "1".equals(c6260ir.m2233a().m2401a().get("obslete_ads_message"));
    }

    /* renamed from: d */
    private static void m1245d(XMPushService xMPushService, C6260ir c6260ir) {
        xMPushService.m1783a(new C6339aa(4, xMPushService, c6260ir));
    }

    /* renamed from: a */
    public void m1265a(Context context, C6381bd.C6383b c6383b, boolean z, int i, String str) {
        C6457r m1294a;
        if (z || (m1294a = C6459s.m1294a(context)) == null || !"token-expired".equals(str)) {
            return;
        }
        C6459s.m1289a(context, m1294a.f23225f, m1294a.f23223d, m1294a.f23224e);
    }

    /* renamed from: a */
    public void m1261a(XMPushService xMPushService, C6173fy c6173fy, C6381bd.C6383b c6383b) {
        try {
            m1253a(xMPushService, c6173fy.m2834a(c6383b.f23043h), c6173fy.mo2777c());
        } catch (IllegalArgumentException e) {
            AbstractC5876b.m4143a(e);
        }
    }

    /* renamed from: a */
    public void m1260a(XMPushService xMPushService, AbstractC6211ha abstractC6211ha, C6381bd.C6383b c6383b) {
        if (!(abstractC6211ha instanceof C6209gz)) {
            AbstractC5876b.m4147a("not a mipush message");
            return;
        }
        C6209gz c6209gz = (C6209gz) abstractC6211ha;
        C6206gx m2660a = c6209gz.m2660a(UMCommonContent.f19398az);
        if (m2660a != null) {
            try {
                m1253a(xMPushService, C6398bm.m1458a(C6398bm.m1461a(c6383b.f23043h, c6209gz.m2655j()), m2660a.m2692c()), C6228ho.m2593a(abstractC6211ha.mo2640a()));
            } catch (IllegalArgumentException e) {
                AbstractC5876b.m4143a(e);
            }
        }
    }
}
