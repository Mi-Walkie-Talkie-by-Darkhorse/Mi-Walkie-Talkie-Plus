package rx.internal.util.a;

/* compiled from: SpscArrayQueue */
public final class r<E> extends w<E> {
    public r(int i) {
        super(i);
    }

    public boolean offer(E e) {
        if (e == null) {
            throw new NullPointerException("null elements not allowed");
        }
        Object[] objArr = this.c;
        long j = this.h;
        long a = a(j);
        if (b(objArr, a) != null) {
            return false;
        }
        d(j + 1);
        b(objArr, a, e);
        return true;
    }

    public E poll() {
        long j = this.e;
        long a = a(j);
        Object[] objArr = this.c;
        Object b = b(objArr, a);
        if (b == null) {
            return null;
        }
        e(j + 1);
        b(objArr, a, null);
        return b;
    }

    public E peek() {
        return c(a(this.e));
    }

    public int size() {
        long b = b();
        while (true) {
            long a = a();
            long b2 = b();
            if (b == b2) {
                return (int) (a - b2);
            }
            b = b2;
        }
    }

    private void d(long j) {
        y.a.putOrderedLong(this, g, j);
    }

    private void e(long j) {
        y.a.putOrderedLong(this, f, j);
    }

    private long a() {
        return y.a.getLongVolatile(this, g);
    }

    private long b() {
        return y.a.getLongVolatile(this, f);
    }
}
