package com.xiaomi.push;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.xiaomi.push.service.aj;
import java.util.HashMap;

/* loaded from: classes2.dex */
public final class ec {

    /* renamed from: a  reason: collision with root package name */
    private static volatile ec f8897a;

    /* renamed from: a  reason: collision with other field name */
    private int f292a;

    /* renamed from: a  reason: collision with other field name */
    private Context f293a;

    /* renamed from: a  reason: collision with other field name */
    private eg f294a;

    /* renamed from: a  reason: collision with other field name */
    private String f295a;

    /* renamed from: a  reason: collision with other field name */
    private HashMap<ee, ef> f296a;

    /* renamed from: b  reason: collision with root package name */
    private String f8898b;

    private ec(Context context) {
        HashMap<ee, ef> hashMap = new HashMap<>();
        this.f296a = hashMap;
        this.f293a = context;
        hashMap.put(ee.SERVICE_ACTION, new ei());
        this.f296a.put(ee.SERVICE_COMPONENT, new ej());
        this.f296a.put(ee.ACTIVITY, new ea());
        this.f296a.put(ee.PROVIDER, new eh());
    }

    public static ec a(Context context) {
        if (f8897a == null) {
            synchronized (ec.class) {
                if (f8897a == null) {
                    f8897a = new ec(context);
                }
            }
        }
        return f8897a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ee eeVar, Context context, eb ebVar) {
        this.f296a.get(eeVar).a(context, ebVar);
    }

    /* renamed from: a  reason: collision with other method in class */
    public static boolean m229a(Context context) {
        return aj.m583a(context, context.getPackageName());
    }

    public int a() {
        return this.f292a;
    }

    /* renamed from: a  reason: collision with other method in class */
    public eg m230a() {
        return this.f294a;
    }

    /* renamed from: a  reason: collision with other method in class */
    public String m231a() {
        return this.f295a;
    }

    public void a(int i) {
        this.f292a = i;
    }

    public void a(Context context, String str, int i, String str2, String str3) {
        if (context == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3)) {
            dy.a(context, "" + str, 1008, "A receive a incorrect message");
            return;
        }
        a(i);
        ak.a(this.f293a).a(new ed(this, str, context, str2, str3));
    }

    public void a(ee eeVar, Context context, Intent intent, String str) {
        if (eeVar != null) {
            this.f296a.get(eeVar).a(context, intent, str);
        } else {
            dy.a(context, "null", 1008, "A receive a incorrect message with empty type");
        }
    }

    public void a(eg egVar) {
        this.f294a = egVar;
    }

    public void a(String str) {
        this.f295a = str;
    }

    public void a(String str, String str2, int i, eg egVar) {
        a(str);
        b(str2);
        a(i);
        a(egVar);
    }

    public String b() {
        return this.f8898b;
    }

    public void b(String str) {
        this.f8898b = str;
    }
}
