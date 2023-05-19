package com.ifengyu.intercom.p216ui.widget.dialog;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.ifengyu.intercom.R;

/* renamed from: com.ifengyu.intercom.ui.widget.dialog.i */
/* loaded from: classes2.dex */
public class GaoDeMapDownloadItemClickDialog extends BaseDialog {

    /* renamed from: a */
    private Context f15935a;

    /* renamed from: b */
    private InterfaceC4902a f15936b;

    /* renamed from: c */
    private boolean f15937c;

    /* renamed from: d */
    private boolean f15938d;

    /* compiled from: GaoDeMapDownloadItemClickDialog.java */
    /* renamed from: com.ifengyu.intercom.ui.widget.dialog.i$a */
    /* loaded from: classes2.dex */
    public interface InterfaceC4902a {
        /* renamed from: a */
        void mo8977a();

        /* renamed from: b */
        void mo8976b();

        /* renamed from: c */
        void mo8975c();
    }

    public GaoDeMapDownloadItemClickDialog(Context context, boolean z, boolean z2) {
        super(context);
        this.f15935a = context;
        this.f15937c = z;
        this.f15938d = z2;
    }

    @Override // com.ifengyu.intercom.p216ui.widget.dialog.BaseDialog
    /* renamed from: c */
    protected boolean mo8931c() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.widget.dialog.BaseDialog
    /* renamed from: d */
    public void mo8735d(int i) {
        if (i == R.id.bottom_item) {
            dismiss();
        } else if (i == R.id.center_item) {
            this.f15936b.mo8976b();
            dismiss();
        } else if (i != R.id.top_item) {
        } else {
            if (this.f15937c) {
                if (this.f15938d) {
                    this.f15936b.mo8977a();
                } else {
                    this.f15936b.mo8975c();
                }
            } else {
                this.f15936b.mo8976b();
            }
            dismiss();
        }
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_three_item_select_layout);
        m9037g((Activity) this.f15935a);
        TextView textView = (TextView) findViewById(R.id.top_item);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.center_layout);
        TextView textView2 = (TextView) findViewById(R.id.center_item);
        TextView textView3 = (TextView) findViewById(R.id.bottom_item);
        if (this.f15937c) {
            if (this.f15938d) {
                textView.setText(this.f15935a.getString(R.string.common_pause));
            } else {
                textView.setText(this.f15935a.getString(R.string.common_carry_on));
            }
            textView2.setText(this.f15935a.getString(R.string.common_delete));
            textView3.setText(this.f15935a.getString(R.string.common_cancel));
        } else {
            linearLayout.setVisibility(8);
            textView.setText(this.f15935a.getString(R.string.common_delete));
            textView3.setText(this.f15935a.getString(R.string.common_cancel));
        }
        m9041a(R.id.top_item, R.id.center_item, R.id.bottom_item);
    }

    public void setOnClickListener(InterfaceC4902a interfaceC4902a) {
        this.f15936b = interfaceC4902a;
    }
}
