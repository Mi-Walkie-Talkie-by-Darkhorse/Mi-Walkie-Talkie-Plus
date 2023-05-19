package com.xiaomi.push;

import com.xiaomi.push.C6076de;
import java.io.File;
import java.util.Date;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.push.df */
/* loaded from: classes2.dex */
public class C6080df extends C6076de.C6078b {

    /* renamed from: a */
    final /* synthetic */ int f21253a;

    /* renamed from: a */
    final /* synthetic */ C6076de f21254a;

    /* renamed from: a */
    File f21255a;

    /* renamed from: a */
    final /* synthetic */ String f21256a;

    /* renamed from: a */
    final /* synthetic */ Date f21257a;

    /* renamed from: a */
    final /* synthetic */ boolean f21258a;

    /* renamed from: b */
    final /* synthetic */ String f21259b;

    /* renamed from: b */
    final /* synthetic */ Date f21260b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6080df(C6076de c6076de, int i, Date date, Date date2, String str, String str2, boolean z) {
        super();
        this.f21254a = c6076de;
        this.f21253a = i;
        this.f21257a = date;
        this.f21260b = date2;
        this.f21256a = str;
        this.f21259b = str2;
        this.f21258a = z;
    }

    @Override // com.xiaomi.push.C6076de.C6078b, com.xiaomi.push.C5983an.AbstractC5985b
    /* renamed from: b */
    public void mo1431b() {
        if (C5970ac.m3798d()) {
            try {
                File file = new File(this.f21254a.f21241a.getExternalFilesDir(null) + "/.logcache");
                file.mkdirs();
                if (file.isDirectory()) {
                    C6075dd c6075dd = new C6075dd();
                    c6075dd.m3398a(this.f21253a);
                    this.f21255a = c6075dd.m3397a(this.f21254a.f21241a, this.f21257a, this.f21260b, file);
                }
            } catch (NullPointerException unused) {
            }
        }
    }

    @Override // com.xiaomi.push.C5983an.AbstractC5985b
    /* renamed from: c */
    public void mo1430c() {
        File file = this.f21255a;
        if (file != null && file.exists()) {
            this.f21254a.f21242a.add(new C6076de.C6079c(this.f21256a, this.f21259b, this.f21255a, this.f21258a));
        }
        this.f21254a.m3391a(0L);
    }
}
