package p048b.p052b.p056b.p057a.p058f;

import java.util.ArrayList;
import java.util.List;
import p048b.p052b.p056b.p057a.AbstractC1112b;
import p048b.p052b.p056b.p057a.InterfaceC1111a;

/* renamed from: b.b.b.a.f.b */
/* loaded from: classes.dex */
public final class C1118b<TResult> extends AbstractC1112b<TResult> {

    /* renamed from: b */
    private boolean f5286b;

    /* renamed from: c */
    private TResult f5287c;

    /* renamed from: a */
    private final Object f5285a = new Object();

    /* renamed from: d */
    private List<InterfaceC1111a<TResult>> f5288d = new ArrayList();

    /* renamed from: c */
    private void m21158c() {
        synchronized (this.f5285a) {
            for (InterfaceC1111a<TResult> interfaceC1111a : this.f5288d) {
                try {
                    interfaceC1111a.m21168a(this);
                } catch (RuntimeException e) {
                    throw e;
                } catch (Exception e2) {
                    throw new RuntimeException(e2);
                }
            }
            this.f5288d = null;
        }
    }

    /* renamed from: a */
    public final void m21160a(Exception exc) {
        synchronized (this.f5285a) {
            if (this.f5286b) {
                return;
            }
            this.f5286b = true;
            this.f5285a.notifyAll();
            m21158c();
        }
    }

    /* renamed from: b */
    public final void m21159b(TResult tresult) {
        synchronized (this.f5285a) {
            if (this.f5286b) {
                return;
            }
            this.f5286b = true;
            this.f5287c = tresult;
            this.f5285a.notifyAll();
            m21158c();
        }
    }
}
