package com.xiaomi.mipush.sdk;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.autonavi.p090ae.gmap.maploader.ERROR_CODE;
import com.xiaomi.account.openauth.XiaomiOAuthConstants;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.mipush.sdk.PushMessageHandler;
import com.xiaomi.push.C6023bo;
import com.xiaomi.push.C6031bw;
import com.xiaomi.push.C6072da;
import com.xiaomi.push.C6127em;
import com.xiaomi.push.C6129en;
import com.xiaomi.push.C6250ih;
import com.xiaomi.push.C6251ii;
import com.xiaomi.push.C6254il;
import com.xiaomi.push.C6255im;
import com.xiaomi.push.C6259iq;
import com.xiaomi.push.C6260ir;
import com.xiaomi.push.C6261is;
import com.xiaomi.push.C6262it;
import com.xiaomi.push.C6263iu;
import com.xiaomi.push.C6265iw;
import com.xiaomi.push.C6267iy;
import com.xiaomi.push.C6273ja;
import com.xiaomi.push.C6275jc;
import com.xiaomi.push.C6277je;
import com.xiaomi.push.C6278jf;
import com.xiaomi.push.C6285jl;
import com.xiaomi.push.C6314s;
import com.xiaomi.push.C6470v;
import com.xiaomi.push.EnumC6157fl;
import com.xiaomi.push.EnumC6237hv;
import com.xiaomi.push.EnumC6243ia;
import com.xiaomi.push.EnumC6248if;
import com.xiaomi.push.EnumC6252ij;
import com.xiaomi.push.InterfaceC6279jg;
import com.xiaomi.push.service.AbstractC6391bh;
import com.xiaomi.push.service.C6350aj;
import com.xiaomi.push.service.C6369av;
import com.xiaomi.push.service.C6372ax;
import com.xiaomi.push.service.C6374ay;
import com.xiaomi.push.service.C6400bo;
import com.xiaomi.push.service.C6441i;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.TimeZone;

/* renamed from: com.xiaomi.mipush.sdk.am */
/* loaded from: classes2.dex */
public class C5926am {

    /* renamed from: a */
    private static C5926am f20895a;

    /* renamed from: a */
    private static Object f20896a = new Object();

    /* renamed from: a */
    private static Queue<String> f20897a;

    /* renamed from: a */
    private Context f20898a;

    private C5926am(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f20898a = applicationContext;
        if (applicationContext == null) {
            this.f20898a = context;
        }
    }

    /* renamed from: a */
    public static Intent m4007a(Context context, String str, Map<String, String> map, int i) {
        return C6350aj.m1645b(context, str, map, i);
    }

