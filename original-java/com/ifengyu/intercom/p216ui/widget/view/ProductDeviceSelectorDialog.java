package com.ifengyu.intercom.p216ui.widget.view;

import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p216ui.widget.dialog.BaseDialog;
import com.ifengyu.library.utils.UIUtils;

/* renamed from: com.ifengyu.intercom.ui.widget.view.b */
/* loaded from: classes2.dex */
public class ProductDeviceSelectorDialog extends BaseDialog {

    /* renamed from: a */
    private Activity f16322a;

    /* renamed from: b */
    private int f16323b;

    /* renamed from: c */
    private InterfaceC4963a f16324c;

    /* compiled from: ProductDeviceSelectorDialog.java */
    /* renamed from: com.ifengyu.intercom.ui.widget.view.b$a */
    /* loaded from: classes2.dex */
    public interface InterfaceC4963a {
        /* renamed from: a */
        void mo8734a();

        /* renamed from: b */
        void mo8733b();

        /* renamed from: c */
        void mo8732c();
    }

    public ProductDeviceSelectorDialog(Activity activity, int i) {
        super(activity);
        this.f16322a = activity;
        this.f16323b = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.widget.dialog.BaseDialog
    /* renamed from: d */
    public void mo8735d(int i) {
        switch (i) {
            case R.id.item_1 /* 2131296824 */:
                InterfaceC4963a interfaceC4963a = this.f16324c;
                if (interfaceC4963a != null) {
                    interfaceC4963a.mo8732c();
                    break;
                }
                break;
            case R.id.item_2 /* 2131296825 */:
                InterfaceC4963a interfaceC4963a2 = this.f16324c;
                if (interfaceC4963a2 != null) {
                    interfaceC4963a2.mo8733b();
                    break;
                }
                break;
            case R.id.item_3 /* 2131296826 */:
                InterfaceC4963a interfaceC4963a3 = this.f16324c;
                if (interfaceC4963a3 != null) {
                    interfaceC4963a3.mo8734a();
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
        m9037g(this.f16322a);
        TextView textView = (TextView) findViewById(R.id.item_1);
        TextView textView2 = (TextView) findViewById(R.id.item_2);
        TextView textView3 = (TextView) findViewById(R.id.item_3);
        int i = this.f16323b;
        if (i == 0) {
            textView.setTextColor(UIUtils.m8614d(R.color.select_color));
        } else if (i == 1) {
            textView2.setTextColor(UIUtils.m8614d(R.color.select_color));
        } else if (i == 2) {
            textView3.setTextColor(UIUtils.m8614d(R.color.select_color));
        }
        textView.setOnClickListener(this);
        textView2.setOnClickListener(this);
        textView3.setOnClickListener(this);
    }

    public void setOnclickListener(InterfaceC4963a interfaceC4963a) {
        this.f16324c = interfaceC4963a;
    }
}
