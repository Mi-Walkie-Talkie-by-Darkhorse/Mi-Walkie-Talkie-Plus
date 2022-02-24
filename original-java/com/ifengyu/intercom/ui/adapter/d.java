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
import com.ifengyu.intercom.ui.setting.UserChannel;
import java.util.List;

/* compiled from: DolphinRelayAdapter.java */
/* loaded from: classes2.dex */
public class d extends RecyclerView.g<C0164d> {

    /* renamed from: a  reason: collision with root package name */
    private final LayoutInflater f6277a;

    /* renamed from: b  reason: collision with root package name */
    private List<UserChannel> f6278b;
    private UserChannel d;
    private c k;

    /* renamed from: c  reason: collision with root package name */
    private final Typeface f6279c = p.f5324b;
    private SpannableStringBuilder j = new SpannableStringBuilder();
    private AbsoluteSizeSpan e = new AbsoluteSizeSpan(c0.c(12.0f));
    private final ForegroundColorSpan f = new ForegroundColorSpan(Color.parseColor("#ff000000"));
    private final ForegroundColorSpan g = new ForegroundColorSpan(Color.parseColor("#ff0076ff"));
    private final ForegroundColorSpan h = new ForegroundColorSpan(Color.parseColor("#99000000"));
    private final ForegroundColorSpan i = new ForegroundColorSpan(Color.parseColor("#960076ff"));

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DolphinRelayAdapter.java */
    /* loaded from: classes2.dex */
    public class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C0164d f6280a;

        a(C0164d dVar) {
            this.f6280a = dVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int adapterPosition = this.f6280a.getAdapterPosition();
            if (adapterPosition < d.this.f6278b.size()) {
                d.this.k.b(this.f6280a.itemView, adapterPosition, (UserChannel) d.this.f6278b.get(adapterPosition));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DolphinRelayAdapter.java */
    /* loaded from: classes2.dex */
    public class b implements View.OnLongClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C0164d f6282a;

        b(C0164d dVar) {
            this.f6282a = dVar;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            int adapterPosition = this.f6282a.getAdapterPosition();
            if (adapterPosition >= d.this.f6278b.size()) {
                return true;
            }
            d.this.k.a(this.f6282a.itemView, adapterPosition, (UserChannel) d.this.f6278b.get(adapterPosition));
            return true;
        }
    }

    /* compiled from: DolphinRelayAdapter.java */
    /* loaded from: classes2.dex */
    public interface c {
        void a(View view, int i, UserChannel userChannel);

        void b(View view, int i, UserChannel userChannel);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DolphinRelayAdapter.java */
    /* renamed from: com.ifengyu.intercom.ui.adapter.d$d  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class C0164d extends RecyclerView.y {

        /* renamed from: a  reason: collision with root package name */
        TextView f6284a;

        /* renamed from: b  reason: collision with root package name */
        TextView f6285b;

        /* renamed from: c  reason: collision with root package name */
        TextView f6286c;

        public C0164d(View view) {
            super(view);
            this.f6284a = (TextView) view.findViewById(R.id.tv_relay_name);
            this.f6285b = (TextView) view.findViewById(R.id.tv_relay_up);
            this.f6286c = (TextView) view.findViewById(R.id.tv_relay_down);
        }

        public void a(int i) {
            String str;
            String str2;
            UserChannel userChannel = (UserChannel) d.this.f6278b.get(i);
            this.f6284a.setText(userChannel.d().trim());
            d.this.j.clear();
            if (userChannel.f() >= p.d.length) {
                str = k0.c(R.string.common_closed);
            } else if (userChannel.f() == 0 || userChannel.f() == 40 || userChannel.f() == 124) {
                str = k0.c(R.string.common_closed);
            } else {
                str = p.d[userChannel.f()];
            }
            d.this.j.append((CharSequence) c0.b(userChannel.a())).append((CharSequence) " / ").append((CharSequence) str);
            int indexOf = d.this.j.toString().indexOf("/");
            d.this.j.setSpan(d.this.e, indexOf, d.this.j.length(), 33);
            if (userChannel.equals(d.this.d)) {
                this.f6284a.setTextColor(d.this.g.getForegroundColor());
                this.f6285b.setTextColor(d.this.g.getForegroundColor());
                this.f6286c.setTextColor(d.this.g.getForegroundColor());
                d.this.j.setSpan(d.this.i, indexOf, d.this.j.length(), 33);
            } else {
                this.f6284a.setTextColor(d.this.f.getForegroundColor());
                this.f6285b.setTextColor(d.this.f.getForegroundColor());
                this.f6286c.setTextColor(d.this.f.getForegroundColor());
                d.this.j.setSpan(d.this.h, indexOf, d.this.j.length(), 33);
            }
            this.f6285b.setText(d.this.j);
            this.f6285b.setTypeface(d.this.f6279c);
            d.this.j.clear();
            if (userChannel.g() >= p.d.length) {
                str2 = k0.c(R.string.common_closed);
            } else if (userChannel.g() == 0 || userChannel.g() == 40 || userChannel.g() == 124) {
                str2 = k0.c(R.string.common_closed);
            } else {
                str2 = p.d[userChannel.g()];
            }
            d.this.j.append((CharSequence) c0.b(userChannel.b())).append((CharSequence) " / ").append((CharSequence) str2);
            d.this.j.setSpan(d.this.e, indexOf, d.this.j.length(), 33);
            if (userChannel.equals(d.this.d)) {
                d.this.j.setSpan(d.this.i, indexOf, d.this.j.length(), 33);
            } else {
                d.this.j.setSpan(d.this.h, indexOf, d.this.j.length(), 33);
            }
            this.f6286c.setText(d.this.j);
            this.f6286c.setTypeface(d.this.f6279c);
        }
    }

    public d(Context context, List<UserChannel> list) {
        this.f6277a = LayoutInflater.from(context);
        this.f6278b = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public int getItemCount() {
        List<UserChannel> list = this.f6278b;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    public void setOnItemClickListener(c cVar) {
        this.k = cVar;
    }

    public void a(UserChannel userChannel) {
        this.d = userChannel;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public C0164d onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new C0164d(this.f6277a.inflate(R.layout.item_relay_info, viewGroup, false));
    }

    /* renamed from: a */
    public void onBindViewHolder(C0164d dVar, int i) {
        dVar.a(i);
        if (this.k != null) {
            dVar.itemView.setOnClickListener(new a(dVar));
            dVar.itemView.setOnLongClickListener(new b(dVar));
        }
    }
}
