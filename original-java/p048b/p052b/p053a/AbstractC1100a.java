package p048b.p052b.p053a;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.Log;
import com.huawei.agconnect.core.p137a.C2828a;

/* renamed from: b.b.a.a */
/* loaded from: classes.dex */
public abstract class AbstractC1100a {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: a */
    private static AbstractC1100a f5260a;

    /* renamed from: b */
    public static AbstractC1100a m21193b() {
        return f5260a;
    }

    /* renamed from: c */
    public static synchronized void m21192c(Context context) {
        synchronized (AbstractC1100a.class) {
            Log.i("AGConnectInstance", "AGConnectInstance#initialize");
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                context = applicationContext;
            }
            if (f5260a == null) {
                f5260a = new C2828a(context);
            }
        }
    }

    /* renamed from: a */
    public abstract Context mo16603a();
}
