package com.ifengyu.intercom.p216ui.fragment;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;

/* renamed from: com.ifengyu.intercom.ui.fragment.QrScanFragment_ViewBinding */
/* loaded from: classes2.dex */
public class QrScanFragment_ViewBinding implements Unbinder {

    /* renamed from: a */
    private QrScanFragment f15162a;

    @UiThread
    public QrScanFragment_ViewBinding(QrScanFragment qrScanFragment, View view) {
        this.f15162a = qrScanFragment;
        qrScanFragment.mTopbar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.topbar, "field 'mTopbar'", QMUITopBarLayout.class);
        qrScanFragment.rimFrameLayout = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.rim, "field 'rimFrameLayout'", FrameLayout.class);
        qrScanFragment.scanArea = (ImageView) Utils.findRequiredViewAsType(view, R.id.scan_area, "field 'scanArea'", ImageView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        QrScanFragment qrScanFragment = this.f15162a;
        if (qrScanFragment != null) {
            this.f15162a = null;
            qrScanFragment.mTopbar = null;
            qrScanFragment.rimFrameLayout = null;
            qrScanFragment.scanArea = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
