package com.ifengyu.intercom.ui.imui.base;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.annotation.IdRes;
import android.support.annotation.Nullable;
import android.support.annotation.StringRes;
import android.support.v4.app.Fragment;
import android.support.v4.view.ViewCompat;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationUtils;
import android.widget.TextView;
import butterknife.ButterKnife;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.intercom.R;
import com.ifengyu.library.util.c;
import com.tbruyelle.rxpermissions2.b;

public abstract class BaseFragment extends Fragment {
    protected static final a SCALE_TRANSITION_CONFIG = new a(R.anim.scale_enter, R.anim.slide_still, R.anim.slide_still, R.anim.scale_exit);
    protected static final a SLIDE_TRANSITION_CONFIG = new a(R.anim.slide_enter, R.anim.slide_exit, R.anim.slide_pop_enter, R.anim.slide_pop_exit);
    protected static final a VERTICAL_TRANSITION_CONFIG = new a(R.anim.v_fragment_enter, R.anim.v_fragment_exit, R.anim.v_fragment_pop_enter, R.anim.v_fragment_pop_exit);
    protected final String TAG = getClass().getSimpleName();
    protected Bundle mBundle;
    protected Context mContext;
    protected LayoutInflater mInflater;
    protected View mRootView;
    private b mRxPermissions;
    private SparseArray<View> mViews = new SparseArray<>();

    public static final class a {
        public final int a;
        public final int b;
        public final int c;
        public final int d;

        public a(int i, int i2, int i3, int i4) {
            this.a = i;
            this.b = i2;
            this.c = i3;
            this.d = i4;
        }
    }

    /* access modifiers changed from: protected */
    public abstract int getLayoutId();

