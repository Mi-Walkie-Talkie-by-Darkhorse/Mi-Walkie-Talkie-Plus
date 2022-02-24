package com.ifengyu.intercom.ui.adapter;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Typeface;
import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.i.p;
import com.ifengyu.intercom.ui.setting.SealSharkChannel;
import java.util.List;
import java.util.Locale;

/* compiled from: SealCustomAdapter.java */
/* loaded from: classes2.dex */
public class m extends RecyclerView.g<c> {

    /* renamed from: a  reason: collision with root package name */
    private final LayoutInflater f6337a;

    /* renamed from: b  reason: collision with root package name */
    private List<SealSharkChannel> f6338b;
    private SealSharkChannel d;
    private d o;

    /* renamed from: c  reason: collision with root package name */
    private final Typeface f6339c = p.f5324b;
    private SpannableStringBuilder n = new SpannableStringBuilder();
    private AbsoluteSizeSpan e = new AbsoluteSizeSpan(c0.c(12.0f));
    private final ForegroundColorSpan f = new ForegroundColorSpan(Color.parseColor("#99000000"));
    private final ForegroundColorSpan g = new ForegroundColorSpan(Color.parseColor("#ff0076ff"));
    private final ForegroundColorSpan h = new ForegroundColorSpan(Color.parseColor("#ff000000"));
    private final ForegroundColorSpan i = new ForegroundColorSpan(Color.parseColor("#ff0076ff"));
    private final ForegroundColorSpan j = new ForegroundColorSpan(Color.parseColor("#ff000000"));
    private final ForegroundColorSpan k = new ForegroundColorSpan(Color.parseColor("#ff0076ff"));
    private final ForegroundColorSpan l = new ForegroundColorSpan(Color.parseColor("#99000000"));
    private final ForegroundColorSpan m = new ForegroundColorSpan(Color.parseColor("#960076ff"));

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SealCustomAdapter.java */
    /* loaded from: classes2.dex */
    public class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ c f6340a;

