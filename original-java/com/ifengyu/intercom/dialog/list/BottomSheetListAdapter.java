package com.ifengyu.intercom.dialog.list;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.ifengyu.intercom.dialog.list.a */
/* loaded from: classes2.dex */
public class BottomSheetListAdapter extends RecyclerView.Adapter<C3844c> {
    @Nullable

    /* renamed from: a */
    private View f13665a;
    @Nullable

    /* renamed from: b */
    private View f13666b;

    /* renamed from: d */
    private final boolean f13668d;

    /* renamed from: e */
    private final boolean f13669e;

    /* renamed from: g */
    private InterfaceC3843b f13671g;

    /* renamed from: c */
    private List<BottomSheetListItemModel> f13667c = new ArrayList();

    /* renamed from: f */
    private int f13670f = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BottomSheetListAdapter.java */
    /* renamed from: com.ifengyu.intercom.dialog.list.a$a */
    /* loaded from: classes2.dex */
    public class View$OnClickListenerC3842a implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ C3844c f13672a;

        View$OnClickListenerC3842a(C3844c c3844c) {
            this.f13672a = c3844c;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (BottomSheetListAdapter.this.f13671g != null) {
                int adapterPosition = this.f13672a.getAdapterPosition();
                if (BottomSheetListAdapter.this.f13665a != null) {
                    adapterPosition--;
                }
                BottomSheetListAdapter.this.f13671g.mo12438a(this.f13672a, adapterPosition, (BottomSheetListItemModel) BottomSheetListAdapter.this.f13667c.get(adapterPosition));
            }
        }
    }

    /* compiled from: BottomSheetListAdapter.java */
    /* renamed from: com.ifengyu.intercom.dialog.list.a$b */
    /* loaded from: classes2.dex */
    interface InterfaceC3843b {
        /* renamed from: a */
        void mo12438a(C3844c c3844c, int i, BottomSheetListItemModel bottomSheetListItemModel);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BottomSheetListAdapter.java */
    /* renamed from: com.ifengyu.intercom.dialog.list.a$c */
    /* loaded from: classes2.dex */
    public static class C3844c extends RecyclerView.AbstractC0849y {
        public C3844c(@NonNull View view) {
            super(view);
        }
    }

    public BottomSheetListAdapter(boolean z, boolean z2) {
        this.f13668d = z;
        this.f13669e = z2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f13667c.size() + (this.f13665a != null ? 1 : 0) + (this.f13666b == null ? 0 : 1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        if (this.f13665a == null || i != 0) {
            return (i != getItemCount() - 1 || this.f13666b == null) ? 3 : 2;
        }
        return 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: h */
    public void onBindViewHolder(@NonNull C3844c c3844c, int i) {
        if (c3844c.getItemViewType() != 3) {
            return;
        }
        if (this.f13665a != null) {
            i--;
        }
        ((BottomSheetListItemView) c3844c.itemView).m12454d(this.f13667c.get(i), i == this.f13670f);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* renamed from: i */
    public C3844c onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        if (i == 1) {
            return new C3844c(this.f13665a);
        }
        if (i == 2) {
            return new C3844c(this.f13666b);
        }
        C3844c c3844c = new C3844c(new BottomSheetListItemView(viewGroup.getContext(), this.f13668d, this.f13669e));
        c3844c.itemView.setOnClickListener(new View$OnClickListenerC3842a(c3844c));
        return c3844c;
    }

    /* renamed from: j */
    public void m12448j(int i) {
        this.f13670f = i;
        notifyDataSetChanged();
    }

    /* renamed from: k */
    public void m12447k(@Nullable View view, @Nullable View view2, List<BottomSheetListItemModel> list) {
        this.f13665a = view;
        this.f13666b = view2;
        this.f13667c.clear();
        if (list != null) {
            this.f13667c.addAll(list);
        }
        notifyDataSetChanged();
    }

    public void setOnItemClickListener(InterfaceC3843b interfaceC3843b) {
        this.f13671g = interfaceC3843b;
    }
}
