package io.reactivex.internal.queue;

import io.reactivex.annotations.Nullable;
import io.reactivex.internal.a.f;
import io.reactivex.internal.util.j;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;

public final class SpscArrayQueue<E> extends AtomicReferenceArray<E> implements f<E> {
    private static final Integer f = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096);
    private static final long serialVersionUID = -1296597691183856449L;
    final int a = (length() - 1);
    final AtomicLong b = new AtomicLong();
    long c;
    final AtomicLong d = new AtomicLong();
    final int e;

    public SpscArrayQueue(int i) {
        super(j.a(i));
        this.e = Math.min(i / 4, f.intValue());
    }

    public boolean a(E e2) {
        if (e2 == null) {
            throw new NullPointerException("Null is not a valid element");
        }
        int i = this.a;
        long j = this.b.get();
        int a2 = a(j, i);
        if (j >= this.c) {
            int i2 = this.e;
            if (a(a(((long) i2) + j, i)) == null) {
                this.c = ((long) i2) + j;
            } else if (a(a2) != null) {
                return false;
            }
        }
        a(a2, e2);
        a(1 + j);
        return true;
    }

    @Nullable
    public E e_() {
        long j = this.d.get();
        int c2 = c(j);
        Object a2 = a(c2);
        if (a2 == null) {
            return null;
        }
        b(j + 1);
        a(c2, (E) null);
        return a2;
    }

    public boolean b() {
        return this.b.get() == this.d.get();
    }

    /* access modifiers changed from: 0000 */
    public void a(long j) {
        this.b.lazySet(j);
    }

    /* access modifiers changed from: 0000 */
    public void b(long j) {
        this.d.lazySet(j);
    }

    public void c() {
        while (true) {
            if (e_() == null && b()) {
                return;
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public int a(long j, int i) {
        return ((int) j) & i;
    }

    /* access modifiers changed from: 0000 */
    public int c(long j) {
        return ((int) j) & this.a;
    }

    /* access modifiers changed from: 0000 */
    public void a(int i, E e2) {
        lazySet(i, e2);
    }

    /* access modifiers changed from: 0000 */
    public E a(int i) {
        return get(i);
    }
}
