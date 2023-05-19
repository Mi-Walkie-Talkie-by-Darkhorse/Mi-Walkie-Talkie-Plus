package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C6175g;
import com.xiaomi.push.C6242i;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* renamed from: com.xiaomi.mipush.sdk.b */
/* loaded from: classes2.dex */
public class C5938b {

    /* renamed from: a */
    private static volatile C5938b f20929a;

    /* renamed from: a */
    private Context f20930a;

    /* renamed from: a */
    private C5939a f20931a;

    /* renamed from: a */
    String f20932a;

    /* renamed from: a */
    private Map<String, C5939a> f20933a;

    /* renamed from: com.xiaomi.mipush.sdk.b$a */
    /* loaded from: classes2.dex */
    public static class C5939a {

        /* renamed from: a */
        private Context f20935a;

        /* renamed from: a */
        public String f20936a;

        /* renamed from: b */
        public String f20938b;

        /* renamed from: c */
        public String f20940c;

        /* renamed from: d */
        public String f20941d;

        /* renamed from: e */
        public String f20942e;

        /* renamed from: f */
        public String f20943f;

        /* renamed from: g */
        public String f20944g;

        /* renamed from: h */
        public String f20945h;

        /* renamed from: a */
        public boolean f20937a = true;

        /* renamed from: b */
        public boolean f20939b = false;

        /* renamed from: a */
        public int f20934a = 1;

        public C5939a(Context context) {
            this.f20935a = context;
        }

