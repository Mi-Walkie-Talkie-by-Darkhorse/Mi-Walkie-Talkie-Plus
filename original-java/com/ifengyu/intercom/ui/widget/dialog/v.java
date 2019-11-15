package com.ifengyu.intercom.ui.widget.dialog;

import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;
import com.ifengyu.intercom.R;

/* compiled from: ModifySexDialog */
public class v extends b {
    private Activity a;
    private a b;
    private int c;

    /* compiled from: ModifySexDialog */
    public interface a {
        void a(int i);
    }

    public v(Activity activity, int i) {
        super(activity);
        this.a = activity;
        this.c = i;
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.modify_sex_dialog_layout);
        a(this.a);
        a(R.id.male_btn, R.id.female_btn, R.id.cancel_btn);
        TextView textView = (TextView) findViewById(R.id.male_btn);
        TextView textView2 = (TextView) findViewById(R.id.female_btn);
        if (this.c == 1) {
            textView.setTextColor(this.a.getResources().getColor(R.color.select_color));
        } else if (this.c == 2) {
            textView2.setTextColor(this.a.getResources().getColor(R.color.select_color));
        }
    }

    /* access modifiers changed from: protected */
    public void a(int i) {
        switch (i) {
            case R.id.male_btn /*2131755772*/:
                dismiss();
                if (this.b != null) {
                    this.b.a(0);
                    return;
                }
                return;
            case R.id.female_btn /*2131755773*/:
                dismiss();
                if (this.b != null) {
                    this.b.a(1);
                    return;
                }
                return;
            case R.id.cancel_btn /*2131755774*/:
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

    public void setClickListener(a aVar) {
        this.b = aVar;
    }
}
