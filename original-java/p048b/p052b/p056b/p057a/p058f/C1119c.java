package p048b.p052b.p056b.p057a.p058f;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import p048b.p052b.p056b.p057a.AbstractC1112b;
import p048b.p052b.p056b.p057a.C1113c;

/* renamed from: b.b.b.a.f.c */
/* loaded from: classes.dex */
public final class C1119c {

    /* renamed from: b.b.b.a.f.c$a */
    /* loaded from: classes.dex */
    final class RunnableC1120a implements Runnable {

        /* renamed from: a */
        final /* synthetic */ C1113c f5289a;

        /* renamed from: b */
        final /* synthetic */ Callable f5290b;

        RunnableC1120a(C1119c c1119c, C1113c c1113c, Callable callable) {
            this.f5289a = c1113c;
            this.f5290b = callable;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                this.f5289a.m21165c(this.f5290b.call());
            } catch (Exception e) {
                this.f5289a.m21166b(e);
            }
        }
    }

    /* renamed from: a */
    public final <TResult> AbstractC1112b<TResult> m21157a(Executor executor, Callable<TResult> callable) {
        C1113c c1113c = new C1113c();
        try {
            executor.execute(new RunnableC1120a(this, c1113c, callable));
        } catch (Exception e) {
            c1113c.m21166b(e);
        }
        return c1113c.m21167a();
    }
}
