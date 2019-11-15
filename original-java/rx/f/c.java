package rx.f;

import java.util.concurrent.atomic.AtomicReference;
import rx.f;

/* compiled from: MultipleAssignmentSubscription */
public final class c implements f {
    final AtomicReference<a> a = new AtomicReference<>(new a(false, d.a()));

    /* compiled from: MultipleAssignmentSubscription */
    private static final class a {
        final boolean a;
        final f b;

        a(boolean z, f fVar) {
            this.a = z;
            this.b = fVar;
        }

        /* access modifiers changed from: 0000 */
        public a a() {
            return new a(true, this.b);
        }

        /* access modifiers changed from: 0000 */
        public a a(f fVar) {
            return new a(this.a, fVar);
        }
    }

    public boolean isUnsubscribed() {
        return ((a) this.a.get()).a;
    }

    public void unsubscribe() {
        a aVar;
        AtomicReference<a> atomicReference = this.a;
        do {
            aVar = (a) atomicReference.get();
            if (aVar.a) {
                return;
            }
        } while (!atomicReference.compareAndSet(aVar, aVar.a()));
        aVar.b.unsubscribe();
    }

    public void a(f fVar) {
        a aVar;
        if (fVar == null) {
            throw new IllegalArgumentException("Subscription can not be null");
        }
        AtomicReference<a> atomicReference = this.a;
        do {
            aVar = (a) atomicReference.get();
            if (aVar.a) {
                fVar.unsubscribe();
                return;
            }
        } while (!atomicReference.compareAndSet(aVar, aVar.a(fVar)));
    }
}
