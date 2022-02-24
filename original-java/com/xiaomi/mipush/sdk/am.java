package com.xiaomi.mipush.sdk;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.autonavi.ae.gmap.maploader.ERROR_CODE;
import com.tencent.connect.common.Constants;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.mipush.sdk.PushMessageHandler;
import com.xiaomi.push.Cif;
import com.xiaomi.push.bo;
import com.xiaomi.push.bw;
import com.xiaomi.push.da;
import com.xiaomi.push.em;
import com.xiaomi.push.en;
import com.xiaomi.push.fl;
import com.xiaomi.push.hv;
import com.xiaomi.push.ia;
import com.xiaomi.push.ih;
import com.xiaomi.push.ii;
import com.xiaomi.push.ij;
import com.xiaomi.push.il;
import com.xiaomi.push.im;
import com.xiaomi.push.iq;
import com.xiaomi.push.ir;
import com.xiaomi.push.is;
import com.xiaomi.push.it;
import com.xiaomi.push.iu;
import com.xiaomi.push.iw;
import com.xiaomi.push.iy;
import com.xiaomi.push.ja;
import com.xiaomi.push.jc;
import com.xiaomi.push.je;
import com.xiaomi.push.jf;
import com.xiaomi.push.jg;
import com.xiaomi.push.jl;
import com.xiaomi.push.s;
import com.xiaomi.push.service.aj;
import com.xiaomi.push.service.av;
import com.xiaomi.push.service.ax;
import com.xiaomi.push.service.ay;
import com.xiaomi.push.service.bh;
import com.xiaomi.push.service.i;
import com.xiaomi.push.v;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.TimeZone;

/* loaded from: classes2.dex */
public class am {

    /* renamed from: a  reason: collision with root package name */
    private static am f8687a;

    /* renamed from: a  reason: collision with other field name */
    private static Object f42a = new Object();

    /* renamed from: a  reason: collision with other field name */
    private static Queue<String> f43a;

    /* renamed from: a  reason: collision with other field name */
    private Context f44a;

    private am(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f44a = applicationContext;
        if (applicationContext == null) {
            this.f44a = context;
        }
    }

    public static Intent a(Context context, String str, Map<String, String> map, int i) {
        return aj.b(context, str, map, i);
    }

