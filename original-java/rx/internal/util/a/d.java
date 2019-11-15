package rx.internal.util.a;

import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;

/* compiled from: MpmcArrayQueue */
public class d<E> extends e<E> {
    public d(int i) {
        super(Math.max(2, i));
    }

    public boolean offer(E e) {
        if (e == null) {
            throw new NullPointerException("Null is not a valid element");
        }
        long j = this.b + 1;
        long[] jArr = this.d;
        long j2 = FileTracerConfig.FOREVER;
        while (true) {
            long j3 = j2;
            long b = b();
            long d = d(b);
            long a = a(jArr, d) - b;
            if (a == 0) {
                if (c(b, 1 + b)) {
                    a(a(b), e);
                    a(jArr, d, 1 + b);
                    return true;
                }
            } else if (a < 0 && b - j <= j3) {
                long j4 = b - j;
                j3 = a();
                if (j4 <= j3) {
                    return false;
                }
            }
            j2 = j3;
        }
    }

    public E poll() {
        long[] jArr = this.d;
        long j = -1;
        while (true) {
            long j2 = j;
            long a = a();
            long d = d(a);
            long a2 = a(jArr, d) - (1 + a);
            if (a2 == 0) {
                if (b(a, 1 + a)) {
                    long a3 = a(a);
                    Object b = b(a3);
                    a(a3, null);
                    a(jArr, d, this.b + a + 1);
                    return b;
                }
            } else if (a2 < 0 && a >= j2) {
                j2 = b();
                if (a == j2) {
                    return null;
                }
            }
            j = j2;
        }
    }

    public E peek() {
        long a;
        E b;
        do {
            a = a();
            b = b(a(a));
            if (b != null) {
                break;
            }
        } while (a != b());
        return b;
    }

    public int size() {
        long a = a();
        while (true) {
            long b = b();
            long a2 = a();
            if (a == a2) {
                return (int) (b - a2);
            }
            a = a2;
        }
    }

    public boolean isEmpty() {
        return a() == b();
    }
}
