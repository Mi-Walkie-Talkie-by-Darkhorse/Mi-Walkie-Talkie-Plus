package com.ifengyu.intercom.ui.baseui;

import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.ifengyu.intercom.d;

/* compiled from: BaseFragment.java */
/* loaded from: classes2.dex */
public abstract class a extends Fragment {
    private static final String f = a.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    private boolean f6383a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f6384b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f6385c;
    private View d;
    protected ViewGroup e;

    private void j() {
        this.f6385c = true;
        this.f6383a = false;
        this.d = null;
        this.f6384b = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(boolean z) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void e() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void i() {
        if (Build.VERSION.SDK_INT >= 19 && this.e != null) {
            this.e.setPadding(0, d.a(), 0, 0);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        j();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        j();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        if (this.d == null) {
            this.d = view;
            if (getUserVisibleHint()) {
                if (this.f6385c) {
                    e();
                    this.f6385c = false;
                }
                a(true);
                this.f6383a = true;
            }
        }
        if (this.f6384b) {
            view = this.d;
        }
        super.onViewCreated(view, bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        if (this.d != null) {
            if (this.f6385c && z) {
                e();
                this.f6385c = false;
            }
            if (z) {
                a(true);
                this.f6383a = true;
            } else if (this.f6383a) {
                this.f6383a = false;
                a(false);
            }
        }
    }
}
