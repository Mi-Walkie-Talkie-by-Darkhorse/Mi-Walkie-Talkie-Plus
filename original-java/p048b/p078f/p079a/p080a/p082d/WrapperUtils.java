package p048b.p078f.p079a.p080a.p082d;

import android.view.ViewGroup;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;

/* renamed from: b.f.a.a.d.a */
/* loaded from: classes.dex */
public class WrapperUtils {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WrapperUtils.java */
    /* renamed from: b.f.a.a.d.a$a */
    /* loaded from: classes.dex */
    public static class C1147a extends GridLayoutManager.AbstractC0810b {

        /* renamed from: e */
        final /* synthetic */ InterfaceC1148b f5382e;

        /* renamed from: f */
        final /* synthetic */ GridLayoutManager f5383f;

        /* renamed from: g */
        final /* synthetic */ GridLayoutManager.AbstractC0810b f5384g;

        C1147a(InterfaceC1148b interfaceC1148b, GridLayoutManager gridLayoutManager, GridLayoutManager.AbstractC0810b abstractC0810b) {
            this.f5382e = interfaceC1148b;
            this.f5383f = gridLayoutManager;
            this.f5384g = abstractC0810b;
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.AbstractC0810b
        /* renamed from: f */
        public int mo17009f(int i) {
            return this.f5382e.mo20970a(this.f5383f, this.f5384g, i);
        }
    }

    /* compiled from: WrapperUtils.java */
    /* renamed from: b.f.a.a.d.a$b */
    /* loaded from: classes.dex */
    public interface InterfaceC1148b {
        /* renamed from: a */
        int mo20970a(GridLayoutManager gridLayoutManager, GridLayoutManager.AbstractC0810b abstractC0810b, int i);
    }

    /* renamed from: a */
    public static void m20980a(RecyclerView.Adapter adapter, RecyclerView recyclerView, InterfaceC1148b interfaceC1148b) {
        adapter.onAttachedToRecyclerView(recyclerView);
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
            gridLayoutManager.m22480t(new C1147a(interfaceC1148b, gridLayoutManager, gridLayoutManager.m22485o()));
            gridLayoutManager.m22481s(gridLayoutManager.m22489k());
        }
    }

    /* renamed from: b */
    public static void m20979b(RecyclerView.AbstractC0849y abstractC0849y) {
        ViewGroup.LayoutParams layoutParams = abstractC0849y.itemView.getLayoutParams();
        if (layoutParams == null || !(layoutParams instanceof StaggeredGridLayoutManager.LayoutParams)) {
            return;
        }
        ((StaggeredGridLayoutManager.LayoutParams) layoutParams).m22294f(true);
    }
}
