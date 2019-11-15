package com.ifengyu.intercom.ui.baseui;

import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.view.View;
import android.view.ViewGroup;
import com.ifengyu.intercom.a;

public abstract class BaseFragment extends Fragment {
    private static final String b = BaseFragment.class.getSimpleName();
    protected ViewGroup a;
    private boolean c;
    private boolean d;
    private boolean e;
    private View f;

    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        if (this.f != null) {
            if (this.e && z) {
                b();
                this.e = false;
            }
            if (z) {
                a(true);
                this.c = true;
            } else if (this.c) {
                this.c = false;
                a(false);
            }
        }
    }

    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        a();
    }

    public void onViewCreated(View view, @Nullable Bundle bundle) {
        if (this.f == null) {
            this.f = view;
            if (getUserVisibleHint()) {
                if (this.e) {
                    b();
                    this.e = false;
                }
                a(true);
                this.c = true;
            }
        }
        if (this.d) {
            view = this.f;
        }
        super.onViewCreated(view, bundle);
    }

    public void onDestroyView() {
        super.onDestroyView();
    }

    public void onDestroy() {
        super.onDestroy();
        a();
    }

    private void a() {
        this.e = true;
        this.c = false;
        this.f = null;
        this.d = true;
    }

    /* access modifiers changed from: protected */
    public void a(boolean z) {
    }

    /* access modifiers changed from: protected */
    public void b() {
    }

    /* access modifiers changed from: protected */
    public void c() {
        if (VERSION.SDK_INT >= 19 && this.a != null) {
            this.a.setPadding(0, a.a(), 0, 0);
        }
    }
}
