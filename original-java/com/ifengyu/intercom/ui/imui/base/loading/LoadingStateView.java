package com.ifengyu.intercom.ui.imui.base.loading;

import android.content.Context;
import android.os.Looper;
import android.support.annotation.AttrRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;

public class LoadingStateView extends FrameLayout {
    private static final String a = LoadingStateView.class.getSimpleName();
    /* access modifiers changed from: private */
    public View b;
    private View c;
    /* access modifiers changed from: private */
    public View d;
    /* access modifiers changed from: private */
    public View e;
    private LayoutInflater f;

    public LoadingStateView(@NonNull Context context) {
        this(context, null);
    }

    public LoadingStateView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    public LoadingStateView(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i) {
        super(context, attributeSet, i);
        this.f = LayoutInflater.from(context);
    }

    private boolean d() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    public void a() {
        if (d()) {
            e(this.b);
        } else {
            post(new Runnable() {
                public void run() {
                    LoadingStateView.this.e(LoadingStateView.this.b);
                }
            });
        }
    }

    public void b() {
        if (d()) {
            e(this.e);
        } else {
            post(new Runnable() {
                public void run() {
                    LoadingStateView.this.e(LoadingStateView.this.e);
                }
            });
        }
    }

    public void c() {
        if (d()) {
            e(this.d);
        } else {
            post(new Runnable() {
                public void run() {
                    LoadingStateView.this.e(LoadingStateView.this.d);
                }
            });
        }
    }

    /* access modifiers changed from: private */
    public void e(View view) {
        if (view != null) {
            if (view == this.b) {
                this.b.setVisibility(0);
                if (this.c != null) {
                    this.c.setVisibility(8);
                }
                if (this.e != null) {
                    this.e.setVisibility(8);
                }
                if (this.d != null) {
                    this.d.setVisibility(8);
                }
            } else if (view == this.c) {
                this.c.setVisibility(0);
                if (this.b != null) {
                    this.b.setVisibility(8);
                }
                if (this.e != null) {
                    this.e.setVisibility(8);
                }
                if (this.d != null) {
                    this.d.setVisibility(8);
                }
            } else if (view == this.e) {
                this.e.setVisibility(0);
                if (this.b != null) {
                    this.b.setVisibility(8);
                }
                if (this.c != null) {
                    this.c.setVisibility(8);
                }
                if (this.d != null) {
                    this.d.setVisibility(8);
                }
            } else if (view == this.d) {
                this.d.setVisibility(0);
                if (this.b != null) {
                    this.b.setVisibility(8);
                }
                if (this.c != null) {
                    this.c.setVisibility(8);
                }
                if (this.e != null) {
                    this.e.setVisibility(8);
                }
            }
        }
    }

    public View a(int i) {
        return a(this.f.inflate(i, this, false));
    }

    public View b(int i) {
        return b(this.f.inflate(i, this, false));
    }

    public View c(int i) {
        return c(this.f.inflate(i, this, false));
    }

    public View a(View view) {
        View view2 = this.b;
        if (view2 != null) {
            Log.w(a, "you have already set a loading view and would be instead of this new one.");
        }
        removeView(view2);
        addView(view);
        this.b = view;
        return this.b;
    }

    public View b(View view) {
        View view2 = this.d;
        if (view2 != null) {
            Log.w(a, "you have already set a empty view and would be instead of this new one.");
        }
        removeView(view2);
        addView(view);
        this.d = view;
        return this.d;
    }

    public View c(View view) {
        View view2 = this.c;
        if (view2 != null) {
            Log.w(a, "you have already set a retry view and would be instead of this new one.");
        }
        removeView(view2);
        addView(view);
        this.c = view;
        return this.c;
    }

    public View d(View view) {
        View view2 = this.e;
        if (view2 != null) {
            Log.w(a, "you have already set a retry view and would be instead of this new one.");
        }
        removeView(view2);
        addView(view);
        this.e = view;
        return this.e;
    }

    public View getRetryView() {
        return this.c;
    }

    public View getLoadingView() {
        return this.b;
    }

    public View getContentView() {
        return this.e;
    }

    public View getEmptyView() {
        return this.d;
    }
}