    /* renamed from: a */
    private PushMessageHandler.InterfaceC5912a m4002a(C6260ir c6260ir, boolean z, byte[] bArr, String str, int i, Intent intent) {
        C6129en m3082a;
        String packageName;
        String m3096a;
        String str2;
        String str3;
        String str4;
        MiPushMessage miPushMessage;
        C6129en m3082a2;
        String packageName2;
        String m3096a2;
        int i2;
        String str5;
        ArrayList arrayList = null;
        try {
            InterfaceC6279jg m4019a = C5922ai.m4019a(this.f20898a, c6260ir);
            if (m4019a == null) {
                AbstractC5876b.m4138d("receiving an un-recognized message. " + c6260ir.f22464a);
                C6129en.m3082a(this.f20898a).m3074b(this.f20898a.getPackageName(), C6127em.m3096a(i), str, "18");
                C5957s.m3830c(this.f20898a, c6260ir, z);
                return null;
            }
            EnumC6237hv m2234a = c6260ir.m2234a();
            AbstractC5876b.m4147a("processing a message, action=" + m2234a);
            switch (C5927an.f20899a[m2234a.ordinal()]) {
                case 1:
                    if (!c6260ir.m2218b()) {
                        AbstractC5876b.m4138d("receiving an un-encrypt message(SendMessage).");
                        return null;
                    } else if (C5938b.m3923a(this.f20898a).m3904e() && !z) {
                        AbstractC5876b.m4147a("receive a message in pause state. drop it");
                        C6129en.m3082a(this.f20898a).m3075a(this.f20898a.getPackageName(), C6127em.m3096a(i), str, com.tencent.connect.common.Constants.VIA_REPORT_TYPE_SET_AVATAR);
                        return null;
                    } else {
                        C6267iy c6267iy = (C6267iy) m4019a;
                        C6250ih m2064a = c6267iy.m2064a();
                        if (m2064a == null) {
                            AbstractC5876b.m4138d("receive an empty message without push content, drop it");
                            C6129en.m3082a(this.f20898a).m3074b(this.f20898a.getPackageName(), C6127em.m3096a(i), str, com.tencent.connect.common.Constants.VIA_REPORT_TYPE_DATALINE);
                            C5957s.m3829d(this.f20898a, c6260ir, z);
                            return null;
                        }
                        int intExtra = intent.getIntExtra("notification_click_button", 0);
                        if (z) {
                            if (C6350aj.m1656a(c6260ir)) {
                                MiPushClient.reportIgnoreRegMessageClicked(this.f20898a, m2064a.m2433a(), c6260ir.m2233a(), c6260ir.f22471b, m2064a.m2427b());
                            } else {
                                C6251ii c6251ii = c6260ir.m2233a() != null ? new C6251ii(c6260ir.m2233a()) : new C6251ii();
                                if (c6251ii.m2401a() == null) {
                                    c6251ii.m2393a(new HashMap());
                                }
                                c6251ii.m2401a().put("notification_click_button", String.valueOf(intExtra));
                                MiPushClient.reportMessageClicked(this.f20898a, m2064a.m2433a(), c6251ii, m2064a.m2427b());
                            }
                        }
                        if (!z) {
                            if (!TextUtils.isEmpty(c6267iy.m2053d()) && MiPushClient.aliasSetTime(this.f20898a, c6267iy.m2053d()) < 0) {
                                MiPushClient.addAlias(this.f20898a, c6267iy.m2053d());
                            } else if (!TextUtils.isEmpty(c6267iy.m2055c()) && MiPushClient.topicSubscribedTime(this.f20898a, c6267iy.m2055c()) < 0) {
                                MiPushClient.addTopic(this.f20898a, c6267iy.m2055c());
                            }
                        }
                        C6251ii c6251ii2 = c6260ir.f22465a;
                        if (c6251ii2 == null || c6251ii2.m2401a() == null) {
                            str3 = null;
                            str4 = null;
                        } else {
                            str3 = c6260ir.f22465a.f22309a.get("jobkey");
                            str4 = str3;
                        }
                        if (TextUtils.isEmpty(str3)) {
                            str3 = m2064a.m2433a();
                        }
                        if (z || !m4008a(this.f20898a, str3)) {
                            MiPushMessage generateMessage = PushMessageHelper.generateMessage(c6267iy, c6260ir.m2233a(), z);
                            if (generateMessage.getPassThrough() == 0 && !z && C6350aj.m1652a(generateMessage.getExtra())) {
                                C6350aj.m1678a(this.f20898a, c6260ir, bArr);
                                return null;
                            }
                            AbstractC5876b.m4147a("receive a message, msgid=" + m2064a.m2433a() + ", jobkey=" + str3 + ", btn=" + intExtra);
                            String m1651a = C6350aj.m1651a(generateMessage.getExtra(), intExtra);
                            if (z && generateMessage.getExtra() != null && !TextUtils.isEmpty(m1651a)) {
                                Map<String, String> extra = generateMessage.getExtra();
                                if (intExtra != 0 && c6260ir.m2233a() != null) {
                                    C5928ao.m3984a(this.f20898a).m3986a(c6260ir.m2233a().m2383c(), intExtra);
                                }
                                if (C6350aj.m1656a(c6260ir)) {
                                    Intent m4007a = m4007a(this.f20898a, c6260ir.f22471b, extra, intExtra);
                                    m4007a.putExtra("eventMessageType", i);
                                    m4007a.putExtra("messageId", str);
                                    m4007a.putExtra("jobkey", str4);
                                    if (m4007a == null) {
                                        AbstractC5876b.m4147a("Getting Intent fail from ignore reg message. ");
                                        C6129en.m3082a(this.f20898a).m3074b(this.f20898a.getPackageName(), C6127em.m3096a(i), str, com.tencent.connect.common.Constants.VIA_REPORT_TYPE_SHARE_TO_TROOPBAR);
                                        return null;
                                    }
                                    String m2424c = m2064a.m2424c();
                                    if (!TextUtils.isEmpty(m2424c)) {
                                        m4007a.putExtra("payload", m2424c);
                                    }
                                    this.f20898a.startActivity(m4007a);
                                    C5957s.m3834a(this.f20898a, c6260ir);
                                    C6129en.m3082a(this.f20898a).m3076a(this.f20898a.getPackageName(), C6127em.m3096a(i), str, 3006, m1651a);
                                    return null;
                                }
                                Context context = this.f20898a;
                                Intent m4007a2 = m4007a(context, context.getPackageName(), extra, intExtra);
                                if (m4007a2 != null) {
                                    if (!m1651a.equals(AbstractC6391bh.f23077c)) {
                                        m4007a2.putExtra(PushMessageHelper.KEY_MESSAGE, generateMessage);
                                        m4007a2.putExtra("eventMessageType", i);
                                        m4007a2.putExtra("messageId", str);
                                        m4007a2.putExtra("jobkey", str4);
                                    }
                                    this.f20898a.startActivity(m4007a2);
                                    C5957s.m3834a(this.f20898a, c6260ir);
                                    AbstractC5876b.m4147a("start activity succ");
                                    C6129en.m3082a(this.f20898a).m3076a(this.f20898a.getPackageName(), C6127em.m3096a(i), str, ERROR_CODE.CONN_INTERRUPT_ERROR, m1651a);
                                    if (m1651a.equals(AbstractC6391bh.f23077c)) {
                                        C6129en.m3082a(this.f20898a).m3075a(this.f20898a.getPackageName(), C6127em.m3096a(i), str, com.tencent.connect.common.Constants.VIA_REPORT_TYPE_JOININ_GROUP);
                                        return null;
                                    }
                                    return null;
                                }
                                return null;
                            }
                            miPushMessage = generateMessage;
                        } else {
                            AbstractC5876b.m4147a("drop a duplicate message, key=" + str3);
                            C6129en m3082a3 = C6129en.m3082a(this.f20898a);
                            String packageName3 = this.f20898a.getPackageName();
                            String m3096a3 = C6127em.m3096a(i);
                            m3082a3.m3073c(packageName3, m3096a3, str, "2:" + str3);
                            miPushMessage = null;
                        }
                        if (c6260ir.m2233a() == null && !z) {
                            m3999a(c6267iy, c6260ir);
                        }
                        return miPushMessage;
                    }
                case 2:
                    C6265iw c6265iw = (C6265iw) m4019a;
                    String str6 = C5938b.m3923a(this.f20898a).f20932a;
                    if (TextUtils.isEmpty(str6) || !TextUtils.equals(str6, c6265iw.m2104a())) {
                        AbstractC5876b.m4147a("bad Registration result:");
                        C6129en.m3082a(this.f20898a).m3074b(this.f20898a.getPackageName(), C6127em.m3096a(i), str, com.tencent.connect.common.Constants.VIA_REPORT_TYPE_QQFAVORITES);
                        return null;
                    }
                    C5938b.m3923a(this.f20898a).f20932a = null;
                    int i3 = (c6265iw.f22591a > 0L ? 1 : (c6265iw.f22591a == 0L ? 0 : -1));
                    Context context2 = this.f20898a;
                    if (i3 == 0) {
                        C5938b.m3923a(context2).m3911b(c6265iw.f22601e, c6265iw.f22602f, c6265iw.f22608l);
                        FCMPushHelper.persistIfXmsfSupDecrypt(this.f20898a);
                        m3082a2 = C6129en.m3082a(this.f20898a);
                        packageName2 = this.f20898a.getPackageName();
                        m3096a2 = C6127em.m3096a(i);
                        i2 = 6006;
                        str5 = "1";
                    } else {
                        m3082a2 = C6129en.m3082a(context2);
                        packageName2 = this.f20898a.getPackageName();
                        m3096a2 = C6127em.m3096a(i);
                        i2 = 6006;
                        str5 = "2";
                    }
                    m3082a2.m3076a(packageName2, m3096a2, str, i2, str5);
                    if (!TextUtils.isEmpty(c6265iw.f22601e)) {
                        arrayList = new ArrayList();
                        arrayList.add(c6265iw.f22601e);
                    }
                    MiPushCommandMessage generateCommandMessage = PushMessageHelper.generateCommandMessage(EnumC6157fl.COMMAND_REGISTER.f21553a, arrayList, c6265iw.f22591a, c6265iw.f22600d, null);
                    C5928ao.m3984a(this.f20898a).m3946d();
                    return generateCommandMessage;
                case 3:
                    if (!c6260ir.m2218b()) {
                        AbstractC5876b.m4138d("receiving an un-encrypt message(UnRegistration).");
                        return null;
                    }
                    if (((C6275jc) m4019a).f22729a == 0) {
                        C5938b.m3923a(this.f20898a).m3927a();
                        MiPushClient.clearExtras(this.f20898a);
                    }
                    PushMessageHandler.m4050a();
                    break;
                case 4:
                    C6273ja c6273ja = (C6273ja) m4019a;
                    if (c6273ja.f22683a == 0) {
                        MiPushClient.addTopic(this.f20898a, c6273ja.m2015b());
                    }
                    if (!TextUtils.isEmpty(c6273ja.m2015b())) {
                        arrayList = new ArrayList();
                        arrayList.add(c6273ja.m2015b());
                    }
                    StringBuilder sb = new StringBuilder();
                    sb.append("resp-cmd:");
                    EnumC6157fl enumC6157fl = EnumC6157fl.COMMAND_SUBSCRIBE_TOPIC;
                    sb.append(enumC6157fl);
                    sb.append(", ");
                    sb.append(c6273ja.m2021a());
                    AbstractC5876b.m4137e(sb.toString());
                    return PushMessageHelper.generateCommandMessage(enumC6157fl.f21553a, arrayList, c6273ja.f22683a, c6273ja.f22689d, c6273ja.m2013c());
                case 5:
                    C6277je c6277je = (C6277je) m4019a;
                    if (c6277je.f22766a == 0) {
                        MiPushClient.removeTopic(this.f20898a, c6277je.m1945b());
                    }
                    if (!TextUtils.isEmpty(c6277je.m1945b())) {
                        arrayList = new ArrayList();
                        arrayList.add(c6277je.m1945b());
                    }
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("resp-cmd:");
                    EnumC6157fl enumC6157fl2 = EnumC6157fl.COMMAND_UNSUBSCRIBE_TOPIC;
                    sb2.append(enumC6157fl2);
                    sb2.append(", ");
                    sb2.append(c6277je.m1951a());
                    AbstractC5876b.m4137e(sb2.toString());
                    return PushMessageHelper.generateCommandMessage(enumC6157fl2.f21553a, arrayList, c6277je.f22766a, c6277je.f22772d, c6277je.m1943c());
                case 6:
                    C6072da.m3401a(this.f20898a.getPackageName(), this.f20898a, m4019a, EnumC6237hv.Command, bArr.length);
                    C6259iq c6259iq = (C6259iq) m4019a;
                    String m2246b = c6259iq.m2246b();
                    List<String> m2252a = c6259iq.m2252a();
                    if (c6259iq.f22444a == 0) {
                        if (TextUtils.equals(m2246b, EnumC6157fl.COMMAND_SET_ACCEPT_TIME.f21553a) && m2252a != null && m2252a.size() > 1) {
                            MiPushClient.addAcceptTime(this.f20898a, m2252a.get(0), m2252a.get(1));
                            if ("00:00".equals(m2252a.get(0)) && "00:00".equals(m2252a.get(1))) {
                                C5938b.m3923a(this.f20898a).m3916a(true);
                            } else {
                                C5938b.m3923a(this.f20898a).m3916a(false);
                            }
                            m2252a = m3997a(TimeZone.getTimeZone("GMT+08"), TimeZone.getDefault(), m2252a);
                        } else if (TextUtils.equals(m2246b, EnumC6157fl.COMMAND_SET_ALIAS.f21553a) && m2252a != null && m2252a.size() > 0) {
                            MiPushClient.addAlias(this.f20898a, m2252a.get(0));
                        } else if (TextUtils.equals(m2246b, EnumC6157fl.COMMAND_UNSET_ALIAS.f21553a) && m2252a != null && m2252a.size() > 0) {
                            MiPushClient.removeAlias(this.f20898a, m2252a.get(0));
                        } else if (TextUtils.equals(m2246b, EnumC6157fl.COMMAND_SET_ACCOUNT.f21553a) && m2252a != null && m2252a.size() > 0) {
                            MiPushClient.addAccount(this.f20898a, m2252a.get(0));
                        } else if (TextUtils.equals(m2246b, EnumC6157fl.COMMAND_UNSET_ACCOUNT.f21553a) && m2252a != null && m2252a.size() > 0) {
                            MiPushClient.removeAccount(this.f20898a, m2252a.get(0));
                        } else if (TextUtils.equals(m2246b, EnumC6157fl.COMMAND_CHK_VDEVID.f21553a)) {
                            return null;
                        }
                    }
                    AbstractC5876b.m4137e("resp-cmd:" + m2246b + ", " + c6259iq.m2253a());
                    return PushMessageHelper.generateCommandMessage(m2246b, m2252a, c6259iq.f22444a, c6259iq.f22452d, c6259iq.m2243c());
                case 7:
                    C6072da.m3401a(this.f20898a.getPackageName(), this.f20898a, m4019a, EnumC6237hv.Notification, bArr.length);
                    if (m4019a instanceof C6255im) {
                        C6255im c6255im = (C6255im) m4019a;
                        String m2314a = c6255im.m2314a();
                        AbstractC5876b.m4137e("resp-type:" + c6255im.m2304b() + ", code:" + c6255im.f22391a + ", " + m2314a);
                        if (EnumC6248if.DisablePushMessage.f22236a.equalsIgnoreCase(c6255im.f22398d)) {
                            if (c6255im.f22391a == 0) {
                                synchronized (C5919af.class) {
                                    if (C5919af.m4028a(this.f20898a).m4023a(m2314a)) {
                                        C5919af.m4028a(this.f20898a).m4021c(m2314a);
                                        C5919af m4028a = C5919af.m4028a(this.f20898a);
                                        EnumC5935au enumC5935au = EnumC5935au.DISABLE_PUSH;
                                        if ("syncing".equals(m4028a.m4027a(enumC5935au))) {
                                            C5919af.m4028a(this.f20898a).m4026a(enumC5935au, "synced");
                                            MiPushClient.clearNotification(this.f20898a);
                                            MiPushClient.clearLocalNotificationType(this.f20898a);
                                            PushMessageHandler.m4050a();
                                            C5928ao.m3984a(this.f20898a).m3956b();
                                        }
                                    }
                                }
                                break;
                            } else if ("syncing".equals(C5919af.m4028a(this.f20898a).m4027a(EnumC5935au.DISABLE_PUSH))) {
                                synchronized (C5919af.class) {
                                    if (C5919af.m4028a(this.f20898a).m4023a(m2314a)) {
                                        if (C5919af.m4028a(this.f20898a).m4025a(m2314a) < 10) {
                                            C5919af.m4028a(this.f20898a).m4022b(m2314a);
                                            C5928ao.m3984a(this.f20898a).m3958a(true, m2314a);
                                        } else {
                                            C5919af.m4028a(this.f20898a).m4021c(m2314a);
                                        }
                                    }
                                }
                                break;
                            }
                        } else if (EnumC6248if.EnablePushMessage.f22236a.equalsIgnoreCase(c6255im.f22398d)) {
                            if (c6255im.f22391a == 0) {
                                synchronized (C5919af.class) {
                                    if (C5919af.m4028a(this.f20898a).m4023a(m2314a)) {
                                        C5919af.m4028a(this.f20898a).m4021c(m2314a);
                                        C5919af m4028a2 = C5919af.m4028a(this.f20898a);
                                        EnumC5935au enumC5935au2 = EnumC5935au.ENABLE_PUSH;
                                        if ("syncing".equals(m4028a2.m4027a(enumC5935au2))) {
                                            C5919af.m4028a(this.f20898a).m4026a(enumC5935au2, "synced");
                                        }
                                    }
                                }
                                break;
                            } else if ("syncing".equals(C5919af.m4028a(this.f20898a).m4027a(EnumC5935au.ENABLE_PUSH))) {
                                synchronized (C5919af.class) {
                                    if (C5919af.m4028a(this.f20898a).m4023a(m2314a)) {
                                        if (C5919af.m4028a(this.f20898a).m4025a(m2314a) < 10) {
                                            C5919af.m4028a(this.f20898a).m4022b(m2314a);
                                            C5928ao.m3984a(this.f20898a).m3958a(false, m2314a);
                                        } else {
                                            C5919af.m4028a(this.f20898a).m4021c(m2314a);
                                        }
                                    }
                                }
                                break;
                            }
                        } else if (EnumC6248if.ThirdPartyRegUpdate.f22236a.equalsIgnoreCase(c6255im.f22398d)) {
                            m3996b(c6255im);
                            break;
                        } else if (EnumC6248if.UploadTinyData.f22236a.equalsIgnoreCase(c6255im.f22398d)) {
                            m4005a(c6255im);
                            break;
                        }
                        C5919af.m4028a(this.f20898a).m4021c(m2314a);
                        break;
                    } else if (m4019a instanceof C6263iu) {
                        C6263iu c6263iu = (C6263iu) m4019a;
                        if ("registration id expired".equalsIgnoreCase(c6263iu.f22505d)) {
                            List<String> allAlias = MiPushClient.getAllAlias(this.f20898a);
                            List<String> allTopic = MiPushClient.getAllTopic(this.f20898a);
                            List<String> allUserAccount = MiPushClient.getAllUserAccount(this.f20898a);
                            String acceptTime = MiPushClient.getAcceptTime(this.f20898a);
                            AbstractC5876b.m4137e("resp-type:" + c6263iu.f22505d + ", " + c6263iu.m2196a());
                            MiPushClient.reInitialize(this.f20898a, EnumC6252ij.RegIdExpired);
                            for (String str7 : allAlias) {
                                MiPushClient.removeAlias(this.f20898a, str7);
                                MiPushClient.setAlias(this.f20898a, str7, null);
                            }
                            for (String str8 : allTopic) {
                                MiPushClient.removeTopic(this.f20898a, str8);
                                MiPushClient.subscribe(this.f20898a, str8, null);
                            }
                            for (String str9 : allUserAccount) {
                                MiPushClient.removeAccount(this.f20898a, str9);
                                MiPushClient.setUserAccount(this.f20898a, str9, null);
                            }
                            String[] split = acceptTime.split(Constants.ACCEPT_TIME_SEPARATOR_SP);
                            if (split.length == 2) {
                                MiPushClient.removeAcceptTime(this.f20898a);
                                MiPushClient.addAcceptTime(this.f20898a, split[0], split[1]);
                                break;
                            }
                        } else if (EnumC6248if.ClientInfoUpdateOk.f22236a.equalsIgnoreCase(c6263iu.f22505d)) {
                            if (c6263iu.m2195a() != null && c6263iu.m2195a().containsKey("app_version")) {
                                C5938b.m3923a(this.f20898a).m3921a(c6263iu.m2195a().get("app_version"));
                                break;
                            }
                        } else if (EnumC6248if.AwakeApp.f22236a.equalsIgnoreCase(c6263iu.f22505d)) {
                            if (c6260ir.m2218b() && c6263iu.m2195a() != null && c6263iu.m2195a().containsKey("awake_info")) {
                                Context context3 = this.f20898a;
                                C5953o.m3836a(context3, C5938b.m3923a(context3).m3928a(), C6372ax.m1530a(this.f20898a).m1534a(EnumC6243ia.AwakeInfoUploadWaySwitch.m2484a(), 0), c6263iu.m2195a().get("awake_info"));
                                break;
                            }
                        } else {
                            try {
                                if (EnumC6248if.NormalClientConfigUpdate.f22236a.equalsIgnoreCase(c6263iu.f22505d)) {
                                    C6262it c6262it = new C6262it();
                                    C6278jf.m1932a(c6262it, c6263iu.m2192a());
                                    C6374ay.m1520a(C6372ax.m1530a(this.f20898a), c6262it);
                                } else if (EnumC6248if.CustomClientConfigUpdate.f22236a.equalsIgnoreCase(c6263iu.f22505d)) {
                                    C6261is c6261is = new C6261is();
                                    C6278jf.m1932a(c6261is, c6263iu.m2192a());
                                    C6374ay.m1521a(C6372ax.m1530a(this.f20898a), c6261is);
                                } else if (EnumC6248if.SyncInfoResult.f22236a.equalsIgnoreCase(c6263iu.f22505d)) {
                                    C5936av.m3935a(this.f20898a, c6263iu);
                                    break;
                                } else if (EnumC6248if.ForceSync.f22236a.equalsIgnoreCase(c6263iu.f22505d)) {
                                    AbstractC5876b.m4147a("receive force sync notification");
                                    C5936av.m3934a(this.f20898a, false);
                                    break;
                                } else if (EnumC6248if.CancelPushMessage.f22236a.equals(c6263iu.f22505d)) {
                                    AbstractC5876b.m4137e("resp-type:" + c6263iu.f22505d + ", " + c6263iu.m2196a());
                                    if (c6263iu.m2195a() != null) {
                                        int i4 = -2;
                                        if (c6263iu.m2195a().containsKey(AbstractC6391bh.f23073N)) {
                                            String str10 = c6263iu.m2195a().get(AbstractC6391bh.f23073N);
                                            if (!TextUtils.isEmpty(str10)) {
                                                try {
                                                    i4 = Integer.parseInt(str10);
                                                } catch (NumberFormatException e) {
                                                    e.printStackTrace();
                                                }
                                            }
                                        }
                                        if (i4 >= -1) {
                                            MiPushClient.clearNotification(this.f20898a, i4);
                                        } else {
                                            MiPushClient.clearNotification(this.f20898a, c6263iu.m2195a().containsKey(AbstractC6391bh.f23071L) ? c6263iu.m2195a().get(AbstractC6391bh.f23071L) : "", c6263iu.m2195a().containsKey(AbstractC6391bh.f23072M) ? c6263iu.m2195a().get(AbstractC6391bh.f23072M) : "");
                                        }
                                    }
                                    m4000a(c6263iu);
                                    break;
                                } else {
                                    try {
                                        if (EnumC6248if.HybridRegisterResult.f22236a.equals(c6263iu.f22505d)) {
                                            C6265iw c6265iw2 = new C6265iw();
                                            C6278jf.m1932a(c6265iw2, c6263iu.m2192a());
                                            MiPushClient4Hybrid.onReceiveRegisterResult(this.f20898a, c6265iw2);
                                        } else if (EnumC6248if.HybridUnregisterResult.f22236a.equals(c6263iu.f22505d)) {
                                            C6275jc c6275jc = new C6275jc();
                                            C6278jf.m1932a(c6275jc, c6263iu.m2192a());
                                            MiPushClient4Hybrid.onReceiveUnregisterResult(this.f20898a, c6275jc);
                                        } else if (!EnumC6248if.PushLogUpload.f22236a.equals(c6263iu.f22505d)) {
                                            if (EnumC6248if.DetectAppAlive.f22236a.equals(c6263iu.f22505d)) {
                                                AbstractC5876b.m4141b("receive detect msg");
                                                m3994b(c6263iu);
                                                break;
                                            } else if (C6441i.m1369a(c6263iu)) {
                                                AbstractC5876b.m4141b("receive notification handle by cpra");
                                                break;
                                            }
                                        }
                                        break;
                                    } catch (C6285jl e2) {
                                        AbstractC5876b.m4143a(e2);
                                        break;
                                    }
                                }
                                break;
                            } catch (C6285jl unused) {
                                break;
                            }
                        }
                    }
                    break;
            }
            return null;
        } catch (C5959u e3) {
            AbstractC5876b.m4143a(e3);
            m4004a(c6260ir);
            m3082a = C6129en.m3082a(this.f20898a);
            packageName = this.f20898a.getPackageName();
            m3096a = C6127em.m3096a(i);
            str2 = com.tencent.connect.common.Constants.VIA_ACT_TYPE_NINETEEN;
            m3082a.m3074b(packageName, m3096a, str, str2);
            C5957s.m3830c(this.f20898a, c6260ir, z);
            return null;
        } catch (C6285jl e4) {
            AbstractC5876b.m4143a(e4);
            AbstractC5876b.m4138d("receive a message which action string is not valid. is the reg expired?");
            m3082a = C6129en.m3082a(this.f20898a);
            packageName = this.f20898a.getPackageName();
            m3096a = C6127em.m3096a(i);
            str2 = "20";
            m3082a.m3074b(packageName, m3096a, str, str2);
            C5957s.m3830c(this.f20898a, c6260ir, z);
            return null;
        }
    }