    private PushMessageHandler.a a(ir irVar, boolean z, byte[] bArr, String str, int i, Intent intent) {
        en a2;
        String packageName;
        String a3;
        String str2;
        String str3;
        String str4;
        MiPushMessage miPushMessage;
        String str5;
        int i2;
        String str6;
        String str7;
        en enVar;
        ArrayList arrayList = null;
        try {
            jg a4 = ai.a(this.f44a, irVar);
            if (a4 == null) {
                b.d("receiving an un-recognized message. " + irVar.f647a);
                en.a(this.f44a).b(this.f44a.getPackageName(), em.m233a(i), str, "18");
                s.c(this.f44a, irVar, z);
                return null;
            }
            hv a5 = irVar.a();
            b.m1a("processing a message, action=" + a5);
            switch (an.f8688a[a5.ordinal()]) {
                case 1:
                    if (!irVar.m438b()) {
                        b.d("receiving an un-encrypt message(SendMessage).");
                        return null;
                    } else if (!b.m36a(this.f44a).m47e() || z) {
                        iy iyVar = (iy) a4;
                        ih a6 = iyVar.a();
                        if (a6 == null) {
                            b.d("receive an empty message without push content, drop it");
                            en.a(this.f44a).b(this.f44a.getPackageName(), em.m233a(i), str, Constants.VIA_REPORT_TYPE_DATALINE);
                            s.d(this.f44a, irVar, z);
                            return null;
                        }
                        int intExtra = intent.getIntExtra("notification_click_button", 0);
                        if (z) {
                            if (aj.m584a(irVar)) {
                                MiPushClient.reportIgnoreRegMessageClicked(this.f44a, a6.m388a(), irVar.m430a(), irVar.f654b, a6.b());
                            } else {
                                ii iiVar = irVar.m430a() != null ? new ii(irVar.m430a()) : new ii();
                                if (iiVar.m397a() == null) {
                                    iiVar.a(new HashMap());
                                }
                                iiVar.m397a().put("notification_click_button", String.valueOf(intExtra));
                                MiPushClient.reportMessageClicked(this.f44a, a6.m388a(), iiVar, a6.b());
                            }
                        }
                        if (!z) {
                            if (!TextUtils.isEmpty(iyVar.d()) && MiPushClient.aliasSetTime(this.f44a, iyVar.d()) < 0) {
                                MiPushClient.addAlias(this.f44a, iyVar.d());
                            } else if (!TextUtils.isEmpty(iyVar.c()) && MiPushClient.topicSubscribedTime(this.f44a, iyVar.c()) < 0) {
                                MiPushClient.addTopic(this.f44a, iyVar.c());
                            }
                        }
                        ii iiVar2 = irVar.f648a;
                        if (iiVar2 == null || iiVar2.m397a() == null) {
                            str4 = null;
                            str3 = null;
                        } else {
                            str4 = irVar.f648a.f562a.get("jobkey");
                            str3 = str4;
                        }
                        if (TextUtils.isEmpty(str4)) {
                            str4 = a6.m388a();
                        }
                        if (z || !m20a(this.f44a, str4)) {
                            MiPushMessage generateMessage = PushMessageHelper.generateMessage(iyVar, irVar.m430a(), z);
                            if (generateMessage.getPassThrough() != 0 || z || !aj.m585a(generateMessage.getExtra())) {
                                b.m1a("receive a message, msgid=" + a6.m388a() + ", jobkey=" + str4 + ", btn=" + intExtra);
                                String a7 = aj.a(generateMessage.getExtra(), intExtra);
                                if (!z || generateMessage.getExtra() == null || TextUtils.isEmpty(a7)) {
                                    miPushMessage = generateMessage;
                                } else {
                                    Map<String, String> extra = generateMessage.getExtra();
                                    if (!(intExtra == 0 || irVar.m430a() == null)) {
                                        ao.a(this.f44a).a(irVar.m430a().c(), intExtra);
                                    }
                                    if (aj.m584a(irVar)) {
                                        Intent a8 = a(this.f44a, irVar.f654b, extra, intExtra);
                                        a8.putExtra("eventMessageType", i);
                                        a8.putExtra("messageId", str);
                                        a8.putExtra("jobkey", str3);
                                        if (a8 == null) {
                                            b.m1a("Getting Intent fail from ignore reg message. ");
                                            en.a(this.f44a).b(this.f44a.getPackageName(), em.m233a(i), str, Constants.VIA_REPORT_TYPE_SHARE_TO_TROOPBAR);
                                            return null;
                                        }
                                        String c2 = a6.c();
                                        if (!TextUtils.isEmpty(c2)) {
                                            a8.putExtra("payload", c2);
                                        }
                                        this.f44a.startActivity(a8);
                                        s.a(this.f44a, irVar);
                                        en.a(this.f44a).a(this.f44a.getPackageName(), em.m233a(i), str, 3006, a7);
                                        return null;
                                    }
                                    Context context = this.f44a;
                                    Intent a9 = a(context, context.getPackageName(), extra, intExtra);
                                    if (a9 == null) {
                                        return null;
                                    }
                                    if (!a7.equals(bh.f9284c)) {
                                        a9.putExtra(PushMessageHelper.KEY_MESSAGE, generateMessage);
                                        a9.putExtra("eventMessageType", i);
                                        a9.putExtra("messageId", str);
                                        a9.putExtra("jobkey", str3);
                                    }
                                    this.f44a.startActivity(a9);
                                    s.a(this.f44a, irVar);
                                    b.m1a("start activity succ");
                                    en.a(this.f44a).a(this.f44a.getPackageName(), em.m233a(i), str, ERROR_CODE.CONN_INTERRUPT_ERROR, a7);
                                    if (!a7.equals(bh.f9284c)) {
                                        return null;
                                    }
                                    en.a(this.f44a).a(this.f44a.getPackageName(), em.m233a(i), str, Constants.VIA_REPORT_TYPE_JOININ_GROUP);
                                    return null;
                                }
                            } else {
                                aj.m581a(this.f44a, irVar, bArr);
                                return null;
                            }
                        } else {
                            b.m1a("drop a duplicate message, key=" + str4);
                            en a10 = en.a(this.f44a);
                            String packageName2 = this.f44a.getPackageName();
                            String a11 = em.m233a(i);
                            a10.c(packageName2, a11, str, "2:" + str4);
                            miPushMessage = null;
                        }
                        if (irVar.m430a() == null && !z) {
                            a(iyVar, irVar);
                        }
                        return miPushMessage;
                    } else {
                        b.m1a("receive a message in pause state. drop it");
                        en.a(this.f44a).a(this.f44a.getPackageName(), em.m233a(i), str, Constants.VIA_REPORT_TYPE_SET_AVATAR);
                        return null;
                    }
                case 2:
                    iw iwVar = (iw) a4;
                    String str8 = b.m36a(this.f44a).f60a;
                    if (TextUtils.isEmpty(str8) || !TextUtils.equals(str8, iwVar.m459a())) {
                        b.m1a("bad Registration result:");
                        en.a(this.f44a).b(this.f44a.getPackageName(), em.m233a(i), str, Constants.VIA_REPORT_TYPE_QQFAVORITES);
                        return null;
                    }
                    b.m36a(this.f44a).f60a = null;
                    int i3 = (iwVar.f710a > 0L ? 1 : (iwVar.f710a == 0L ? 0 : -1));
                    Context context2 = this.f44a;
                    if (i3 == 0) {
                        b.m36a(context2).b(iwVar.f720e, iwVar.f721f, iwVar.f727l);
                        FCMPushHelper.persistIfXmsfSupDecrypt(this.f44a);
                        enVar = en.a(this.f44a);
                        str7 = this.f44a.getPackageName();
                        str6 = em.m233a(i);
                        i2 = 6006;
                        str5 = "1";
                    } else {
                        enVar = en.a(context2);
                        str7 = this.f44a.getPackageName();
                        str6 = em.m233a(i);
                        i2 = 6006;
                        str5 = "2";
                    }
                    enVar.a(str7, str6, str, i2, str5);
                    if (!TextUtils.isEmpty(iwVar.f720e)) {
                        arrayList = new ArrayList();
                        arrayList.add(iwVar.f720e);
                    }
                    MiPushCommandMessage generateCommandMessage = PushMessageHelper.generateCommandMessage(fl.COMMAND_REGISTER.f354a, arrayList, iwVar.f710a, iwVar.f719d, null);
                    ao.a(this.f44a).m34d();
                    return generateCommandMessage;
                case 3:
                    if (irVar.m438b()) {
                        if (((jc) a4).f788a == 0) {
                            b.m36a(this.f44a).m38a();
                            MiPushClient.clearExtras(this.f44a);
                        }
                        PushMessageHandler.a();
                        break;
                    } else {
                        b.d("receiving an un-encrypt message(UnRegistration).");
                        return null;
                    }
                case 4:
                    ja jaVar = (ja) a4;
                    if (jaVar.f763a == 0) {
                        MiPushClient.addTopic(this.f44a, jaVar.b());
                    }
                    if (!TextUtils.isEmpty(jaVar.b())) {
                        arrayList = new ArrayList();
                        arrayList.add(jaVar.b());
                    }
                    b.e("resp-cmd:" + fl.COMMAND_SUBSCRIBE_TOPIC + ", " + jaVar.a());
                    return PushMessageHelper.generateCommandMessage(fl.COMMAND_SUBSCRIBE_TOPIC.f354a, arrayList, jaVar.f763a, jaVar.f769d, jaVar.c());
                case 5:
                    je jeVar = (je) a4;
                    if (jeVar.f808a == 0) {
                        MiPushClient.removeTopic(this.f44a, jeVar.b());
                    }
                    if (!TextUtils.isEmpty(jeVar.b())) {
                        arrayList = new ArrayList();
                        arrayList.add(jeVar.b());
                    }
                    b.e("resp-cmd:" + fl.COMMAND_UNSUBSCRIBE_TOPIC + ", " + jeVar.a());
                    return PushMessageHelper.generateCommandMessage(fl.COMMAND_UNSUBSCRIBE_TOPIC.f354a, arrayList, jeVar.f808a, jeVar.f814d, jeVar.c());
                case 6:
                    da.a(this.f44a.getPackageName(), this.f44a, a4, hv.Command, bArr.length);
                    iq iqVar = (iq) a4;
                    String b2 = iqVar.b();
                    List<String> a12 = iqVar.m424a();
                    if (iqVar.f635a == 0) {
                        if (TextUtils.equals(b2, fl.COMMAND_SET_ACCEPT_TIME.f354a) && a12 != null && a12.size() > 1) {
                            MiPushClient.addAcceptTime(this.f44a, a12.get(0), a12.get(1));
                            if (!"00:00".equals(a12.get(0)) || !"00:00".equals(a12.get(1))) {
                                b.m36a(this.f44a).a(false);
                            } else {
                                b.m36a(this.f44a).a(true);
                            }
                            a12 = a(TimeZone.getTimeZone("GMT+08"), TimeZone.getDefault(), a12);
                        } else if (TextUtils.equals(b2, fl.COMMAND_SET_ALIAS.f354a) && a12 != null && a12.size() > 0) {
                            MiPushClient.addAlias(this.f44a, a12.get(0));
                        } else if (TextUtils.equals(b2, fl.COMMAND_UNSET_ALIAS.f354a) && a12 != null && a12.size() > 0) {
                            MiPushClient.removeAlias(this.f44a, a12.get(0));
                        } else if (TextUtils.equals(b2, fl.COMMAND_SET_ACCOUNT.f354a) && a12 != null && a12.size() > 0) {
                            MiPushClient.addAccount(this.f44a, a12.get(0));
                        } else if (TextUtils.equals(b2, fl.COMMAND_UNSET_ACCOUNT.f354a) && a12 != null && a12.size() > 0) {
                            MiPushClient.removeAccount(this.f44a, a12.get(0));
                        } else if (TextUtils.equals(b2, fl.COMMAND_CHK_VDEVID.f354a)) {
                            return null;
                        }
                    }
                    b.e("resp-cmd:" + b2 + ", " + iqVar.a());
                    return PushMessageHelper.generateCommandMessage(b2, a12, iqVar.f635a, iqVar.f643d, iqVar.c());
                case 7:
                    da.a(this.f44a.getPackageName(), this.f44a, a4, hv.Notification, bArr.length);
                    if (!(a4 instanceof im)) {
                        if (a4 instanceof iu) {
                            iu iuVar = (iu) a4;
                            if (!"registration id expired".equalsIgnoreCase(iuVar.f671d)) {
                                if (Cif.ClientInfoUpdateOk.f527a.equalsIgnoreCase(iuVar.f671d)) {
                                    if (iuVar.m446a() != null && iuVar.m446a().containsKey("app_version")) {
                                        b.m36a(this.f44a).m39a(iuVar.m446a().get("app_version"));
                                        break;
                                    }
                                } else if (Cif.AwakeApp.f527a.equalsIgnoreCase(iuVar.f671d)) {
                                    if (irVar.m438b() && iuVar.m446a() != null && iuVar.m446a().containsKey("awake_info")) {
                                        Context context3 = this.f44a;
                                        o.a(context3, b.m36a(context3).m37a(), ax.a(this.f44a).a(ia.AwakeInfoUploadWaySwitch.a(), 0), iuVar.m446a().get("awake_info"));
                                        break;
                                    }
                                } else {
                                    try {
                                        if (Cif.NormalClientConfigUpdate.f527a.equalsIgnoreCase(iuVar.f671d)) {
                                            it itVar = new it();
                                            jf.a(itVar, iuVar.m451a());
                                            ay.a(ax.a(this.f44a), itVar);
                                        } else if (!Cif.CustomClientConfigUpdate.f527a.equalsIgnoreCase(iuVar.f671d)) {
                                            if (!Cif.SyncInfoResult.f527a.equalsIgnoreCase(iuVar.f671d)) {
                                                if (!Cif.ForceSync.f527a.equalsIgnoreCase(iuVar.f671d)) {
                                                    if (Cif.CancelPushMessage.f527a.equals(iuVar.f671d)) {
                                                        b.e("resp-type:" + iuVar.f671d + ", " + iuVar.m445a());
                                                        if (iuVar.m446a() != null) {
                                                            int i4 = -2;
                                                            if (iuVar.m446a().containsKey(bh.N)) {
                                                                String str9 = iuVar.m446a().get(bh.N);
                                                                if (!TextUtils.isEmpty(str9)) {
                                                                    try {
                                                                        i4 = Integer.parseInt(str9);
                                                                    } catch (NumberFormatException e) {
                                                                        e.printStackTrace();
                                                                    }
                                                                }
                                                            }
                                                            if (i4 >= -1) {
                                                                MiPushClient.clearNotification(this.f44a, i4);
                                                            } else {
                                                                MiPushClient.clearNotification(this.f44a, iuVar.m446a().containsKey(bh.L) ? iuVar.m446a().get(bh.L) : "", iuVar.m446a().containsKey(bh.M) ? iuVar.m446a().get(bh.M) : "");
                                                            }
                                                        }
                                                        a(iuVar);
                                                        break;
                                                    } else {
                                                        try {
                                                            if (Cif.HybridRegisterResult.f527a.equals(iuVar.f671d)) {
                                                                iw iwVar2 = new iw();
                                                                jf.a(iwVar2, iuVar.m451a());
                                                                MiPushClient4Hybrid.onReceiveRegisterResult(this.f44a, iwVar2);
                                                            } else if (!Cif.HybridUnregisterResult.f527a.equals(iuVar.f671d)) {
                                                                if (!Cif.PushLogUpload.f527a.equals(iuVar.f671d)) {
                                                                    if (!Cif.DetectAppAlive.f527a.equals(iuVar.f671d)) {
                                                                        if (i.a(iuVar)) {
                                                                            b.b("receive notification handle by cpra");
                                                                            break;
                                                                        }
                                                                    } else {
                                                                        b.b("receive detect msg");
                                                                        b(iuVar);
                                                                        break;
                                                                    }
                                                                }
                                                            } else {
                                                                jc jcVar = new jc();
                                                                jf.a(jcVar, iuVar.m451a());
                                                                MiPushClient4Hybrid.onReceiveUnregisterResult(this.f44a, jcVar);
                                                            }
                                                            break;
                                                        } catch (jl e2) {
                                                            b.a(e2);
                                                            break;
                                                        }
                                                    }
                                                } else {
                                                    b.m1a("receive force sync notification");
                                                    av.a(this.f44a, false);
                                                    break;
                                                }
                                            } else {
                                                av.a(this.f44a, iuVar);
                                                break;
                                            }
                                        } else {
                                            is isVar = new is();
                                            jf.a(isVar, iuVar.m451a());
                                            ay.a(ax.a(this.f44a), isVar);
                                        }
                                        break;
                                    } catch (jl unused) {
                                        break;
                                    }
                                }
                            } else {
                                List<String> allAlias = MiPushClient.getAllAlias(this.f44a);
                                List<String> allTopic = MiPushClient.getAllTopic(this.f44a);
                                List<String> allUserAccount = MiPushClient.getAllUserAccount(this.f44a);
                                String acceptTime = MiPushClient.getAcceptTime(this.f44a);
                                b.e("resp-type:" + iuVar.f671d + ", " + iuVar.m445a());
                                MiPushClient.reInitialize(this.f44a, ij.RegIdExpired);
                                for (String str10 : allAlias) {
                                    MiPushClient.removeAlias(this.f44a, str10);
                                    MiPushClient.setAlias(this.f44a, str10, null);
                                }
                                for (String str11 : allTopic) {
                                    MiPushClient.removeTopic(this.f44a, str11);
                                    MiPushClient.subscribe(this.f44a, str11, null);
                                }
                                for (String str12 : allUserAccount) {
                                    MiPushClient.removeAccount(this.f44a, str12);
                                    MiPushClient.setUserAccount(this.f44a, str12, null);
                                }
                                String[] split = acceptTime.split(Constants.ACCEPT_TIME_SEPARATOR_SP);
                                if (split.length == 2) {
                                    MiPushClient.removeAcceptTime(this.f44a);
                                    MiPushClient.addAcceptTime(this.f44a, split[0], split[1]);
                                    break;
                                }
                            }
                        }
                    } else {
                        im imVar = (im) a4;
                        String a13 = imVar.a();
                        b.e("resp-type:" + imVar.b() + ", code:" + imVar.f605a + ", " + a13);
                        if (Cif.DisablePushMessage.f527a.equalsIgnoreCase(imVar.f612d)) {
                            if (imVar.f605a != 0) {
                                if ("syncing".equals(af.a(this.f44a).a(au.DISABLE_PUSH))) {
                                    synchronized (af.class) {
                                        if (af.a(this.f44a).m19a(a13)) {
                                            if (af.a(this.f44a).a(a13) < 10) {
                                                af.a(this.f44a).b(a13);
                                                ao.a(this.f44a).a(true, a13);
                                            } else {
                                                af.a(this.f44a).c(a13);
                                            }
                                        }
                                    }
                                    break;
                                }
                            } else {
                                synchronized (af.class) {
                                    if (af.a(this.f44a).m19a(a13)) {
                                        af.a(this.f44a).c(a13);
                                        if ("syncing".equals(af.a(this.f44a).a(au.DISABLE_PUSH))) {
                                            af.a(this.f44a).a(au.DISABLE_PUSH, "synced");
                                            MiPushClient.clearNotification(this.f44a);
                                            MiPushClient.clearLocalNotificationType(this.f44a);
                                            PushMessageHandler.a();
                                            ao.a(this.f44a).m31b();
                                        }
                                    }
                                }
                                break;
                            }
                        } else if (Cif.EnablePushMessage.f527a.equalsIgnoreCase(imVar.f612d)) {
                            if (imVar.f605a != 0) {
                                if ("syncing".equals(af.a(this.f44a).a(au.ENABLE_PUSH))) {
                                    synchronized (af.class) {
                                        if (af.a(this.f44a).m19a(a13)) {
                                            if (af.a(this.f44a).a(a13) < 10) {
                                                af.a(this.f44a).b(a13);
                                                ao.a(this.f44a).a(false, a13);
                                            } else {
                                                af.a(this.f44a).c(a13);
                                            }
                                        }
                                    }
                                    break;
                                }
                            } else {
                                synchronized (af.class) {
                                    if (af.a(this.f44a).m19a(a13)) {
                                        af.a(this.f44a).c(a13);
                                        if ("syncing".equals(af.a(this.f44a).a(au.ENABLE_PUSH))) {
                                            af.a(this.f44a).a(au.ENABLE_PUSH, "synced");
                                        }
                                    }
                                }
                                break;
                            }
                        } else if (!Cif.ThirdPartyRegUpdate.f527a.equalsIgnoreCase(imVar.f612d)) {
                            if (Cif.UploadTinyData.f527a.equalsIgnoreCase(imVar.f612d)) {
                                a(imVar);
                                break;
                            }
                        } else {
                            b(imVar);
                            break;
                        }
                        af.a(this.f44a).c(a13);
                        break;
                    }
                    break;
            }
            return null;
        } catch (u e3) {
            b.a(e3);
            a(irVar);
            a2 = en.a(this.f44a);
            packageName = this.f44a.getPackageName();
            a3 = em.m233a(i);
            str2 = Constants.VIA_ACT_TYPE_NINETEEN;
            a2.b(packageName, a3, str, str2);
            s.c(this.f44a, irVar, z);
            return null;
        } catch (jl e4) {
            b.a(e4);
            b.d("receive a message which action string is not valid. is the reg expired?");
            a2 = en.a(this.f44a);
            packageName = this.f44a.getPackageName();
            a3 = em.m233a(i);
            str2 = "20";
            a2.b(packageName, a3, str, str2);
            s.c(this.f44a, irVar, z);
            return null;
        }
    }

