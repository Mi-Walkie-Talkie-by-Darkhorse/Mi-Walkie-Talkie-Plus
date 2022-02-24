package com.ifengyu.intercom.lite.dialog.list;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;

/* compiled from: BottomSheetListAdapter.java */
/* loaded from: classes2.dex */
public class a extends RecyclerView.g<c> {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private View f5374a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private View f5375b;
    private final boolean d;
    private final boolean e;
    private b g;

    /* renamed from: c  reason: collision with root package name */
    private List<c> f5376c = new ArrayList();
    private int f = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BottomSheetListAdapter.java */
    /* renamed from: com.ifengyu.intercom.lite.dialog.list.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class View$OnClickListenerC0153a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ c f5377a;

        View$OnClickListenerC0153a(c cVar) {
            this.f5377a = cVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (a.this.g != null) {
                int adapterPosition = this.f5377a.getAdapterPosition();
                if (a.this.f5374a != null) {
                    adapterPosition--;
                }
                a.this.g.a(this.f5377a, adapterPosition, (c) a.this.f5376c.get(adapterPosition));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BottomSheetListAdapter.java */
    /* loaded from: classes2.dex */
    public interface b {
        void a(c cVar, int i, c cVar2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BottomSheetListAdapter.java */
    /* loaded from: classes2.dex */
    public static class c extends RecyclerView.y {
        public c(@NonNull View view) {
            super(view);
        }
    }

    public a(boolean z, boolean z2) {
        this.d = z;
        this.e = z2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public int getItemCount() {
        int i = 1;
        int size = this.f5376c.size() + (this.f5374a != null ? 1 : 0);
        if (this.f5375b == null) {
            i = 0;
        }
        return size + i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public int getItemViewType(int i) {
        if (this.f5374a == null || i != 0) {
            return (i != getItemCount() - 1 || this.f5375b == null) ? 3 : 2;
        }
        return 1;
    }

    public void setOnItemClickListener(b bVar) {
        this.g = bVar;
    }

    public void a(int i) {
        this.f = i;
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    @NonNull
    public c onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        if (i == 1) {
            return new c(this.f5374a);
        }
        if (i == 2) {
            return new c(this.f5375b);
        }
        c cVar = new c(new BottomSheetListItemView(viewGroup.getContext(), this.d, this.e));
        cVar.itemView.setOnClickListener(new View$OnClickListenerC0153a(cVar));
        return cVar;
    }

    public void a(@Nullable View view, @Nullable View view2, List<c> list) {
        this.f5374a = view;
        this.f5375b = view2;
        this.f5376c.clear();
        if (list != null) {
            this.f5376c.addAll(list);
        }
        notifyDataSetChanged();
    }

    /* renamed from: a */
    public void onBindViewHolder(@NonNull c cVar, int i) {
        if (cVar.getItemViewType() == 3) {
            if (this.f5374a != null) {
                i--;
            }
            ((BottomSheetListItemView) cVar.itemView).a(this.f5376c.get(i), i == this.f);
        }
    }
}
