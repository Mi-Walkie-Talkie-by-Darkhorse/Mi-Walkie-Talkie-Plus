package com.ifengyu.intercom.p216ui.widget.dialog;

import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.ifengyu.intercom.R;
import java.util.Objects;

/* compiled from: ViewHolder.java */
/* renamed from: com.ifengyu.intercom.ui.widget.dialog.x */
/* loaded from: classes2.dex */
public class C4935x implements Holder {

    /* renamed from: a */
    private int f16041a = -1;

    /* renamed from: b */
    private ViewGroup f16042b;

    /* renamed from: c */
    private View f16043c;

    /* renamed from: d */
    private ViewGroup f16044d;

    /* renamed from: e */
    private View f16045e;

    /* renamed from: f */
    private View.OnKeyListener f16046f;

    /* renamed from: g */
    private View f16047g;

    /* renamed from: h */
    private int f16048h;

    /* compiled from: ViewHolder.java */
    /* renamed from: com.ifengyu.intercom.ui.widget.dialog.x$a */
    /* loaded from: classes2.dex */
    class View$OnKeyListenerC4936a implements View.OnKeyListener {
        View$OnKeyListenerC4936a() {
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(View view, int i, KeyEvent keyEvent) {
            Objects.requireNonNull(C4935x.this.f16046f, "keyListener should not be null");
            return C4935x.this.f16046f.onKey(view, i, keyEvent);
        }
    }

    public C4935x(int i) {
        this.f16048h = -1;
        this.f16048h = i;
    }

    /* renamed from: i */
    private void m8903i(LayoutInflater layoutInflater, ViewGroup viewGroup, ViewGroup viewGroup2) {
        int i = this.f16048h;
        if (i != -1) {
            this.f16047g = layoutInflater.inflate(i, viewGroup, false);
        } else {
            ViewGroup viewGroup3 = (ViewGroup) this.f16047g.getParent();
            if (viewGroup3 != null) {
                viewGroup3.removeView(this.f16047g);
            }
        }
        viewGroup2.addView(this.f16047g);
    }

    @Override // com.ifengyu.intercom.p216ui.widget.dialog.Holder
    /* renamed from: a */
    public View mo8910a() {
        return this.f16047g;
    }

    @Override // com.ifengyu.intercom.p216ui.widget.dialog.Holder
    /* renamed from: c */
    public void mo8909c(int i) {
        this.f16041a = i;
    }

    @Override // com.ifengyu.intercom.p216ui.widget.dialog.Holder
    /* renamed from: d */
    public void mo8908d(View view) {
        if (view == null) {
            return;
        }
        this.f16044d.addView(view);
        this.f16045e = view;
    }

    @Override // com.ifengyu.intercom.p216ui.widget.dialog.Holder
    /* renamed from: e */
    public View mo8907e(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(R.layout.dialog_content_frame_view, viewGroup, false);
        if (this.f16041a != -1) {
            inflate.findViewById(R.id.dialog_custom_container).setBackgroundResource(this.f16041a);
        }
        ViewGroup viewGroup2 = (ViewGroup) inflate.findViewById(R.id.dialog_view_container);
        viewGroup2.setOnKeyListener(new View$OnKeyListenerC4936a());
        m8903i(layoutInflater, viewGroup, viewGroup2);
        this.f16042b = (ViewGroup) inflate.findViewById(R.id.dialog_header_container);
        this.f16044d = (ViewGroup) inflate.findViewById(R.id.dialog_footer_container);
        return inflate;
    }

    @Override // com.ifengyu.intercom.p216ui.widget.dialog.Holder
    /* renamed from: f */
    public void mo8906f(View view) {
        if (view == null) {
            return;
        }
        this.f16042b.addView(view);
        this.f16043c = view;
    }

    @Override // com.ifengyu.intercom.p216ui.widget.dialog.Holder
    /* renamed from: g */
    public View mo8905g() {
        return this.f16045e;
    }

    @Override // com.ifengyu.intercom.p216ui.widget.dialog.Holder
    public void setOnKeyListener(View.OnKeyListener onKeyListener) {
        this.f16046f = onKeyListener;
    }
}
