package com.ifengyu.intercom.ui.activity;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;

/* loaded from: classes2.dex */
public class AppSettingActivity_ViewBinding implements Unbinder {

    /* renamed from: a  reason: collision with root package name */
    private AppSettingActivity f6022a;

    /* renamed from: b  reason: collision with root package name */
    private View f6023b;

    /* loaded from: classes2.dex */
    class a extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AppSettingActivity f6024a;

        a(AppSettingActivity_ViewBinding appSettingActivity_ViewBinding, AppSettingActivity appSettingActivity) {
            this.f6024a = appSettingActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6024a.onClick(view);
        }
    }

    @UiThread
    public AppSettingActivity_ViewBinding(AppSettingActivity appSettingActivity, View view) {
        this.f6022a = appSettingActivity;
        appSettingActivity.mTopBar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.top_bar, "field 'mTopBar'", QMUITopBarLayout.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.item_system_permission, "method 'onClick'");
        this.f6023b = findRequiredView;
        findRequiredView.setOnClickListener(new a(this, appSettingActivity));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        AppSettingActivity appSettingActivity = this.f6022a;
        if (appSettingActivity != null) {
            this.f6022a = null;
            appSettingActivity.mTopBar = null;
            this.f6023b.setOnClickListener(null);
            this.f6023b = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
