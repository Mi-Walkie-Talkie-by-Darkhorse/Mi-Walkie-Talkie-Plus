package com.ifengyu.intercom.ui.widget.view;

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
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.k0;

/* loaded from: classes2.dex */
public class LoadMoreListView extends ListView implements AbsListView.OnScrollListener {

    /* renamed from: a  reason: collision with root package name */
    private b f7056a = null;

    /* renamed from: b  reason: collision with root package name */
    private boolean f7057b = false;

    /* renamed from: c  reason: collision with root package name */
    private View f7058c;
    private ImageView d;
    private TextView e;
    private Animation f;
    private int g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (!c0.b(LoadMoreListView.this.getContext())) {
                c0.a((CharSequence) k0.c(R.string.net_error_please_check), false);
            } else if (!LoadMoreListView.this.f7057b) {
                LoadMoreListView.this.f7057b = true;
                LoadMoreListView.this.d.setVisibility(0);
                LoadMoreListView.this.d.startAnimation(LoadMoreListView.this.f);
                LoadMoreListView.this.e.setText(R.string.loading);
                if (LoadMoreListView.this.f7056a != null) {
                    LoadMoreListView.this.f7056a.e();
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface b {
        void e();
    }

    public LoadMoreListView(Context context) {
        super(context);
        d();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i) {
        if (i == 0 && getLastVisiblePosition() == getAdapter().getCount() - 1 && !this.f7057b) {
            this.f7057b = true;
            this.d.setVisibility(0);
            this.d.startAnimation(this.f);
            this.e.setText(R.string.loading);
            b bVar = this.f7056a;
            if (bVar != null) {
                bVar.e();
            }
        }
    }

    public void setLoadMoreListener(b bVar) {
        this.f7056a = bVar;
    }

    private void d() {
        View inflate = View.inflate(getContext(), R.layout.listview_load_more_layout, null);
        this.f7058c = inflate;
        this.d = (ImageView) inflate.findViewById(R.id.load_more_icon);
        this.e = (TextView) this.f7058c.findViewById(R.id.load_more_text);
        this.d.setVisibility(8);
        this.e.setText(R.string.load_more);
        Animation loadAnimation = AnimationUtils.loadAnimation(getContext(), R.anim.rotate);
        this.f = loadAnimation;
        loadAnimation.setInterpolator(new LinearInterpolator());
        this.f7058c.setClickable(true);
        this.f7058c.setOnClickListener(new a());
        this.f7058c.measure(0, 0);
        int measuredHeight = this.f7058c.getMeasuredHeight();
        this.g = measuredHeight;
        this.f7058c.setPadding(0, -measuredHeight, 0, 0);
        addFooterView(this.f7058c);
    }

    public void b() {
        this.d.setVisibility(8);
        this.d.clearAnimation();
        this.e.setText(R.string.load_more);
        this.f7057b = false;
    }

    public void c() {
        this.f7058c.setPadding(0, -this.g, 0, 0);
    }

    public void a() {
        this.f7058c.setPadding(0, 0, 0, 0);
    }

    public LoadMoreListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        d();
    }

    public LoadMoreListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        d();
    }
}
