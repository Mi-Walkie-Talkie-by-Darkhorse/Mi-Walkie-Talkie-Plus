package com.ifengyu.intercom.ui.map.a;

import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.ui.adapter.k;
import com.ifengyu.intercom.ui.widget.view.RoundProgressBarView;
import java.util.List;

/* compiled from: OffmapDownloadAdapter */
public class a extends Adapter<C0036a> {
    private List<com.ifengyu.intercom.greendao.bean.a> a;
    /* access modifiers changed from: private */
    public k b;

    /* renamed from: com.ifengyu.intercom.ui.map.a.a$a reason: collision with other inner class name */
    /* compiled from: OffmapDownloadAdapter */
    class C0036a extends ViewHolder implements OnClickListener {
        TextView a;
        TextView b;
        View c;
        RoundProgressBarView d;
        TextView e;

        public C0036a(View view) {
            super(view);
            this.c = view.findViewById(R.id.offmap_click);
            this.a = (TextView) view.findViewById(R.id.offmap_dirname);
            this.b = (TextView) view.findViewById(R.id.offmap_size);
            this.e = (TextView) view.findViewById(R.id.right_had_download_tv);
            this.d = (RoundProgressBarView) view.findViewById(R.id.download_progress);
            this.c.setOnClickListener(this);
        }

        public void onClick(View view) {
            if (a.this.b != null) {
                a.this.b.a(view, getLayoutPosition(), this.d);
            }
        }
    }

    public a(List<com.ifengyu.intercom.greendao.bean.a> list) {
        this.a = list;
    }

    /* renamed from: a */
    public C0036a onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new C0036a(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_offmap_download, viewGroup, false));
    }

    /* renamed from: a */
    public void onBindViewHolder(C0036a aVar, int i) {
        com.ifengyu.intercom.greendao.bean.a aVar2 = (com.ifengyu.intercom.greendao.bean.a) this.a.get(i);
        if (aVar2 != null) {
            aVar.a.setText(aVar2.k());
            aVar.b.setText((aVar2.l().intValue() == 0 ? ad.a((int) R.string.map_satellitic) : ad.a((int) R.string.map_standard)) + aVar2.j());
            if (aVar2.h().intValue() >= aVar2.g().intValue()) {
                aVar.e.setVisibility(8);
                aVar.d.setVisibility(8);
                return;
            }
            aVar.e.setVisibility(8);
            aVar.d.setVisibility(0);
            if (aVar2.m().booleanValue()) {
                aVar.d.setTextIsDisplayable(true);
                aVar.d.setMax(aVar2.g().intValue());
                aVar.d.setProgress(aVar2.h().intValue());
                return;
            }
            aVar.d.setTextIsDisplayable(false);
            aVar.d.postInvalidateDelayed(300);
        }
    }

    public int getItemCount() {
        if (this.a == null) {
            return 0;
        }
        return this.a.size();
    }

    public void a(k kVar) {
        this.b = kVar;
    }
}
