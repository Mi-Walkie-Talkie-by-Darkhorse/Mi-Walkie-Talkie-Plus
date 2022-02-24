package com.ifengyu.intercom.ui.map.c;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.ui.adapter.k;
import com.ifengyu.intercom.ui.widget.view.RoundProgressBarView;
import java.util.List;

/* compiled from: OffmapDownloadAdapter.java */
/* loaded from: classes2.dex */
public class a extends RecyclerView.g<View$OnClickListenerC0169a> {

    /* renamed from: a  reason: collision with root package name */
    private List<com.ifengyu.intercom.greendao.bean.a> f6512a;

    /* renamed from: b  reason: collision with root package name */
    private k f6513b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: OffmapDownloadAdapter.java */
    /* renamed from: com.ifengyu.intercom.ui.map.c.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class View$OnClickListenerC0169a extends RecyclerView.y implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        TextView f6514a;

        /* renamed from: b  reason: collision with root package name */
        TextView f6515b;

        /* renamed from: c  reason: collision with root package name */
        View f6516c;
        RoundProgressBarView d;
        TextView e;

        public View$OnClickListenerC0169a(View view) {
            super(view);
            this.f6516c = view.findViewById(R.id.offmap_click);
            this.f6514a = (TextView) view.findViewById(R.id.offmap_dirname);
            this.f6515b = (TextView) view.findViewById(R.id.offmap_size);
            this.e = (TextView) view.findViewById(R.id.right_had_download_tv);
            this.d = (RoundProgressBarView) view.findViewById(R.id.download_progress);
            this.f6516c.setOnClickListener(this);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (a.this.f6513b != null) {
                a.this.f6513b.a(view, getLayoutPosition(), this.d);
            }
        }
    }

    public a(List<com.ifengyu.intercom.greendao.bean.a> list) {
        this.f6512a = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public int getItemCount() {
        List<com.ifengyu.intercom.greendao.bean.a> list = this.f6512a;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    /* renamed from: a */
    public void onBindViewHolder(View$OnClickListenerC0169a aVar, int i) {
        com.ifengyu.intercom.greendao.bean.a aVar2 = this.f6512a.get(i);
        if (aVar2 != null) {
            aVar.f6514a.setText(aVar2.b());
            TextView textView = aVar.f6515b;
            StringBuilder sb = new StringBuilder();
            sb.append(k0.c(aVar2.j().intValue() == 0 ? R.string.map_satellitic : R.string.map_standard));
            sb.append(aVar2.k());
            textView.setText(sb.toString());
            if (aVar2.l().intValue() >= aVar2.a().intValue()) {
                aVar.e.setVisibility(8);
                aVar.d.setVisibility(8);
                return;
            }
            aVar.e.setVisibility(8);
            aVar.d.setVisibility(0);
            if (aVar2.e().booleanValue()) {
                aVar.d.setTextIsDisplayable(true);
                aVar.d.setMax(aVar2.a().intValue());
                aVar.d.setProgress(aVar2.l().intValue());
                return;
            }
            aVar.d.setTextIsDisplayable(false);
            aVar.d.postInvalidateDelayed(300L);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public View$OnClickListenerC0169a onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new View$OnClickListenerC0169a(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_offmap_download, viewGroup, false));
    }

    public void a(k kVar) {
        this.f6513b = kVar;
    }
}
