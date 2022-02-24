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
import com.google.android.material.timepicker.TimeModel;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.i.p;
import com.ifengyu.intercom.ui.setting.SealSharkChannel;
import java.util.List;
import java.util.Locale;

/* compiled from: SharkCustomAdapter.java */
/* loaded from: classes2.dex */
public class o extends RecyclerView.g<c> {

    /* renamed from: a  reason: collision with root package name */
    private final LayoutInflater f6359a;

    /* renamed from: b  reason: collision with root package name */
    private List<SealSharkChannel> f6360b;
    private SealSharkChannel d;
    private d m;

    /* renamed from: c  reason: collision with root package name */
    private final Typeface f6361c = p.f5324b;
    private SpannableStringBuilder l = new SpannableStringBuilder();
    private AbsoluteSizeSpan e = new AbsoluteSizeSpan(c0.c(12.0f));
    private final ForegroundColorSpan f = new ForegroundColorSpan(Color.parseColor("#99000000"));
    private final ForegroundColorSpan g = new ForegroundColorSpan(Color.parseColor("#960076ff"));
    private final ForegroundColorSpan h = new ForegroundColorSpan(Color.parseColor("#ff000000"));
    private final ForegroundColorSpan i = new ForegroundColorSpan(Color.parseColor("#ff0076ff"));
    private final ForegroundColorSpan j = new ForegroundColorSpan(Color.parseColor("#99000000"));
    private final ForegroundColorSpan k = new ForegroundColorSpan(Color.parseColor("#960076ff"));

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SharkCustomAdapter.java */
    /* loaded from: classes2.dex */
    public class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ c f6362a;

        a(c cVar) {
            this.f6362a = cVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int adapterPosition = this.f6362a.getAdapterPosition();
            if (adapterPosition < o.this.f6360b.size() && adapterPosition >= 0) {
                o.this.m.a(this.f6362a.itemView, adapterPosition, (SealSharkChannel) o.this.f6360b.get(adapterPosition));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SharkCustomAdapter.java */
    /* loaded from: classes2.dex */
    public class b implements View.OnLongClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ c f6364a;

        b(c cVar) {
            this.f6364a = cVar;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            int adapterPosition = this.f6364a.getAdapterPosition();
            if (adapterPosition >= o.this.f6360b.size() || adapterPosition < 0) {
                return true;
            }
            o.this.m.b(this.f6364a.itemView, adapterPosition, (SealSharkChannel) o.this.f6360b.get(adapterPosition));
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SharkCustomAdapter.java */
    /* loaded from: classes2.dex */
    public class c extends RecyclerView.y {

        /* renamed from: a  reason: collision with root package name */
        TextView f6366a;

        /* renamed from: b  reason: collision with root package name */
        TextView f6367b;

        /* renamed from: c  reason: collision with root package name */
        TextView f6368c;
        TextView d;
        View e;

        public c(View view) {
            super(view);
            this.f6366a = (TextView) view.findViewById(R.id.tv_custom_index);
            this.f6367b = (TextView) view.findViewById(R.id.tv_custom_name);
            this.f6368c = (TextView) view.findViewById(R.id.tv_custom_up);
            this.d = (TextView) view.findViewById(R.id.tv_custom_down);
            this.e = view.findViewById(R.id.bottom_space_view);
        }

        public void a(int i) {
            SealSharkChannel sealSharkChannel = (SealSharkChannel) o.this.f6360b.get(i);
            this.f6366a.setText(String.format(Locale.getDefault(), TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(sealSharkChannel.f() + 1)));
            this.f6367b.setText(sealSharkChannel.e().trim());
            if (sealSharkChannel.equals(o.this.d)) {
                this.f6366a.setTextColor(o.this.g.getForegroundColor());
                this.f6368c.setTextColor(o.this.i.getForegroundColor());
                this.d.setTextColor(o.this.i.getForegroundColor());
            } else {
                this.f6366a.setTextColor(o.this.f.getForegroundColor());
                this.f6368c.setTextColor(o.this.h.getForegroundColor());
                this.d.setTextColor(o.this.h.getForegroundColor());
            }
            if (sealSharkChannel.h() % 256 == 0 && sealSharkChannel.k() % 256 == 0) {
                this.f6368c.setText(c0.b(sealSharkChannel.i()));
                this.d.setText(c0.b(sealSharkChannel.l()));
            } else {
                o.this.l.clear();
                if (sealSharkChannel.h() % 256 == 0) {
                    o.this.l.append((CharSequence) c0.b(sealSharkChannel.i())).append((CharSequence) " / ").append((CharSequence) k0.c(R.string.css_code_close));
                } else {
                    o.this.l.append((CharSequence) c0.b(sealSharkChannel.i())).append((CharSequence) " / ").append((CharSequence) c0.h(sealSharkChannel.h()));
                }
                int indexOf = o.this.l.toString().indexOf("/");
                o.this.l.setSpan(o.this.e, indexOf, o.this.l.length(), 33);
                if (sealSharkChannel.equals(o.this.d)) {
                    o.this.l.setSpan(o.this.k, indexOf, o.this.l.length(), 33);
                } else {
                    o.this.l.setSpan(o.this.j, indexOf, o.this.l.length(), 33);
                }
                this.f6368c.setText(o.this.l);
                o.this.l.clear();
                if (sealSharkChannel.k() % 256 == 0) {
                    o.this.l.append((CharSequence) c0.b(sealSharkChannel.l())).append((CharSequence) " / ").append((CharSequence) k0.c(R.string.css_code_close));
                } else {
                    o.this.l.append((CharSequence) c0.b(sealSharkChannel.l())).append((CharSequence) " / ").append((CharSequence) c0.h(sealSharkChannel.k()));
                }
                o.this.l.setSpan(o.this.e, indexOf, o.this.l.length(), 33);
                if (sealSharkChannel.equals(o.this.d)) {
                    o.this.l.setSpan(o.this.k, indexOf, o.this.l.length(), 33);
                } else {
                    o.this.l.setSpan(o.this.j, indexOf, o.this.l.length(), 33);
                }
                this.d.setText(o.this.l);
            }
            this.f6368c.setTypeface(o.this.f6361c);
            this.d.setTypeface(o.this.f6361c);
        }
    }

    /* compiled from: SharkCustomAdapter.java */
    /* loaded from: classes2.dex */
    public interface d {
        void a(View view, int i, SealSharkChannel sealSharkChannel);

        void b(View view, int i, SealSharkChannel sealSharkChannel);
    }

    public o(Context context, List<SealSharkChannel> list) {
        this.f6359a = LayoutInflater.from(context);
        this.f6360b = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public int getItemCount() {
        List<SealSharkChannel> list = this.f6360b;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    public void setOnItemClickListener(d dVar) {
        this.m = dVar;
    }

    /* renamed from: a */
    public void onBindViewHolder(c cVar, int i) {
        if (i == this.f6360b.size() - 1) {
            cVar.e.setVisibility(0);
        } else {
            cVar.e.setVisibility(8);
        }
        cVar.a(i);
        if (this.m != null) {
            cVar.itemView.setOnClickListener(new a(cVar));
            cVar.itemView.setOnLongClickListener(new b(cVar));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public c onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new c(this.f6359a.inflate(R.layout.item_shark_custom_info, viewGroup, false));
    }

    public void a(SealSharkChannel sealSharkChannel) {
        this.d = sealSharkChannel;
    }
}
