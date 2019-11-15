package com.ifengyu.intercom.ui.widget.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.v;

public class LoadMoreListView extends ListView implements OnScrollListener {
    /* access modifiers changed from: private */
    public a a = null;
    /* access modifiers changed from: private */
    public boolean b = false;
    private View c;
    /* access modifiers changed from: private */
    public ImageView d;
    /* access modifiers changed from: private */
    public TextView e;
    /* access modifiers changed from: private */
    public Animation f;
    private int g;

    public interface a {
        void c();
    }

    public LoadMoreListView(Context context) {
        super(context);
        d();
    }

    public LoadMoreListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        d();
    }

    public LoadMoreListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        d();
    }

    private void d() {
        this.c = View.inflate(getContext(), R.layout.listview_load_more_layout, null);
        this.d = (ImageView) this.c.findViewById(R.id.load_more_icon);
        this.e = (TextView) this.c.findViewById(R.id.load_more_text);
        this.d.setVisibility(8);
        this.e.setText(R.string.load_more);
        this.f = AnimationUtils.loadAnimation(getContext(), R.anim.rotate);
        this.f.setInterpolator(new LinearInterpolator());
        this.c.setClickable(true);
        this.c.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                if (!v.a(LoadMoreListView.this.getContext())) {
                    v.a((CharSequence) ad.a((int) R.string.net_error_please_check), false);
                } else if (!LoadMoreListView.this.b) {
                    LoadMoreListView.this.b = true;
                    LoadMoreListView.this.d.setVisibility(0);
                    LoadMoreListView.this.d.startAnimation(LoadMoreListView.this.f);
                    LoadMoreListView.this.e.setText(R.string.loading);
                    if (LoadMoreListView.this.a != null) {
                        LoadMoreListView.this.a.c();
                    }
                }
            }
        });
        this.c.measure(0, 0);
        this.g = this.c.getMeasuredHeight();
        this.c.setPadding(0, -this.g, 0, 0);
        addFooterView(this.c);
    }

    public void a() {
        this.c.setPadding(0, 0, 0, 0);
    }

    public void b() {
        this.c.setPadding(0, -this.g, 0, 0);
    }

    public void onScrollStateChanged(AbsListView absListView, int i) {
        if (i == 0 && getLastVisiblePosition() == getAdapter().getCount() - 1 && !this.b) {
            this.b = true;
            this.d.setVisibility(0);
            this.d.startAnimation(this.f);
            this.e.setText(R.string.loading);
            if (this.a != null) {
                this.a.c();
            }
        }
    }

    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
    }

    public void c() {
        this.d.setVisibility(8);
        this.d.clearAnimation();
        this.e.setText(R.string.load_more);
        this.b = false;
    }

    public void setLoadMoreListener(a aVar) {
        this.a = aVar;
    }
}
