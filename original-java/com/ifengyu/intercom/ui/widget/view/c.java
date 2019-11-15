package com.ifengyu.intercom.ui.widget.view;

import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.ui.widget.dialog.b;

/* compiled from: ProductDeviceSelectorDialog */
public class c extends b {
    private Activity a;
    private int b;
    private a c;

    /* compiled from: ProductDeviceSelectorDialog */
    public interface a {
        void a();

        void b();

        void c();
    }

    public c(Activity activity, int i) {
        super(activity);
        this.a = activity;
        this.b = i;
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_product_device_selector);
        a(this.a);
        TextView textView = (TextView) findViewById(R.id.item_1);
        TextView textView2 = (TextView) findViewById(R.id.item_2);
        TextView textView3 = (TextView) findViewById(R.id.item_3);
        if (this.b == 0) {
            textView.setTextColor(ad.d(R.color.select_color));
        } else if (this.b == 1) {
            textView2.setTextColor(ad.d(R.color.select_color));
        } else if (this.b == 2) {
            textView3.setTextColor(ad.d(R.color.select_color));
        }
        textView.setOnClickListener(this);
        textView2.setOnClickListener(this);
        textView3.setOnClickListener(this);
    }

    /* access modifiers changed from: protected */
    public void a(int i) {
        switch (i) {
            case R.id.item_1 /*2131755514*/:
                if (this.c != null) {
                    this.c.a();
                    break;
                }
                break;
            case R.id.item_2 /*2131755515*/:
                if (this.c != null) {
                    this.c.b();
                    break;
                }
                break;
            case R.id.item_3 /*2131755516*/:
                if (this.c != null) {
                    this.c.c();
                    break;
                }
                break;
        }
        dismiss();
    }

    public void setOnclickListener(a aVar) {
        this.c = aVar;
    }
}
