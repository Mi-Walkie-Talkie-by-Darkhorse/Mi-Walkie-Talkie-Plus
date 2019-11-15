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
import com.ifengyu.intercom.ui.setting.UserChannel;
import java.util.List;

/* compiled from: DolphinRelayAdapter */
public class d extends Adapter<b> {
    private final LayoutInflater a;
    /* access modifiers changed from: private */
    public List<UserChannel> b;
    /* access modifiers changed from: private */
    public final Typeface c = l.c;
    /* access modifiers changed from: private */
    public UserChannel d;
    /* access modifiers changed from: private */
    public AbsoluteSizeSpan e = new AbsoluteSizeSpan(v.c(12.0f));
    /* access modifiers changed from: private */
    public final ForegroundColorSpan f = new ForegroundColorSpan(Color.parseColor("#ff000000"));
    /* access modifiers changed from: private */
    public final ForegroundColorSpan g = new ForegroundColorSpan(Color.parseColor("#ff0076ff"));
    /* access modifiers changed from: private */
    public final ForegroundColorSpan h = new ForegroundColorSpan(Color.parseColor("#99000000"));
    /* access modifiers changed from: private */
    public final ForegroundColorSpan i = new ForegroundColorSpan(Color.parseColor("#960076ff"));
    /* access modifiers changed from: private */
    public SpannableStringBuilder j = new SpannableStringBuilder();
    /* access modifiers changed from: private */
    public a k;

    /* compiled from: DolphinRelayAdapter */
    public interface a {
        void a(View view, int i, UserChannel userChannel);

        void b(View view, int i, UserChannel userChannel);
    }

    /* compiled from: DolphinRelayAdapter */
    class b extends ViewHolder {
        TextView a;
        TextView b;
        TextView c;

        public b(View view) {
            super(view);
            this.a = (TextView) view.findViewById(R.id.tv_relay_name);
            this.b = (TextView) view.findViewById(R.id.tv_relay_up);
            this.c = (TextView) view.findViewById(R.id.tv_relay_down);
        }

        public void a(int i) {
            String a2;
            String a3;
            UserChannel userChannel = (UserChannel) d.this.b.get(i);
            this.a.setText(userChannel.d().trim());
            d.this.j.clear();
            if (userChannel.f() >= l.e.length) {
                a2 = ad.a((int) R.string.common_closed);
            } else if (userChannel.f() == 0 || userChannel.f() == 40 || userChannel.f() == 124) {
                a2 = ad.a((int) R.string.common_closed);
            } else {
                a2 = l.e[userChannel.f()];
            }
            d.this.j.append(v.c(userChannel.e())).append(" / ").append(a2);
            int indexOf = d.this.j.toString().indexOf("/");
            d.this.j.setSpan(d.this.e, indexOf, d.this.j.length(), 33);
            if (userChannel.equals(d.this.d)) {
                this.a.setTextColor(d.this.g.getForegroundColor());
                this.b.setTextColor(d.this.g.getForegroundColor());
                this.c.setTextColor(d.this.g.getForegroundColor());
                d.this.j.setSpan(d.this.i, indexOf, d.this.j.length(), 33);
            } else {
                this.a.setTextColor(d.this.f.getForegroundColor());
                this.b.setTextColor(d.this.f.getForegroundColor());
                this.c.setTextColor(d.this.f.getForegroundColor());
                d.this.j.setSpan(d.this.h, indexOf, d.this.j.length(), 33);
            }
            this.b.setText(d.this.j);
            this.b.setTypeface(d.this.c);
            d.this.j.clear();
            if (userChannel.h() >= l.e.length) {
                a3 = ad.a((int) R.string.common_closed);
            } else if (userChannel.h() == 0 || userChannel.h() == 40 || userChannel.h() == 124) {
                a3 = ad.a((int) R.string.common_closed);
            } else {
                a3 = l.e[userChannel.h()];
            }
            d.this.j.append(v.c(userChannel.g())).append(" / ").append(a3);
            d.this.j.setSpan(d.this.e, indexOf, d.this.j.length(), 33);
            if (userChannel.equals(d.this.d)) {
                d.this.j.setSpan(d.this.i, indexOf, d.this.j.length(), 33);
            } else {
                d.this.j.setSpan(d.this.h, indexOf, d.this.j.length(), 33);
            }
            this.c.setText(d.this.j);
            this.c.setTypeface(d.this.c);
        }
    }

    public void a(UserChannel userChannel) {
        this.d = userChannel;
    }

    public void setOnItemClickListener(a aVar) {
        this.k = aVar;
    }

    public d(Context context, List<UserChannel> list) {
        this.a = LayoutInflater.from(context);
        this.b = list;
    }

    /* renamed from: a */
    public b onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new b(this.a.inflate(R.layout.item_relay_info, viewGroup, false));
    }

    /* renamed from: a */
    public void onBindViewHolder(final b bVar, int i2) {
        bVar.a(i2);
        if (this.k != null) {
            bVar.itemView.setOnClickListener(new OnClickListener() {
                public void onClick(View view) {
                    int adapterPosition = bVar.getAdapterPosition();
                    if (adapterPosition < d.this.b.size()) {
                        d.this.k.a(bVar.itemView, adapterPosition, (UserChannel) d.this.b.get(adapterPosition));
                    }
                }
            });
            bVar.itemView.setOnLongClickListener(new OnLongClickListener() {
                public boolean onLongClick(View view) {
                    int adapterPosition = bVar.getAdapterPosition();
                    if (adapterPosition < d.this.b.size()) {
                        d.this.k.b(bVar.itemView, adapterPosition, (UserChannel) d.this.b.get(adapterPosition));
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
}