    /* renamed from: a */
    private PushMessageHandler.InterfaceC5912a m4001a(C6260ir c6260ir, byte[] bArr) {
        String str;
        InterfaceC6279jg m4019a;
        String str2 = null;
        try {
            m4019a = C5922ai.m4019a(this.f20898a, c6260ir);
        } catch (C5959u e) {
            AbstractC5876b.m4143a(e);
            str = "message arrived: receive a message but decrypt failed. report when click.";
        } catch (C6285jl e2) {
            AbstractC5876b.m4143a(e2);
            str = "message arrived: receive a message which action string is not valid. is the reg expired?";
        }
        if (m4019a == null) {
            AbstractC5876b.m4138d("message arrived: receiving an un-recognized message. " + c6260ir.f22464a);
            return null;
        }
        EnumC6237hv m2234a = c6260ir.m2234a();
        AbstractC5876b.m4147a("message arrived: processing an arrived message, action=" + m2234a);
        if (C5927an.f20899a[m2234a.ordinal()] != 1) {
            return null;
        }
        if (c6260ir.m2218b()) {
            C6267iy c6267iy = (C6267iy) m4019a;
            C6250ih m2064a = c6267iy.m2064a();
            if (m2064a != null) {
                C6251ii c6251ii = c6260ir.f22465a;
                if (c6251ii != null && c6251ii.m2401a() != null) {
                    str2 = c6260ir.f22465a.f22309a.get("jobkey");
                }
                MiPushMessage generateMessage = PushMessageHelper.generateMessage(c6267iy, c6260ir.m2233a(), false);
                generateMessage.setArrivedMessage(true);
                AbstractC5876b.m4147a("message arrived: receive a message, msgid=" + m2064a.m2433a() + ", jobkey=" + str2);
                return generateMessage;
            }
            str = "message arrived: receive an empty message without push content, drop it";
        } else {
            str = "message arrived: receiving an un-encrypt message(SendMessage).";
        }
        AbstractC5876b.m4138d(str);
        return null;
    }

