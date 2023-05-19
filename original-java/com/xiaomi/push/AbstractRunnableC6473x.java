package com.xiaomi.push;

import android.content.Context;
import java.io.File;
import java.io.IOException;

/* renamed from: com.xiaomi.push.x */
/* loaded from: classes2.dex */
public abstract class AbstractRunnableC6473x implements Runnable {

    /* renamed from: a */
    private Context f23261a;

    /* renamed from: a */
    private File f23262a;

    /* renamed from: a */
    private Runnable f23263a;

    private AbstractRunnableC6473x(Context context, File file) {
        this.f23261a = context;
        this.f23262a = file;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ AbstractRunnableC6473x(Context context, File file, C6474y c6474y) {
        this(context, file);
    }

    /* renamed from: a */
    public static void m1223a(Context context, File file, Runnable runnable) {
        new C6474y(context, file, runnable).run();
    }

    /* renamed from: a */
    protected abstract void mo1222a(Context context);

    @Override // java.lang.Runnable
    public final void run() {
        C6472w c6472w = null;
        try {
            try {
                if (this.f23262a == null) {
                    this.f23262a = new File(this.f23261a.getFilesDir(), "default_locker");
                }
                c6472w = C6472w.m1224a(this.f23261a, this.f23262a);
                Runnable runnable = this.f23263a;
                if (runnable != null) {
                    runnable.run();
                }
                mo1222a(this.f23261a);
                if (c6472w == null) {
                    return;
                }
            } catch (IOException e) {
                e.printStackTrace();
                if (c6472w == null) {
                    return;
                }
            }
            c6472w.m1225a();
        } catch (Throwable th) {
            if (c6472w != null) {
                c6472w.m1225a();
            }
            throw th;
        }
    }
}
