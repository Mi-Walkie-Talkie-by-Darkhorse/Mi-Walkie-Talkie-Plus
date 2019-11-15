package com.xiaomi.push.log;

import java.io.File;
import java.util.Date;

class c extends C0068b {
    File a;
    final /* synthetic */ int b;
    final /* synthetic */ Date c;
    final /* synthetic */ Date d;
    final /* synthetic */ String e;
    final /* synthetic */ String f;
    final /* synthetic */ boolean g;
    final /* synthetic */ b h;

    c(b bVar, int i, Date date, Date date2, String str, String str2, boolean z) {
        this.h = bVar;
        this.b = i;
        this.c = date;
        this.d = date2;
        this.e = str;
        this.f = str2;
        this.g = z;
        super();
    }

    public void b() {
        if (com.xiaomi.channel.commonutils.file.c.d()) {
            try {
                File file = new File(this.h.b.getExternalFilesDir(null) + "/.logcache");
                file.mkdirs();
                if (file.isDirectory()) {
                    a aVar = new a();
                    aVar.a(this.b);
                    this.a = aVar.a(this.h.b, this.c, this.d, file);
                }
            } catch (NullPointerException e2) {
            }
        }
    }

    public void c() {
        if (this.a != null && this.a.exists()) {
            this.h.a.add(new c(this.e, this.f, this.a, this.g));
        }
        this.h.a(0);
    }
}
