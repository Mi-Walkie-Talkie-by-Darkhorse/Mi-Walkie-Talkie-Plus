package com.amap.api.mapcore.util;

import android.content.Context;
import com.amap.api.maps.MapsInitializer;
import com.autonavi.amap.mapcore.FileUtil;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;

/* compiled from: CustomStyleTextureTask */
public class db implements Runnable {
    private String a = "custom_texture_data";
    private Context b;
    private da c;
    private Thread d;
    private dg e;
    private a f;

    /* compiled from: CustomStyleTextureTask */
    public interface a {
        void a(String str, dg dgVar);
    }

    public db(Context context) {
        this.b = context;
        if (this.c == null) {
            this.c = new da(this.b, "");
        }
    }

    public void a(String str) {
        if (this.c != null) {
            this.c.a(str);
        }
    }

    public void run() {
        String str;
        try {
            if (MapsInitializer.getNetWorkEnable()) {
                if (this.c != null) {
                    com.amap.api.mapcore.util.da.a aVar = (com.amap.api.mapcore.util.da.a) this.c.d();
                    if (aVar == null || aVar.a == null) {
                        str = null;
                    } else {
                        String str2 = a(this.b) + "/" + this.a;
                        a(str2, aVar.a);
                        str = str2;
                    }
                    if (this.f != null) {
                        this.f.a(str, this.e);
                    }
                }
                gf.a(this.b, ee.e());
            }
        } catch (Throwable th) {
            gf.b(th, "CustomStyleTask", "download customStyle");
            ThrowableExtension.printStackTrace(th);
        }
    }

    private void a(String str, byte[] bArr) {
        FileUtil.writeDatasToFile(str, bArr);
    }

    private String a(Context context) {
        return FileUtil.getMapBaseStorage(context);
    }

    public void a() {
        if (this.d != null) {
            this.d.interrupt();
        }
        this.b = null;
        if (this.c != null) {
            this.c = null;
        }
    }

    public void b() {
        if (this.d != null) {
            this.d.interrupt();
        }
        this.d = new Thread(this);
        this.d.start();
    }

    public void a(a aVar) {
        this.f = aVar;
    }

    public void a(dg dgVar) {
        this.e = dgVar;
    }
}