    private PushMessageHandler.a a(ir irVar, byte[] bArr) {
        String str;
        jg a2;
        String str2 = null;
        try {
            a2 = ai.a(this.f44a, irVar);
        } catch (u e) {
            b.a(e);
            str = "message arrived: receive a message but decrypt failed. report when click.";
        } catch (jl e2) {
            b.a(e2);
            str = "message arrived: receive a message which action string is not valid. is the reg expired?";
        }
        if (a2 == null) {
            b.d("message arrived: receiving an un-recognized message. " + irVar.f647a);
            return null;
        }
        hv a3 = irVar.a();
        b.m1a("message arrived: processing an arrived message, action=" + a3);
        if (an.f8688a[a3.ordinal()] != 1) {
            return null;
        }
        if (!irVar.m438b()) {
            str = "message arrived: receiving an un-encrypt message(SendMessage).";
        } else {
            iy iyVar = (iy) a2;
            ih a4 = iyVar.a();
            if (a4 == null) {
                str = "message arrived: receive an empty message without push content, drop it";
            } else {
                ii iiVar = irVar.f648a;
                if (!(iiVar == null || iiVar.m397a() == null)) {
                    str2 = irVar.f648a.f562a.get("jobkey");
                }
                MiPushMessage generateMessage = PushMessageHelper.generateMessage(iyVar, irVar.m430a(), false);
                generateMessage.setArrivedMessage(true);
                b.m1a("message arrived: receive a message, msgid=" + a4.m388a() + ", jobkey=" + str2);
                return generateMessage;
            }
        }
        b.d(str);
        return null;
    }