    /* renamed from: a */
    public static C5926am m4010a(Context context) {
        if (f20895a == null) {
            f20895a = new C5926am(context);
        }
        return f20895a;
    }

    /* renamed from: a */
    private void m4011a() {
        SharedPreferences sharedPreferences = this.f20898a.getSharedPreferences("mipush_extra", 0);
        long currentTimeMillis = System.currentTimeMillis();
        if (Math.abs(currentTimeMillis - sharedPreferences.getLong(Constants.SP_KEY_LAST_REINITIALIZE, 0L)) > 1800000) {
            MiPushClient.reInitialize(this.f20898a, EnumC6252ij.PackageUnregistered);
            sharedPreferences.edit().putLong(Constants.SP_KEY_LAST_REINITIALIZE, currentTimeMillis).commit();
        }
    }

    /* renamed from: a */
    public static void m4009a(Context context, String str) {
        synchronized (f20896a) {
            f20897a.remove(str);
            C5938b.m3923a(context);
            SharedPreferences m3924a = C5938b.m3924a(context);
            String m3616a = C6023bo.m3616a(f20897a, Constants.ACCEPT_TIME_SEPARATOR_SP);
            SharedPreferences.Editor edit = m3924a.edit();
            edit.putString("pref_msg_ids", m3616a);
            C6314s.m1816a(edit);
        }
    }

