package de.greenrobot.event;

/* compiled from: Subscription */
final class l {
    final Object a;
    final j b;
    final int c;
    volatile boolean d = true;

    l(Object obj, j jVar, int i) {
        this.a = obj;
        this.b = jVar;
        this.c = i;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        if (this.a != lVar.a || !this.b.equals(lVar.b)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return this.a.hashCode() + this.b.d.hashCode();
    }
}
