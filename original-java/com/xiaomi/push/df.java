package com.xiaomi.push;

import com.xiaomi.push.de;
import java.io.File;
import java.util.Date;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class df extends de.b {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ int f8842a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ de f203a;

    /* renamed from: a  reason: collision with other field name */
    File f204a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ String f205a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ Date f206a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ boolean f207a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f8843b;

    /* renamed from: b  reason: collision with other field name */
    final /* synthetic */ Date f208b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public df(de deVar, int i, Date date, Date date2, String str, String str2, boolean z) {
        super();
        this.f203a = deVar;
        this.f8842a = i;
        this.f206a = date;
        this.f208b = date2;
        this.f205a = str;
        this.f8843b = str2;
        this.f207a = z;
    }

    @Override // com.xiaomi.push.de.b, com.xiaomi.push.an.b
    /* renamed from: b */
    public void mo161b() {
        if (ac.d()) {
            try {
                File file = new File(this.f203a.f196a.getExternalFilesDir(null) + "/.logcache");
                file.mkdirs();
                if (file.isDirectory()) {
                    dd ddVar = new dd();
                    ddVar.a(this.f8842a);
                    this.f204a = ddVar.a(this.f203a.f196a, this.f206a, this.f208b, file);
                }
            } catch (NullPointerException unused) {
            }
        }
    }

    @Override // com.xiaomi.push.an.b
    /* renamed from: c */
    public void mo162c() {
        File file = this.f204a;
        if (file != null && file.exists()) {
            this.f203a.f197a.add(new de.c(this.f205a, this.f8843b, this.f204a, this.f207a));
        }
        this.f203a.a(0L);
    }
}
