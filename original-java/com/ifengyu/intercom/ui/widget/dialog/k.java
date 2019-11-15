package com.ifengyu.intercom.ui.widget.dialog;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.ifengyu.intercom.R;

/* compiled from: GaoDeMapDownloadItemClickDialog */
public class k extends b {
    private Context a;
    private a b;
    private boolean c;
    private boolean d;

    /* compiled from: GaoDeMapDownloadItemClickDialog */
    public interface a {
        void a();

        void b();

        void c();
    }

    public k(Context context, boolean z, boolean z2) {
        super(context);
        this.a = context;
        this.c = z;
        this.d = z2;
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_three_item_select_layout);
        a((Activity) this.a);
        TextView textView = (TextView) findViewById(R.id.top_item);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.center_layout);
        TextView textView2 = (TextView) findViewById(R.id.center_item);
        TextView textView3 = (TextView) findViewById(R.id.bottom_item);
        if (this.c) {
            if (this.d) {
                textView.setText(this.a.getString(R.string.common_pause));
            } else {
                textView.setText(this.a.getString(R.string.common_carry_on));
            }
            textView2.setText(this.a.getString(R.string.common_delete));
            textView3.setText(this.a.getString(R.string.common_cancel));
        } else {
            linearLayout.setVisibility(8);
            textView.setText(this.a.getString(R.string.common_delete));
            textView3.setText(this.a.getString(R.string.common_cancel));
        }
        a(R.id.top_item, R.id.center_item, R.id.bottom_item);
    }

    /* access modifiers changed from: protected */
    public void a(int i) {
        switch (i) {
            case R.id.top_item /*2131755528*/:
                if (!this.c) {
                    this.b.c();
                } else if (this.d) {
                    this.b.a();
                } else {
                    this.b.b();
                }
                dismiss();
                return;
            case R.id.center_item /*2131755530*/:
                this.b.c();
                dismiss();
                return;
            case R.id.bottom_item /*2131755531*/:
                dismiss();
                return;
            default:
                return;
        }
    }

    /* access modifiers changed from: protected */
    public boolean b() {
        return true;
    }

    public void setOnClickListener(a aVar) {
        this.b = aVar;
    }
}
