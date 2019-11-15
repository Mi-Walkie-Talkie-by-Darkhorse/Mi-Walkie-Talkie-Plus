package com.ifengyu.intercom.ui.imui.base;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.IdRes;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import butterknife.ButterKnife;
import com.afollestad.materialdialogs.MaterialDialog;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.intercom.R;
import com.ifengyu.library.helper.QMUIStatusBarHelper;
import com.ifengyu.library.util.l;
import com.ifengyu.library.widget.dialog.TipDialog;
import com.ifengyu.library.widget.dialog.TipDialog.Builder;
import io.reactivex.disposables.a;
import io.reactivex.disposables.b;
import java.lang.reflect.Field;
import java.util.ArrayList;

public abstract class BaseActivity extends AppCompatActivity {
    protected final String TAG = getClass().getSimpleName();
    protected a mCompositeDisposable = new a();
    private BaseFragment mContent;
    protected LayoutInflater mInflater;
    private MaterialDialog mProgress;
    private TipDialog mTipDialog;
    private SparseArray<View> mViews = new SparseArray<>();

    /* access modifiers changed from: protected */
    public abstract int getContentLayout();

    /* access modifiers changed from: protected */
    public abstract void initData();

    /* access modifiers changed from: protected */
    public abstract void initListener();

    /* access modifiers changed from: protected */
    public abstract void initView(Bundle bundle);

