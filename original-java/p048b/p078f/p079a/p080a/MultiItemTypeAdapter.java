package p048b.p078f.p079a.p080a;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;
import p048b.p078f.p079a.p080a.p081c.ItemViewDelegate;
import p048b.p078f.p079a.p080a.p081c.ItemViewDelegateManager;
import p048b.p078f.p079a.p080a.p081c.ViewHolder;

/* renamed from: b.f.a.a.b */
/* loaded from: classes.dex */
public class MultiItemTypeAdapter<T> extends RecyclerView.Adapter<ViewHolder> {

    /* renamed from: a */
    protected Context f5371a;

    /* renamed from: b */
    protected List<T> f5372b;

    /* renamed from: c */
    protected ItemViewDelegateManager f5373c = new ItemViewDelegateManager();

    /* renamed from: d */
    protected InterfaceC1146c f5374d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MultiItemTypeAdapter.java */
    /* renamed from: b.f.a.a.b$a */
    /* loaded from: classes.dex */
    public class View$OnClickListenerC1144a implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ ViewHolder f5375a;

        View$OnClickListenerC1144a(ViewHolder viewHolder) {
            this.f5375a = viewHolder;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (MultiItemTypeAdapter.this.f5374d != null) {
                MultiItemTypeAdapter.this.f5374d.m20993a(view, this.f5375a, this.f5375a.getAdapterPosition());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MultiItemTypeAdapter.java */
    /* renamed from: b.f.a.a.b$b */
    /* loaded from: classes.dex */
    public class View$OnLongClickListenerC1145b implements View.OnLongClickListener {

        /* renamed from: a */
        final /* synthetic */ ViewHolder f5377a;

        View$OnLongClickListenerC1145b(ViewHolder viewHolder) {
            this.f5377a = viewHolder;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            if (MultiItemTypeAdapter.this.f5374d != null) {
                return MultiItemTypeAdapter.this.f5374d.m20992b(view, this.f5377a, this.f5377a.getAdapterPosition());
            }
            return false;
        }
    }

    /* compiled from: MultiItemTypeAdapter.java */
    /* renamed from: b.f.a.a.b$c */
    /* loaded from: classes.dex */
    public interface InterfaceC1146c {
        /* renamed from: a */
        void m20993a(View view, RecyclerView.AbstractC0849y abstractC0849y, int i);

        /* renamed from: b */
        boolean m20992b(View view, RecyclerView.AbstractC0849y abstractC0849y, int i);
    }

    public MultiItemTypeAdapter(Context context, List<T> list) {
        this.f5371a = context;
        this.f5372b = list;
    }

    /* renamed from: e */
    public MultiItemTypeAdapter m21000e(ItemViewDelegate<T> itemViewDelegate) {
        this.f5373c.m20988a(itemViewDelegate);
        return this;
    }

    /* renamed from: f */
    public void m20999f(ViewHolder viewHolder, T t) {
        this.f5373c.m20987b(viewHolder, t, viewHolder.getAdapterPosition());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: g */
    public boolean m20998g(int i) {
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f5372b.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return !m20994l() ? super.getItemViewType(i) : this.f5373c.m20984e(this.f5372b.get(i), i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: h */
    public void onBindViewHolder(ViewHolder viewHolder, int i) {
        m20999f(viewHolder, this.f5372b.get(i));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: i */
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        ViewHolder m20982b = ViewHolder.m20982b(this.f5371a, viewGroup, this.f5373c.m20986c(i).mo20990b());
        m20995j(m20982b, m20982b.m20981c());
        mo12495k(viewGroup, m20982b, i);
        return m20982b;
    }

    /* renamed from: j */
    public void m20995j(ViewHolder viewHolder, View view) {
    }

    /* renamed from: k */
    protected void mo12495k(ViewGroup viewGroup, ViewHolder viewHolder, int i) {
        if (m20998g(i)) {
            viewHolder.m20981c().setOnClickListener(new View$OnClickListenerC1144a(viewHolder));
            viewHolder.m20981c().setOnLongClickListener(new View$OnLongClickListenerC1145b(viewHolder));
        }
    }

    /* renamed from: l */
    protected boolean m20994l() {
        return this.f5373c.m20985d() > 0;
    }

    public void setOnItemClickListener(InterfaceC1146c interfaceC1146c) {
        this.f5374d = interfaceC1146c;
    }
}
