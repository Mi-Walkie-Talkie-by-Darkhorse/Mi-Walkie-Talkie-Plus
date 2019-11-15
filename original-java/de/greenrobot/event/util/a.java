package de.greenrobot.event.util;

import android.content.res.Resources;
import android.util.Log;
import de.greenrobot.event.c;

/* compiled from: ErrorDialogConfig */
public class a {
    final Resources a;
    final int b;
    final int c;
    final c d;
    c e;
    boolean f;
    String g;
    int h;
    Class<?> i;

    public int a(Throwable th) {
        Integer a2 = this.d.a(th);
        if (a2 != null) {
            return a2.intValue();
        }
        Log.d(c.a, "No specific message ressource ID found for " + th);
        return this.c;
    }

    /* access modifiers changed from: 0000 */
    public c a() {
        return this.e != null ? this.e : c.a();
    }
}