        a(c cVar) {
            this.f6340a = cVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int adapterPosition = this.f6340a.getAdapterPosition();
            if (adapterPosition < m.this.f6338b.size()) {
                m.this.o.a(this.f6340a.itemView, adapterPosition, (SealSharkChannel) m.this.f6338b.get(adapterPosition));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SealCustomAdapter.java */
    /* loaded from: classes2.dex */
    public class b implements View.OnLongClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ c f6342a;

        b(c cVar) {
            this.f6342a = cVar;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            int adapterPosition = this.f6342a.getAdapterPosition();
            if (adapterPosition >= m.this.f6338b.size()) {
                return true;
            }
            m.this.o.b(this.f6342a.itemView, adapterPosition, (SealSharkChannel) m.this.f6338b.get(adapterPosition));
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SealCustomAdapter.java */
    /* loaded from: classes2.dex */
    public class c extends RecyclerView.y {

        /* renamed from: a  reason: collision with root package name */
        TextView f6344a;

        /* renamed from: b  reason: collision with root package name */
        TextView f6345b;

        /* renamed from: c  reason: collision with root package name */
        TextView f6346c;
        TextView d;
        View e;

        public c(View view) {
            super(view);
            this.f6344a = (TextView) view.findViewById(R.id.tv_custom_index);
            this.f6345b = (TextView) view.findViewById(R.id.tv_custom_name);
            this.f6346c = (TextView) view.findViewById(R.id.tv_custom_up);
            this.d = (TextView) view.findViewById(R.id.tv_custom_down);
            this.e = view.findViewById(R.id.bottom_space_view);
        }

        public void a(int i) {
            SealSharkChannel sealSharkChannel = (SealSharkChannel) m.this.f6338b.get(i);
            this.f6344a.setText(String.format(Locale.getDefault(), "C%02d", Integer.valueOf(sealSharkChannel.f() + 1)));
            this.f6345b.setText(sealSharkChannel.e().trim());
            if (sealSharkChannel.equals(m.this.d)) {
                this.f6344a.setTextColor(m.this.g.getForegroundColor());
                this.f6345b.setTextColor(m.this.i.getForegroundColor());
                this.f6346c.setTextColor(m.this.k.getForegroundColor());
                this.d.setTextColor(m.this.k.getForegroundColor());
            } else {
                this.f6344a.setTextColor(m.this.f.getForegroundColor());
                this.f6345b.setTextColor(m.this.h.getForegroundColor());
                this.f6346c.setTextColor(m.this.j.getForegroundColor());
                this.d.setTextColor(m.this.j.getForegroundColor());
            }
            if (sealSharkChannel.h() % 256 == 0 && sealSharkChannel.k() % 256 == 0) {
                this.f6346c.setText(c0.b(sealSharkChannel.i()));
                this.d.setText(c0.b(sealSharkChannel.l()));
            } else {
                m.this.n.clear();
                if (sealSharkChannel.h() % 256 == 0) {
                    m.this.n.append((CharSequence) c0.b(sealSharkChannel.i())).append((CharSequence) " / ").append((CharSequence) k0.c(R.string.css_code_close));
                } else {
                    m.this.n.append((CharSequence) c0.b(sealSharkChannel.i())).append((CharSequence) " / ").append((CharSequence) c0.g(sealSharkChannel.h()));
                }
                int indexOf = m.this.n.toString().indexOf("/");
                m.this.n.setSpan(m.this.e, indexOf, m.this.n.length(), 33);
                if (sealSharkChannel.equals(m.this.d)) {
                    m.this.n.setSpan(m.this.m, indexOf, m.this.n.length(), 33);
                } else {
                    m.this.n.setSpan(m.this.l, indexOf, m.this.n.length(), 33);
                }
                this.f6346c.setText(m.this.n);
                m.this.n.clear();
                if (sealSharkChannel.k() % 256 == 0) {
                    m.this.n.append((CharSequence) c0.b(sealSharkChannel.l())).append((CharSequence) " / ").append((CharSequence) k0.c(R.string.css_code_close));
                } else {
                    m.this.n.append((CharSequence) c0.b(sealSharkChannel.l())).append((CharSequence) " / ").append((CharSequence) c0.g(sealSharkChannel.k()));
                }
                m.this.n.setSpan(m.this.e, indexOf, m.this.n.length(), 33);
                if (sealSharkChannel.equals(m.this.d)) {
                    m.this.n.setSpan(m.this.m, indexOf, m.this.n.length(), 33);
                } else {
                    m.this.n.setSpan(m.this.l, indexOf, m.this.n.length(), 33);
                }
                this.d.setText(m.this.n);
            }
            this.f6346c.setTypeface(m.this.f6339c);
            this.d.setTypeface(m.this.f6339c);
        }
    }

    /* compiled from: SealCustomAdapter.java */
    /* loaded from: classes2.dex */
    public interface d {
        void a(View view, int i, SealSharkChannel sealSharkChannel);

        void b(View view, int i, SealSharkChannel sealSharkChannel);
    }

    public m(Context context, List<SealSharkChannel> list) {
        this.f6337a = LayoutInflater.from(context);
        this.f6338b = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public int getItemCount() {
        List<SealSharkChannel> list = this.f6338b;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    public void setOnItemClickListener(d dVar) {
        this.o = dVar;
    }

    /* renamed from: a */
    public void onBindViewHolder(c cVar, int i) {
        if (i == this.f6338b.size() - 1) {
            cVar.e.setVisibility(0);
        } else {
            cVar.e.setVisibility(8);
        }
        cVar.a(i);
        if (this.o != null) {
            cVar.itemView.setOnClickListener(new a(cVar));
            cVar.itemView.setOnLongClickListener(new b(cVar));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public c onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new c(this.f6337a.inflate(R.layout.item_seal_custom_info, viewGroup, false));
    }

    public void a(SealSharkChannel sealSharkChannel) {
        this.d = sealSharkChannel;
    }
}
