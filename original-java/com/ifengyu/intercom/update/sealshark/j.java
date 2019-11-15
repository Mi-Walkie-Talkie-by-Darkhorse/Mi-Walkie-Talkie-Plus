package com.ifengyu.intercom.update.sealshark;

import android.content.Context;
import com.ifengyu.intercom.update.sealshark.UpdateHelper.b;

/* compiled from: UpdateManager */
public class j {
    public static volatile j a;
    private UpdateHelper b;

    public static j a() {
        if (a == null) {
            synchronized (j.class) {
                if (a == null) {
                    a = new j();
                }
            }
        }
        return a;
    }

    public void a(Context context, Integer num, String str, b bVar) {
        this.b = new UpdateHelper(context);
        this.b.a(num.intValue(), str, bVar);
    }

    public static void b() {
        if (a != null) {
            a = null;
        }
    }
}
