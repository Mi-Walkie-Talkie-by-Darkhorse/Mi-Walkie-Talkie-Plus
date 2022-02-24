package com.xiaomi.push;

import android.content.Context;
import java.io.File;
import java.io.IOException;

/* loaded from: classes2.dex */
public abstract class x implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private Context f9373a;

    /* renamed from: a  reason: collision with other field name */
    private File f1023a;

    /* renamed from: a  reason: collision with other field name */
    private Runnable f1024a;

    private x(Context context, File file) {
        this.f9373a = context;
        this.f1023a = file;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ x(Context context, File file, y yVar) {
        this(context, file);
    }

    public static void a(Context context, File file, Runnable runnable) {
        new y(context, file, runnable).run();
    }

    protected abstract void a(Context context);

    @Override // java.lang.Runnable
    public final void run() {
        w wVar = null;
        try {
            try {
                if (this.f1023a == null) {
                    this.f1023a = new File(this.f9373a.getFilesDir(), "default_locker");
                }
                wVar = w.a(this.f9373a, this.f1023a);
                if (this.f1024a != null) {
                    this.f1024a.run();
                }
                a(this.f9373a);
                if (wVar == null) {
                    return;
                }
            } catch (IOException e) {
                e.printStackTrace();
                if (wVar == null) {
                    return;
                }
            }
            wVar.a();
        } catch (Throwable th) {
            if (wVar != null) {
                wVar.a();
            }
            throw th;
        }
    }
}
