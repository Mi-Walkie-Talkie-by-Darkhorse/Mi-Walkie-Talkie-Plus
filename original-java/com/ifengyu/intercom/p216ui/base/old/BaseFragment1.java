package com.ifengyu.intercom.p216ui.base.old;

import android.os.Bundle;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;

/* renamed from: com.ifengyu.intercom.ui.base.old.a */
/* loaded from: classes2.dex */
public abstract class BaseFragment1 extends Fragment {

    /* renamed from: a */
    private boolean f15069a;

    /* renamed from: b */
    private boolean f15070b;

    /* renamed from: c */
    private boolean f15071c;

    /* renamed from: d */
    private View f15072d;

    /* renamed from: w1 */
    private void m10267w1() {
        this.f15071c = true;
        this.f15069a = false;
        this.f15072d = null;
        this.f15070b = true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        m10267w1();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        m10267w1();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        if (this.f15072d == null) {
            this.f15072d = view;
            if (getUserVisibleHint()) {
                if (this.f15071c) {
                    mo10266x1();
                    this.f15071c = false;
                }
                mo10265y1(true);
                this.f15069a = true;
            }
        }
        if (this.f15070b) {
            view = this.f15072d;
        }
        super.onViewCreated(view, bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        if (this.f15072d == null) {
            return;
        }
        if (this.f15071c && z) {
            mo10266x1();
            this.f15071c = false;
        }
        if (z) {
            mo10265y1(true);
            this.f15069a = true;
        } else if (this.f15069a) {
            this.f15069a = false;
            mo10265y1(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: x1 */
    public void mo10266x1() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: y1 */
    public void mo10265y1(boolean z) {
    }
}
