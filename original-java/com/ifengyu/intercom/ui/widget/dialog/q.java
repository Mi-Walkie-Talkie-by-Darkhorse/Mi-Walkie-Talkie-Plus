package com.ifengyu.intercom.ui.widget.dialog;

import android.app.Activity;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.ui.widget.view.MyListView;

/* compiled from: ListDialog */
public class q extends b {
    /* access modifiers changed from: private */
    public CharSequence[] a;
    /* access modifiers changed from: private */
    public b b;
    /* access modifiers changed from: private */
    public LayoutInflater c;
    private Activity d;
    private MyListView e;
    private TextView f;
    private CharSequence g;
    private int h = -1;
    private boolean i;

    /* compiled from: ListDialog */
    class a extends BaseAdapter {
        a() {
        }

        public int getCount() {
            if (q.this.a != null) {
                return q.this.a.length;
            }
            return 0;
        }

        public Object getItem(int i) {
            return null;
        }

        public long getItemId(int i) {
            return 0;
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            TextView textView = (TextView) q.this.c.inflate(R.layout.dialog_list_item, null).findViewById(R.id.dialog_item_text);
            textView.setHeight((int) v.a(52.0f));
            textView.setText(q.this.a[i]);
            if (i == getCount() - 1) {
                textView.setBackgroundResource(R.drawable.dialog_neutral_btn_bg);
            }
            return textView;
        }
    }

    /* compiled from: ListDialog */
    public interface b {
        void a(DialogInterface dialogInterface, int i);
    }

    public q(Activity activity) {
        super(activity);
        this.d = activity;
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_list_layout);
        a(this.d);
        this.f = (TextView) findViewById(R.id.dialog_list_title);
        this.e = (MyListView) findViewById(R.id.dialog_listview);
        this.c = (LayoutInflater) this.d.getSystemService("layout_inflater");
        if (this.g != null) {
            this.f.setText(this.g);
        }
        if (this.h != -1) {
            this.f.setText(ad.b().getString(this.h));
        }
        if (this.b != null) {
            this.e.setOnItemClickListener(new OnItemClickListener() {
                public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    q.this.b.a(q.this, i);
                    q.this.dismiss();
                }
            });
        }
        this.e.setAdapter(new a());
    }

    public q a(boolean z) {
        this.i = z;
        return this;
    }

    public q a(CharSequence charSequence) {
        this.g = charSequence;
        return this;
    }

    public q b(int i2) {
        this.h = i2;
        return this;
    }

    public q a(CharSequence[] charSequenceArr, b bVar) {
        this.a = charSequenceArr;
        this.b = bVar;
        return this;
    }

    public void show() {
        setCanceledOnTouchOutside(this.i);
        super.show();
    }
}
