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

/* compiled from: SharkSetPowerListDialog */
public class y extends b {
    /* access modifiers changed from: private */
    public CharSequence[] a;
    /* access modifiers changed from: private */
    public b b;
    /* access modifiers changed from: private */
    public LayoutInflater c;
    /* access modifiers changed from: private */
    public Activity d;
    private MyListView e;
    private TextView f;
    private CharSequence g;
    private int h = -1;
    private boolean i;
    /* access modifiers changed from: private */
    public int j;

    /* compiled from: SharkSetPowerListDialog */
    class a extends BaseAdapter {
        a() {
        }

        public int getCount() {
            if (y.this.a != null) {
                return y.this.a.length;
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
            TextView textView = (TextView) y.this.c.inflate(R.layout.dialog_list_item, null).findViewById(R.id.dialog_item_text);
            textView.setHeight((int) v.a(52.0f));
            textView.setText(y.this.a[i]);
            if (y.this.j == 1) {
                if (i == 0) {
                    textView.setTextColor(y.this.d.getResources().getColor(R.color.select_color));
                }
            } else if (y.this.j == 2 && i == 1) {
                textView.setTextColor(y.this.d.getResources().getColor(R.color.select_color));
            }
            if (i == getCount() - 1) {
                textView.setBackgroundResource(R.drawable.dialog_neutral_btn_bg);
            }
            return textView;
        }
    }

    /* compiled from: SharkSetPowerListDialog */
    public interface b {
        void a(DialogInterface dialogInterface, int i);
    }

    public y(Activity activity, int i2) {
        super(activity);
        this.d = activity;
        this.j = i2;
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
                    y.this.b.a(y.this, i);
                    y.this.dismiss();
                }
            });
        }
        this.e.setAdapter(new a());
    }

    public y a(boolean z) {
        this.i = z;
        return this;
    }

    public y b(int i2) {
        this.h = i2;
        return this;
    }

    public y a(CharSequence[] charSequenceArr, b bVar) {
        this.a = charSequenceArr;
        this.b = bVar;
        return this;
    }

    public void show() {
        setCanceledOnTouchOutside(this.i);
        super.show();
    }
}
