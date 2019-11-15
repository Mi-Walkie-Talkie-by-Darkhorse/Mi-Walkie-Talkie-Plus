package com.ifengyu.intercom.ui.widget.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager.LayoutParams;
import android.widget.ImageView;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.e;

/* compiled from: DialogProgress */
public class h extends Dialog {
    private Context a;
    private LayoutInflater b = ((LayoutInflater) this.a.getSystemService("layout_inflater"));
    private LayoutParams c;
    private TextView d;
    private final ImageView e;

    public h(Context context) {
        super(context, R.style.Dialog);
        setCanceledOnTouchOutside(false);
        this.a = context;
        View inflate = this.b.inflate(R.layout.loading_dialog, null);
        this.e = (ImageView) inflate.findViewById(R.id.loading_bar);
        this.d = (TextView) inflate.findViewById(R.id.loading_text);
        setContentView(inflate);
        this.c = getWindow().getAttributes();
        this.c.gravity = 17;
        this.c.dimAmount = 0.0f;
        this.c.alpha = 1.0f;
        getWindow().setAttributes(this.c);
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        e.a(getContext(), this.e);
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        return super.onKeyDown(i, keyEvent);
    }

    public void dismiss() {
        super.dismiss();
    }

    public void show() {
        super.show();
    }

    public void a(String str) {
        this.d.setText(str);
    }

    public void a(int i) {
        if (i != -1) {
            this.e.clearAnimation();
            this.e.setImageResource(i);
        }
    }
}
