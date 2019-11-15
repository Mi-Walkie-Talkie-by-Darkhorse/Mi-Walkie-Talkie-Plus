package de.greenrobot.event.util;

import android.util.Log;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: ExceptionToResourceMapping */
public class c {
    public final Map<Class<? extends Throwable>, Integer> a;

    public Integer a(Throwable th) {
        int i = 20;
        Throwable th2 = th;
        do {
            Integer b = b(th2);
            if (b != null) {
                return b;
            }
            th2 = th2.getCause();
            i--;
            if (i <= 0 || th2 == th) {
                Log.d(de.greenrobot.event.c.a, "No specific message ressource ID found for " + th);
            }
        } while (th2 != null);
        Log.d(de.greenrobot.event.c.a, "No specific message ressource ID found for " + th);
        return null;
    }

    /* access modifiers changed from: protected */
    public Integer b(Throwable th) {
        Class cls = th.getClass();
        Integer num = (Integer) this.a.get(cls);
        if (num != null) {
            return num;
        }
        Class cls2 = null;
        Iterator it = this.a.entrySet().iterator();
        while (true) {
            Integer num2 = num;
            if (!it.hasNext()) {
                return num2;
            }
            Entry entry = (Entry) it.next();
            Class cls3 = (Class) entry.getKey();
            if (!cls3.isAssignableFrom(cls) || (cls2 != null && !cls2.isAssignableFrom(cls3))) {
                cls3 = cls2;
                num = num2;
            } else {
                num = (Integer) entry.getValue();
            }
            cls2 = cls3;
        }
    }
}