    public static am a(Context context) {
        if (f8687a == null) {
            f8687a = new am(context);
        }
        return f8687a;
    }

    private void a() {
        SharedPreferences sharedPreferences = this.f44a.getSharedPreferences("mipush_extra", 0);
        long currentTimeMillis = System.currentTimeMillis();
        if (Math.abs(currentTimeMillis - sharedPreferences.getLong(Constants.SP_KEY_LAST_REINITIALIZE, 0L)) > 1800000) {
            MiPushClient.reInitialize(this.f44a, ij.PackageUnregistered);
            sharedPreferences.edit().putLong(Constants.SP_KEY_LAST_REINITIALIZE, currentTimeMillis).commit();
        }
    }

    public static void a(Context context, String str) {
        synchronized (f42a) {
            f43a.remove(str);
            b.m36a(context);
            SharedPreferences a2 = b.a(context);
            String a3 = bo.a(f43a, Constants.ACCEPT_TIME_SEPARATOR_SP);
            SharedPreferences.Editor edit = a2.edit();
            edit.putString("pref_msg_ids", a3);
            s.a(edit);
        }
    }

    private void a(im imVar) {
        String a2 = imVar.a();
        b.b("receive ack " + a2);
        Map<String, String> a3 = imVar.m411a();
        if (a3 != null) {
            String str = a3.get("real_source");
            if (!TextUtils.isEmpty(str)) {
                b.b("receive ack : messageId = " + a2 + "  realSource = " + str);
                bw.a(this.f44a).a(a2, str, Boolean.valueOf(imVar.f605a == 0));
            }
        }
    }

