package android.support.v4.app;

import android.app.Activity;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.IntentSender.SendIntentException;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.annotation.CallSuper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo.Scope;
import android.support.annotation.StringRes;
import android.support.v4.util.DebugUtils;
import android.support.v4.util.SimpleArrayMap;
import android.support.v4.view.LayoutInflaterCompat;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnCreateContextMenuListener;
import android.view.ViewGroup;
import android.view.animation.Animation;
import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public class Fragment implements ComponentCallbacks, OnCreateContextMenuListener {
    static final int ACTIVITY_CREATED = 2;
    static final int CREATED = 1;
    static final int INITIALIZING = 0;
    static final int RESUMED = 5;
    static final int STARTED = 4;
    static final int STOPPED = 3;
    static final Object USE_DEFAULT_TRANSITION = new Object();
    private static final SimpleArrayMap<String, Class<?>> sClassMap = new SimpleArrayMap<>();
    boolean mAdded;
    AnimationInfo mAnimationInfo;
    Bundle mArguments;
    int mBackStackNesting;
    boolean mCalled;
    boolean mCheckedForLoaderManager;
    FragmentManagerImpl mChildFragmentManager;
    FragmentManagerNonConfig mChildNonConfig;
    ViewGroup mContainer;
    int mContainerId;
    boolean mDeferStart;
    boolean mDetached;
    int mFragmentId;
    FragmentManagerImpl mFragmentManager;
    boolean mFromLayout;
    boolean mHasMenu;
    boolean mHidden;
    boolean mHiddenChanged;
    FragmentHostCallback mHost;
    boolean mInLayout;
    int mIndex = -1;
    View mInnerView;
    boolean mIsNewlyAdded;
    LoaderManagerImpl mLoaderManager;
    boolean mLoadersStarted;
    boolean mMenuVisible = true;
    Fragment mParentFragment;
    float mPostponedAlpha;
    boolean mRemoving;
    boolean mRestored;
    boolean mRetainInstance;
    boolean mRetaining;
    Bundle mSavedFragmentState;
    SparseArray<Parcelable> mSavedViewState;
    int mState = 0;
    String mTag;
    Fragment mTarget;
    int mTargetIndex = -1;
    int mTargetRequestCode;
    boolean mUserVisibleHint = true;
    View mView;
    String mWho;

    static class AnimationInfo {
        /* access modifiers changed from: private */
        public Boolean mAllowEnterTransitionOverlap;
        /* access modifiers changed from: private */
        public Boolean mAllowReturnTransitionOverlap;
        View mAnimatingAway;
        /* access modifiers changed from: private */
        public Object mEnterTransition = null;
        SharedElementCallback mEnterTransitionCallback = null;
        boolean mEnterTransitionPostponed;
        /* access modifiers changed from: private */
        public Object mExitTransition = null;
        SharedElementCallback mExitTransitionCallback = null;
        boolean mIsHideReplaced;
        int mNextAnim;
        int mNextTransition;
        int mNextTransitionStyle;
        /* access modifiers changed from: private */
        public Object mReenterTransition = Fragment.USE_DEFAULT_TRANSITION;
        /* access modifiers changed from: private */
        public Object mReturnTransition = Fragment.USE_DEFAULT_TRANSITION;
        /* access modifiers changed from: private */
        public Object mSharedElementEnterTransition = null;
        /* access modifiers changed from: private */
        public Object mSharedElementReturnTransition = Fragment.USE_DEFAULT_TRANSITION;
        OnStartEnterTransitionListener mStartEnterTransitionListener;
        int mStateAfterAnimating;

        AnimationInfo() {
        }
    }

    public static class InstantiationException extends RuntimeException {
        public InstantiationException(String str, Exception exc) {
            super(str, exc);
        }
    }

    interface OnStartEnterTransitionListener {
        void onStartEnterTransition();

        void startListening();
    }

    public static class SavedState implements Parcelable {
        public static final Creator<SavedState> CREATOR = new Creator<SavedState>() {
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        final Bundle mState;

        SavedState(Bundle bundle) {
            this.mState = bundle;
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            this.mState = parcel.readBundle();
            if (classLoader != null && this.mState != null) {
                this.mState.setClassLoader(classLoader);
            }
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeBundle(this.mState);
        }
    }

    public static Fragment instantiate(Context context, String str) {
        return instantiate(context, str, null);
    }

    public static Fragment instantiate(Context context, String str, @Nullable Bundle bundle) {
        try {
            Class cls = (Class) sClassMap.get(str);
            if (cls == null) {
                cls = context.getClassLoader().loadClass(str);
                sClassMap.put(str, cls);
            }
            Fragment fragment = (Fragment) cls.newInstance();
            if (bundle != null) {
                bundle.setClassLoader(fragment.getClass().getClassLoader());
                fragment.mArguments = bundle;
            }
            return fragment;
        } catch (ClassNotFoundException e) {
            throw new InstantiationException("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an" + " empty constructor that is public", e);
        } catch (InstantiationException e2) {
            throw new InstantiationException("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an" + " empty constructor that is public", e2);
        } catch (IllegalAccessException e3) {
            throw new InstantiationException("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an" + " empty constructor that is public", e3);
        }
    }

    static boolean isSupportFragmentClass(Context context, String str) {
        try {
            Class cls = (Class) sClassMap.get(str);
            if (cls == null) {
                cls = context.getClassLoader().loadClass(str);
                sClassMap.put(str, cls);
            }
            return Fragment.class.isAssignableFrom(cls);
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    /* access modifiers changed from: 0000 */
    public final void restoreViewState(Bundle bundle) {
        if (this.mSavedViewState != null) {
            this.mInnerView.restoreHierarchyState(this.mSavedViewState);
            this.mSavedViewState = null;
        }
        this.mCalled = false;
        onViewStateRestored(bundle);
        if (!this.mCalled) {
            throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onViewStateRestored()");
        }
    }

    /* access modifiers changed from: 0000 */
    public final void setIndex(int i, Fragment fragment) {
        this.mIndex = i;
        if (fragment != null) {
            this.mWho = fragment.mWho + ":" + this.mIndex;
        } else {
            this.mWho = "android:fragment:" + this.mIndex;
        }
    }

    /* access modifiers changed from: 0000 */
    public final boolean isInBackStack() {
        return this.mBackStackNesting > 0;
    }

    public final boolean equals(Object obj) {
        return super.equals(obj);
    }

    public final int hashCode() {
        return super.hashCode();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        DebugUtils.buildShortClassTag(this, sb);
        if (this.mIndex >= 0) {
            sb.append(" #");
            sb.append(this.mIndex);
        }
        if (this.mFragmentId != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.mFragmentId));
        }
        if (this.mTag != null) {
            sb.append(Token.SEPARATOR);
            sb.append(this.mTag);
        }
        sb.append('}');
        return sb.toString();
    }

    public final int getId() {
        return this.mFragmentId;
    }

    public final String getTag() {
        return this.mTag;
    }

    public void setArguments(Bundle bundle) {
        if (this.mIndex >= 0) {
            throw new IllegalStateException("Fragment already active");
        }
        this.mArguments = bundle;
    }

    public final Bundle getArguments() {
        return this.mArguments;
    }

    public void setInitialSavedState(SavedState savedState) {
        if (this.mIndex >= 0) {
            throw new IllegalStateException("Fragment already active");
        }
        this.mSavedFragmentState = (savedState == null || savedState.mState == null) ? null : savedState.mState;
    }

    public void setTargetFragment(Fragment fragment, int i) {
        this.mTarget = fragment;
        this.mTargetRequestCode = i;
    }

    public final Fragment getTargetFragment() {
        return this.mTarget;
    }

    public final int getTargetRequestCode() {
        return this.mTargetRequestCode;
    }

    public Context getContext() {
        if (this.mHost == null) {
            return null;
        }
        return this.mHost.getContext();
    }

    public final FragmentActivity getActivity() {
        if (this.mHost == null) {
            return null;
        }
        return (FragmentActivity) this.mHost.getActivity();
    }

    public final Object getHost() {
        if (this.mHost == null) {
            return null;
        }
        return this.mHost.onGetHost();
    }

    public final Resources getResources() {
        if (this.mHost != null) {
            return this.mHost.getContext().getResources();
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    public final CharSequence getText(@StringRes int i) {
        return getResources().getText(i);
    }

    public final String getString(@StringRes int i) {
        return getResources().getString(i);
    }

    public final String getString(@StringRes int i, Object... objArr) {
        return getResources().getString(i, objArr);
    }

    public final FragmentManager getFragmentManager() {
        return this.mFragmentManager;
    }

    public final FragmentManager getChildFragmentManager() {
        if (this.mChildFragmentManager == null) {
            instantiateChildFragmentManager();
            if (this.mState >= 5) {
                this.mChildFragmentManager.dispatchResume();
            } else if (this.mState >= 4) {
                this.mChildFragmentManager.dispatchStart();
            } else if (this.mState >= 2) {
                this.mChildFragmentManager.dispatchActivityCreated();
            } else if (this.mState >= 1) {
                this.mChildFragmentManager.dispatchCreate();
            }
        }
        return this.mChildFragmentManager;
    }

    /* access modifiers changed from: 0000 */
    public FragmentManager peekChildFragmentManager() {
        return this.mChildFragmentManager;
    }

    public final Fragment getParentFragment() {
        return this.mParentFragment;
    }

    public final boolean isAdded() {
        return this.mHost != null && this.mAdded;
    }

    public final boolean isDetached() {
        return this.mDetached;
    }

    public final boolean isRemoving() {
        return this.mRemoving;
    }

    public final boolean isInLayout() {
        return this.mInLayout;
    }

    public final boolean isResumed() {
        return this.mState >= 5;
    }

    public final boolean isVisible() {
        return isAdded() && !isHidden() && this.mView != null && this.mView.getWindowToken() != null && this.mView.getVisibility() == 0;
    }

    public final boolean isHidden() {
        return this.mHidden;
    }

    @RestrictTo({Scope.LIBRARY_GROUP})
    public final boolean hasOptionsMenu() {
        return this.mHasMenu;
    }

    @RestrictTo({Scope.LIBRARY_GROUP})
    public final boolean isMenuVisible() {
        return this.mMenuVisible;
    }

    public void onHiddenChanged(boolean z) {
    }

    public void setRetainInstance(boolean z) {
        this.mRetainInstance = z;
    }

    public final boolean getRetainInstance() {
        return this.mRetainInstance;
    }

    public void setHasOptionsMenu(boolean z) {
        if (this.mHasMenu != z) {
            this.mHasMenu = z;
            if (isAdded() && !isHidden()) {
                this.mHost.onSupportInvalidateOptionsMenu();
            }
        }
    }

    public void setMenuVisibility(boolean z) {
        if (this.mMenuVisible != z) {
            this.mMenuVisible = z;
            if (this.mHasMenu && isAdded() && !isHidden()) {
                this.mHost.onSupportInvalidateOptionsMenu();
            }
        }
    }

    public void setUserVisibleHint(boolean z) {
        if (!this.mUserVisibleHint && z && this.mState < 4 && this.mFragmentManager != null && isAdded()) {
            this.mFragmentManager.performPendingDeferredStart(this);
        }
        this.mUserVisibleHint = z;
        this.mDeferStart = this.mState < 4 && !z;
    }

    public boolean getUserVisibleHint() {
        return this.mUserVisibleHint;
    }

    public LoaderManager getLoaderManager() {
        if (this.mLoaderManager != null) {
            return this.mLoaderManager;
        }
        if (this.mHost == null) {
            throw new IllegalStateException("Fragment " + this + " not attached to Activity");
        }
        this.mCheckedForLoaderManager = true;
        this.mLoaderManager = this.mHost.getLoaderManager(this.mWho, this.mLoadersStarted, true);
        return this.mLoaderManager;
    }

    public void startActivity(Intent intent) {
        startActivity(intent, null);
    }

    public void startActivity(Intent intent, @Nullable Bundle bundle) {
        if (this.mHost == null) {
            throw new IllegalStateException("Fragment " + this + " not attached to Activity");
        }
        this.mHost.onStartActivityFromFragment(this, intent, -1, bundle);
    }

    public void startActivityForResult(Intent intent, int i) {
        startActivityForResult(intent, i, null);
    }

    public void startActivityForResult(Intent intent, int i, @Nullable Bundle bundle) {
        if (this.mHost == null) {
            throw new IllegalStateException("Fragment " + this + " not attached to Activity");
        }
        this.mHost.onStartActivityFromFragment(this, intent, i, bundle);
    }

    public void startIntentSenderForResult(IntentSender intentSender, int i, @Nullable Intent intent, int i2, int i3, int i4, Bundle bundle) throws SendIntentException {
        if (this.mHost == null) {
            throw new IllegalStateException("Fragment " + this + " not attached to Activity");
        }
        this.mHost.onStartIntentSenderFromFragment(this, intentSender, i, intent, i2, i3, i4, bundle);
    }

    public void onActivityResult(int i, int i2, Intent intent) {
    }

    public final void requestPermissions(@NonNull String[] strArr, int i) {
        if (this.mHost == null) {
            throw new IllegalStateException("Fragment " + this + " not attached to Activity");
        }
        this.mHost.onRequestPermissionsFromFragment(this, strArr, i);
    }

    public void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
    }

    public boolean shouldShowRequestPermissionRationale(@NonNull String str) {
        if (this.mHost != null) {
            return this.mHost.onShouldShowRequestPermissionRationale(str);
        }
        return false;
    }

    @RestrictTo({Scope.LIBRARY_GROUP})
    public LayoutInflater getLayoutInflater(Bundle bundle) {
        LayoutInflater onGetLayoutInflater = this.mHost.onGetLayoutInflater();
        getChildFragmentManager();
        LayoutInflaterCompat.setFactory(onGetLayoutInflater, this.mChildFragmentManager.getLayoutInflaterFactory());
        return onGetLayoutInflater;
    }

    @CallSuper
    public void onInflate(Context context, AttributeSet attributeSet, Bundle bundle) {
        this.mCalled = true;
        Activity activity = this.mHost == null ? null : this.mHost.getActivity();
        if (activity != null) {
            this.mCalled = false;
            onInflate(activity, attributeSet, bundle);
        }
    }

    @Deprecated
    @CallSuper
    public void onInflate(Activity activity, AttributeSet attributeSet, Bundle bundle) {
        this.mCalled = true;
    }

    public void onAttachFragment(Fragment fragment) {
    }

    @CallSuper
    public void onAttach(Context context) {
        this.mCalled = true;
        Activity activity = this.mHost == null ? null : this.mHost.getActivity();
        if (activity != null) {
            this.mCalled = false;
            onAttach(activity);
        }
    }

    @Deprecated
    @CallSuper
    public void onAttach(Activity activity) {
        this.mCalled = true;
    }

    public Animation onCreateAnimation(int i, boolean z, int i2) {
        return null;
    }

    @CallSuper
    public void onCreate(@Nullable Bundle bundle) {
        this.mCalled = true;
        restoreChildFragmentState(bundle);
        if (this.mChildFragmentManager != null && !this.mChildFragmentManager.isStateAtLeast(1)) {
            this.mChildFragmentManager.dispatchCreate();
        }
    }

    /* access modifiers changed from: 0000 */
    public void restoreChildFragmentState(@Nullable Bundle bundle) {
        if (bundle != null) {
            Parcelable parcelable = bundle.getParcelable("android:support:fragments");
            if (parcelable != null) {
                if (this.mChildFragmentManager == null) {
                    instantiateChildFragmentManager();
                }
                this.mChildFragmentManager.restoreAllState(parcelable, this.mChildNonConfig);
                this.mChildNonConfig = null;
                this.mChildFragmentManager.dispatchCreate();
            }
        }
    }

    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return null;
    }

    public void onViewCreated(View view, @Nullable Bundle bundle) {
    }

    @Nullable
    public View getView() {
        return this.mView;
    }

    @CallSuper
    public void onActivityCreated(@Nullable Bundle bundle) {
        this.mCalled = true;
    }

    @CallSuper
    public void onViewStateRestored(@Nullable Bundle bundle) {
        this.mCalled = true;
    }

    @CallSuper
    public void onStart() {
        this.mCalled = true;
        if (!this.mLoadersStarted) {
            this.mLoadersStarted = true;
            if (!this.mCheckedForLoaderManager) {
                this.mCheckedForLoaderManager = true;
                this.mLoaderManager = this.mHost.getLoaderManager(this.mWho, this.mLoadersStarted, false);
            }
            if (this.mLoaderManager != null) {
                this.mLoaderManager.doStart();
            }
        }
    }

    @CallSuper
    public void onResume() {
        this.mCalled = true;
    }

    public void onSaveInstanceState(Bundle bundle) {
    }

    public void onMultiWindowModeChanged(boolean z) {
    }

    public void onPictureInPictureModeChanged(boolean z) {
    }

    @CallSuper
    public void onConfigurationChanged(Configuration configuration) {
        this.mCalled = true;
    }

    @CallSuper
    public void onPause() {
        this.mCalled = true;
    }

    @CallSuper
    public void onStop() {
        this.mCalled = true;
    }

    @CallSuper
    public void onLowMemory() {
        this.mCalled = true;
    }

    @CallSuper
    public void onDestroyView() {
        this.mCalled = true;
    }

    @CallSuper
    public void onDestroy() {
        this.mCalled = true;
        if (!this.mCheckedForLoaderManager) {
            this.mCheckedForLoaderManager = true;
            this.mLoaderManager = this.mHost.getLoaderManager(this.mWho, this.mLoadersStarted, false);
        }
        if (this.mLoaderManager != null) {
            this.mLoaderManager.doDestroy();
        }
    }

    /* access modifiers changed from: 0000 */
    public void initState() {
        this.mIndex = -1;
        this.mWho = null;
        this.mAdded = false;
        this.mRemoving = false;
        this.mFromLayout = false;
        this.mInLayout = false;
        this.mRestored = false;
        this.mBackStackNesting = 0;
        this.mFragmentManager = null;
        this.mChildFragmentManager = null;
        this.mHost = null;
        this.mFragmentId = 0;
        this.mContainerId = 0;
        this.mTag = null;
        this.mHidden = false;
        this.mDetached = false;
        this.mRetaining = false;
        this.mLoaderManager = null;
        this.mLoadersStarted = false;
        this.mCheckedForLoaderManager = false;
    }

    @CallSuper
    public void onDetach() {
        this.mCalled = true;
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
    }

    public void onPrepareOptionsMenu(Menu menu) {
    }

    public void onDestroyOptionsMenu() {
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        return false;
    }

    public void onOptionsMenuClosed(Menu menu) {
    }

    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenuInfo contextMenuInfo) {
        getActivity().onCreateContextMenu(contextMenu, view, contextMenuInfo);
    }

    public void registerForContextMenu(View view) {
        view.setOnCreateContextMenuListener(this);
    }

    public void unregisterForContextMenu(View view) {
        view.setOnCreateContextMenuListener(null);
    }

    public boolean onContextItemSelected(MenuItem menuItem) {
        return false;
    }

    public void setEnterSharedElementCallback(SharedElementCallback sharedElementCallback) {
        ensureAnimationInfo().mEnterTransitionCallback = sharedElementCallback;
    }

    public void setExitSharedElementCallback(SharedElementCallback sharedElementCallback) {
        ensureAnimationInfo().mExitTransitionCallback = sharedElementCallback;
    }

    public void setEnterTransition(Object obj) {
        ensureAnimationInfo().mEnterTransition = obj;
    }

    public Object getEnterTransition() {
        if (this.mAnimationInfo == null) {
            return null;
        }
        return this.mAnimationInfo.mEnterTransition;
    }

    public void setReturnTransition(Object obj) {
        ensureAnimationInfo().mReturnTransition = obj;
    }

    public Object getReturnTransition() {
        if (this.mAnimationInfo == null) {
            return null;
        }
        if (this.mAnimationInfo.mReturnTransition == USE_DEFAULT_TRANSITION) {
            return getEnterTransition();
        }
        return this.mAnimationInfo.mReturnTransition;
    }

    public void setExitTransition(Object obj) {
        ensureAnimationInfo().mExitTransition = obj;
    }

    public Object getExitTransition() {
        if (this.mAnimationInfo == null) {
            return null;
        }
        return this.mAnimationInfo.mExitTransition;
    }

    public void setReenterTransition(Object obj) {
        ensureAnimationInfo().mReenterTransition = obj;
    }

    public Object getReenterTransition() {
        if (this.mAnimationInfo == null) {
            return null;
        }
        if (this.mAnimationInfo.mReenterTransition == USE_DEFAULT_TRANSITION) {
            return getExitTransition();
        }
        return this.mAnimationInfo.mReenterTransition;
    }

    public void setSharedElementEnterTransition(Object obj) {
        ensureAnimationInfo().mSharedElementEnterTransition = obj;
    }

    public Object getSharedElementEnterTransition() {
        if (this.mAnimationInfo == null) {
            return null;
        }
        return this.mAnimationInfo.mSharedElementEnterTransition;
    }

    public void setSharedElementReturnTransition(Object obj) {
        ensureAnimationInfo().mSharedElementReturnTransition = obj;
    }

    public Object getSharedElementReturnTransition() {
        if (this.mAnimationInfo == null) {
            return null;
        }
        if (this.mAnimationInfo.mSharedElementReturnTransition == USE_DEFAULT_TRANSITION) {
            return getSharedElementEnterTransition();
        }
        return this.mAnimationInfo.mSharedElementReturnTransition;
    }

    public void setAllowEnterTransitionOverlap(boolean z) {
        ensureAnimationInfo().mAllowEnterTransitionOverlap = Boolean.valueOf(z);
    }

    public boolean getAllowEnterTransitionOverlap() {
        if (this.mAnimationInfo == null || this.mAnimationInfo.mAllowEnterTransitionOverlap == null) {
            return true;
        }
        return this.mAnimationInfo.mAllowEnterTransitionOverlap.booleanValue();
    }

    public void setAllowReturnTransitionOverlap(boolean z) {
        ensureAnimationInfo().mAllowReturnTransitionOverlap = Boolean.valueOf(z);
    }

    public boolean getAllowReturnTransitionOverlap() {
        if (this.mAnimationInfo == null || this.mAnimationInfo.mAllowReturnTransitionOverlap == null) {
            return true;
        }
        return this.mAnimationInfo.mAllowReturnTransitionOverlap.booleanValue();
    }

    public void postponeEnterTransition() {
        ensureAnimationInfo().mEnterTransitionPostponed = true;
    }

    public void startPostponedEnterTransition() {
        if (this.mFragmentManager == null || this.mFragmentManager.mHost == null) {
            ensureAnimationInfo().mEnterTransitionPostponed = false;
        } else if (Looper.myLooper() != this.mFragmentManager.mHost.getHandler().getLooper()) {
            this.mFragmentManager.mHost.getHandler().postAtFrontOfQueue(new Runnable() {
                public void run() {
                    Fragment.this.callStartTransitionListener();
                }
            });
        } else {
            callStartTransitionListener();
        }
    }

    /* access modifiers changed from: private */
    public void callStartTransitionListener() {
        OnStartEnterTransitionListener onStartEnterTransitionListener = null;
        if (this.mAnimationInfo != null) {
            this.mAnimationInfo.mEnterTransitionPostponed = false;
            OnStartEnterTransitionListener onStartEnterTransitionListener2 = this.mAnimationInfo.mStartEnterTransitionListener;
            this.mAnimationInfo.mStartEnterTransitionListener = null;
            onStartEnterTransitionListener = onStartEnterTransitionListener2;
        }
        if (onStartEnterTransitionListener != null) {
            onStartEnterTransitionListener.onStartEnterTransition();
        }
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mFragmentId=#");
        printWriter.print(Integer.toHexString(this.mFragmentId));
        printWriter.print(" mContainerId=#");
        printWriter.print(Integer.toHexString(this.mContainerId));
        printWriter.print(" mTag=");
        printWriter.println(this.mTag);
        printWriter.print(str);
        printWriter.print("mState=");
        printWriter.print(this.mState);
        printWriter.print(" mIndex=");
        printWriter.print(this.mIndex);
        printWriter.print(" mWho=");
        printWriter.print(this.mWho);
        printWriter.print(" mBackStackNesting=");
        printWriter.println(this.mBackStackNesting);
        printWriter.print(str);
        printWriter.print("mAdded=");
        printWriter.print(this.mAdded);
        printWriter.print(" mRemoving=");
        printWriter.print(this.mRemoving);
        printWriter.print(" mFromLayout=");
        printWriter.print(this.mFromLayout);
        printWriter.print(" mInLayout=");
        printWriter.println(this.mInLayout);
        printWriter.print(str);
        printWriter.print("mHidden=");
        printWriter.print(this.mHidden);
        printWriter.print(" mDetached=");
        printWriter.print(this.mDetached);
        printWriter.print(" mMenuVisible=");
        printWriter.print(this.mMenuVisible);
        printWriter.print(" mHasMenu=");
        printWriter.println(this.mHasMenu);
        printWriter.print(str);
        printWriter.print("mRetainInstance=");
        printWriter.print(this.mRetainInstance);
        printWriter.print(" mRetaining=");
        printWriter.print(this.mRetaining);
        printWriter.print(" mUserVisibleHint=");
        printWriter.println(this.mUserVisibleHint);
        if (this.mFragmentManager != null) {
            printWriter.print(str);
            printWriter.print("mFragmentManager=");
            printWriter.println(this.mFragmentManager);
        }
        if (this.mHost != null) {
            printWriter.print(str);
            printWriter.print("mHost=");
            printWriter.println(this.mHost);
        }
        if (this.mParentFragment != null) {
            printWriter.print(str);
            printWriter.print("mParentFragment=");
            printWriter.println(this.mParentFragment);
        }
        if (this.mArguments != null) {
            printWriter.print(str);
            printWriter.print("mArguments=");
            printWriter.println(this.mArguments);
        }
        if (this.mSavedFragmentState != null) {
            printWriter.print(str);
            printWriter.print("mSavedFragmentState=");
            printWriter.println(this.mSavedFragmentState);
        }
        if (this.mSavedViewState != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewState=");
            printWriter.println(this.mSavedViewState);
        }
        if (this.mTarget != null) {
            printWriter.print(str);
            printWriter.print("mTarget=");
            printWriter.print(this.mTarget);
            printWriter.print(" mTargetRequestCode=");
            printWriter.println(this.mTargetRequestCode);
        }
        if (getNextAnim() != 0) {
            printWriter.print(str);
            printWriter.print("mNextAnim=");
            printWriter.println(getNextAnim());
        }
        if (this.mContainer != null) {
            printWriter.print(str);
            printWriter.print("mContainer=");
            printWriter.println(this.mContainer);
        }
        if (this.mView != null) {
            printWriter.print(str);
            printWriter.print("mView=");
            printWriter.println(this.mView);
        }
        if (this.mInnerView != null) {
            printWriter.print(str);
            printWriter.print("mInnerView=");
            printWriter.println(this.mView);
        }
        if (getAnimatingAway() != null) {
            printWriter.print(str);
            printWriter.print("mAnimatingAway=");
            printWriter.println(getAnimatingAway());
            printWriter.print(str);
            printWriter.print("mStateAfterAnimating=");
            printWriter.println(getStateAfterAnimating());
        }
        if (this.mLoaderManager != null) {
            printWriter.print(str);
            printWriter.println("Loader Manager:");
            this.mLoaderManager.dump(str + "  ", fileDescriptor, printWriter, strArr);
        }
        if (this.mChildFragmentManager != null) {
            printWriter.print(str);
            printWriter.println("Child " + this.mChildFragmentManager + ":");
            this.mChildFragmentManager.dump(str + "  ", fileDescriptor, printWriter, strArr);
        }
    }

    /* access modifiers changed from: 0000 */
    public Fragment findFragmentByWho(String str) {
        if (str.equals(this.mWho)) {
            return this;
        }
        if (this.mChildFragmentManager != null) {
            return this.mChildFragmentManager.findFragmentByWho(str);
        }
        return null;
    }

    /* access modifiers changed from: 0000 */
    public void instantiateChildFragmentManager() {
        if (this.mHost == null) {
            throw new IllegalStateException("Fragment has not been attached yet.");
        }
        this.mChildFragmentManager = new FragmentManagerImpl();
        this.mChildFragmentManager.attachController(this.mHost, new FragmentContainer() {
            @Nullable
            public View onFindViewById(int i) {
                if (Fragment.this.mView != null) {
                    return Fragment.this.mView.findViewById(i);
                }
                throw new IllegalStateException("Fragment does not have a view");
            }

            public boolean onHasView() {
                return Fragment.this.mView != null;
            }
        }, this);
    }

    /* access modifiers changed from: 0000 */
    public void performCreate(Bundle bundle) {
        if (this.mChildFragmentManager != null) {
            this.mChildFragmentManager.noteStateNotSaved();
        }
        this.mState = 1;
        this.mCalled = false;
        onCreate(bundle);
        if (!this.mCalled) {
            throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onCreate()");
        }
    }

    /* access modifiers changed from: 0000 */
    public View performCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (this.mChildFragmentManager != null) {
            this.mChildFragmentManager.noteStateNotSaved();
        }
        return onCreateView(layoutInflater, viewGroup, bundle);
    }

    /* access modifiers changed from: 0000 */
    public void performActivityCreated(Bundle bundle) {
        if (this.mChildFragmentManager != null) {
            this.mChildFragmentManager.noteStateNotSaved();
        }
        this.mState = 2;
        this.mCalled = false;
        onActivityCreated(bundle);
        if (!this.mCalled) {
            throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onActivityCreated()");
        } else if (this.mChildFragmentManager != null) {
            this.mChildFragmentManager.dispatchActivityCreated();
        }
    }

    /* access modifiers changed from: 0000 */
    public void performStart() {
        if (this.mChildFragmentManager != null) {
            this.mChildFragmentManager.noteStateNotSaved();
            this.mChildFragmentManager.execPendingActions();
        }
        this.mState = 4;
        this.mCalled = false;
        onStart();
        if (!this.mCalled) {
            throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onStart()");
        }
        if (this.mChildFragmentManager != null) {
            this.mChildFragmentManager.dispatchStart();
        }
        if (this.mLoaderManager != null) {
            this.mLoaderManager.doReportStart();
        }
    }

    /* access modifiers changed from: 0000 */
    public void performResume() {
        if (this.mChildFragmentManager != null) {
            this.mChildFragmentManager.noteStateNotSaved();
            this.mChildFragmentManager.execPendingActions();
        }
        this.mState = 5;
        this.mCalled = false;
        onResume();
        if (!this.mCalled) {
            throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onResume()");
        } else if (this.mChildFragmentManager != null) {
            this.mChildFragmentManager.dispatchResume();
            this.mChildFragmentManager.execPendingActions();
        }
    }

    /* access modifiers changed from: 0000 */
    public void performMultiWindowModeChanged(boolean z) {
        onMultiWindowModeChanged(z);
        if (this.mChildFragmentManager != null) {
            this.mChildFragmentManager.dispatchMultiWindowModeChanged(z);
        }
    }

    /* access modifiers changed from: 0000 */
    public void performPictureInPictureModeChanged(boolean z) {
        onPictureInPictureModeChanged(z);
        if (this.mChildFragmentManager != null) {
            this.mChildFragmentManager.dispatchPictureInPictureModeChanged(z);
        }
    }

    /* access modifiers changed from: 0000 */
    public void performConfigurationChanged(Configuration configuration) {
        onConfigurationChanged(configuration);
        if (this.mChildFragmentManager != null) {
            this.mChildFragmentManager.dispatchConfigurationChanged(configuration);
        }
    }

    /* access modifiers changed from: 0000 */
    public void performLowMemory() {
        onLowMemory();
        if (this.mChildFragmentManager != null) {
            this.mChildFragmentManager.dispatchLowMemory();
        }
    }

    /* access modifiers changed from: 0000 */
    public boolean performCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        boolean z = false;
        if (this.mHidden) {
            return false;
        }
        if (this.mHasMenu && this.mMenuVisible) {
            z = true;
            onCreateOptionsMenu(menu, menuInflater);
        }
        if (this.mChildFragmentManager != null) {
            return z | this.mChildFragmentManager.dispatchCreateOptionsMenu(menu, menuInflater);
        }
        return z;
    }

    /* access modifiers changed from: 0000 */
    public boolean performPrepareOptionsMenu(Menu menu) {
        boolean z = false;
        if (this.mHidden) {
            return false;
        }
        if (this.mHasMenu && this.mMenuVisible) {
            z = true;
            onPrepareOptionsMenu(menu);
        }
        if (this.mChildFragmentManager != null) {
            return z | this.mChildFragmentManager.dispatchPrepareOptionsMenu(menu);
        }
        return z;
    }

    /* access modifiers changed from: 0000 */
    public boolean performOptionsItemSelected(MenuItem menuItem) {
        if (!this.mHidden) {
            if (this.mHasMenu && this.mMenuVisible && onOptionsItemSelected(menuItem)) {
                return true;
            }
            if (this.mChildFragmentManager != null && this.mChildFragmentManager.dispatchOptionsItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    /* access modifiers changed from: 0000 */
    public boolean performContextItemSelected(MenuItem menuItem) {
        if (!this.mHidden) {
            if (onContextItemSelected(menuItem)) {
                return true;
            }
            if (this.mChildFragmentManager != null && this.mChildFragmentManager.dispatchContextItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    /* access modifiers changed from: 0000 */
    public void performOptionsMenuClosed(Menu menu) {
        if (!this.mHidden) {
            if (this.mHasMenu && this.mMenuVisible) {
                onOptionsMenuClosed(menu);
            }
            if (this.mChildFragmentManager != null) {
                this.mChildFragmentManager.dispatchOptionsMenuClosed(menu);
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void performSaveInstanceState(Bundle bundle) {
        onSaveInstanceState(bundle);
        if (this.mChildFragmentManager != null) {
            Parcelable saveAllState = this.mChildFragmentManager.saveAllState();
            if (saveAllState != null) {
                bundle.putParcelable("android:support:fragments", saveAllState);
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void performPause() {
        if (this.mChildFragmentManager != null) {
            this.mChildFragmentManager.dispatchPause();
        }
        this.mState = 4;
        this.mCalled = false;
        onPause();
        if (!this.mCalled) {
            throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onPause()");
        }
    }

    /* access modifiers changed from: 0000 */
    public void performStop() {
        if (this.mChildFragmentManager != null) {
            this.mChildFragmentManager.dispatchStop();
        }
        this.mState = 3;
        this.mCalled = false;
        onStop();
        if (!this.mCalled) {
            throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onStop()");
        }
    }

    /* access modifiers changed from: 0000 */
    public void performReallyStop() {
        if (this.mChildFragmentManager != null) {
            this.mChildFragmentManager.dispatchReallyStop();
        }
        this.mState = 2;
        if (this.mLoadersStarted) {
            this.mLoadersStarted = false;
            if (!this.mCheckedForLoaderManager) {
                this.mCheckedForLoaderManager = true;
                this.mLoaderManager = this.mHost.getLoaderManager(this.mWho, this.mLoadersStarted, false);
            }
            if (this.mLoaderManager == null) {
                return;
            }
            if (this.mHost.getRetainLoaders()) {
                this.mLoaderManager.doRetain();
            } else {
                this.mLoaderManager.doStop();
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void performDestroyView() {
        if (this.mChildFragmentManager != null) {
            this.mChildFragmentManager.dispatchDestroyView();
        }
        this.mState = 1;
        this.mCalled = false;
        onDestroyView();
        if (!this.mCalled) {
            throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onDestroyView()");
        } else if (this.mLoaderManager != null) {
            this.mLoaderManager.doReportNextStart();
        }
    }

    /* access modifiers changed from: 0000 */
    public void performDestroy() {
        if (this.mChildFragmentManager != null) {
            this.mChildFragmentManager.dispatchDestroy();
        }
        this.mState = 0;
        this.mCalled = false;
        onDestroy();
        if (!this.mCalled) {
            throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onDestroy()");
        }
        this.mChildFragmentManager = null;
    }

    /* access modifiers changed from: 0000 */
    public void performDetach() {
        this.mCalled = false;
        onDetach();
        if (!this.mCalled) {
            throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onDetach()");
        } else if (this.mChildFragmentManager == null) {
        } else {
            if (!this.mRetaining) {
                throw new IllegalStateException("Child FragmentManager of " + this + " was not " + " destroyed and this fragment is not retaining instance");
            }
            this.mChildFragmentManager.dispatchDestroy();
            this.mChildFragmentManager = null;
        }
    }

    /* access modifiers changed from: 0000 */
    public void setOnStartEnterTransitionListener(OnStartEnterTransitionListener onStartEnterTransitionListener) {
        ensureAnimationInfo();
        if (onStartEnterTransitionListener != this.mAnimationInfo.mStartEnterTransitionListener) {
            if (onStartEnterTransitionListener == null || this.mAnimationInfo.mStartEnterTransitionListener == null) {
                if (this.mAnimationInfo.mEnterTransitionPostponed) {
                    this.mAnimationInfo.mStartEnterTransitionListener = onStartEnterTransitionListener;
                }
                if (onStartEnterTransitionListener != null) {
                    onStartEnterTransitionListener.startListening();
                    return;
                }
                return;
            }
            throw new IllegalStateException("Trying to set a replacement startPostponedEnterTransition on " + this);
        }
    }

    private AnimationInfo ensureAnimationInfo() {
        if (this.mAnimationInfo == null) {
            this.mAnimationInfo = new AnimationInfo();
        }
        return this.mAnimationInfo;
    }

    /* access modifiers changed from: 0000 */
    public int getNextAnim() {
        if (this.mAnimationInfo == null) {
            return 0;
        }
        return this.mAnimationInfo.mNextAnim;
    }

    /* access modifiers changed from: 0000 */
    public void setNextAnim(int i) {
        if (this.mAnimationInfo != null || i != 0) {
            ensureAnimationInfo().mNextAnim = i;
        }
    }

    /* access modifiers changed from: 0000 */
    public int getNextTransition() {
        if (this.mAnimationInfo == null) {
            return 0;
        }
        return this.mAnimationInfo.mNextTransition;
    }

    /* access modifiers changed from: 0000 */
    public void setNextTransition(int i, int i2) {
        if (this.mAnimationInfo != null || i != 0 || i2 != 0) {
            ensureAnimationInfo();
            this.mAnimationInfo.mNextTransition = i;
            this.mAnimationInfo.mNextTransitionStyle = i2;
        }
    }

    /* access modifiers changed from: 0000 */
    public int getNextTransitionStyle() {
        if (this.mAnimationInfo == null) {
            return 0;
        }
        return this.mAnimationInfo.mNextTransitionStyle;
    }

    /* access modifiers changed from: 0000 */
    public SharedElementCallback getEnterTransitionCallback() {
        if (this.mAnimationInfo == null) {
            return null;
        }
        return this.mAnimationInfo.mEnterTransitionCallback;
    }

    /* access modifiers changed from: 0000 */
    public SharedElementCallback getExitTransitionCallback() {
        if (this.mAnimationInfo == null) {
            return null;
        }
        return this.mAnimationInfo.mExitTransitionCallback;
    }

    /* access modifiers changed from: 0000 */
    public View getAnimatingAway() {
        if (this.mAnimationInfo == null) {
            return null;
        }
        return this.mAnimationInfo.mAnimatingAway;
    }

    /* access modifiers changed from: 0000 */
    public void setAnimatingAway(View view) {
        ensureAnimationInfo().mAnimatingAway = view;
    }

    /* access modifiers changed from: 0000 */
    public int getStateAfterAnimating() {
        if (this.mAnimationInfo == null) {
            return 0;
        }
        return this.mAnimationInfo.mStateAfterAnimating;
    }

    /* access modifiers changed from: 0000 */
    public void setStateAfterAnimating(int i) {
        ensureAnimationInfo().mStateAfterAnimating = i;
    }

    /* access modifiers changed from: 0000 */
    public boolean isPostponed() {
        if (this.mAnimationInfo == null) {
            return false;
        }
        return this.mAnimationInfo.mEnterTransitionPostponed;
    }

    /* access modifiers changed from: 0000 */
    public boolean isHideReplaced() {
        if (this.mAnimationInfo == null) {
            return false;
        }
        return this.mAnimationInfo.mIsHideReplaced;
    }

    /* access modifiers changed from: 0000 */
    public void setHideReplaced(boolean z) {
        ensureAnimationInfo().mIsHideReplaced = z;
    }
}
