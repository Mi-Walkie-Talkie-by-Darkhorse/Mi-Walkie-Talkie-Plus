package p048b.p078f.p079a.p080a.p081c;

import android.content.Context;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;

/* renamed from: b.f.a.a.c.c */
/* loaded from: classes.dex */
public class ViewHolder extends RecyclerView.AbstractC0849y {

    /* renamed from: a */
    private SparseArray<View> f5380a;

    /* renamed from: b */
    private View f5381b;

    public ViewHolder(Context context, View view) {
        super(view);
        this.f5381b = view;
        this.f5380a = new SparseArray<>();
    }

    /* renamed from: a */
    public static ViewHolder m20983a(Context context, View view) {
        return new ViewHolder(context, view);
    }

    /* renamed from: b */
    public static ViewHolder m20982b(Context context, ViewGroup viewGroup, int i) {
        return new ViewHolder(context, LayoutInflater.from(context).inflate(i, viewGroup, false));
    }

    /* renamed from: c */
    public View m20981c() {
        return this.f5381b;
    }

    public <T extends View> T getView(int i) {
        T t = (T) this.f5380a.get(i);
        if (t == null) {
            T t2 = (T) this.f5381b.findViewById(i);
            this.f5380a.put(i, t2);
            return t2;
        }
        return t;
    }
}