    private void a(ir irVar) {
        b.m1a("receive a message but decrypt failed. report now.");
        iu iuVar = new iu(irVar.m430a().f560a, false);
        iuVar.c(Cif.DecryptMessageFail.f527a);
        iuVar.b(irVar.m431a());
        iuVar.d(irVar.f654b);
        HashMap hashMap = new HashMap();
        iuVar.f666a = hashMap;
        hashMap.put("regid", MiPushClient.getRegId(this.f44a));
        ao.a(this.f44a).a((ao) iuVar, hv.Notification, false, (ii) null);
    }

    private void a(iu iuVar) {
        im imVar = new im();
        imVar.c(Cif.CancelPushMessageACK.f527a);
        imVar.a(iuVar.m445a());
        imVar.a(iuVar.a());
        imVar.b(iuVar.b());
        imVar.e(iuVar.c());
        imVar.a(0L);
        imVar.d("success clear push message.");
        ao.a(this.f44a).a(imVar, hv.Notification, false, true, null, false, this.f44a.getPackageName(), b.m36a(this.f44a).m37a(), false);
    }

    private void a(iy iyVar, ir irVar) {
        ii a2 = irVar.m430a();
        if (a2 != null) {
            a2 = com.xiaomi.push.service.bo.a(a2.m395a());
        }
        il ilVar = new il();
        ilVar.b(iyVar.b());
        ilVar.a(iyVar.m467a());
        ilVar.a(iyVar.a().a());
        if (!TextUtils.isEmpty(iyVar.c())) {
            ilVar.c(iyVar.c());
        }
        if (!TextUtils.isEmpty(iyVar.d())) {
            ilVar.d(iyVar.d());
        }
        ilVar.a(jf.a(this.f44a, irVar));
        ao.a(this.f44a).a((ao) ilVar, hv.AckMessage, a2);
    }

