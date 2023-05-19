package com.ifengyu.intercom;

import com.ifengyu.library.utils.C4974p;
import com.ifengyu.library.utils.C4975r;

/* renamed from: com.ifengyu.intercom.f */
/* loaded from: classes2.dex */
public class AppData {

    /* renamed from: a */
    private String f13698a;

    /* renamed from: b */
    private String f13699b;

    /* renamed from: c */
    private boolean f13700c;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AppData.java */
    /* renamed from: com.ifengyu.intercom.f$a */
    /* loaded from: classes2.dex */
    public static final class C3849a {

        /* renamed from: a */
        private static final AppData f13701a = new AppData();
    }

    /* renamed from: b */
    public static AppData m12436b() {
        return C3849a.f13701a;
    }

    /* renamed from: a */
    public String m12437a() {
        return this.f13699b;
    }

    /* renamed from: c */
    public String m12435c() {
        return this.f13698a;
    }

    /* renamed from: d */
    public void m12434d() {
        C4974p m8629c = C4974p.m8629c("app_config_preferences");
        String m8628d = m8629c.m8628d("key_poc_host");
        String m8628d2 = m8629c.m8628d("key_audio_host");
        if (!C4975r.m8621a(m8628d) && !C4975r.m8621a(m8628d2)) {
            this.f13698a = m8628d;
            this.f13699b = m8628d2;
        } else {
            this.f13698a = "https://api-mipoc.ifengyu.com:8088";
            this.f13699b = "redirector.ifengyu.com:9099";
        }
        this.f13700c = m8629c.m8630b("key_is_support_m303", false);
    }

    /* renamed from: e */
    public boolean m12433e() {
        return this.f13700c;
    }

    /* renamed from: f */
    public void m12432f(String str) {
        if (C4975r.m8621a(str)) {
            return;
        }
        C4974p.m8629c("app_config_preferences").m8625g("key_audio_host", str);
    }

    /* renamed from: g */
    public void m12431g(String str) {
        if (C4975r.m8621a(str)) {
            return;
        }
        C4974p.m8629c("app_config_preferences").m8625g("key_poc_host", str);
    }

    /* renamed from: h */
    public void m12430h(boolean z) {
        C4974p.m8629c("app_config_preferences").m8624h("key_is_support_m303", z);
    }
}
