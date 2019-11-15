package com.ifengyu.intercom.ui.widget.dialog;

import android.app.Activity;
import android.os.Bundle;
import com.ifengyu.intercom.R;

/* compiled from: FeedbackDeviceSelectorDialog */
public class j extends b {
    private Activity a;
    private a b;

    /* compiled from: FeedbackDeviceSelectorDialog */
    public interface a {
        void a();

        void b();

        void c();

        void d();
    }

    public j(Activity activity) {
        super(activity);
        this.a = activity;
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_feedback_device_selector);
        a(this.a);
        a(R.id.item_1, R.id.item_2, R.id.item_3, R.id.item_4);
    }

    /* access modifiers changed from: protected */
    public void a(int i) {
        switch (i) {
            case R.id.item_1 /*2131755514*/:
                if (this.b != null) {
                    this.b.a();
                    break;
                }
                break;
            case R.id.item_2 /*2131755515*/:
                if (this.b != null) {
                    this.b.b();
                    break;
                }
                break;
            case R.id.item_3 /*2131755516*/:
                if (this.b != null) {
                    this.b.c();
                    break;
                }
                break;
            case R.id.item_4 /*2131755517*/:
                if (this.b != null) {
                    this.b.d();
                    break;
                }
                break;
        }
        dismiss();
    }

    public void setOnclickListener(a aVar) {
        this.b = aVar;
    }
}
