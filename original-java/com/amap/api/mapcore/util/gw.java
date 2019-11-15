package com.amap.api.mapcore.util;

import android.content.Context;
import java.util.List;

/* compiled from: UpdateLogDBOperation */
public class gw {
    private gl a = a(this.b);
    private Context b;

    public gw(Context context) {
        this.b = context;
    }

    private gl a(Context context) {
        try {
            return new gl(context, gl.a(gs.class));
        } catch (Throwable th) {
            gc.a(th, "ud", "gd");
            return null;
        }
    }

    public gx a() {
        try {
            if (this.a == null) {
                this.a = a(this.b);
            }
            List b2 = this.a.b("1=1", gx.class);
            if (b2.size() > 0) {
                return (gx) b2.get(0);
            }
        } catch (Throwable th) {
            gc.a(th, "ud", "gd");
        }
        return null;
    }

    public void a(gx gxVar) {
        if (gxVar != null) {
            try {
                if (this.a == null) {
                    this.a = a(this.b);
                }
                String str = "1=1";
                List b2 = this.a.b(str, gx.class);
                if (b2 == null || b2.size() == 0) {
                    this.a.a(gxVar);
                } else {
                    this.a.a(str, (Object) gxVar);
                }
            } catch (Throwable th) {
                gc.a(th, "ud", "ug");
            }
        }
    }
}
