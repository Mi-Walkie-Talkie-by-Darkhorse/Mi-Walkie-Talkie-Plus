package io.reactivex.internal.operators.observable;

import io.reactivex.annotations.Nullable;
import io.reactivex.internal.observers.BasicIntQueueDisposable;
import io.reactivex.k;
import io.reactivex.q;

public final class ObservableRangeLong extends k<Long> {
    private final long a;
    private final long b;

    static final class RangeDisposable extends BasicIntQueueDisposable<Long> {
        private static final long serialVersionUID = 396518478098735504L;
        final q<? super Long> a;
        final long b;
        long c;
        boolean d;

        RangeDisposable(q<? super Long> qVar, long j, long j2) {
            this.a = qVar;
            this.c = j;
            this.b = j2;
        }

        /* access modifiers changed from: 0000 */
        public void d() {
            if (!this.d) {
                q<? super Long> qVar = this.a;
                long j = this.b;
                for (long j2 = this.c; j2 != j && get() == 0; j2++) {
                    qVar.onNext(Long.valueOf(j2));
                }
                if (get() == 0) {
                    lazySet(1);
                    qVar.onComplete();
                }
            }
        }

        @Nullable
        /* renamed from: e */
        public Long e_() throws Exception {
            long j = this.c;
            if (j != this.b) {
                this.c = 1 + j;
                return Long.valueOf(j);
            }
            lazySet(1);
            return null;
        }

        public boolean b() {
            return this.c == this.b;
        }

        public void c() {
            this.c = this.b;
            lazySet(1);
        }

        public void dispose() {
            set(1);
        }

        public boolean isDisposed() {
            return get() != 0;
        }

        public int a(int i) {
            if ((i & 1) == 0) {
                return 0;
            }
            this.d = true;
            return 1;
        }
    }

    public ObservableRangeLong(long j, long j2) {
        this.a = j;
        this.b = j2;
    }

    /* access modifiers changed from: protected */
    public void subscribeActual(q<? super Long> qVar) {
        RangeDisposable rangeDisposable = new RangeDisposable(qVar, this.a, this.a + this.b);
        qVar.onSubscribe(rangeDisposable);
        rangeDisposable.d();
    }
}
