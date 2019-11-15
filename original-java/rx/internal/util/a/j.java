package rx.internal.util.a;

/* compiled from: SpmcArrayQueue */
public final class j<E> extends n<E> {
    public j(int i) {
        super(i);
    }

    public boolean offer(E e) {
        if (e == null) {
            throw new NullPointerException("Null is not a valid element");
        }
        Object[] objArr = this.c;
        long j = this.b;
        long b = b();
        long a = a(b);
        if (b(objArr, a) == null) {
            a(objArr, a, e);
            d(1 + b);
        } else if (b - a() > j) {
            return false;
        } else {
            do {
            } while (b(objArr, a) != null);
        }
        a(objArr, a, e);
        d(1 + b);
        return true;
    }

    public E poll() {
        long a;
        long c = c();
        do {
            a = a();
            if (a >= c) {
                long b = b();
                if (a >= b) {
                    return null;
                }
                e(b);
            }
        } while (!b(a, 1 + a));
        long a2 = a(a);
        Object[] objArr = this.c;
        Object a3 = a((E[]) objArr, a2);
        b(objArr, a2, null);
        return a3;
    }

    public E peek() {
        E c;
        long c2 = c();
        do {
            long a = a();
            if (a >= c2) {
                long b = b();
                if (a >= b) {
                    return null;
                }
                e(b);
            }
            c = c(a(a));
        } while (c == null);
        return c;
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
