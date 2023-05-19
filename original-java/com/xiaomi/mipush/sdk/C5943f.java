package com.xiaomi.mipush.sdk;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.EnumC6243ia;
import com.xiaomi.push.service.C6372ax;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.xiaomi.mipush.sdk.f */
/* loaded from: classes2.dex */
public class C5943f implements AbstractPushManager {

    /* renamed from: a */
    private static volatile C5943f f20952a;

    /* renamed from: a */
    private Context f20953a;

    /* renamed from: a */
    private PushConfiguration f20954a;

    /* renamed from: a */
    private boolean f20956a = false;

    /* renamed from: a */
    private Map<EnumC5942e, AbstractPushManager> f20955a = new HashMap();

    private C5943f(Context context) {
        this.f20953a = context.getApplicationContext();
    }

    /* renamed from: a */
    public static C5943f m3885a(Context context) {
        if (f20952a == null) {
            synchronized (C5943f.class) {
                if (f20952a == null) {
                    f20952a = new C5943f(context);
                }
            }
        }
        return f20952a;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x018b  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01af  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:70:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void m3886a() {
        AbstractPushManager m3883a;
        EnumC5942e enumC5942e;
        AbstractPushManager m3883a2;
        EnumC5942e enumC5942e2;
        AbstractPushManager m3883a3;
        EnumC5942e enumC5942e3;
        AbstractPushManager m3883a4;
        PushConfiguration pushConfiguration = this.f20954a;
        if (pushConfiguration == null) {
            return;
        }
        if (pushConfiguration.getOpenHmsPush()) {
            StringBuilder sb = new StringBuilder();
            sb.append("ASSEMBLE_PUSH : ");
            sb.append(" HW user switch : " + this.f20954a.getOpenHmsPush() + " HW online switch : " + C5946i.m3868a(this.f20953a, EnumC5942e.ASSEMBLE_PUSH_HUAWEI) + " HW isSupport : " + EnumC5920ag.HUAWEI.equals(C5952n.m3844a(this.f20953a)));
            AbstractC5876b.m4147a(sb.toString());
        }
        if (this.f20954a.getOpenHmsPush()) {
            Context context = this.f20953a;
            EnumC5942e enumC5942e4 = EnumC5942e.ASSEMBLE_PUSH_HUAWEI;
            if (C5946i.m3868a(context, enumC5942e4) && EnumC5920ag.HUAWEI.equals(C5952n.m3844a(this.f20953a))) {
                if (!m3881a(enumC5942e4)) {
                    m3880a(enumC5942e4, C5924ak.m4013a(this.f20953a, enumC5942e4));
                }
                AbstractC5876b.m4139c("hw manager add to list");
                if (this.f20954a.getOpenFCMPush()) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("ASSEMBLE_PUSH : ");
                    sb2.append(" FCM user switch : " + this.f20954a.getOpenFCMPush() + " FCM online switch : " + C5946i.m3868a(this.f20953a, EnumC5942e.ASSEMBLE_PUSH_FCM) + " FCM isSupport : " + C5952n.m3843a(this.f20953a));
                    AbstractC5876b.m4147a(sb2.toString());
                }
                if (this.f20954a.getOpenFCMPush()) {
                    Context context2 = this.f20953a;
                    EnumC5942e enumC5942e5 = EnumC5942e.ASSEMBLE_PUSH_FCM;
                    if (C5946i.m3868a(context2, enumC5942e5) && C5952n.m3843a(this.f20953a)) {
                        if (!m3881a(enumC5942e5)) {
                            m3880a(enumC5942e5, C5924ak.m4013a(this.f20953a, enumC5942e5));
                        }
                        AbstractC5876b.m4139c("fcm manager add to list");
                        if (this.f20954a.getOpenCOSPush()) {
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append("ASSEMBLE_PUSH : ");
                            sb3.append(" COS user switch : " + this.f20954a.getOpenCOSPush() + " COS online switch : " + C5946i.m3868a(this.f20953a, EnumC5942e.ASSEMBLE_PUSH_COS) + " COS isSupport : " + C5952n.m3842b(this.f20953a));
                            AbstractC5876b.m4147a(sb3.toString());
                        }
                        if (this.f20954a.getOpenCOSPush()) {
                            Context context3 = this.f20953a;
                            EnumC5942e enumC5942e6 = EnumC5942e.ASSEMBLE_PUSH_COS;
                            if (C5946i.m3868a(context3, enumC5942e6) && C5952n.m3842b(this.f20953a)) {
                                m3880a(enumC5942e6, C5924ak.m4013a(this.f20953a, enumC5942e6));
                                if (this.f20954a.getOpenFTOSPush()) {
                                    Context context4 = this.f20953a;
                                    EnumC5942e enumC5942e7 = EnumC5942e.ASSEMBLE_PUSH_FTOS;
                                    if (C5946i.m3868a(context4, enumC5942e7) && C5952n.m3841c(this.f20953a)) {
                                        m3880a(enumC5942e7, C5924ak.m4013a(this.f20953a, enumC5942e7));
                                        return;
                                    }
                                }
                                enumC5942e3 = EnumC5942e.ASSEMBLE_PUSH_FTOS;
                                if (m3881a(enumC5942e3) || (m3883a4 = m3883a(enumC5942e3)) == null) {
                                    return;
                                }
                                m3882a(enumC5942e3);
                                m3883a4.unregister();
                                return;
                            }
                        }
                        enumC5942e2 = EnumC5942e.ASSEMBLE_PUSH_COS;
                        if (m3881a(enumC5942e2) && (m3883a3 = m3883a(enumC5942e2)) != null) {
                            m3882a(enumC5942e2);
                            m3883a3.unregister();
                        }
                        if (this.f20954a.getOpenFTOSPush()) {
                        }
                        enumC5942e3 = EnumC5942e.ASSEMBLE_PUSH_FTOS;
                        if (m3881a(enumC5942e3)) {
                            return;
                        }
                        return;
                    }
                }
                enumC5942e = EnumC5942e.ASSEMBLE_PUSH_FCM;
                if (m3881a(enumC5942e) && (m3883a2 = m3883a(enumC5942e)) != null) {
                    m3882a(enumC5942e);
                    m3883a2.unregister();
                }
                if (this.f20954a.getOpenCOSPush()) {
                }
                if (this.f20954a.getOpenCOSPush()) {
                }
                enumC5942e2 = EnumC5942e.ASSEMBLE_PUSH_COS;
                if (m3881a(enumC5942e2)) {
                    m3882a(enumC5942e2);
                    m3883a3.unregister();
                }
                if (this.f20954a.getOpenFTOSPush()) {
                }
                enumC5942e3 = EnumC5942e.ASSEMBLE_PUSH_FTOS;
                if (m3881a(enumC5942e3)) {
                }
            }
        }
        EnumC5942e enumC5942e8 = EnumC5942e.ASSEMBLE_PUSH_HUAWEI;
        if (m3881a(enumC5942e8) && (m3883a = m3883a(enumC5942e8)) != null) {
            m3882a(enumC5942e8);
            m3883a.unregister();
        }
        if (this.f20954a.getOpenFCMPush()) {
        }
        if (this.f20954a.getOpenFCMPush()) {
        }
        enumC5942e = EnumC5942e.ASSEMBLE_PUSH_FCM;
        if (m3881a(enumC5942e)) {
            m3882a(enumC5942e);
            m3883a2.unregister();
        }
        if (this.f20954a.getOpenCOSPush()) {
        }
        if (this.f20954a.getOpenCOSPush()) {
        }
        enumC5942e2 = EnumC5942e.ASSEMBLE_PUSH_COS;
        if (m3881a(enumC5942e2)) {
        }
        if (this.f20954a.getOpenFTOSPush()) {
        }
        enumC5942e3 = EnumC5942e.ASSEMBLE_PUSH_FTOS;
        if (m3881a(enumC5942e3)) {
        }
    }

