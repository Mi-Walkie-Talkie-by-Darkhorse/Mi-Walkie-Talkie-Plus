package p048b.p052b.p053a.p054b;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;
import p048b.p052b.p053a.p054b.p055c.C1103a;

/* renamed from: b.b.a.b.a */
/* loaded from: classes.dex */
public abstract class AbstractC1101a {

    /* renamed from: a */
    private static final Map<String, AbstractC1101a> f5261a = new HashMap();

    /* renamed from: b */
    private static final Object f5262b = new Object();

    /* renamed from: a */
    public static AbstractC1101a m21191a(Context context) {
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            context = applicationContext;
        }
        return m21190b(context, context.getPackageName());
    }

    /* renamed from: b */
    public static AbstractC1101a m21190b(Context context, String str) {
        AbstractC1101a abstractC1101a;
        synchronized (f5262b) {
            Map<String, AbstractC1101a> map = f5261a;
            abstractC1101a = map.get(str);
            if (abstractC1101a == null) {
                abstractC1101a = new C1103a(context, str);
                map.put(str, abstractC1101a);
            }
        }
        return abstractC1101a;
    }

    /* renamed from: c */
    public abstract String mo21187c(String str);
}
