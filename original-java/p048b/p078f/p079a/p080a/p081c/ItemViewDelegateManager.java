package p048b.p078f.p079a.p080a.p081c;

import p000a.p006b.SparseArrayCompat;

/* renamed from: b.f.a.a.c.b */
/* loaded from: classes.dex */
public class ItemViewDelegateManager<T> {

    /* renamed from: a */
    SparseArrayCompat<ItemViewDelegate<T>> f5379a = new SparseArrayCompat<>();

    /* renamed from: a */
    public ItemViewDelegateManager<T> m20988a(ItemViewDelegate<T> itemViewDelegate) {
        int m26441k = this.f5379a.m26441k();
        if (itemViewDelegate != null) {
            this.f5379a.m26443i(m26441k, itemViewDelegate);
        }
        return this;
    }

    /* renamed from: b */
    public void m20987b(ViewHolder viewHolder, T t, int i) {
        int m26441k = this.f5379a.m26441k();
        for (int i2 = 0; i2 < m26441k; i2++) {
            ItemViewDelegate<T> m26440l = this.f5379a.m26440l(i2);
            if (m26440l.mo20991a(t, i)) {
                m26440l.mo20989c(viewHolder, t, i);
                return;
            }
        }
        throw new IllegalArgumentException("No ItemViewDelegateManager added that matches position=" + i + " in data source");
    }

    /* renamed from: c */
    public ItemViewDelegate m20986c(int i) {
        return this.f5379a.m26447e(i);
    }

    /* renamed from: d */
    public int m20985d() {
        return this.f5379a.m26441k();
    }

    /* renamed from: e */
    public int m20984e(T t, int i) {
        for (int m26441k = this.f5379a.m26441k() - 1; m26441k >= 0; m26441k--) {
            if (this.f5379a.m26440l(m26441k).mo20991a(t, i)) {
                return this.f5379a.m26444h(m26441k);
            }
        }
        throw new IllegalArgumentException("No ItemViewDelegate added that matches position=" + i + " in data source");
    }
}
