package com.ifengyu.intercom.ui.widget.view;

import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.ui.widget.dialog.d;

/* compiled from: ProductDeviceSelectorDialog.java */
/* loaded from: classes2.dex */
public class b extends d {

    /* renamed from: a  reason: collision with root package name */
    private Activity f7108a;

    /* renamed from: b  reason: collision with root package name */
    private int f7109b;

    /* renamed from: c  reason: collision with root package name */
    private a f7110c;

    /* compiled from: ProductDeviceSelectorDialog.java */
    /* loaded from: classes2.dex */
    public interface a {
        void a();

        void b();

        void c();
    }

    public b(Activity activity, int i) {
        super(activity);
        this.f7108a = activity;
        this.f7109b = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.widget.dialog.d
    public void a(int i) {
        switch (i) {
            case R.id.item_1 /* 2131296735 */:
                a aVar = this.f7110c;
                if (aVar != null) {
                    aVar.c();
                    break;
                }
                break;
            case R.id.item_2 /* 2131296736 */:
                a aVar2 = this.f7110c;
                if (aVar2 != null) {
                    aVar2.b();
                    break;
                }
                break;
            case R.id.item_3 /* 2131296737 */:
                a aVar3 = this.f7110c;
                if (aVar3 != null) {
                    aVar3.a();
                    break;
                }
                break;
        }
        dismiss();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_product_device_selector);
        a(this.f7108a);
        TextView textView = (TextView) findViewById(R.id.item_1);
        TextView textView2 = (TextView) findViewById(R.id.item_2);
        TextView textView3 = (TextView) findViewById(R.id.item_3);
        int i = this.f7109b;
        if (i == 0) {
            textView.setTextColor(k0.a((int) R.color.select_color));
        } else if (i == 1) {
            textView2.setTextColor(k0.a((int) R.color.select_color));
        } else if (i == 2) {
            textView3.setTextColor(k0.a((int) R.color.select_color));
        }
        textView.setOnClickListener(this);
        textView2.setOnClickListener(this);
        textView3.setOnClickListener(this);
    }

    public void setOnclickListener(a aVar) {
        this.f7110c = aVar;
    }
}
