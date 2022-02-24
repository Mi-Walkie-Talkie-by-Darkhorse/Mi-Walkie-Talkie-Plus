package com.ifengyu.intercom.lite.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.lite.widget.EmptyView;
import com.qmuiteam.qmui.alpha.QMUIAlphaImageButton;
import com.qmuiteam.qmui.layout.QMUIConstraintLayout;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;

/* loaded from: classes2.dex */
public class ConfigFileListFragment_ViewBinding implements Unbinder {

    /* renamed from: a  reason: collision with root package name */
    private ConfigFileListFragment f5440a;

    /* renamed from: b  reason: collision with root package name */
    private View f5441b;

    /* renamed from: c  reason: collision with root package name */
    private View f5442c;
    private View d;

    /* loaded from: classes2.dex */
    class a extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ConfigFileListFragment f5443a;

        a(ConfigFileListFragment_ViewBinding configFileListFragment_ViewBinding, ConfigFileListFragment configFileListFragment) {
            this.f5443a = configFileListFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f5443a.onClick(view);
        }
    }

    /* loaded from: classes2.dex */
    class b extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ConfigFileListFragment f5444a;

        b(ConfigFileListFragment_ViewBinding configFileListFragment_ViewBinding, ConfigFileListFragment configFileListFragment) {
            this.f5444a = configFileListFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f5444a.onClick(view);
        }
    }

    /* loaded from: classes2.dex */
    class c extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ConfigFileListFragment f5445a;

        c(ConfigFileListFragment_ViewBinding configFileListFragment_ViewBinding, ConfigFileListFragment configFileListFragment) {
            this.f5445a = configFileListFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f5445a.onClick(view);
        }
    }

    @UiThread
    public ConfigFileListFragment_ViewBinding(ConfigFileListFragment configFileListFragment, View view) {
        this.f5440a = configFileListFragment;
        configFileListFragment.mTopBar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.top_bar, "field 'mTopBar'", QMUITopBarLayout.class);
        configFileListFragment.mEmptyView = (EmptyView) Utils.findRequiredViewAsType(view, R.id.emptyView, "field 'mEmptyView'", EmptyView.class);
        configFileListFragment.mBtnBackup = (QMUIRoundButton) Utils.findRequiredViewAsType(view, R.id.btn_backup, "field 'mBtnBackup'", QMUIRoundButton.class);
        configFileListFragment.mRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.recycler_view, "field 'mRecyclerView'", RecyclerView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.btn_rename, "field 'mBtnRename' and method 'onClick'");
        configFileListFragment.mBtnRename = (QMUIAlphaImageButton) Utils.castView(findRequiredView, R.id.btn_rename, "field 'mBtnRename'", QMUIAlphaImageButton.class);
        this.f5441b = findRequiredView;
        findRequiredView.setOnClickListener(new a(this, configFileListFragment));
        View findRequiredView2 = Utils.findRequiredView(view, R.id.btn_import, "field 'mBtnImport' and method 'onClick'");
        configFileListFragment.mBtnImport = (QMUIAlphaImageButton) Utils.castView(findRequiredView2, R.id.btn_import, "field 'mBtnImport'", QMUIAlphaImageButton.class);
        this.f5442c = findRequiredView2;
        findRequiredView2.setOnClickListener(new b(this, configFileListFragment));
        View findRequiredView3 = Utils.findRequiredView(view, R.id.btn_delete, "field 'mBtnDelete' and method 'onClick'");
        configFileListFragment.mBtnDelete = (QMUIAlphaImageButton) Utils.castView(findRequiredView3, R.id.btn_delete, "field 'mBtnDelete'", QMUIAlphaImageButton.class);
        this.d = findRequiredView3;
        findRequiredView3.setOnClickListener(new c(this, configFileListFragment));
        configFileListFragment.mClOperationPanel = (QMUIConstraintLayout) Utils.findRequiredViewAsType(view, R.id.cl_operation_panel, "field 'mClOperationPanel'", QMUIConstraintLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ConfigFileListFragment configFileListFragment = this.f5440a;
        if (configFileListFragment != null) {
            this.f5440a = null;
            configFileListFragment.mTopBar = null;
            configFileListFragment.mEmptyView = null;
            configFileListFragment.mBtnBackup = null;
            configFileListFragment.mRecyclerView = null;
            configFileListFragment.mBtnRename = null;
            configFileListFragment.mBtnImport = null;
            configFileListFragment.mBtnDelete = null;
            configFileListFragment.mClOperationPanel = null;
            this.f5441b.setOnClickListener(null);
            this.f5441b = null;
            this.f5442c.setOnClickListener(null);
            this.f5442c = null;
            this.d.setOnClickListener(null);
            this.d = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
