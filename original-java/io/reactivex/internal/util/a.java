package io.reactivex.internal.util;

import io.reactivex.b.p;
import io.reactivex.q;

/* compiled from: AppendOnlyLinkedArrayList */
public class a<T> {
    final int a;
    final Object[] b;
    Object[] c = this.b;
    int d;

    /* renamed from: io.reactivex.internal.util.a$a reason: collision with other inner class name */
    /* compiled from: AppendOnlyLinkedArrayList */
    public interface C0092a<T> extends p<T> {
        boolean test(T t);
    }

    public a(int i) {
        this.a = i;
        this.b = new Object[(i + 1)];
    }

    public void a(T t) {
        int i = this.a;
        int i2 = this.d;
        if (i2 == i) {
            Object[] objArr = new Object[(i + 1)];
            this.c[i] = objArr;
            this.c = objArr;
            i2 = 0;
        }
        this.c[i2] = t;
        this.d = i2 + 1;
    }

    public void b(T t) {
        this.b[0] = t;
    }

    public void a(C0092a<? super T> aVar) {
        Object[] objArr = this.b;
        int i = this.a;
        for (Object[] objArr2 = objArr; objArr2 != null; objArr2 = objArr2[i]) {
            for (int i2 = 0; i2 < i; i2++) {
                Object[] objArr3 = objArr2[i2];
                if (objArr3 == null || aVar.test(objArr3)) {
                    break;
                }
            }
        }
    }

    public <U> boolean a(q<? super U> qVar) {
        Object[] objArr = this.b;
        int i = this.a;
        for (Object[] objArr2 = objArr; objArr2 != null; objArr2 = objArr2[i]) {
            int i2 = 0;
            while (i2 < i) {
                Object[] objArr3 = objArr2[i2];
                if (objArr3 == null) {
                    continue;
                    break;
                } else if (NotificationLite.b(objArr3, qVar)) {
                    return true;
                } else {
                    i2++;
                }
            }
        }
        return false;
    }
}