        /* renamed from: a */
        public static C5939a m3897a(Context context, String str) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                C5939a c5939a = new C5939a(context);
                c5939a.f20936a = jSONObject.getString("appId");
                c5939a.f20938b = jSONObject.getString("appToken");
                c5939a.f20940c = jSONObject.getString("regId");
                c5939a.f20941d = jSONObject.getString("regSec");
                c5939a.f20943f = jSONObject.getString("devId");
                c5939a.f20942e = jSONObject.getString("vName");
                c5939a.f20937a = jSONObject.getBoolean("valid");
                c5939a.f20939b = jSONObject.getBoolean("paused");
                c5939a.f20934a = jSONObject.getInt("envType");
                c5939a.f20944g = jSONObject.getString("regResource");
                return c5939a;
            } catch (Throwable th) {
                AbstractC5876b.m4143a(th);
                return null;
            }
        }

        /* renamed from: a */
        private String m3901a() {
            Context context = this.f20935a;
            return C6175g.m2811a(context, context.getPackageName());
        }

        /* renamed from: a */
        public static String m3896a(C5939a c5939a) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("appId", c5939a.f20936a);
                jSONObject.put("appToken", c5939a.f20938b);
                jSONObject.put("regId", c5939a.f20940c);
                jSONObject.put("regSec", c5939a.f20941d);
                jSONObject.put("devId", c5939a.f20943f);
                jSONObject.put("vName", c5939a.f20942e);
                jSONObject.put("valid", c5939a.f20937a);
                jSONObject.put("paused", c5939a.f20939b);
                jSONObject.put("envType", c5939a.f20934a);
                jSONObject.put("regResource", c5939a.f20944g);
                return jSONObject.toString();
            } catch (Throwable th) {
                AbstractC5876b.m4143a(th);
                return null;
            }
        }

        /* renamed from: a */
        public void m3900a() {
            C5938b.m3924a(this.f20935a).edit().clear().commit();
            this.f20936a = null;
            this.f20938b = null;
            this.f20940c = null;
            this.f20941d = null;
            this.f20943f = null;
            this.f20942e = null;
            this.f20937a = false;
            this.f20939b = false;
            this.f20945h = null;
            this.f20934a = 1;
        }

        /* renamed from: a */
        public void m3898a(int i) {
            this.f20934a = i;
        }

        /* renamed from: a */
        public void m3895a(String str, String str2) {
            this.f20940c = str;
            this.f20941d = str2;
            this.f20943f = C6242i.m2487j(this.f20935a);
            this.f20942e = m3901a();
            this.f20937a = true;
        }

        /* renamed from: a */
        public void m3893a(String str, String str2, String str3) {
            this.f20936a = str;
            this.f20938b = str2;
            this.f20944g = str3;
            SharedPreferences.Editor edit = C5938b.m3924a(this.f20935a).edit();
            edit.putString("appId", this.f20936a);
            edit.putString("appToken", str2);
            edit.putString("regResource", str3);
            edit.commit();
        }

        /* renamed from: a */
        public void m3892a(boolean z) {
            this.f20939b = z;
        }

        /* renamed from: a */
        public boolean m3899a() {
            return m3894a(this.f20936a, this.f20938b);
        }

        /* renamed from: a */
        public boolean m3894a(String str, String str2) {
            boolean equals = TextUtils.equals(this.f20936a, str);
            boolean equals2 = TextUtils.equals(this.f20938b, str2);
            boolean z = !TextUtils.isEmpty(this.f20940c);
            boolean z2 = !TextUtils.isEmpty(this.f20941d);
            boolean z3 = TextUtils.equals(this.f20943f, C6242i.m2487j(this.f20935a)) || TextUtils.equals(this.f20943f, C6242i.m2488i(this.f20935a));
            boolean z4 = equals && equals2 && z && z2 && z3;
            if (!z4) {
                AbstractC5876b.m4137e(String.format("register invalid, aid=%s;atn=%s;rid=%s;rse=%s;did=%s", Boolean.valueOf(equals), Boolean.valueOf(equals2), Boolean.valueOf(z), Boolean.valueOf(z2), Boolean.valueOf(z3)));
            }
            return z4;
        }

        /* renamed from: b */
        public void m3891b() {
            this.f20937a = false;
            C5938b.m3924a(this.f20935a).edit().putBoolean("valid", this.f20937a).commit();
        }

        /* renamed from: b */
        public void m3890b(String str, String str2, String str3) {
            this.f20940c = str;
            this.f20941d = str2;
            this.f20943f = C6242i.m2487j(this.f20935a);
            this.f20942e = m3901a();
            this.f20937a = true;
            this.f20945h = str3;
            SharedPreferences.Editor edit = C5938b.m3924a(this.f20935a).edit();
            edit.putString("regId", str);
            edit.putString("regSec", str2);
            edit.putString("devId", this.f20943f);
            edit.putString("vName", m3901a());
            edit.putBoolean("valid", true);
            edit.putString("appRegion", str3);
            edit.commit();
        }

        /* renamed from: c */
        public void m3889c(String str, String str2, String str3) {
            this.f20936a = str;
            this.f20938b = str2;
            this.f20944g = str3;
        }
    }

    private C5938b(Context context) {
        this.f20930a = context;
        m3909c();
    }

    /* renamed from: a */
    public static SharedPreferences m3924a(Context context) {
        return context.getSharedPreferences("mipush", 0);
    }

    /* renamed from: a */
    public static C5938b m3923a(Context context) {
        if (f20929a == null) {
            synchronized (C5938b.class) {
                if (f20929a == null) {
                    f20929a = new C5938b(context);
                }
            }
        }
        return f20929a;
    }

    /* renamed from: c */
    private void m3909c() {
        this.f20931a = new C5939a(this.f20930a);
        this.f20933a = new HashMap();
        SharedPreferences m3924a = m3924a(this.f20930a);
        this.f20931a.f20936a = m3924a.getString("appId", null);
        this.f20931a.f20938b = m3924a.getString("appToken", null);
        this.f20931a.f20940c = m3924a.getString("regId", null);
        this.f20931a.f20941d = m3924a.getString("regSec", null);
        this.f20931a.f20943f = m3924a.getString("devId", null);
        if (!TextUtils.isEmpty(this.f20931a.f20943f) && C6242i.m2506a(this.f20931a.f20943f)) {
            this.f20931a.f20943f = C6242i.m2487j(this.f20930a);
            m3924a.edit().putString("devId", this.f20931a.f20943f).commit();
        }
        this.f20931a.f20942e = m3924a.getString("vName", null);
        this.f20931a.f20937a = m3924a.getBoolean("valid", true);
        this.f20931a.f20939b = m3924a.getBoolean("paused", false);
        this.f20931a.f20934a = m3924a.getInt("envType", 1);
        this.f20931a.f20944g = m3924a.getString("regResource", null);
        this.f20931a.f20945h = m3924a.getString("appRegion", null);
    }

    /* renamed from: a */
    public int m3929a() {
        return this.f20931a.f20934a;
    }

    /* renamed from: a */
    public C5939a m3922a(String str) {
        if (this.f20933a.containsKey(str)) {
            return this.f20933a.get(str);
        }
        String str2 = "hybrid_app_info_" + str;
        SharedPreferences m3924a = m3924a(this.f20930a);
        if (m3924a.contains(str2)) {
            C5939a m3897a = C5939a.m3897a(this.f20930a, m3924a.getString(str2, ""));
            this.f20933a.put(str2, m3897a);
            return m3897a;
        }
        return null;
    }

    /* renamed from: a */
    public String m3928a() {
        return this.f20931a.f20936a;
    }

    /* renamed from: a */
    public void m3927a() {
        this.f20931a.m3900a();
    }

    /* renamed from: a */
    public void m3925a(int i) {
        this.f20931a.m3898a(i);
        m3924a(this.f20930a).edit().putInt("envType", i).commit();
    }

    /* renamed from: a */
    public void m3921a(String str) {
        SharedPreferences.Editor edit = m3924a(this.f20930a).edit();
        edit.putString("vName", str);
        edit.commit();
        this.f20931a.f20942e = str;
    }

    /* renamed from: a */
    public void m3920a(String str, C5939a c5939a) {
        this.f20933a.put(str, c5939a);
        String m3896a = C5939a.m3896a(c5939a);
        m3924a(this.f20930a).edit().putString("hybrid_app_info_" + str, m3896a).commit();
    }

    /* renamed from: a */
    public void m3918a(String str, String str2, String str3) {
        this.f20931a.m3893a(str, str2, str3);
    }

    /* renamed from: a */
    public void m3916a(boolean z) {
        this.f20931a.m3892a(z);
        m3924a(this.f20930a).edit().putBoolean("paused", z).commit();
    }

    /* renamed from: a */
    public boolean m3926a() {
        Context context = this.f20930a;
        return !TextUtils.equals(C6175g.m2811a(context, context.getPackageName()), this.f20931a.f20942e);
    }

    /* renamed from: a */
    public boolean m3919a(String str, String str2) {
        return this.f20931a.m3894a(str, str2);
    }

    /* renamed from: a */
    public boolean m3917a(String str, String str2, String str3) {
        C5939a m3922a = m3922a(str3);
        return m3922a != null && TextUtils.equals(str, m3922a.f20936a) && TextUtils.equals(str2, m3922a.f20938b);
    }

    /* renamed from: b */
    public String m3915b() {
        return this.f20931a.f20938b;
    }

    /* renamed from: b */
    public void m3914b() {
        this.f20931a.m3891b();
    }

    /* renamed from: b */
    public void m3912b(String str) {
        this.f20933a.remove(str);
        m3924a(this.f20930a).edit().remove("hybrid_app_info_" + str).commit();
    }

    /* renamed from: b */
    public void m3911b(String str, String str2, String str3) {
        this.f20931a.m3890b(str, str2, str3);
    }

    /* renamed from: b */
    public boolean m3913b() {
        if (this.f20931a.m3899a()) {
            return true;
        }
        AbstractC5876b.m4147a("Don't send message before initialization succeeded!");
        return false;
    }

    /* renamed from: c */
    public String m3910c() {
        return this.f20931a.f20940c;
    }

    /* renamed from: c */
    public boolean m3908c() {
        return this.f20931a.m3899a();
    }

    /* renamed from: d */
    public String m3907d() {
        return this.f20931a.f20941d;
    }

    /* renamed from: d */
    public boolean m3906d() {
        return (TextUtils.isEmpty(this.f20931a.f20936a) || TextUtils.isEmpty(this.f20931a.f20938b) || TextUtils.isEmpty(this.f20931a.f20940c) || TextUtils.isEmpty(this.f20931a.f20941d)) ? false : true;
    }

    /* renamed from: e */
    public String m3905e() {
        return this.f20931a.f20944g;
    }

    /* renamed from: e */
    public boolean m3904e() {
        return this.f20931a.f20939b;
    }

    /* renamed from: f */
    public String m3903f() {
        return this.f20931a.f20945h;
    }

    /* renamed from: f */
    public boolean m3902f() {
        return !this.f20931a.f20937a;
    }
}
