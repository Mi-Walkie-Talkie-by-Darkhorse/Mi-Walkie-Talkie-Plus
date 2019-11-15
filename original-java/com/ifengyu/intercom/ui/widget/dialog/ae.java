package com.ifengyu.intercom.ui.widget.dialog;

import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnKeyListener;
import android.view.ViewGroup;
import com.ifengyu.intercom.R;

/* compiled from: ViewHolder */
public class ae implements m {
    private final int a = -1;
    private int b = -1;
    private ViewGroup c;
    private View d;
    private ViewGroup e;
    private View f;
    /* access modifiers changed from: private */
    public OnKeyListener g;
    private View h;
    private int i = -1;

    public ae(int i2) {
        this.i = i2;
    }

    public void a(View view) {
        if (view != null) {
            this.c.addView(view);
            this.d = view;
        }
    }

    public void b(View view) {
        if (view != null) {
            this.e.addView(view);
            this.f = view;
        }
    }

    public void a(int i2) {
        this.b = i2;
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(R.layout.dialog_content_frame_view, viewGroup, false);
        if (this.b != -1) {
            inflate.findViewById(R.id.dialog_custom_container).setBackgroundResource(this.b);
        }
        ViewGroup viewGroup2 = (ViewGroup) inflate.findViewById(R.id.dialog_view_container);
        viewGroup2.setOnKeyListener(new OnKeyListener() {
            public boolean onKey(View view, int i, KeyEvent keyEvent) {
                if (ae.this.g != null) {
                    return ae.this.g.onKey(view, i, keyEvent);
                }
                throw new NullPointerException("keyListener should not be null");
            }
        });
        a(layoutInflater, viewGroup, viewGroup2);
        this.c = (ViewGroup) inflate.findViewById(R.id.dialog_header_container);
        this.e = (ViewGroup) inflate.findViewById(R.id.dialog_footer_container);
        return inflate;
    }

    private void a(LayoutInflater layoutInflater, ViewGroup viewGroup, ViewGroup viewGroup2) {
        if (this.i != -1) {
            this.h = layoutInflater.inflate(this.i, viewGroup, false);
        } else {
            ViewGroup viewGroup3 = (ViewGroup) this.h.getParent();
            if (viewGroup3 != null) {
                viewGroup3.removeView(this.h);
            }
        }
        viewGroup2.addView(this.h);
    }

    public void setOnKeyListener(OnKeyListener onKeyListener) {
        this.g = onKeyListener;
    }

    public View a() {
        return this.h;
    }

    public View b() {
        return this.f;
    }
}