    @TargetApi(23)
    public void onAttach(Context context) {
        super.onAttach(context);
        this.mContext = context;
        c.a(this.TAG, "onAttach");
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        if (VERSION.SDK_INT < 23) {
            c.a(this.TAG, "onAttach");
            this.mContext = activity;
        }
    }

    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        c.a(this.TAG, "onCreate");
        this.mBundle = getArguments();
        initBundle(this.mBundle);
    }

    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        c.a(this.TAG, "onCreateView");
        if (this.mRootView != null) {
            ViewGroup viewGroup2 = (ViewGroup) this.mRootView.getParent();
            if (viewGroup2 != null) {
                viewGroup2.removeView(this.mRootView);
            }
        } else {
            this.mRootView = layoutInflater.inflate(getLayoutId(), viewGroup, false);
            this.mRootView.setClickable(true);
            this.mInflater = layoutInflater;
        }
        return this.mRootView;
    }

    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        onBindViewBefore(this.mRootView);
        ButterKnife.bind((Object) this, this.mRootView);
        if (bundle != null) {
            onRestartInstance(bundle);
        }
        initWidget(this.mRootView);
        initData();
    }

    public boolean isAttachedToActivity() {
        return !isRemoving() && this.mRootView != null;
    }

    public BaseActivity getBaseActivity() {
        return (BaseActivity) this.mContext;
    }

    /* access modifiers changed from: protected */
    public void popBackStack() {
        if (getBaseActivity() != null) {
            getBaseActivity().popBackStack();
        }
    }

    public void replaceFragment(BaseFragment baseFragment, boolean z) {
        if (getBaseActivity() == null) {
            c.d(this.TAG, "startFragment null:" + this);
        } else if (isAttachedToActivity()) {
            getBaseActivity().replaceFragment(baseFragment, z);
        } else {
            c.d(this.TAG, "fragment not attached:" + this);
        }
    }

    public void startFragment(BaseFragment baseFragment) {
        if (getBaseActivity() == null) {
            c.d(this.TAG, "startFragment null:" + this);
        } else if (isAttachedToActivity()) {
            getBaseActivity().switchContent(this, baseFragment);
        } else {
            c.d(this.TAG, "fragment not attached:" + this);
        }
    }

    public void onHiddenChanged(boolean z) {
        if (z) {
            c.a(this.TAG, "onHiddenChanged:hidden");
        } else {
            c.a(this.TAG, "onHiddenChanged:show");
        }
    }

    public Animation onCreateAnimation(int i, boolean z, int i2) {
        if (!z && getParentFragment() != null && getParentFragment().isRemoving()) {
            AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 1.0f);
            alphaAnimation.setDuration(2131623939);
            return alphaAnimation;
        } else if (i2 != R.anim.scale_enter || !z) {
            return super.onCreateAnimation(i, z, i2);
        } else {
            try {
                Animation loadAnimation = AnimationUtils.loadAnimation(getContext(), i2);
                loadAnimation.setAnimationListener(new AnimationListener() {
                    /* access modifiers changed from: private */
                    public float b;

                    public void onAnimationStart(Animation animation) {
                        if (BaseFragment.this.getView() != null) {
                            this.b = ViewCompat.getTranslationZ(BaseFragment.this.getView());
                            ViewCompat.setTranslationZ(BaseFragment.this.getView(), 100.0f);
                        }
                    }

                    public void onAnimationEnd(Animation animation) {
                        if (BaseFragment.this.getView() != null) {
                            BaseFragment.this.getView().postDelayed(new Runnable() {
                                public void run() {
                                    ViewCompat.setTranslationZ(BaseFragment.this.getView(), AnonymousClass1.this.b);
                                }
                            }, 100);
                        }
                    }

                    public void onAnimationRepeat(Animation animation) {
                    }
                });
                return loadAnimation;
            } catch (Exception e) {
                ThrowableExtension.printStackTrace(e);
                return null;
            }
        }
    }

    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
    }

    public void onStart() {
        super.onStart();
        c.a(this.TAG, "onStart");
    }

    public void onResume() {
        super.onResume();
        c.a(this.TAG, "onResume");
    }

    public void onPause() {
        super.onPause();
        c.a(this.TAG, "onPause");
    }

    public void onStop() {
        super.onStop();
        c.a(this.TAG, "onStop");
    }

    public void onDestroyView() {
        super.onDestroyView();
        c.a(this.TAG, "onDestroyView");
    }

    public void onDetach() {
        super.onDetach();
        this.mContext = null;
        this.mRootView = null;
        c.a(this.TAG, "onDetach");
    }

    /* access modifiers changed from: protected */
    public void initBundle(Bundle bundle) {
    }

    /* access modifiers changed from: protected */
    public void onBindViewBefore(View view) {
    }

    /* access modifiers changed from: protected */
    public void onRestartInstance(Bundle bundle) {
    }

    /* access modifiers changed from: protected */
    public void initWidget(View view) {
    }

    /* access modifiers changed from: protected */
    public void initData() {
    }

    /* access modifiers changed from: protected */
    public <V extends View> V findView(@IdRes int i) {
        V v = (View) this.mViews.get(i);
        if (v != null) {
            return v;
        }
        V findViewById = this.mRootView.findViewById(i);
        this.mViews.put(i, findViewById);
        return findViewById;
    }

    /* access modifiers changed from: protected */
    public void setText(@IdRes int i, String str) {
        TextView textView = (TextView) findView(i);
        if (!TextUtils.isEmpty(str)) {
            textView.setText(str);
        }
    }

    /* access modifiers changed from: protected */
    public void setText(@IdRes int i, @StringRes int i2) {
        setText(i, getString(i2));
    }

    /* access modifiers changed from: protected */
    public void setTextEmptyGone(int i, String str) {
        TextView textView = (TextView) findView(i);
        if (TextUtils.isEmpty(str)) {
            textView.setVisibility(8);
        } else {
            textView.setText(str);
        }
    }

    /* access modifiers changed from: protected */
    public <T extends View> T setGone(int i) {
        T findView = findView(i);
        findView.setVisibility(8);
        return findView;
    }

    /* access modifiers changed from: protected */
    public <T extends View> T setVisibility(int i) {
        T findView = findView(i);
        findView.setVisibility(0);
        return findView;
    }

    /* access modifiers changed from: protected */
    public void setInVisibility(int i) {
        findView(i).setVisibility(4);
    }

    public a onFetchTransitionConfig() {
        return SLIDE_TRANSITION_CONFIG;
    }

    /* access modifiers changed from: protected */
    public b getRxPermissions() {
        if (this.mRxPermissions == null) {
            this.mRxPermissions = new b(getActivity());
        }
        return this.mRxPermissions;
    }
}
