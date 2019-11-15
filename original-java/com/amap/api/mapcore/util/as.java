package com.amap.api.mapcore.util;

import android.content.Context;
import android.os.Bundle;
import com.amap.api.mapcore.util.bh.a;
import com.amap.api.maps.AMap;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.IOException;

/* compiled from: OfflineMapDownloadTask */
public class as extends Cif implements a {
    private bh a;
    private bj b;
    private bl c;
    private Context e;
    private Bundle f;
    private AMap g;
    private boolean h;

    public as(bl blVar, Context context) {
        this.f = new Bundle();
        this.h = false;
        this.c = blVar;
        this.e = context;
    }

    public as(bl blVar, Context context, AMap aMap) {
        this(blVar, context);
        this.g = aMap;
    }

    public void a() {
        if (this.c.y()) {
            this.c.a(bm.a.file_io_exception);
            return;
        }
        try {
            g();
        } catch (IOException e2) {
            ThrowableExtension.printStackTrace(e2);
        }
    }

    public void b() {
        this.h = true;
        if (this.a != null) {
            this.a.c();
        } else {
            e();
        }
        if (this.b != null) {
            this.b.a();
        }
    }

    private String f() {
        return ee.b(this.e);
    }

    private void g() throws IOException {
        this.a = new bh(new bi(this.c.getUrl(), f(), this.c.z(), 1, this.c.A()), this.c.getUrl(), this.e, this.c);
        this.a.a((a) this);
        this.b = new bj(this.c, this.c);
        if (!this.h) {
            this.a.a();
        }
    }

    public void c() {
        this.g = null;
        if (this.f != null) {
            this.f.clear();
            this.f = null;
        }
    }

    public void d() {
        if (this.b != null) {
            this.b.b();
        }
    }
}
