package p048b.p078f.p079a.p080a;

import android.content.Context;
import android.view.LayoutInflater;
import java.util.List;
import p048b.p078f.p079a.p080a.p081c.ItemViewDelegate;
import p048b.p078f.p079a.p080a.p081c.ViewHolder;

/* renamed from: b.f.a.a.a */
/* loaded from: classes.dex */
public abstract class CommonAdapter<T> extends MultiItemTypeAdapter<T> {

    /* renamed from: e */
    protected List<T> f5368e;

    /* compiled from: CommonAdapter.java */
    /* renamed from: b.f.a.a.a$a */
    /* loaded from: classes.dex */
    class C1143a implements ItemViewDelegate<T> {

        /* renamed from: a */
        final /* synthetic */ int f5369a;

        C1143a(int i) {
            this.f5369a = i;
        }

        @Override // p048b.p078f.p079a.p080a.p081c.ItemViewDelegate
        /* renamed from: a */
        public boolean mo20991a(T t, int i) {
            return true;
        }

        @Override // p048b.p078f.p079a.p080a.p081c.ItemViewDelegate
        /* renamed from: b */
        public int mo20990b() {
            return this.f5369a;
        }

        @Override // p048b.p078f.p079a.p080a.p081c.ItemViewDelegate
        /* renamed from: c */
        public void mo20989c(ViewHolder viewHolder, T t, int i) {
            CommonAdapter.this.mo12588m(viewHolder, t, i);
        }
    }

    public CommonAdapter(Context context, int i, List<T> list) {
        super(context, list);
        LayoutInflater.from(context);
        this.f5368e = list;
        m21000e(new C1143a(i));
    }

    /* renamed from: m */
    protected abstract void mo12588m(ViewHolder viewHolder, T t, int i);
}
