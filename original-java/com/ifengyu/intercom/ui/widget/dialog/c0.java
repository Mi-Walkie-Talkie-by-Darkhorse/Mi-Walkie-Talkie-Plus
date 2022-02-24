package com.ifengyu.intercom.ui.widget.dialog;

import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.ifengyu.intercom.R;

/* compiled from: ViewHolder.java */
/* loaded from: classes2.dex */
public class c0 implements m {

    /* renamed from: a  reason: collision with root package name */
    private int f6934a = -1;

    /* renamed from: b  reason: collision with root package name */
    private ViewGroup f6935b;

    /* renamed from: c  reason: collision with root package name */
    private View f6936c;
    private ViewGroup d;
    private View e;
    private View.OnKeyListener f;
    private View g;
    private int h;

    /* compiled from: ViewHolder.java */
    /* loaded from: classes2.dex */
    class a implements View.OnKeyListener {
        a() {
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(View view, int i, KeyEvent keyEvent) {
            if (c0.this.f != null) {
                return c0.this.f.onKey(view, i, keyEvent);
            }
            throw new NullPointerException("keyListener should not be null");
        }
    }

    public c0(int i) {
        this.h = -1;
        this.h = i;
    }

    @Override // com.ifengyu.intercom.ui.widget.dialog.m
    public void b(View view) {
        if (view != null) {
            this.f6935b.addView(view);
            this.f6936c = view;
        }
    }

    @Override // com.ifengyu.intercom.ui.widget.dialog.m
    public void setOnKeyListener(View.OnKeyListener onKeyListener) {
        this.f = onKeyListener;
    }

    @Override // com.ifengyu.intercom.ui.widget.dialog.m
    public void a(View view) {
        if (view != null) {
            this.d.addView(view);
            this.e = view;
        }
    }

    @Override // com.ifengyu.intercom.ui.widget.dialog.m
    public View b() {
        return this.e;
    }

    @Override // com.ifengyu.intercom.ui.widget.dialog.m
    public void a(int i) {
        this.f6934a = i;
    }

    @Override // com.ifengyu.intercom.ui.widget.dialog.m
    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(R.layout.dialog_content_frame_view, viewGroup, false);
        if (this.f6934a != -1) {
            inflate.findViewById(R.id.dialog_custom_container).setBackgroundResource(this.f6934a);
        }
        ViewGroup viewGroup2 = (ViewGroup) inflate.findViewById(R.id.dialog_view_container);
        viewGroup2.setOnKeyListener(new a());
        a(layoutInflater, viewGroup, viewGroup2);
        this.f6935b = (ViewGroup) inflate.findViewById(R.id.dialog_header_container);
        this.d = (ViewGroup) inflate.findViewById(R.id.dialog_footer_container);
        return inflate;
    }

    private void a(LayoutInflater layoutInflater, ViewGroup viewGroup, ViewGroup viewGroup2) {
        int i = this.h;
        if (i != -1) {
            this.g = layoutInflater.inflate(i, viewGroup, false);
        } else {
            ViewGroup viewGroup3 = (ViewGroup) this.g.getParent();
            if (viewGroup3 != null) {
                viewGroup3.removeView(this.g);
            }
        }
        viewGroup2.addView(this.g);
    }

    @Override // com.ifengyu.intercom.ui.widget.dialog.m
    public View a() {
        return this.g;
    }
}