    /* renamed from: a */
    private void m4005a(C6255im c6255im) {
        String m2314a = c6255im.m2314a();
        AbstractC5876b.m4141b("receive ack " + m2314a);
        Map<String, String> m2313a = c6255im.m2313a();
        if (m2313a != null) {
            String str = m2313a.get("real_source");
            if (TextUtils.isEmpty(str)) {
                return;
            }
            AbstractC5876b.m4141b("receive ack : messageId = " + m2314a + "  realSource = " + str);
            C6031bw.m3588a(this.f20898a).m3580a(m2314a, str, Boolean.valueOf(c6255im.f22391a == 0));
        }
    }

    /* renamed from: a */
    private void m4004a(C6260ir c6260ir) {
        AbstractC5876b.m4147a("receive a message but decrypt failed. report now.");
        C6263iu c6263iu = new C6263iu(c6260ir.m2233a().f22307a, false);
        c6263iu.m2176c(EnumC6248if.DecryptMessageFail.f22236a);
        c6263iu.m2180b(c6260ir.m2232a());
        c6263iu.m2173d(c6260ir.f22471b);
        HashMap hashMap = new HashMap();
        c6263iu.f22500a = hashMap;
        hashMap.put("regid", MiPushClient.getRegId(this.f20898a));
        C5928ao.m3984a(this.f20898a).m3968a((C5928ao) c6263iu, EnumC6237hv.Notification, false, (C6251ii) null);
    }

