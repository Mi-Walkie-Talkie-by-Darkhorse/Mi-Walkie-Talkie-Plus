package com.github.mikephil.charting.data;

import com.github.mikephil.charting.data.Entry;
import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import java.util.ArrayList;
import java.util.List;

public abstract class DataSet<T extends Entry> extends d<T> {
    protected List<T> k = null;
    protected float l = -3.4028235E38f;
    protected float m = Float.MAX_VALUE;
    protected float n = -3.4028235E38f;
    protected float o = Float.MAX_VALUE;

    public enum Rounding {
        UP,
        DOWN,
        CLOSEST
    }

    public DataSet(List<T> list, String str) {
        super(str);
        this.k = list;
        if (this.k == null) {
            this.k = new ArrayList();
        }
        r();
    }

    public void r() {
        if (this.k != null && !this.k.isEmpty()) {
            this.l = -3.4028235E38f;
            this.m = Float.MAX_VALUE;
            this.n = -3.4028235E38f;
            this.o = Float.MAX_VALUE;
            for (T a : this.k) {
                a(a);
            }
        }
    }

    public void a(float f, float f2) {
        if (this.k != null && !this.k.isEmpty()) {
            this.l = -3.4028235E38f;
            this.m = Float.MAX_VALUE;
            int b = b(f, Float.NaN, Rounding.DOWN);
            int b2 = b(f2, Float.NaN, Rounding.UP);
            for (int i = b; i <= b2; i++) {
                c((Entry) this.k.get(i));
            }
        }
    }

    /* access modifiers changed from: protected */
    public void a(T t) {
        if (t != null) {
            b(t);
            c(t);
        }
    }

    /* access modifiers changed from: protected */
    public void b(T t) {
        if (t.h() < this.o) {
            this.o = t.h();
        }
        if (t.h() > this.n) {
            this.n = t.h();
        }
    }

    /* access modifiers changed from: protected */
    public void c(T t) {
        if (t.b() < this.m) {
            this.m = t.b();
        }
        if (t.b() > this.l) {
            this.l = t.b();
        }
    }

    public int s() {
        return this.k.size();
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(t());
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.k.size()) {
                return stringBuffer.toString();
            }
            stringBuffer.append(((Entry) this.k.get(i2)).toString() + Token.SEPARATOR);
            i = i2 + 1;
        }
    }

    public String t() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("DataSet, label: " + (e() == null ? "" : e()) + ", entries: " + this.k.size() + "\n");
        return stringBuffer.toString();
    }

    public float u() {
        return this.m;
    }

    public float v() {
        return this.l;
    }

    public float w() {
        return this.o;
    }

    public float x() {
        return this.n;
    }

    public int d(Entry entry) {
        return this.k.indexOf(entry);
    }

    public T a(float f, float f2, Rounding rounding) {
        int b = b(f, f2, rounding);
        if (b > -1) {
            return (Entry) this.k.get(b);
        }
        return null;
    }

    public T b(float f, float f2) {
        return a(f, f2, Rounding.CLOSEST);
    }

    public T d(int i) {
        return (Entry) this.k.get(i);
    }

    public int b(float f, float f2, Rounding rounding) {
        int i;
        int i2;
        float f3;
        int i3;
        int i4;
        if (this.k == null || this.k.isEmpty()) {
            return -1;
        }
        int i5 = 0;
        int size = this.k.size() - 1;
        int i6 = size;
        while (i5 < i6) {
            int i7 = (i5 + i6) / 2;
            float h = ((Entry) this.k.get(i7)).h() - f;
            float h2 = ((Entry) this.k.get(i7 + 1)).h() - f;
            float abs = Math.abs(h);
            float abs2 = Math.abs(h2);
            if (abs2 < abs) {
                int i8 = i6;
                i4 = i7 + 1;
                i3 = i8;
            } else if (abs < abs2) {
                i3 = i7;
                i4 = i5;
            } else if (((double) h) >= 0.0d) {
                i3 = i7;
                i4 = i5;
            } else if (((double) h) < 0.0d) {
                int i9 = i6;
                i4 = i7 + 1;
                i3 = i9;
            } else {
                i3 = i6;
                i4 = i5;
            }
            size = i3;
            i5 = i4;
            i6 = i3;
        }
        if (size == -1) {
            return size;
        }
        float h3 = ((Entry) this.k.get(size)).h();
        if (rounding == Rounding.UP) {
            if (h3 < f && size < this.k.size() - 1) {
                i = size + 1;
            }
            i = size;
        } else {
            if (rounding == Rounding.DOWN && h3 > f && size > 0) {
                i = size - 1;
            }
            i = size;
        }
        if (Float.isNaN(f2)) {
            return i;
        }
        int i10 = i;
        while (i10 > 0 && ((Entry) this.k.get(i10 - 1)).h() == h3) {
            i10--;
        }
        float b = ((Entry) this.k.get(i10)).b();
        int i11 = i10;
        while (true) {
            int i12 = i11 + 1;
            if (i12 < this.k.size()) {
                Entry entry = (Entry) this.k.get(i12);
                if (entry.h() != h3) {
                    break;
                }
                if (Math.abs(entry.b() - f2) < Math.abs(b - f2)) {
                    i2 = i12;
                    f3 = f2;
                } else {
                    i2 = i10;
                    f3 = b;
                }
                b = f3;
                i10 = i2;
                i11 = i12;
            } else {
                break;
            }
        }
        return i10;
    }

    public List<T> a(float f) {
        int i;
        int i2;
        ArrayList arrayList = new ArrayList();
        int i3 = 0;
        int size = this.k.size() - 1;
        while (true) {
            if (i3 > size) {
                break;
            }
            int i4 = (size + i3) / 2;
            Entry entry = (Entry) this.k.get(i4);
            if (f == entry.h()) {
                int i5 = i4;
                while (i5 > 0 && ((Entry) this.k.get(i5 - 1)).h() == f) {
                    i5--;
                }
                int size2 = this.k.size();
                while (i5 < size2) {
                    Entry entry2 = (Entry) this.k.get(i5);
                    if (entry2.h() != f) {
                        break;
                    }
                    arrayList.add(entry2);
                    i5++;
                }
            } else {
                if (f > entry.h()) {
                    int i6 = size;
                    i2 = i4 + 1;
                    i = i6;
                } else {
                    i = i4 - 1;
                    i2 = i3;
                }
                i3 = i2;
                size = i;
            }
        }
        return arrayList;
    }
}
