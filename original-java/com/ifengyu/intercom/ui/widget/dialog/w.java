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

/* compiled from: SharkSetPowerListDialog.java */
/* loaded from: classes2.dex */
public class w extends d {

    /* renamed from: a  reason: collision with root package name */
    private CharSequence[] f7015a;

    /* renamed from: b  reason: collision with root package name */
    private c f7016b;

    /* renamed from: c  reason: collision with root package name */
    private LayoutInflater f7017c;
    private Activity d;
    private MyListView e;
    private TextView f;
    private CharSequence g;
    private int h = -1;
    private boolean i;
    private int j;

    /* compiled from: SharkSetPowerListDialog.java */
    /* loaded from: classes2.dex */
    class a implements AdapterView.OnItemClickListener {
        a() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            w.this.f7016b.onClick(w.this, i);
            w.this.dismiss();
        }
    }

    /* compiled from: SharkSetPowerListDialog.java */
    /* loaded from: classes2.dex */
    class b extends BaseAdapter {
        b() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (w.this.f7015a != null) {
                return w.this.f7015a.length;
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
            TextView textView = (TextView) w.this.f7017c.inflate(R.layout.dialog_list_item, (ViewGroup) null).findViewById(R.id.dialog_item_text);
            textView.setHeight((int) c0.a(52.0f));
            textView.setText(w.this.f7015a[i]);
            if (w.this.j == 1) {
                if (i == 0) {
                    textView.setTextColor(w.this.d.getResources().getColor(R.color.select_color));
                }
            } else if (w.this.j == 2 && i == 1) {
                textView.setTextColor(w.this.d.getResources().getColor(R.color.select_color));
            }
            if (i == getCount() - 1) {
                textView.setBackgroundResource(R.drawable.dialog_neutral_btn_bg);
            }
            return textView;
        }
    }

    /* compiled from: SharkSetPowerListDialog.java */
    /* loaded from: classes2.dex */
    public interface c {
        void onClick(DialogInterface dialogInterface, int i);
    }

    public w(Activity activity, int i) {
        super(activity);
        this.d = activity;
        this.j = i;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_list_layout);
        a(this.d);
        this.f = (TextView) findViewById(R.id.dialog_list_title);
        this.e = (MyListView) findViewById(R.id.dialog_listview);
        this.f7017c = (LayoutInflater) this.d.getSystemService("layout_inflater");
        CharSequence charSequence = this.g;
        if (charSequence != null) {
            this.f.setText(charSequence);
        }
        if (this.h != -1) {
            this.f.setText(k0.e().getString(this.h));
        }
        if (this.f7016b != null) {
            this.e.setOnItemClickListener(new a());
        }
        this.e.setAdapter((ListAdapter) new b());
    }

    @Override // android.app.Dialog
    public void show() {
        setCanceledOnTouchOutside(this.i);
        super.show();
    }

    public w a(boolean z) {
        this.i = z;
        return this;
    }

    public w b(int i) {
        this.h = i;
        return this;
    }

    public w a(CharSequence[] charSequenceArr, c cVar) {
        this.f7015a = charSequenceArr;
        this.f7016b = cVar;
        return this;
    }
}
