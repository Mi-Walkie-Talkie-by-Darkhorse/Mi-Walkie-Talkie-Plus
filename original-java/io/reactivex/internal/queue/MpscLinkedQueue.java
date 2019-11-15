package io.reactivex.internal.queue;

import io.reactivex.annotations.Nullable;
import io.reactivex.internal.a.f;
import java.util.concurrent.atomic.AtomicReference;

public final class MpscLinkedQueue<T> implements f<T> {
    private final AtomicReference<LinkedQueueNode<T>> a = new AtomicReference<>();
    private final AtomicReference<LinkedQueueNode<T>> b = new AtomicReference<>();

    static final class LinkedQueueNode<E> extends AtomicReference<LinkedQueueNode<E>> {
        private static final long serialVersionUID = 2404266111789071508L;
        private E a;

        LinkedQueueNode() {
        }

        LinkedQueueNode(E e) {
            a(e);
        }

        public E a() {
            E b = b();
            a((E) null);
            return b;
        }

        public E b() {
            return this.a;
        }

        public void a(E e) {
            this.a = e;
        }

        public void a(LinkedQueueNode<E> linkedQueueNode) {
            lazySet(linkedQueueNode);
        }

        public LinkedQueueNode<E> c() {
            return (LinkedQueueNode) get();
        }
    }

    public MpscLinkedQueue() {
        LinkedQueueNode linkedQueueNode = new LinkedQueueNode();
        b(linkedQueueNode);
        a(linkedQueueNode);
    }

    public boolean a(T t) {
        if (t == null) {
            throw new NullPointerException("Null is not a valid element");
        }
        LinkedQueueNode linkedQueueNode = new LinkedQueueNode(t);
        a(linkedQueueNode).a(linkedQueueNode);
        return true;
    }

    @Nullable
    public T e_() {
        LinkedQueueNode c;
        LinkedQueueNode f = f();
        LinkedQueueNode c2 = f.c();
        if (c2 != null) {
            T a2 = c2.a();
            b(c2);
            return a2;
        } else if (f == d()) {
            return null;
        } else {
            do {
                c = f.c();
            } while (c == null);
            T a3 = c.a();
            b(c);
            return a3;
        }
    }

    public void c() {
        while (e_() != null) {
            if (b()) {
                return;
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public LinkedQueueNode<T> d() {
        return (LinkedQueueNode) this.a.get();
    }

    /* access modifiers changed from: 0000 */
    public LinkedQueueNode<T> a(LinkedQueueNode<T> linkedQueueNode) {
        return (LinkedQueueNode) this.a.getAndSet(linkedQueueNode);
    }

    /* access modifiers changed from: 0000 */
    public LinkedQueueNode<T> e() {
        return (LinkedQueueNode) this.b.get();
    }

    /* access modifiers changed from: 0000 */
    public LinkedQueueNode<T> f() {
        return (LinkedQueueNode) this.b.get();
    }

    /* access modifiers changed from: 0000 */
    public void b(LinkedQueueNode<T> linkedQueueNode) {
        this.b.lazySet(linkedQueueNode);
    }

    public boolean b() {
        return e() == d();
    }
}