    private void a(String str, long j, e eVar) {
        au a2 = l.a(eVar);
        if (a2 != null) {
            if (j == 0) {
                synchronized (af.class) {
                    if (af.a(this.f44a).m19a(str)) {
                        af.a(this.f44a).c(str);
                        if ("syncing".equals(af.a(this.f44a).a(a2))) {
                            af.a(this.f44a).a(a2, "synced");
                        }
                    }
                }
            } else if ("syncing".equals(af.a(this.f44a).a(a2))) {
                synchronized (af.class) {
                    if (af.a(this.f44a).m19a(str)) {
                        if (af.a(this.f44a).a(str) < 10) {
                            af.a(this.f44a).b(str);
                            ao.a(this.f44a).a(str, a2, eVar);
                        } else {
                            af.a(this.f44a).c(str);
                        }
                    }
                }
            } else {
                af.a(this.f44a).c(str);
            }
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    private static boolean m20a(Context context, String str) {
        synchronized (f42a) {
            b.m36a(context);
            SharedPreferences a2 = b.a(context);
            if (f43a == null) {
                String[] split = a2.getString("pref_msg_ids", "").split(Constants.ACCEPT_TIME_SEPARATOR_SP);
                f43a = new LinkedList();
                for (String str2 : split) {
                    f43a.add(str2);
                }
            }
            if (f43a.contains(str)) {
                return true;
            }
            f43a.add(str);
            if (f43a.size() > 25) {
                f43a.poll();
            }
            String a3 = bo.a(f43a, Constants.ACCEPT_TIME_SEPARATOR_SP);
            SharedPreferences.Editor edit = a2.edit();
            edit.putString("pref_msg_ids", a3);
            s.a(edit);
            return false;
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    private boolean m21a(ir irVar) {
        Map<String, String> a2 = irVar.m430a() == null ? null : irVar.m430a().m397a();
        if (a2 == null) {
            return false;
        }
        String str = a2.get(Constants.EXTRA_KEY_PUSH_SERVER_ACTION);
        return TextUtils.equals(str, Constants.EXTRA_VALUE_HYBRID_MESSAGE) || TextUtils.equals(str, Constants.EXTRA_VALUE_PLATFORM_MESSAGE);
    }

    private void b(im imVar) {
        long j;
        e eVar;
        b.c("ASSEMBLE_PUSH : " + imVar.toString());
        String a2 = imVar.a();
        Map<String, String> a3 = imVar.m411a();
        if (a3 != null) {
            String str = a3.get(Constants.ASSEMBLE_PUSH_REG_INFO);
            if (!TextUtils.isEmpty(str)) {
                if (str.contains("brand:" + ag.FCM.name())) {
                    b.m1a("ASSEMBLE_PUSH : receive fcm token sync ack");
                    i.b(this.f44a, e.ASSEMBLE_PUSH_FCM, str);
                    j = imVar.f605a;
                    eVar = e.ASSEMBLE_PUSH_FCM;
                } else {
                    if (str.contains("brand:" + ag.HUAWEI.name())) {
                        b.m1a("ASSEMBLE_PUSH : receive hw token sync ack");
                        i.b(this.f44a, e.ASSEMBLE_PUSH_HUAWEI, str);
                        j = imVar.f605a;
                        eVar = e.ASSEMBLE_PUSH_HUAWEI;
                    } else {
                        if (str.contains("brand:" + ag.OPPO.name())) {
                            b.m1a("ASSEMBLE_PUSH : receive COS token sync ack");
                            i.b(this.f44a, e.ASSEMBLE_PUSH_COS, str);
                            j = imVar.f605a;
                            eVar = e.ASSEMBLE_PUSH_COS;
                        } else {
                            if (str.contains("brand:" + ag.VIVO.name())) {
                                b.m1a("ASSEMBLE_PUSH : receive FTOS token sync ack");
                                i.b(this.f44a, e.ASSEMBLE_PUSH_FTOS, str);
                                j = imVar.f605a;
                                eVar = e.ASSEMBLE_PUSH_FTOS;
                            } else {
                                return;
                            }
                        }
                    }
                }
                a(a2, j, eVar);
            }
        }
    }

    private void b(ir irVar) {
        ii a2 = irVar.m430a();
        if (a2 != null) {
            a2 = com.xiaomi.push.service.bo.a(a2.m395a());
        }
        il ilVar = new il();
        ilVar.b(irVar.m431a());
        ilVar.a(a2.m396a());
        ilVar.a(a2.m394a());
        if (!TextUtils.isEmpty(a2.m401b())) {
            ilVar.c(a2.m401b());
        }
        ilVar.a(jf.a(this.f44a, irVar));
        ao.a(this.f44a).a((ao) ilVar, hv.AckMessage, false, a2);
    }

    private void b(iu iuVar) {
        String str;
        Map<String, String> a2 = iuVar.m446a();
        if (a2 == null) {
            str = "detect failed because null";
        } else {
            String str2 = (String) av.a(a2, "pkgList", (Object) null);
            if (TextUtils.isEmpty(str2)) {
                str = "detect failed because empty";
            } else {
                try {
                    List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) this.f44a.getSystemService("activity")).getRunningAppProcesses();
                    if (!v.a(runningAppProcesses)) {
                        String[] split = str2.split(Constants.ACCEPT_TIME_SEPARATOR_SP);
                        HashMap hashMap = new HashMap();
                        for (String str3 : split) {
                            String[] split2 = str3.split(Constants.WAVE_SEPARATOR);
                            if (split2.length >= 2) {
                                hashMap.put(split2[1], split2[0]);
                            }
                        }
                        v.a aVar = new v.a(Constants.WAVE_SEPARATOR, Constants.ACCEPT_TIME_SEPARATOR_SP);
                        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                            if (hashMap.containsKey(runningAppProcessInfo.processName)) {
                                aVar.a((String) hashMap.get(runningAppProcessInfo.processName), String.valueOf(runningAppProcessInfo.importance));
                                hashMap.remove(runningAppProcessInfo.processName);
                            }
                        }
                        if (aVar.toString().length() > 0) {
                            iu iuVar2 = new iu();
                            iuVar2.a(iuVar.m445a());
                            iuVar2.b(iuVar.b());
                            iuVar2.d(iuVar.c());
                            iuVar2.c(Cif.DetectAppAliveResult.f527a);
                            HashMap hashMap2 = new HashMap();
                            iuVar2.f666a = hashMap2;
                            hashMap2.put("alive", aVar.toString());
                            if (Boolean.parseBoolean((String) av.a(a2, "reportNotAliveApp", "false")) && hashMap.size() > 0) {
                                v.a aVar2 = new v.a("", Constants.ACCEPT_TIME_SEPARATOR_SP);
                                for (String str4 : hashMap.keySet()) {
                                    aVar2.a((String) hashMap.get(str4), "");
                                }
                                iuVar2.f666a.put("notAlive", aVar2.toString());
                            }
                            ao.a(this.f44a).a((ao) iuVar2, hv.Notification, false, (ii) null);
                            return;
                        }
                        b.b("detect failed because no alive process");
                        return;
                    }
                    b.m1a("detect failed because params illegal");
                    return;
                } catch (Throwable th) {
                    b.m1a("detect failed " + th);
                    return;
                }
            }
        }
        b.m1a(str);
    }

    public PushMessageHandler.a a(Intent intent) {
        String str;
        String str2;
        String str3;
        en enVar;
        Throwable e;
        en a2;
        String packageName;
        String format;
        String action = intent.getAction();
        b.m1a("receive an intent from server, action=" + action);
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
                b.d("receiving an empty message, drop");
                en.a(this.f44a).a(this.f44a.getPackageName(), intent, Constants.VIA_REPORT_TYPE_SET_AVATAR);
                return null;
            }
            ir irVar = new ir();
            try {
                jf.a(irVar, byteArrayExtra);
                b a3 = b.m36a(this.f44a);
                ii a4 = irVar.m430a();
                if (irVar.a() == hv.SendMessage && a4 != null && !a3.m47e() && !booleanExtra) {
                    a4.a("mrt", stringExtra);
                    a4.a("mat", Long.toString(System.currentTimeMillis()));
                    if (!m21a(irVar)) {
                        b(irVar);
                    } else {
                        b.b("this is a mina's message, ack later");
                        a4.a(Constants.EXTRA_KEY_HYBRID_MESSAGE_TS, String.valueOf(a4.m394a()));
                        a4.a(Constants.EXTRA_KEY_HYBRID_DEVICE_STATUS, String.valueOf((int) jf.a(this.f44a, irVar)));
                    }
                }
                String str4 = "";
                if (irVar.a() != hv.SendMessage || irVar.m438b()) {
                    if (irVar.a() == hv.SendMessage && irVar.m438b() && aj.m584a(irVar) && (!booleanExtra || a4 == null || a4.m397a() == null || !a4.m397a().containsKey("notify_effect"))) {
                        Object[] objArr = new Object[2];
                        objArr[0] = irVar.b();
                        if (a4 != null) {
                            str4 = a4.m396a();
                        }
                        objArr[1] = str4;
                        b.m1a(String.format("drop a wake-up messages which not has 'notify_effect' attr. %1$s, %2$s", objArr));
                        en.a(this.f44a).a(this.f44a.getPackageName(), intent, String.format("25: %1$s", irVar.b()));
                        s.b(this.f44a, irVar, booleanExtra);
                        return null;
                    }
                    if (a3.m45c() || irVar.f647a == hv.Registration) {
                        if (!a3.m45c() || !a3.m48f()) {
                            return a(irVar, booleanExtra, byteArrayExtra, stringExtra2, intExtra, intent);
                        }
                        if (irVar.f647a != hv.UnRegistration) {
                            s.e(this.f44a, irVar, booleanExtra);
                            MiPushClient.unregisterPush(this.f44a);
                        } else if (irVar.m438b()) {
                            a3.m38a();
                            MiPushClient.clearExtras(this.f44a);
                            PushMessageHandler.a();
                        } else {
                            b.d("receiving an un-encrypt unregistration message");
                        }
                    } else if (aj.m584a(irVar)) {
                        return a(irVar, booleanExtra, byteArrayExtra, stringExtra2, intExtra, intent);
                    } else {
                        s.e(this.f44a, irVar, booleanExtra);
                        boolean d = a3.m46d();
                        b.d("receive message without registration. need re-register!registered?" + d);
                        en.a(this.f44a).a(this.f44a.getPackageName(), intent, Constants.VIA_REPORT_TYPE_WPA_STATE);
                        if (d) {
                            a();
                        }
                    }
                } else {
                    if (aj.m584a(irVar)) {
                        Object[] objArr2 = new Object[2];
                        objArr2[0] = irVar.b();
                        if (a4 != null) {
                            str4 = a4.m396a();
                        }
                        objArr2[1] = str4;
                        b.m1a(String.format("drop an un-encrypted wake-up messages. %1$s, %2$s", objArr2));
                        a2 = en.a(this.f44a);
                        packageName = this.f44a.getPackageName();
                        format = String.format("13: %1$s", irVar.b());
                    } else {
                        Object[] objArr3 = new Object[2];
                        objArr3[0] = irVar.b();
                        if (a4 != null) {
                            str4 = a4.m396a();
                        }
                        objArr3[1] = str4;
                        b.m1a(String.format("drop an un-encrypted messages. %1$s, %2$s", objArr3));
                        a2 = en.a(this.f44a);
                        packageName = this.f44a.getPackageName();
                        format = String.format("14: %1$s", irVar.b());
                    }
                    a2.a(packageName, intent, format);
                    s.a(this.f44a, irVar, booleanExtra);
                    return null;
                }
            } catch (jl e2) {
                e = e2;
                enVar = en.a(this.f44a);
                str3 = this.f44a.getPackageName();
                str2 = Constants.VIA_REPORT_TYPE_START_WAP;
                enVar.a(str3, intent, str2);
                b.a(e);
                return null;
            } catch (Exception e3) {
                e = e3;
                enVar = en.a(this.f44a);
                str3 = this.f44a.getPackageName();
                str2 = Constants.VIA_REPORT_TYPE_START_GROUP;
                enVar.a(str3, intent, str2);
                b.a(e);
                return null;
            }
        } else if ("com.xiaomi.mipush.ERROR".equals(action)) {
            MiPushCommandMessage miPushCommandMessage = new MiPushCommandMessage();
            ir irVar2 = new ir();
            try {
                byte[] byteArrayExtra2 = intent.getByteArrayExtra("mipush_payload");
                if (byteArrayExtra2 != null) {
                    jf.a(irVar2, byteArrayExtra2);
                }
            } catch (jl unused) {
            }
            miPushCommandMessage.setCommand(String.valueOf(irVar2.a()));
            miPushCommandMessage.setResultCode(intent.getIntExtra("mipush_error_code", 0));
            miPushCommandMessage.setReason(intent.getStringExtra("mipush_error_msg"));
            b.d("receive a error message. code = " + intent.getIntExtra("mipush_error_code", 0) + ", msg= " + intent.getStringExtra("mipush_error_msg"));
            return miPushCommandMessage;
        } else if ("com.xiaomi.mipush.MESSAGE_ARRIVED".equals(action)) {
            byte[] byteArrayExtra3 = intent.getByteArrayExtra("mipush_payload");
            if (byteArrayExtra3 == null) {
                b.d("message arrived: receiving an empty message, drop");
                return null;
            }
            ir irVar3 = new ir();
            try {
                jf.a(irVar3, byteArrayExtra3);
                b a5 = b.m36a(this.f44a);
                if (aj.m584a(irVar3)) {
                    str = "message arrived: receive ignore reg message, ignore!";
                } else if (!a5.m45c()) {
                    str = "message arrived: receive message without registration. need unregister or re-register!";
                } else if (!a5.m45c() || !a5.m48f()) {
                    return a(irVar3, byteArrayExtra3);
                } else {
                    str = "message arrived: app info is invalidated";
                }
                b.d(str);
            } catch (Exception e4) {
                b.d("fail to deal with arrived message. " + e4);
            }
        }
        return null;
    }

    public List<String> a(TimeZone timeZone, TimeZone timeZone2, List<String> list) {
        if (timeZone.equals(timeZone2)) {
            return list;
        }
        long rawOffset = ((timeZone.getRawOffset() - timeZone2.getRawOffset()) / 1000) / 60;
        long parseLong = ((((Long.parseLong(list.get(0).split(Constants.COLON_SEPARATOR)[0]) * 60) + Long.parseLong(list.get(0).split(Constants.COLON_SEPARATOR)[1])) - rawOffset) + 1440) % 1440;
        long parseLong2 = ((((Long.parseLong(list.get(1).split(Constants.COLON_SEPARATOR)[0]) * 60) + Long.parseLong(list.get(1).split(Constants.COLON_SEPARATOR)[1])) - rawOffset) + 1440) % 1440;
        ArrayList arrayList = new ArrayList();
        arrayList.add(String.format("%1$02d:%2$02d", Long.valueOf(parseLong / 60), Long.valueOf(parseLong % 60)));
        arrayList.add(String.format("%1$02d:%2$02d", Long.valueOf(parseLong2 / 60), Long.valueOf(parseLong2 % 60)));
        return arrayList;
    }
}
