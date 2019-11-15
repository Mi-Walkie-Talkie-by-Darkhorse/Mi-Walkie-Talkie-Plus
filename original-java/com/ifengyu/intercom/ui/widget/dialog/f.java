package com.ifengyu.intercom.ui.widget.dialog;

import android.app.Activity;
import android.os.Bundle;
import com.ifengyu.intercom.R;

/* compiled from: DialogPicSelector */
public class f extends b {
    private Activity a;
    private a b;

    /* compiled from: DialogPicSelector */
    public interface a {
        void a();

        void b();
    }

    public f(Activity activity) {
        super(activity);
        this.a = activity;
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_pic_selector);
        a(this.a);
        a(R.id.photo, R.id.local, R.id.cancle);
    }

    /* access modifiers changed from: protected */
    public void a(int i) {
        switch (i) {
            case R.id.photo /*2131755482*/:
                if (this.b != null) {
                    this.b.a();
                    break;
                }
                break;
            case R.id.local /*2131755524*/:
                if (this.b != null) {
                    this.b.b();
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