    /* renamed from: a */
    private void m4000a(C6263iu c6263iu) {
        C6255im c6255im = new C6255im();
        c6255im.m2300c(EnumC6248if.CancelPushMessageACK.f22236a);
        c6255im.m2306a(c6263iu.m2196a());
        c6255im.m2309a(c6263iu.m2197a());
        c6255im.m2302b(c6263iu.m2182b());
        c6255im.m2296e(c6263iu.m2178c());
        c6255im.m2310a(0L);
        c6255im.m2298d("success clear push message.");
        C5928ao.m3984a(this.f20898a).m3964a(c6255im, EnumC6237hv.Notification, false, true, null, false, this.f20898a.getPackageName(), C5938b.m3923a(this.f20898a).m3928a(), false);
    }

    /* renamed from: a */
    private void m3999a(C6267iy c6267iy, C6260ir c6260ir) {
        C6251ii m2233a = c6260ir.m2233a();
        if (m2233a != null) {
            m2233a = C6400bo.m1452a(m2233a.m2403a());
        }
        C6254il c6254il = new C6254il();
        c6254il.m2339b(c6267iy.m2057b());
        c6254il.m2343a(c6267iy.m2063a());
        c6254il.m2346a(c6267iy.m2064a().m2434a());
        if (!TextUtils.isEmpty(c6267iy.m2055c())) {
            c6254il.m2336c(c6267iy.m2055c());
        }
        if (!TextUtils.isEmpty(c6267iy.m2053d())) {
            c6254il.m2333d(c6267iy.m2053d());
        }
        c6254il.m2342a(C6278jf.m1935a(this.f20898a, c6260ir));
        C5928ao.m3984a(this.f20898a).m3970a((C5928ao) c6254il, EnumC6237hv.AckMessage, m2233a);
    }

    /* renamed from: a */
    private void m3998a(String str, long j, EnumC5942e enumC5942e) {
        EnumC5935au m3849a = C5949l.m3849a(enumC5942e);
        if (m3849a == null) {
            return;
        }
        if (j == 0) {
            synchronized (C5919af.class) {
                if (C5919af.m4028a(this.f20898a).m4023a(str)) {
                    C5919af.m4028a(this.f20898a).m4021c(str);
                    if ("syncing".equals(C5919af.m4028a(this.f20898a).m4027a(m3849a))) {
                        C5919af.m4028a(this.f20898a).m4026a(m3849a, "synced");
                    }
                }
            }
        } else if (!"syncing".equals(C5919af.m4028a(this.f20898a).m4027a(m3849a))) {
            C5919af.m4028a(this.f20898a).m4021c(str);
        } else {
            synchronized (C5919af.class) {
                if (C5919af.m4028a(this.f20898a).m4023a(str)) {
                    if (C5919af.m4028a(this.f20898a).m4025a(str) < 10) {
                        C5919af.m4028a(this.f20898a).m4022b(str);
                        C5928ao.m3984a(this.f20898a).m3962a(str, m3849a, enumC5942e);
                    } else {
                        C5919af.m4028a(this.f20898a).m4021c(str);
                    }
                }
            }
        }
    }

    /* renamed from: a */
    private static boolean m4008a(Context context, String str) {
        synchronized (f20896a) {
            C5938b.m3923a(context);
            SharedPreferences m3924a = C5938b.m3924a(context);
            if (f20897a == null) {
                String[] split = m3924a.getString("pref_msg_ids", "").split(Constants.ACCEPT_TIME_SEPARATOR_SP);
                f20897a = new LinkedList();
                for (String str2 : split) {
                    f20897a.add(str2);
                }
            }
            if (f20897a.contains(str)) {
                return true;
            }
            f20897a.add(str);
            if (f20897a.size() > 25) {
                f20897a.poll();
            }
            String m3616a = C6023bo.m3616a(f20897a, Constants.ACCEPT_TIME_SEPARATOR_SP);
            SharedPreferences.Editor edit = m3924a.edit();
            edit.putString("pref_msg_ids", m3616a);
            C6314s.m1816a(edit);
            return false;
        }
    }

    /* renamed from: a */
    private boolean m4003a(C6260ir c6260ir) {
        Map<String, String> m2401a = c6260ir.m2233a() == null ? null : c6260ir.m2233a().m2401a();
        if (m2401a == null) {
            return false;
        }
        String str = m2401a.get(Constants.EXTRA_KEY_PUSH_SERVER_ACTION);
        return TextUtils.equals(str, Constants.EXTRA_VALUE_HYBRID_MESSAGE) || TextUtils.equals(str, Constants.EXTRA_VALUE_PLATFORM_MESSAGE);
    }

    /* renamed from: b */
    private void m3996b(C6255im c6255im) {
        Context context;
        EnumC5942e enumC5942e;
        AbstractC5876b.m4139c("ASSEMBLE_PUSH : " + c6255im.toString());
        String m2314a = c6255im.m2314a();
        Map<String, String> m2313a = c6255im.m2313a();
        if (m2313a != null) {
            String str = m2313a.get(Constants.ASSEMBLE_PUSH_REG_INFO);
            if (TextUtils.isEmpty(str)) {
                return;
            }
            if (str.contains("brand:" + EnumC5920ag.FCM.name())) {
                AbstractC5876b.m4147a("ASSEMBLE_PUSH : receive fcm token sync ack");
                context = this.f20898a;
                enumC5942e = EnumC5942e.ASSEMBLE_PUSH_FCM;
            } else {
                if (str.contains("brand:" + EnumC5920ag.HUAWEI.name())) {
                    AbstractC5876b.m4147a("ASSEMBLE_PUSH : receive hw token sync ack");
                    context = this.f20898a;
                    enumC5942e = EnumC5942e.ASSEMBLE_PUSH_HUAWEI;
                } else {
                    if (str.contains("brand:" + EnumC5920ag.OPPO.name())) {
                        AbstractC5876b.m4147a("ASSEMBLE_PUSH : receive COS token sync ack");
                        context = this.f20898a;
                        enumC5942e = EnumC5942e.ASSEMBLE_PUSH_COS;
                    } else {
                        if (!str.contains("brand:" + EnumC5920ag.VIVO.name())) {
                            return;
                        }
                        AbstractC5876b.m4147a("ASSEMBLE_PUSH : receive FTOS token sync ack");
                        context = this.f20898a;
                        enumC5942e = EnumC5942e.ASSEMBLE_PUSH_FTOS;
                    }
                }
            }
            C5946i.m3855b(context, enumC5942e, str);
            m3998a(m2314a, c6255im.f22391a, enumC5942e);
        }
    }

