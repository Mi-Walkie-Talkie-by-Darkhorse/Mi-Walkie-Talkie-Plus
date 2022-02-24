package com.xiaomi.mipush.sdk;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.ia;
import com.xiaomi.push.service.ax;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class f implements AbstractPushManager {

    /* renamed from: a  reason: collision with root package name */
    private static volatile f f8709a;

    /* renamed from: a  reason: collision with other field name */
    private Context f68a;

    /* renamed from: a  reason: collision with other field name */
    private PushConfiguration f69a;

    /* renamed from: a  reason: collision with other field name */
    private boolean f71a = false;

    /* renamed from: a  reason: collision with other field name */
    private Map<e, AbstractPushManager> f70a = new HashMap();

    private f(Context context) {
        this.f68a = context.getApplicationContext();
    }

    public static f a(Context context) {
        if (f8709a == null) {
            synchronized (f.class) {
                if (f8709a == null) {
                    f8709a = new f(context);
                }
            }
        }
        return f8709a;
    }

    private void a() {
        AbstractPushManager a2;
        AbstractPushManager a3;
        AbstractPushManager a4;
        AbstractPushManager a5;
        PushConfiguration pushConfiguration = this.f69a;
        if (pushConfiguration != null) {
            if (pushConfiguration.getOpenHmsPush()) {
                StringBuilder sb = new StringBuilder();
                sb.append("ASSEMBLE_PUSH : ");
                sb.append(" HW user switch : " + this.f69a.getOpenHmsPush() + " HW online switch : " + i.m59a(this.f68a, e.ASSEMBLE_PUSH_HUAWEI) + " HW isSupport : " + ag.HUAWEI.equals(n.a(this.f68a)));
                b.m1a(sb.toString());
            }
            if (this.f69a.getOpenHmsPush() && i.m59a(this.f68a, e.ASSEMBLE_PUSH_HUAWEI) && ag.HUAWEI.equals(n.a(this.f68a))) {
                if (!m53a(e.ASSEMBLE_PUSH_HUAWEI)) {
                    e eVar = e.ASSEMBLE_PUSH_HUAWEI;
                    a(eVar, ak.a(this.f68a, eVar));
                }
                b.c("hw manager add to list");
            } else if (m53a(e.ASSEMBLE_PUSH_HUAWEI) && (a5 = a(e.ASSEMBLE_PUSH_HUAWEI)) != null) {
                m52a(e.ASSEMBLE_PUSH_HUAWEI);
                a5.unregister();
            }
            if (this.f69a.getOpenFCMPush()) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("ASSEMBLE_PUSH : ");
                sb2.append(" FCM user switch : " + this.f69a.getOpenFCMPush() + " FCM online switch : " + i.m59a(this.f68a, e.ASSEMBLE_PUSH_FCM) + " FCM isSupport : " + n.m63a(this.f68a));
                b.m1a(sb2.toString());
            }
            if (this.f69a.getOpenFCMPush() && i.m59a(this.f68a, e.ASSEMBLE_PUSH_FCM) && n.m63a(this.f68a)) {
                if (!m53a(e.ASSEMBLE_PUSH_FCM)) {
                    e eVar2 = e.ASSEMBLE_PUSH_FCM;
                    a(eVar2, ak.a(this.f68a, eVar2));
                }
                b.c("fcm manager add to list");
            } else if (m53a(e.ASSEMBLE_PUSH_FCM) && (a4 = a(e.ASSEMBLE_PUSH_FCM)) != null) {
                m52a(e.ASSEMBLE_PUSH_FCM);
                a4.unregister();
            }
            if (this.f69a.getOpenCOSPush()) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("ASSEMBLE_PUSH : ");
                sb3.append(" COS user switch : " + this.f69a.getOpenCOSPush() + " COS online switch : " + i.m59a(this.f68a, e.ASSEMBLE_PUSH_COS) + " COS isSupport : " + n.b(this.f68a));
                b.m1a(sb3.toString());
            }
            if (this.f69a.getOpenCOSPush() && i.m59a(this.f68a, e.ASSEMBLE_PUSH_COS) && n.b(this.f68a)) {
                e eVar3 = e.ASSEMBLE_PUSH_COS;
                a(eVar3, ak.a(this.f68a, eVar3));
            } else if (m53a(e.ASSEMBLE_PUSH_COS) && (a3 = a(e.ASSEMBLE_PUSH_COS)) != null) {
                m52a(e.ASSEMBLE_PUSH_COS);
                a3.unregister();
            }
            if (this.f69a.getOpenFTOSPush() && i.m59a(this.f68a, e.ASSEMBLE_PUSH_FTOS) && n.c(this.f68a)) {
                e eVar4 = e.ASSEMBLE_PUSH_FTOS;
                a(eVar4, ak.a(this.f68a, eVar4));
            } else if (m53a(e.ASSEMBLE_PUSH_FTOS) && (a2 = a(e.ASSEMBLE_PUSH_FTOS)) != null) {
                m52a(e.ASSEMBLE_PUSH_FTOS);
                a2.unregister();
            }
        }
    }

    public AbstractPushManager a(e eVar) {
        return this.f70a.get(eVar);
    }

    public void a(PushConfiguration pushConfiguration) {
        this.f69a = pushConfiguration;
        this.f71a = ax.a(this.f68a).a(ia.AggregatePushSwitch.a(), true);
        if (this.f69a.getOpenHmsPush() || this.f69a.getOpenFCMPush() || this.f69a.getOpenCOSPush() || this.f69a.getOpenFTOSPush()) {
            ax.a(this.f68a).a(new g(this, 101, "assemblePush"));
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m52a(e eVar) {
        this.f70a.remove(eVar);
    }

    public void a(e eVar, AbstractPushManager abstractPushManager) {
        if (abstractPushManager != null) {
            if (this.f70a.containsKey(eVar)) {
                this.f70a.remove(eVar);
            }
            this.f70a.put(eVar, abstractPushManager);
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m53a(e eVar) {
        return this.f70a.containsKey(eVar);
    }

    public boolean b(e eVar) {
        int i = h.f8711a[eVar.ordinal()];
        boolean z = false;
        if (i == 1) {
            PushConfiguration pushConfiguration = this.f69a;
            if (pushConfiguration != null) {
                return pushConfiguration.getOpenHmsPush();
            }
            return false;
        } else if (i != 2) {
            if (i == 3) {
                PushConfiguration pushConfiguration2 = this.f69a;
                if (pushConfiguration2 != null) {
                    z = pushConfiguration2.getOpenCOSPush();
                }
            } else if (i != 4) {
                return false;
            }
            PushConfiguration pushConfiguration3 = this.f69a;
            return pushConfiguration3 != null ? pushConfiguration3.getOpenFTOSPush() : z;
        } else {
            PushConfiguration pushConfiguration4 = this.f69a;
            if (pushConfiguration4 != null) {
                return pushConfiguration4.getOpenFCMPush();
            }
            return false;
        }
    }

    @Override // com.xiaomi.mipush.sdk.AbstractPushManager
    public void register() {
        b.m1a("ASSEMBLE_PUSH : assemble push register");
        if (this.f70a.size() <= 0) {
            a();
        }
        if (this.f70a.size() > 0) {
            for (AbstractPushManager abstractPushManager : this.f70a.values()) {
                if (abstractPushManager != null) {
                    abstractPushManager.register();
                }
            }
            i.m55a(this.f68a);
        }
    }

    @Override // com.xiaomi.mipush.sdk.AbstractPushManager
    public void unregister() {
        b.m1a("ASSEMBLE_PUSH : assemble push unregister");
        for (AbstractPushManager abstractPushManager : this.f70a.values()) {
            if (abstractPushManager != null) {
                abstractPushManager.unregister();
            }
        }
        this.f70a.clear();
    }
}