    /* renamed from: a */
    public AbstractPushManager m3883a(EnumC5942e enumC5942e) {
        return this.f20955a.get(enumC5942e);
    }

    /* renamed from: a */
    public void m3884a(PushConfiguration pushConfiguration) {
        this.f20954a = pushConfiguration;
        this.f20956a = C6372ax.m1530a(this.f20953a).m1531a(EnumC6243ia.AggregatePushSwitch.m2484a(), true);
        if (this.f20954a.getOpenHmsPush() || this.f20954a.getOpenFCMPush() || this.f20954a.getOpenCOSPush() || this.f20954a.getOpenFTOSPush()) {
            C6372ax.m1530a(this.f20953a).m1526a(new C5944g(this, 101, "assemblePush"));
        }
    }

    /* renamed from: a */
    public void m3882a(EnumC5942e enumC5942e) {
        this.f20955a.remove(enumC5942e);
    }

    /* renamed from: a */
    public void m3880a(EnumC5942e enumC5942e, AbstractPushManager abstractPushManager) {
        if (abstractPushManager != null) {
            if (this.f20955a.containsKey(enumC5942e)) {
                this.f20955a.remove(enumC5942e);
            }
            this.f20955a.put(enumC5942e, abstractPushManager);
        }
    }

    /* renamed from: a */
    public boolean m3881a(EnumC5942e enumC5942e) {
        return this.f20955a.containsKey(enumC5942e);
    }

    /* renamed from: b */
    public boolean m3876b(EnumC5942e enumC5942e) {
        int i = C5945h.f20958a[enumC5942e.ordinal()];
        boolean z = false;
        if (i == 1) {
            PushConfiguration pushConfiguration = this.f20954a;
            if (pushConfiguration != null) {
                return pushConfiguration.getOpenHmsPush();
            }
            return false;
        } else if (i == 2) {
            PushConfiguration pushConfiguration2 = this.f20954a;
            if (pushConfiguration2 != null) {
                return pushConfiguration2.getOpenFCMPush();
            }
            return false;
        } else {
            if (i == 3) {
                PushConfiguration pushConfiguration3 = this.f20954a;
                if (pushConfiguration3 != null) {
                    z = pushConfiguration3.getOpenCOSPush();
                }
            } else if (i != 4) {
                return false;
            }
            PushConfiguration pushConfiguration4 = this.f20954a;
            return pushConfiguration4 != null ? pushConfiguration4.getOpenFTOSPush() : z;
        }
    }

    @Override // com.xiaomi.mipush.sdk.AbstractPushManager
    public void register() {
        AbstractC5876b.m4147a("ASSEMBLE_PUSH : assemble push register");
        if (this.f20955a.size() <= 0) {
            m3886a();
        }
        if (this.f20955a.size() > 0) {
            for (AbstractPushManager abstractPushManager : this.f20955a.values()) {
                if (abstractPushManager != null) {
                    abstractPushManager.register();
                }
            }
            C5946i.m3873a(this.f20953a);
        }
    }

    @Override // com.xiaomi.mipush.sdk.AbstractPushManager
    public void unregister() {
        AbstractC5876b.m4147a("ASSEMBLE_PUSH : assemble push unregister");
        for (AbstractPushManager abstractPushManager : this.f20955a.values()) {
            if (abstractPushManager != null) {
                abstractPushManager.unregister();
            }
        }
        this.f20955a.clear();
    }
}
