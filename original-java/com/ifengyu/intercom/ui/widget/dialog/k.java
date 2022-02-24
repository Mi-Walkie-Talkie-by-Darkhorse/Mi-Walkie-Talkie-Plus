package com.ifengyu.intercom.ui.widget.dialog;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.ifengyu.intercom.R;

/* compiled from: GaoDeMapDownloadItemClickDialog.java */
/* loaded from: classes2.dex */
public class k extends d {

    /* renamed from: a  reason: collision with root package name */
    private Context f6958a;

    /* renamed from: b  reason: collision with root package name */
    private a f6959b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f6960c;
    private boolean d;

    /* compiled from: GaoDeMapDownloadItemClickDialog.java */
    /* loaded from: classes2.dex */
    public interface a {
        void a();

        void b();

        void c();
    }

    public k(Context context, boolean z, boolean z2) {
        super(context);
        this.f6958a = context;
        this.f6960c = z;
        this.d = z2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.widget.dialog.d
    public void a(int i) {
        if (i == R.id.bottom_item) {
            dismiss();
        } else if (i == R.id.center_item) {
            this.f6959b.a();
            dismiss();
        } else if (i == R.id.top_item) {
            if (!this.f6960c) {
                this.f6959b.a();
            } else if (this.d) {
                this.f6959b.b();
            } else {
                this.f6959b.c();
            }
            dismiss();
        }
    }

    @Override // com.ifengyu.intercom.ui.widget.dialog.d
    protected boolean a() {
        return true;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_three_item_select_layout);
        a((Activity) this.f6958a);
        TextView textView = (TextView) findViewById(R.id.top_item);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.center_layout);
        TextView textView2 = (TextView) findViewById(R.id.center_item);
        TextView textView3 = (TextView) findViewById(R.id.bottom_item);
        if (this.f6960c) {
            if (this.d) {
                textView.setText(this.f6958a.getString(R.string.common_pause));
            } else {
                textView.setText(this.f6958a.getString(R.string.common_carry_on));
            }
            textView2.setText(this.f6958a.getString(R.string.common_delete));
            textView3.setText(this.f6958a.getString(R.string.common_cancel));
        } else {
            linearLayout.setVisibility(8);
            textView.setText(this.f6958a.getString(R.string.common_delete));
            textView3.setText(this.f6958a.getString(R.string.common_cancel));
        }
        a(R.id.top_item, R.id.center_item, R.id.bottom_item);
    }

    public void setOnClickListener(a aVar) {
        this.f6959b = aVar;
    }
}
