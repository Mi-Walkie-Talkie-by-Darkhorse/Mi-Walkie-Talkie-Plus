package com.ifengyu.intercom.ui.widget.dialog;

import android.app.Activity;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.ui.widget.view.MyListView;

/* compiled from: ListDialog.java */
/* loaded from: classes2.dex */
public class q extends d {

    /* renamed from: a  reason: collision with root package name */
    private CharSequence[] f6990a;

    /* renamed from: b  reason: collision with root package name */
    private c f6991b;

    /* renamed from: c  reason: collision with root package name */
    private LayoutInflater f6992c;
    private Activity d;
    private MyListView e;
    private TextView f;
    private CharSequence g;
    private int h = -1;
    private boolean i;

    /* compiled from: ListDialog.java */
    /* loaded from: classes2.dex */
    class a implements AdapterView.OnItemClickListener {
        a() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            q.this.f6991b.onClick(q.this, i);
            q.this.dismiss();
        }
    }

    /* compiled from: ListDialog.java */
    /* loaded from: classes2.dex */
    class b extends BaseAdapter {
        b() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (q.this.f6990a != null) {
                return q.this.f6990a.length;
            }
            return 0;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            TextView textView = (TextView) q.this.f6992c.inflate(R.layout.dialog_list_item, (ViewGroup) null).findViewById(R.id.dialog_item_text);
            textView.setHeight((int) c0.a(52.0f));
            textView.setText(q.this.f6990a[i]);
            if (i == getCount() - 1) {
                textView.setBackgroundResource(R.drawable.dialog_neutral_btn_bg);
            }
            return textView;
        }
    }

    /* compiled from: ListDialog.java */
    /* loaded from: classes2.dex */
    public interface c {
        void onClick(DialogInterface dialogInterface, int i);
    }

    public q(Activity activity) {
        super(activity);
        this.d = activity;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_list_layout);
        a(this.d);
        this.f = (TextView) findViewById(R.id.dialog_list_title);
        this.e = (MyListView) findViewById(R.id.dialog_listview);
        this.f6992c = (LayoutInflater) this.d.getSystemService("layout_inflater");
        CharSequence charSequence = this.g;
        if (charSequence != null) {
            this.f.setText(charSequence);
        }
        if (this.h != -1) {
            this.f.setText(k0.e().getString(this.h));
        }
        if (this.f6991b != null) {
            this.e.setOnItemClickListener(new a());
        }
        this.e.setAdapter((ListAdapter) new b());
    }

    @Override // android.app.Dialog
    public void show() {
        setCanceledOnTouchOutside(this.i);
        super.show();
    }

    public q a(boolean z) {
        this.i = z;
        return this;
    }

    public q b(int i) {
        this.h = i;
        return this;
    }

    public q a(CharSequence charSequence) {
        this.g = charSequence;
        return this;
    }

    public q a(CharSequence[] charSequenceArr, c cVar) {
        this.f6990a = charSequenceArr;
        this.f6991b = cVar;
        return this;
    }
}