    /* access modifiers changed from: protected */
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        initBundle(intent.getExtras());
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        QMUIStatusBarHelper.a(this);
        QMUIStatusBarHelper.b(this);
        initBundle(getIntent().getExtras());
        this.mInflater = LayoutInflater.from(this);
        int contentLayout = getContentLayout();
        if (contentLayout != 0) {
            setContentView(contentLayout);
        } else {
            View contentView = getContentView(this.mInflater);
            if (contentView != null) {
                setContentView(contentView);
                if (getContentViewId() > 0) {
                    contentView.setId(getContentViewId());
                }
            }
        }
        ButterKnife.bind((Activity) this);
        initToolbar();
        initView(bundle);
        initData();
        initListener();
    }

    /* access modifiers changed from: protected */
    public void initBundle(Bundle bundle) {
    }

    /* access modifiers changed from: protected */
    public void onStart() {
        super.onStart();
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
    }

    /* access modifiers changed from: protected */
    public void onStop() {
        super.onStop();
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        if (this.mCompositeDisposable != null && !this.mCompositeDisposable.isDisposed()) {
            this.mCompositeDisposable.dispose();
        }
        super.onDestroy();
    }

    /* access modifiers changed from: protected */
    public void addDisposable(b bVar) {
        this.mCompositeDisposable.a(bVar);
    }

    public LayoutInflater getInflater() {
        return this.mInflater;
    }

    /* access modifiers changed from: protected */
    public View getContentView(LayoutInflater layoutInflater) {
        return null;
    }

    /* access modifiers changed from: protected */
    public int getContentViewId() {
        return -1;
    }

    /* access modifiers changed from: protected */
    public void initToolbar() {
        FrameLayout frameLayout = (FrameLayout) findView(R.id.title_bar);
        if (frameLayout != null) {
            l.a((ViewGroup) frameLayout);
        }
    }

    public void onBackPressed() {
        if (!com.ifengyu.library.helper.a.a.a((FragmentActivity) this)) {
            popBackStack();
        }
    }

    public void clearDisappearInfo(View view) {
        if (view != null) {
            try {
                Field declaredField = ViewGroup.class.getDeclaredField("mDisappearingChildren");
                declaredField.setAccessible(true);
                Object obj = declaredField.get(findViewById(getContentViewId()));
                if (obj != null && (obj instanceof ArrayList)) {
                    ArrayList arrayList = (ArrayList) obj;
                    if (arrayList.contains(view)) {
                        Log.i(this.TAG, "ViewGroup.mDisappearingChildren contain the targetView");
                        arrayList.remove(view);
                    }
                }
            } catch (NoSuchFieldException e) {
                ThrowableExtension.printStackTrace(e);
            } catch (IllegalAccessException e2) {
                ThrowableExtension.printStackTrace(e2);
            }
        }
    }

    public BaseFragment getCurrentFragment() {
        return (BaseFragment) getSupportFragmentManager().findFragmentById(getContentViewId());
    }

    public void replaceFragment(BaseFragment baseFragment) {
        replaceFragment(baseFragment, true);
    }

    public void replaceFragment(BaseFragment baseFragment, boolean z) {
        BaseFragment.a onFetchTransitionConfig = baseFragment.onFetchTransitionConfig();
        String simpleName = baseFragment.getClass().getSimpleName();
        FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
        beginTransaction.setCustomAnimations(onFetchTransitionConfig.a, onFetchTransitionConfig.b, onFetchTransitionConfig.c, onFetchTransitionConfig.d).replace(getContentViewId(), baseFragment, simpleName);
        if (z) {
            beginTransaction.addToBackStack(simpleName);
        }
        beginTransaction.commit();
    }

    public void switchContent(BaseFragment baseFragment, BaseFragment baseFragment2) {
        BaseFragment.a onFetchTransitionConfig = baseFragment2.onFetchTransitionConfig();
        String simpleName = baseFragment2.getClass().getSimpleName();
        if (this.mContent != baseFragment2) {
            this.mContent = baseFragment2;
            FragmentTransaction customAnimations = getSupportFragmentManager().beginTransaction().setCustomAnimations(onFetchTransitionConfig.a, onFetchTransitionConfig.b, onFetchTransitionConfig.c, onFetchTransitionConfig.d);
            if (!baseFragment2.isAdded()) {
                customAnimations.hide(baseFragment).add(getContentViewId(), (Fragment) baseFragment2).addToBackStack(simpleName).commit();
            } else {
                customAnimations.hide(baseFragment).show(baseFragment2).commit();
            }
        }
    }

    /* access modifiers changed from: protected */
    public void popBackStack() {
        if (getSupportFragmentManager().getBackStackEntryCount() <= 1) {
            super.onBackPressed();
        } else {
            getSupportFragmentManager().popBackStackImmediate();
        }
    }

    public void startActivity(Class<?> cls) {
        startActivity(cls, null);
    }

    public void startActivity(Class<?> cls, Bundle bundle) {
        Intent intent = new Intent();
        intent.setClass(this, cls);
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        startActivity(intent);
    }

    public void startActivityForResult(Class<?> cls, Bundle bundle, int i) {
        Intent intent = new Intent();
        intent.setClass(this, cls);
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        startActivityForResult(intent, i);
    }

    /* access modifiers changed from: protected */
    public <V extends View> V findView(@IdRes int i) {
        V v = (View) this.mViews.get(i);
        if (v != null) {
            return v;
        }
        V findViewById = super.findViewById(i);
        this.mViews.put(i, findViewById);
        return findViewById;
    }

    public void showLoadingDialog() {
        if (this.mProgress == null) {
            this.mProgress = new MaterialDialog.a(this).a((int) R.string.loading).b(false).i(R.color.colorAccent).a(true, 0).b();
        }
        if (this.mProgress.h()) {
            this.mProgress.show();
        }
    }

    public void showLoadingDialog(int i) {
        if (this.mProgress == null) {
            this.mProgress = new MaterialDialog.a(this).a(i).b(false).i(R.color.colorAccent).a(true, 0).b();
        }
        this.mProgress.a(i);
        if (this.mProgress.h()) {
            this.mProgress.show();
        }
    }

    public void hideLoadingDialog() {
        if (this.mProgress != null && this.mProgress.isShowing()) {
            this.mProgress.dismiss();
        }
    }

    public void showTipDiaog() {
        if (this.mTipDialog == null) {
            this.mTipDialog = new Builder(this).a(1).a((CharSequence) l.a((int) R.string.loading)).a(true).a();
        }
        if (!this.mTipDialog.isShowing()) {
            this.mTipDialog.show();
        }
    }

    public void hideTipDialog() {
        if (this.mTipDialog != null) {
            this.mTipDialog.dismiss();
        }
    }

    /* access modifiers changed from: protected */
    public boolean isActivated() {
        return !isFinishing() && !isDestroyed();
    }
}
