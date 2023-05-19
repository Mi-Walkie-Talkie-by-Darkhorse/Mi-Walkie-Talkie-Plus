package com.ifengyu.intercom.p216ui.widget.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import android.widget.AbsListView;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.library.utils.UIUtils;

/* renamed from: com.ifengyu.intercom.ui.widget.view.LoadMoreListView */
/* loaded from: classes2.dex */
public class LoadMoreListView extends ListView implements AbsListView.OnScrollListener {

    /* renamed from: a */
    private InterfaceC4950b f16146a;

    /* renamed from: b */
    private boolean f16147b;

    /* renamed from: c */
    private View f16148c;

    /* renamed from: d */
    private ImageView f16149d;

    /* renamed from: e */
    private TextView f16150e;

    /* renamed from: f */
    private Animation f16151f;

    /* renamed from: g */
    private int f16152g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.widget.view.LoadMoreListView$a */
    /* loaded from: classes2.dex */
    public class View$OnClickListenerC4949a implements View.OnClickListener {
        View$OnClickListenerC4949a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (MethodsUtils.m11274z(LoadMoreListView.this.getContext())) {
                if (LoadMoreListView.this.f16147b) {
                    return;
                }
                LoadMoreListView.this.f16147b = true;
                LoadMoreListView.this.f16149d.setVisibility(0);
                LoadMoreListView.this.f16149d.startAnimation(LoadMoreListView.this.f16151f);
                LoadMoreListView.this.f16150e.setText(R.string.loading);
                if (LoadMoreListView.this.f16146a != null) {
                    LoadMoreListView.this.f16146a.mo8832f();
                    return;
                }
                return;
            }
            UIUtils.m8593y(R.string.net_work_error_pls_retry);
        }
    }

    /* renamed from: com.ifengyu.intercom.ui.widget.view.LoadMoreListView$b */
    /* loaded from: classes2.dex */
    public interface InterfaceC4950b {
        /* renamed from: f */
        void mo8832f();
    }

    public LoadMoreListView(Context context) {
        super(context);
        this.f16146a = null;
        this.f16147b = false;
        m8833j();
    }

    /* renamed from: j */
    private void m8833j() {
        View inflate = View.inflate(getContext(), R.layout.listview_load_more_layout, null);
        this.f16148c = inflate;
        this.f16149d = (ImageView) inflate.findViewById(R.id.load_more_icon);
        this.f16150e = (TextView) this.f16148c.findViewById(R.id.load_more_text);
        this.f16149d.setVisibility(8);
        this.f16150e.setText(R.string.load_more);
        Animation loadAnimation = AnimationUtils.loadAnimation(getContext(), R.anim.rotate);
        this.f16151f = loadAnimation;
        loadAnimation.setInterpolator(new LinearInterpolator());
        this.f16148c.setClickable(true);
        this.f16148c.setOnClickListener(new View$OnClickListenerC4949a());
        this.f16148c.measure(0, 0);
        int measuredHeight = this.f16148c.getMeasuredHeight();
        this.f16152g = measuredHeight;
        this.f16148c.setPadding(0, -measuredHeight, 0, 0);
        addFooterView(this.f16148c);
    }

    /* renamed from: g */
    public void m8836g() {
        this.f16148c.setPadding(0, 0, 0, 0);
    }

    /* renamed from: h */
    public void m8835h() {
        this.f16149d.setVisibility(8);
        this.f16149d.clearAnimation();
        this.f16150e.setText(R.string.load_more);
        this.f16147b = false;
    }

    /* renamed from: i */
    public void m8834i() {
        this.f16148c.setPadding(0, -this.f16152g, 0, 0);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i) {
        if (i == 0 && getLastVisiblePosition() == getAdapter().getCount() - 1 && !this.f16147b) {
            this.f16147b = true;
            this.f16149d.setVisibility(0);
            this.f16149d.startAnimation(this.f16151f);
            this.f16150e.setText(R.string.loading);
            InterfaceC4950b interfaceC4950b = this.f16146a;
            if (interfaceC4950b != null) {
                interfaceC4950b.mo8832f();
            }
        }
    }

    public void setLoadMoreListener(InterfaceC4950b interfaceC4950b) {
        this.f16146a = interfaceC4950b;
    }

    public LoadMoreListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f16146a = null;
        this.f16147b = false;
        m8833j();
    }

    public LoadMoreListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f16146a = null;
        this.f16147b = false;
        m8833j();
    }
}
