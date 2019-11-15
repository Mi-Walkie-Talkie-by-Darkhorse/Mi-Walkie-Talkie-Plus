package com.ifengyu.intercom.ui.adapter;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Typeface;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.l;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.ui.setting.SealSharkChannel;
import java.util.List;
import java.util.Locale;

/* compiled from: SharkCustomAdapter */
public class n extends Adapter<a> {
    private final LayoutInflater a;
    /* access modifiers changed from: private */
    public List<SealSharkChannel> b;
    /* access modifiers changed from: private */
    public final Typeface c = l.c;
    /* access modifiers changed from: private */
    public SealSharkChannel d;
    /* access modifiers changed from: private */
    public AbsoluteSizeSpan e = new AbsoluteSizeSpan(v.c(12.0f));
    /* access modifiers changed from: private */
    public final ForegroundColorSpan f = new ForegroundColorSpan(Color.parseColor("#99000000"));
    /* access modifiers changed from: private */
    public final ForegroundColorSpan g = new ForegroundColorSpan(Color.parseColor("#960076ff"));
    /* access modifiers changed from: private */
    public final ForegroundColorSpan h = new ForegroundColorSpan(Color.parseColor("#ff000000"));
    /* access modifiers changed from: private */
    public final ForegroundColorSpan i = new ForegroundColorSpan(Color.parseColor("#ff0076ff"));
    /* access modifiers changed from: private */
    public final ForegroundColorSpan j = new ForegroundColorSpan(Color.parseColor("#99000000"));
    /* access modifiers changed from: private */
    public final ForegroundColorSpan k = new ForegroundColorSpan(Color.parseColor("#960076ff"));
    /* access modifiers changed from: private */
    public SpannableStringBuilder l = new SpannableStringBuilder();
    /* access modifiers changed from: private */
    public b m;

    /* compiled from: SharkCustomAdapter */
    class a extends ViewHolder {
        TextView a;
        TextView b;
        TextView c;
        TextView d;
        View e;

        public a(View view) {
            super(view);
            this.a = (TextView) view.findViewById(R.id.tv_custom_index);
            this.b = (TextView) view.findViewById(R.id.tv_custom_name);
            this.c = (TextView) view.findViewById(R.id.tv_custom_up);
            this.d = (TextView) view.findViewById(R.id.tv_custom_down);
            this.e = view.findViewById(R.id.bottom_space_view);
        }

        public void a(int i) {
            SealSharkChannel sealSharkChannel = (SealSharkChannel) n.this.b.get(i);
            this.a.setText(String.format(Locale.getDefault(), "%02d", new Object[]{Integer.valueOf(sealSharkChannel.b() + 1)}));
            this.b.setText(sealSharkChannel.g().trim());
            if (sealSharkChannel.equals(n.this.d)) {
                this.a.setTextColor(n.this.g.getForegroundColor());
                this.c.setTextColor(n.this.i.getForegroundColor());
                this.d.setTextColor(n.this.i.getForegroundColor());
            } else {
                this.a.setTextColor(n.this.f.getForegroundColor());
                this.c.setTextColor(n.this.h.getForegroundColor());
                this.d.setTextColor(n.this.h.getForegroundColor());
            }
            if (sealSharkChannel.j() % 256 == 0 && sealSharkChannel.k() % 256 == 0) {
                this.c.setText(v.c(sealSharkChannel.e()));
                this.d.setText(v.c(sealSharkChannel.f()));
            } else {
                n.this.l.clear();
                if (sealSharkChannel.j() % 256 == 0) {
                    n.this.l.append(v.c(sealSharkChannel.e())).append(" / ").append(ad.a((int) R.string.css_code_close));
                } else {
                    n.this.l.append(v.c(sealSharkChannel.e())).append(" / ").append(v.e(sealSharkChannel.j()));
                }
                int indexOf = n.this.l.toString().indexOf("/");
                n.this.l.setSpan(n.this.e, indexOf, n.this.l.length(), 33);
                if (sealSharkChannel.equals(n.this.d)) {
                    n.this.l.setSpan(n.this.k, indexOf, n.this.l.length(), 33);
                } else {
                    n.this.l.setSpan(n.this.j, indexOf, n.this.l.length(), 33);
                }
                this.c.setText(n.this.l);
                n.this.l.clear();
                if (sealSharkChannel.k() % 256 == 0) {
                    n.this.l.append(v.c(sealSharkChannel.f())).append(" / ").append(ad.a((int) R.string.css_code_close));
                } else {
                    n.this.l.append(v.c(sealSharkChannel.f())).append(" / ").append(v.e(sealSharkChannel.k()));
                }
                n.this.l.setSpan(n.this.e, indexOf, n.this.l.length(), 33);
                if (sealSharkChannel.equals(n.this.d)) {
                    n.this.l.setSpan(n.this.k, indexOf, n.this.l.length(), 33);
                } else {
                    n.this.l.setSpan(n.this.j, indexOf, n.this.l.length(), 33);
                }
                this.d.setText(n.this.l);
            }
            this.c.setTypeface(n.this.c);
            this.d.setTypeface(n.this.c);
        }
    }

    /* compiled from: SharkCustomAdapter */
    public interface b {
        void a(View view, int i, SealSharkChannel sealSharkChannel);

        void b(View view, int i, SealSharkChannel sealSharkChannel);
    }

    public void setOnItemClickListener(b bVar) {
        this.m = bVar;
    }

    public n(Context context, List<SealSharkChannel> list) {
        this.a = LayoutInflater.from(context);
        this.b = list;
    }

    /* renamed from: a */
    public a onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new a(this.a.inflate(R.layout.item_shark_custom_info, viewGroup, false));
    }

    /* renamed from: a */
    public void onBindViewHolder(final a aVar, int i2) {
        if (i2 == this.b.size() - 1) {
            aVar.e.setVisibility(0);
        } else {
            aVar.e.setVisibility(8);
        }
        aVar.a(i2);
        if (this.m != null) {
            aVar.itemView.setOnClickListener(new OnClickListener() {
                public void onClick(View view) {
                    int adapterPosition = aVar.getAdapterPosition();
                    if (adapterPosition < n.this.b.size() && adapterPosition >= 0) {
                        n.this.m.a(aVar.itemView, adapterPosition, (SealSharkChannel) n.this.b.get(adapterPosition));
                    }
                }
            });
            aVar.itemView.setOnLongClickListener(new OnLongClickListener() {
                public boolean onLongClick(View view) {
                    int adapterPosition = aVar.getAdapterPosition();
                    if (adapterPosition < n.this.b.size() && adapterPosition >= 0) {
                        n.this.m.b(aVar.itemView, adapterPosition, (SealSharkChannel) n.this.b.get(adapterPosition));
                    }
                    return true;
                }
            });
        }
    }

    public int getItemCount() {
        if (this.b != null) {
            return this.b.size();
        }
        return 0;
    }

    public void a(SealSharkChannel sealSharkChannel) {
        this.d = sealSharkChannel;
    }
}