    /* renamed from: b */
    private void m3995b(C6260ir c6260ir) {
        C6251ii m2233a = c6260ir.m2233a();
        if (m2233a != null) {
            m2233a = C6400bo.m1452a(m2233a.m2403a());
        }
        C6254il c6254il = new C6254il();
        c6254il.m2339b(c6260ir.m2232a());
        c6254il.m2343a(m2233a.m2402a());
        c6254il.m2346a(m2233a.m2404a());
        if (!TextUtils.isEmpty(m2233a.m2390b())) {
            c6254il.m2336c(m2233a.m2390b());
        }
        c6254il.m2342a(C6278jf.m1935a(this.f20898a, c6260ir));
        C5928ao.m3984a(this.f20898a).m3968a((C5928ao) c6254il, EnumC6237hv.AckMessage, false, m2233a);
    }

    /* renamed from: b */
    private void m3994b(C6263iu c6263iu) {
        String str;
        Map<String, String> m2195a = c6263iu.m2195a();
        if (m2195a == null) {
            str = "detect failed because null";
        } else {
            String str2 = (String) C6369av.m1542a(m2195a, "pkgList", (Object) null);
            if (!TextUtils.isEmpty(str2)) {
                try {
                    List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) this.f20898a.getSystemService("activity")).getRunningAppProcesses();
                    if (C6470v.m1228a(runningAppProcesses)) {
                        AbstractC5876b.m4147a("detect failed because params illegal");
                        return;
                    }
                    String[] split = str2.split(Constants.ACCEPT_TIME_SEPARATOR_SP);
                    HashMap hashMap = new HashMap();
                    for (String str3 : split) {
                        String[] split2 = str3.split(Constants.WAVE_SEPARATOR);
                        if (split2.length >= 2) {
                            hashMap.put(split2[1], split2[0]);
                        }
                    }
                    C6470v.C6471a c6471a = new C6470v.C6471a(Constants.WAVE_SEPARATOR, Constants.ACCEPT_TIME_SEPARATOR_SP);
                    for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                        if (hashMap.containsKey(runningAppProcessInfo.processName)) {
                            c6471a.m1226a((String) hashMap.get(runningAppProcessInfo.processName), String.valueOf(runningAppProcessInfo.importance));
                            hashMap.remove(runningAppProcessInfo.processName);
                        }
                    }
                    if (c6471a.toString().length() <= 0) {
                        AbstractC5876b.m4141b("detect failed because no alive process");
                        return;
                    }
                    C6263iu c6263iu2 = new C6263iu();
                    c6263iu2.m2189a(c6263iu.m2196a());
                    c6263iu2.m2180b(c6263iu.m2182b());
                    c6263iu2.m2173d(c6263iu.m2178c());
                    c6263iu2.m2176c(EnumC6248if.DetectAppAliveResult.f22236a);
                    HashMap hashMap2 = new HashMap();
                    c6263iu2.f22500a = hashMap2;
                    hashMap2.put("alive", c6471a.toString());
                    if (Boolean.parseBoolean((String) C6369av.m1542a(m2195a, "reportNotAliveApp", "false")) && hashMap.size() > 0) {
                        C6470v.C6471a c6471a2 = new C6470v.C6471a("", Constants.ACCEPT_TIME_SEPARATOR_SP);
                        for (String str4 : hashMap.keySet()) {
                            c6471a2.m1226a((String) hashMap.get(str4), "");
                        }
                        c6263iu2.f22500a.put("notAlive", c6471a2.toString());
                    }
                    C5928ao.m3984a(this.f20898a).m3968a((C5928ao) c6263iu2, EnumC6237hv.Notification, false, (C6251ii) null);
                    return;
                } catch (Throwable th) {
                    AbstractC5876b.m4147a("detect failed " + th);
                    return;
                }
            }
            str = "detect failed because empty";
        }
        AbstractC5876b.m4147a(str);
    }

    /* renamed from: a */
    public PushMessageHandler.InterfaceC5912a m4006a(Intent intent) {
        String str;
        C6129en m3082a;
        String packageName;
        String str2;
        C6129en m3082a2;
        String packageName2;
        String format;
        String action = intent.getAction();
        AbstractC5876b.m4147a("receive an intent from server, action=" + action);
        String stringExtra = intent.getStringExtra("mrt");
        if (stringExtra == null) {
            stringExtra = Long.toString(System.currentTimeMillis());
        }
        String stringExtra2 = intent.getStringExtra("messageId");
        int intExtra = intent.getIntExtra("eventMessageType", -1);
        if ("com.xiaomi.mipush.RECEIVE_MESSAGE".equals(action)) {
            byte[] byteArrayExtra = intent.getByteArrayExtra("mipush_payload");
            boolean booleanExtra = intent.getBooleanExtra("mipush_notified", false);
            if (byteArrayExtra == null) {
                AbstractC5876b.m4138d("receiving an empty message, drop");
                C6129en.m3082a(this.f20898a).m3078a(this.f20898a.getPackageName(), intent, com.tencent.connect.common.Constants.VIA_REPORT_TYPE_SET_AVATAR);
                return null;
            }
            C6260ir c6260ir = new C6260ir();
            try {
                C6278jf.m1932a(c6260ir, byteArrayExtra);
                C5938b m3923a = C5938b.m3923a(this.f20898a);
                C6251ii m2233a = c6260ir.m2233a();
                EnumC6237hv m2234a = c6260ir.m2234a();
                EnumC6237hv enumC6237hv = EnumC6237hv.SendMessage;
                if (m2234a == enumC6237hv && m2233a != null && !m3923a.m3904e() && !booleanExtra) {
                    m2233a.m2394a("mrt", stringExtra);
                    m2233a.m2394a("mat", Long.toString(System.currentTimeMillis()));
                    if (m4003a(c6260ir)) {
                        AbstractC5876b.m4141b("this is a mina's message, ack later");
                        m2233a.m2394a(Constants.EXTRA_KEY_HYBRID_MESSAGE_TS, String.valueOf(m2233a.m2404a()));
                        m2233a.m2394a(Constants.EXTRA_KEY_HYBRID_DEVICE_STATUS, String.valueOf((int) C6278jf.m1935a(this.f20898a, c6260ir)));
                    } else {
                        m3995b(c6260ir);
                    }
                }
                if (c6260ir.m2234a() == enumC6237hv && !c6260ir.m2218b()) {
                    if (C6350aj.m1656a(c6260ir)) {
                        Object[] objArr = new Object[2];
                        objArr[0] = c6260ir.m2219b();
                        objArr[1] = m2233a != null ? m2233a.m2402a() : "";
                        AbstractC5876b.m4147a(String.format("drop an un-encrypted wake-up messages. %1$s, %2$s", objArr));
                        m3082a2 = C6129en.m3082a(this.f20898a);
                        packageName2 = this.f20898a.getPackageName();
                        format = String.format("13: %1$s", c6260ir.m2219b());
                    } else {
                        Object[] objArr2 = new Object[2];
                        objArr2[0] = c6260ir.m2219b();
                        objArr2[1] = m2233a != null ? m2233a.m2402a() : "";
                        AbstractC5876b.m4147a(String.format("drop an un-encrypted messages. %1$s, %2$s", objArr2));
                        m3082a2 = C6129en.m3082a(this.f20898a);
                        packageName2 = this.f20898a.getPackageName();
                        format = String.format("14: %1$s", c6260ir.m2219b());
                    }
                    m3082a2.m3078a(packageName2, intent, format);
                    C5957s.m3833a(this.f20898a, c6260ir, booleanExtra);
                    return null;
                }
                if (c6260ir.m2234a() == enumC6237hv && c6260ir.m2218b() && C6350aj.m1656a(c6260ir) && (!booleanExtra || m2233a == null || m2233a.m2401a() == null || !m2233a.m2401a().containsKey("notify_effect"))) {
                    Object[] objArr3 = new Object[2];
                    objArr3[0] = c6260ir.m2219b();
                    objArr3[1] = m2233a != null ? m2233a.m2402a() : "";
                    AbstractC5876b.m4147a(String.format("drop a wake-up messages which not has 'notify_effect' attr. %1$s, %2$s", objArr3));
                    C6129en.m3082a(this.f20898a).m3078a(this.f20898a.getPackageName(), intent, String.format("25: %1$s", c6260ir.m2219b()));
                    C5957s.m3831b(this.f20898a, c6260ir, booleanExtra);
                    return null;
                }
                if (m3923a.m3908c() || c6260ir.f22464a == EnumC6237hv.Registration) {
                    if (!m3923a.m3908c() || !m3923a.m3902f()) {
                        return m4002a(c6260ir, booleanExtra, byteArrayExtra, stringExtra2, intExtra, intent);
                    }
                    if (c6260ir.f22464a != EnumC6237hv.UnRegistration) {
                        C5957s.m3828e(this.f20898a, c6260ir, booleanExtra);
                        MiPushClient.unregisterPush(this.f20898a);
                    } else if (c6260ir.m2218b()) {
                        m3923a.m3927a();
                        MiPushClient.clearExtras(this.f20898a);
                        PushMessageHandler.m4050a();
                    } else {
                        AbstractC5876b.m4138d("receiving an un-encrypt unregistration message");
                    }
                } else if (C6350aj.m1656a(c6260ir)) {
                    return m4002a(c6260ir, booleanExtra, byteArrayExtra, stringExtra2, intExtra, intent);
                } else {
                    C5957s.m3828e(this.f20898a, c6260ir, booleanExtra);
                    boolean m3906d = m3923a.m3906d();
                    AbstractC5876b.m4138d("receive message without registration. need re-register!registered?" + m3906d);
                    C6129en.m3082a(this.f20898a).m3078a(this.f20898a.getPackageName(), intent, com.tencent.connect.common.Constants.VIA_REPORT_TYPE_WPA_STATE);
                    if (m3906d) {
                        m4011a();
                    }
                }
            } catch (C6285jl e) {
                e = e;
                m3082a = C6129en.m3082a(this.f20898a);
                packageName = this.f20898a.getPackageName();
                str2 = com.tencent.connect.common.Constants.VIA_REPORT_TYPE_START_WAP;
                m3082a.m3078a(packageName, intent, str2);
                AbstractC5876b.m4143a(e);
                return null;
            } catch (Exception e2) {
                e = e2;
                m3082a = C6129en.m3082a(this.f20898a);
                packageName = this.f20898a.getPackageName();
                str2 = com.tencent.connect.common.Constants.VIA_REPORT_TYPE_START_GROUP;
                m3082a.m3078a(packageName, intent, str2);
                AbstractC5876b.m4143a(e);
                return null;
            }
        } else if ("com.xiaomi.mipush.ERROR".equals(action)) {
            MiPushCommandMessage miPushCommandMessage = new MiPushCommandMessage();
            C6260ir c6260ir2 = new C6260ir();
            try {
                byte[] byteArrayExtra2 = intent.getByteArrayExtra("mipush_payload");
                if (byteArrayExtra2 != null) {
                    C6278jf.m1932a(c6260ir2, byteArrayExtra2);
                }
            } catch (C6285jl unused) {
            }
            miPushCommandMessage.setCommand(String.valueOf(c6260ir2.m2234a()));
            miPushCommandMessage.setResultCode(intent.getIntExtra("mipush_error_code", 0));
            miPushCommandMessage.setReason(intent.getStringExtra("mipush_error_msg"));
            AbstractC5876b.m4138d("receive a error message. code = " + intent.getIntExtra("mipush_error_code", 0) + ", msg= " + intent.getStringExtra("mipush_error_msg"));
            return miPushCommandMessage;
        } else if ("com.xiaomi.mipush.MESSAGE_ARRIVED".equals(action)) {
            byte[] byteArrayExtra3 = intent.getByteArrayExtra("mipush_payload");
            if (byteArrayExtra3 == null) {
                AbstractC5876b.m4138d("message arrived: receiving an empty message, drop");
                return null;
            }
            C6260ir c6260ir3 = new C6260ir();
            try {
                C6278jf.m1932a(c6260ir3, byteArrayExtra3);
                C5938b m3923a2 = C5938b.m3923a(this.f20898a);
                if (C6350aj.m1656a(c6260ir3)) {
                    str = "message arrived: receive ignore reg message, ignore!";
                } else if (!m3923a2.m3908c()) {
                    str = "message arrived: receive message without registration. need unregister or re-register!";
                } else if (!m3923a2.m3908c() || !m3923a2.m3902f()) {
                    return m4001a(c6260ir3, byteArrayExtra3);
                } else {
                    str = "message arrived: app info is invalidated";
                }
                AbstractC5876b.m4138d(str);
            } catch (Exception e3) {
                AbstractC5876b.m4138d("fail to deal with arrived message. " + e3);
            }
        }
        return null;
    }

    /* renamed from: a */
    public List<String> m3997a(TimeZone timeZone, TimeZone timeZone2, List<String> list) {
        if (timeZone.equals(timeZone2)) {
            return list;
        }
        long rawOffset = ((timeZone.getRawOffset() - timeZone2.getRawOffset()) / XiaomiOAuthConstants.SCOPE_ACCESS_MI_ROUTER) / 60;
        long parseLong = ((((Long.parseLong(list.get(0).split(Constants.COLON_SEPARATOR)[0]) * 60) + Long.parseLong(list.get(0).split(Constants.COLON_SEPARATOR)[1])) - rawOffset) + 1440) % 1440;
        long parseLong2 = ((((Long.parseLong(list.get(1).split(Constants.COLON_SEPARATOR)[0]) * 60) + Long.parseLong(list.get(1).split(Constants.COLON_SEPARATOR)[1])) - rawOffset) + 1440) % 1440;
        ArrayList arrayList = new ArrayList();
        arrayList.add(String.format("%1$02d:%2$02d", Long.valueOf(parseLong / 60), Long.valueOf(parseLong % 60)));
        arrayList.add(String.format("%1$02d:%2$02d", Long.valueOf(parseLong2 / 60), Long.valueOf(parseLong2 % 60)));
        return arrayList;
    }
}
