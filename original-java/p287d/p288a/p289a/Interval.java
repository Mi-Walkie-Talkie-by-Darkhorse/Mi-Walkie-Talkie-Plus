package p287d.p288a.p289a;

import com.xiaomi.mipush.sdk.Constants;

/* renamed from: d.a.a.a */
/* loaded from: classes3.dex */
public class Interval implements Intervalable {

    /* renamed from: a */
    private int f23697a;

    /* renamed from: b */
    private int f23698b;

    /* renamed from: a */
    public int m840a() {
        return (this.f23698b - this.f23697a) + 1;
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        if (obj instanceof Intervalable) {
            Intervalable intervalable = (Intervalable) obj;
            int start = this.f23697a - intervalable.getStart();
            return start != 0 ? start : this.f23698b - intervalable.getEnd();
        }
        return -1;
    }

    public boolean equals(Object obj) {
        if (obj instanceof Intervalable) {
            Intervalable intervalable = (Intervalable) obj;
            return this.f23697a == intervalable.getStart() && this.f23698b == intervalable.getEnd();
        }
        return false;
    }

    @Override // p287d.p288a.p289a.Intervalable
    public int getEnd() {
        return this.f23698b;
    }

    @Override // p287d.p288a.p289a.Intervalable
    public int getStart() {
        return this.f23697a;
    }

    public int hashCode() {
        return (this.f23697a % 100) + (this.f23698b % 100);
    }

    public String toString() {
        return this.f23697a + Constants.COLON_SEPARATOR + this.f23698b;
    }
}
