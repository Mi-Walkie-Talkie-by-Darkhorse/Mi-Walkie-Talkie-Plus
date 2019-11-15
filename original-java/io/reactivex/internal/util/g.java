package io.reactivex.internal.util;

import java.util.ArrayList;

/* compiled from: LinkedArrayList */
public class g {
    final int h;
    Object[] i;
    Object[] j;
    volatile int k;
    int l;

    public g(int i2) {
        this.h = i2;
    }

    public void a(Object obj) {
        if (this.k == 0) {
            this.i = new Object[(this.h + 1)];
            this.j = this.i;
            this.i[0] = obj;
            this.l = 1;
            this.k = 1;
        } else if (this.l == this.h) {
            Object[] objArr = new Object[(this.h + 1)];
            objArr[0] = obj;
            this.j[this.h] = objArr;
            this.j = objArr;
            this.l = 1;
            this.k++;
        } else {
            this.j[this.l] = obj;
            this.l++;
            this.k++;
        }
    }

    public Object[] b() {
        return this.i;
    }

    public int c() {
        return this.k;
    }

    public String toString() {
        int i2 = this.h;
        int i3 = this.k;
        ArrayList arrayList = new ArrayList(i3 + 1);
        int i4 = 0;
        Object[] b = b();
        int i5 = 0;
        while (i4 < i3) {
            arrayList.add(b[i5]);
            i4++;
            i5++;
            if (i5 == i2) {
                b = (Object[]) b[i2];
                i5 = 0;
            }
        }
        return arrayList.toString();
    }
}
