package com.amap.api.col.sl;

import android.content.Context;
import android.text.TextUtils;
import com.tencent.connect.common.Constants;
import java.lang.ref.WeakReference;

/* compiled from: MarkInfoManager */
public class dy {
    static WeakReference<dw> a;

    static /* synthetic */ String b(Context context) {
        String t = bu.t(context);
        if (!TextUtils.isEmpty(t)) {
            return t;
        }
        String h = bu.h(context);
        if (!TextUtils.isEmpty(h)) {
            return h;
        }
        String l = bu.l(context);
        return TextUtils.isEmpty(l) ? bu.b(context) : l;
    }

    public static void a(final Context context) {
        cm.d().submit(new Runnable() {
            public final void run() {
                synchronized (dy.class) {
                    dw a2 = ed.a(dy.a);
                    ed.a(context, a2, ck.j, 50, 102400, Constants.VIA_REPORT_TYPE_SHARE_TO_QQ);
                    if (a2.g == null) {
                        a2.g = new eh(new eg(context, new el(), new cc(new cg(new ce())), "WImFwcG5hbWUiOiIlcyIsInBrZyI6IiVzIiwiZGl1IjoiJXMi", bp.b(context), bp.c(context), dy.b(context)));
                    }
                    a2.h = 14400000;
                    if (TextUtils.isEmpty(a2.i)) {
                        a2.i = ck.a(context, "e.log");
                    }
                    if (a2.f == null) {
                        a2.f = new eo(a2.h, a2.i, new em(5, a2.a, new eq(context, false)));
                    }
                    dx.a(a2);
                }
            }
        });
    }
}
