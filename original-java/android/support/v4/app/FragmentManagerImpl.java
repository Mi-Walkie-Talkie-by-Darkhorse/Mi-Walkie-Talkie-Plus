package android.support.v4.app;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcelable;
import android.support.annotation.CallSuper;
import android.support.v4.app.Fragment.SavedState;
import android.support.v4.app.FragmentManager.BackStackEntry;
import android.support.v4.app.FragmentManager.FragmentLifecycleCallbacks;
import android.support.v4.app.FragmentManager.OnBackStackChangedListener;
import android.support.v4.os.BuildCompat;
import android.support.v4.util.ArraySet;
import android.support.v4.util.DebugUtils;
import android.support.v4.util.LogWriter;
import android.support.v4.util.Pair;
import android.support.v4.view.LayoutInflaterFactory;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.ScaleAnimation;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: FragmentManager */
final class FragmentManagerImpl extends FragmentManager implements LayoutInflaterFactory {
    static final Interpolator ACCELERATE_CUBIC = new AccelerateInterpolator(1.5f);
    static final Interpolator ACCELERATE_QUINT = new AccelerateInterpolator(2.5f);
    static final int ANIM_DUR = 220;
    public static final int ANIM_STYLE_CLOSE_ENTER = 3;
    public static final int ANIM_STYLE_CLOSE_EXIT = 4;
    public static final int ANIM_STYLE_FADE_ENTER = 5;
    public static final int ANIM_STYLE_FADE_EXIT = 6;
    public static final int ANIM_STYLE_OPEN_ENTER = 1;
    public static final int ANIM_STYLE_OPEN_EXIT = 2;
    static boolean DEBUG = false;
    static final Interpolator DECELERATE_CUBIC = new DecelerateInterpolator(1.5f);
    static final Interpolator DECELERATE_QUINT = new DecelerateInterpolator(2.5f);
    static final boolean HONEYCOMB;
    static final String TAG = "FragmentManager";
    static final String TARGET_REQUEST_CODE_STATE_TAG = "android:target_req_state";
    static final String TARGET_STATE_TAG = "android:target_state";
    static final String USER_VISIBLE_HINT_TAG = "android:user_visible_hint";
    static final String VIEW_STATE_TAG = "android:view_state";
    static Field sAnimationListenerField = null;
    ArrayList<Fragment> mActive;
    ArrayList<Fragment> mAdded;
    ArrayList<Integer> mAvailBackStackIndices;
    ArrayList<Integer> mAvailIndices;
    ArrayList<BackStackRecord> mBackStack;
    ArrayList<OnBackStackChangedListener> mBackStackChangeListeners;
    ArrayList<BackStackRecord> mBackStackIndices;
    FragmentContainer mContainer;
    ArrayList<Fragment> mCreatedMenus;
    int mCurState = 0;
    boolean mDestroyed;
    Runnable mExecCommit = new Runnable() {
        public void run() {
            FragmentManagerImpl.this.execPendingActions();
        }
    };
    boolean mExecutingActions;
    boolean mHavePendingDeferredStart;
    FragmentHostCallback mHost;
    private CopyOnWriteArrayList<Pair<FragmentLifecycleCallbacks, Boolean>> mLifecycleCallbacks;
    boolean mNeedMenuInvalidate;
    String mNoTransactionsBecause;
    Fragment mParent;
    ArrayList<OpGenerator> mPendingActions;
    ArrayList<StartEnterTransitionListener> mPostponedTransactions;
    SparseArray<Parcelable> mStateArray = null;
    Bundle mStateBundle = null;
    boolean mStateSaved;
    Runnable[] mTmpActions;
    ArrayList<Fragment> mTmpAddedFragments;
    ArrayList<Boolean> mTmpIsPop;
    ArrayList<BackStackRecord> mTmpRecords;

    /* compiled from: FragmentManager */
    static class AnimateOnHWLayerIfNeededListener implements AnimationListener {
        private AnimationListener mOriginalListener;
        private boolean mShouldRunOnHWLayer;
        View mView;

        public AnimateOnHWLayerIfNeededListener(View view, Animation animation) {
            if (view != null && animation != null) {
                this.mView = view;
            }
        }

        public AnimateOnHWLayerIfNeededListener(View view, Animation animation, AnimationListener animationListener) {
            if (view != null && animation != null) {
                this.mOriginalListener = animationListener;
                this.mView = view;
                this.mShouldRunOnHWLayer = true;
            }
        }

        @CallSuper
        public void onAnimationStart(Animation animation) {
            if (this.mOriginalListener != null) {
                this.mOriginalListener.onAnimationStart(animation);
            }
        }

        @CallSuper
        public void onAnimationEnd(Animation animation) {
            if (this.mView != null && this.mShouldRunOnHWLayer) {
                if (ViewCompat.isAttachedToWindow(this.mView) || BuildCompat.isAtLeastN()) {
                    this.mView.post(new Runnable() {
                        public void run() {
                            ViewCompat.setLayerType(AnimateOnHWLayerIfNeededListener.this.mView, 0, null);
                        }
                    });
                } else {
                    ViewCompat.setLayerType(this.mView, 0, null);
                }
            }
            if (this.mOriginalListener != null) {
                this.mOriginalListener.onAnimationEnd(animation);
            }
        }

        public void onAnimationRepeat(Animation animation) {
            if (this.mOriginalListener != null) {
                this.mOriginalListener.onAnimationRepeat(animation);
            }
        }
    }

    /* compiled from: FragmentManager */
    static class FragmentTag {
        public static final int[] Fragment = {16842755, 16842960, 16842961};
        public static final int Fragment_id = 1;
        public static final int Fragment_name = 0;
        public static final int Fragment_tag = 2;

        FragmentTag() {
        }
    }

    /* compiled from: FragmentManager */
    interface OpGenerator {
        boolean generateOps(ArrayList<BackStackRecord> arrayList, ArrayList<Boolean> arrayList2);
    }

    /* compiled from: FragmentManager */
    private class PopBackStackState implements OpGenerator {
        final int mFlags;
        final int mId;
        final String mName;

        PopBackStackState(String str, int i, int i2) {
            this.mName = str;
            this.mId = i;
            this.mFlags = i2;
        }

        public boolean generateOps(ArrayList<BackStackRecord> arrayList, ArrayList<Boolean> arrayList2) {
            return FragmentManagerImpl.this.popBackStackState(arrayList, arrayList2, this.mName, this.mId, this.mFlags);
        }
    }

    /* compiled from: FragmentManager */
    static class StartEnterTransitionListener implements OnStartEnterTransitionListener {
        /* access modifiers changed from: private */
        public final boolean mIsBack;
        private int mNumPostponed;
        /* access modifiers changed from: private */
        public final BackStackRecord mRecord;

        StartEnterTransitionListener(BackStackRecord backStackRecord, boolean z) {
            this.mIsBack = z;
            this.mRecord = backStackRecord;
        }

        public void onStartEnterTransition() {
            this.mNumPostponed--;
            if (this.mNumPostponed == 0) {
                this.mRecord.mManager.scheduleCommit();
            }
        }

        public void startListening() {
            this.mNumPostponed++;
        }

        public boolean isReady() {
            return this.mNumPostponed == 0;
        }

        public void completeTransaction() {
            boolean z;
            boolean z2 = false;
            if (this.mNumPostponed > 0) {
                z = true;
            } else {
                z = false;
            }
            FragmentManagerImpl fragmentManagerImpl = this.mRecord.mManager;
            int size = fragmentManagerImpl.mAdded.size();
            for (int i = 0; i < size; i++) {
                Fragment fragment = (Fragment) fragmentManagerImpl.mAdded.get(i);
                fragment.setOnStartEnterTransitionListener(null);
                if (z && fragment.isPostponed()) {
                    fragment.startPostponedEnterTransition();
                }
            }
            FragmentManagerImpl fragmentManagerImpl2 = this.mRecord.mManager;
            BackStackRecord backStackRecord = this.mRecord;
            boolean z3 = this.mIsBack;
            if (!z) {
                z2 = true;
            }
            fragmentManagerImpl2.completeExecute(backStackRecord, z3, z2, true);
        }

        public void cancelTransaction() {
            this.mRecord.mManager.completeExecute(this.mRecord, this.mIsBack, false, false);
        }
    }

    FragmentManagerImpl() {
    }

    static {
        boolean z = false;
        if (VERSION.SDK_INT >= 11) {
            z = true;
        }
        HONEYCOMB = z;
    }

    static boolean modifiesAlpha(Animation animation) {
        if (animation instanceof AlphaAnimation) {
            return true;
        }
        if (!(animation instanceof AnimationSet)) {
            return false;
        }
        List animations = ((AnimationSet) animation).getAnimations();
        for (int i = 0; i < animations.size(); i++) {
            if (animations.get(i) instanceof AlphaAnimation) {
                return true;
            }
        }
        return false;
    }

    static boolean shouldRunOnHWLayer(View view, Animation animation) {
        return VERSION.SDK_INT >= 19 && ViewCompat.getLayerType(view) == 0 && ViewCompat.hasOverlappingRendering(view) && modifiesAlpha(animation);
    }

    private void throwException(RuntimeException runtimeException) {
        Log.e(TAG, runtimeException.getMessage());
        Log.e(TAG, "Activity state:");
        PrintWriter printWriter = new PrintWriter(new LogWriter(TAG));
        if (this.mHost != null) {
            try {
                this.mHost.onDump("  ", null, printWriter, new String[0]);
            } catch (Exception e) {
                Log.e(TAG, "Failed dumping state", e);
            }
        } else {
            try {
                dump("  ", null, printWriter, new String[0]);
            } catch (Exception e2) {
                Log.e(TAG, "Failed dumping state", e2);
            }
        }
        throw runtimeException;
    }

    public FragmentTransaction beginTransaction() {
        return new BackStackRecord(this);
    }

    public boolean executePendingTransactions() {
        boolean execPendingActions = execPendingActions();
        forcePostponedTransactions();
        return execPendingActions;
    }

    public void popBackStack() {
        enqueueAction(new PopBackStackState(null, -1, 0), false);
    }

    public boolean popBackStackImmediate() {
        checkStateLoss();
        return popBackStackImmediate(null, -1, 0);
    }

    public void popBackStack(String str, int i) {
        enqueueAction(new PopBackStackState(str, -1, i), false);
    }

    public boolean popBackStackImmediate(String str, int i) {
        checkStateLoss();
        return popBackStackImmediate(str, -1, i);
    }

    public void popBackStack(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException("Bad id: " + i);
        }
        enqueueAction(new PopBackStackState(null, i, i2), false);
    }

    public boolean popBackStackImmediate(int i, int i2) {
        checkStateLoss();
        execPendingActions();
        if (i >= 0) {
            return popBackStackImmediate(null, i, i2);
        }
        throw new IllegalArgumentException("Bad id: " + i);
    }

    private boolean popBackStackImmediate(String str, int i, int i2) {
        execPendingActions();
        ensureExecReady(true);
        boolean popBackStackState = popBackStackState(this.mTmpRecords, this.mTmpIsPop, str, i, i2);
        if (popBackStackState) {
            this.mExecutingActions = true;
            try {
                optimizeAndExecuteOps(this.mTmpRecords, this.mTmpIsPop);
            } finally {
                cleanupExec();
            }
        }
        doPendingDeferredStart();
        return popBackStackState;
    }

    public int getBackStackEntryCount() {
        if (this.mBackStack != null) {
            return this.mBackStack.size();
        }
        return 0;
    }

    public BackStackEntry getBackStackEntryAt(int i) {
        return (BackStackEntry) this.mBackStack.get(i);
    }

    public void addOnBackStackChangedListener(OnBackStackChangedListener onBackStackChangedListener) {
        if (this.mBackStackChangeListeners == null) {
            this.mBackStackChangeListeners = new ArrayList<>();
        }
        this.mBackStackChangeListeners.add(onBackStackChangedListener);
    }

    public void removeOnBackStackChangedListener(OnBackStackChangedListener onBackStackChangedListener) {
        if (this.mBackStackChangeListeners != null) {
            this.mBackStackChangeListeners.remove(onBackStackChangedListener);
        }
    }

    public void putFragment(Bundle bundle, String str, Fragment fragment) {
        if (fragment.mIndex < 0) {
            throwException(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        }
        bundle.putInt(str, fragment.mIndex);
    }

    public Fragment getFragment(Bundle bundle, String str) {
        int i = bundle.getInt(str, -1);
        if (i == -1) {
            return null;
        }
        if (i >= this.mActive.size()) {
            throwException(new IllegalStateException("Fragment no longer exists for key " + str + ": index " + i));
        }
        Fragment fragment = (Fragment) this.mActive.get(i);
        if (fragment != null) {
            return fragment;
        }
        throwException(new IllegalStateException("Fragment no longer exists for key " + str + ": index " + i));
        return fragment;
    }

    public List<Fragment> getFragments() {
        return this.mActive;
    }

    public SavedState saveFragmentInstanceState(Fragment fragment) {
        if (fragment.mIndex < 0) {
            throwException(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        }
        if (fragment.mState <= 0) {
            return null;
        }
        Bundle saveFragmentBasicState = saveFragmentBasicState(fragment);
        if (saveFragmentBasicState != null) {
            return new SavedState(saveFragmentBasicState);
        }
        return null;
    }

    public boolean isDestroyed() {
        return this.mDestroyed;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        if (this.mParent != null) {
            DebugUtils.buildShortClassTag(this.mParent, sb);
        } else {
            DebugUtils.buildShortClassTag(this.mHost, sb);
        }
        sb.append("}}");
        return sb.toString();
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        String str2 = str + "    ";
        if (this.mActive != null) {
            int size = this.mActive.size();
            if (size > 0) {
                printWriter.print(str);
                printWriter.print("Active Fragments in ");
                printWriter.print(Integer.toHexString(System.identityHashCode(this)));
                printWriter.println(":");
                for (int i = 0; i < size; i++) {
                    Fragment fragment = (Fragment) this.mActive.get(i);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i);
                    printWriter.print(": ");
                    printWriter.println(fragment);
                    if (fragment != null) {
                        fragment.dump(str2, fileDescriptor, printWriter, strArr);
                    }
                }
            }
        }
        if (this.mAdded != null) {
            int size2 = this.mAdded.size();
            if (size2 > 0) {
                printWriter.print(str);
                printWriter.println("Added Fragments:");
                for (int i2 = 0; i2 < size2; i2++) {
                    Fragment fragment2 = (Fragment) this.mAdded.get(i2);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i2);
                    printWriter.print(": ");
                    printWriter.println(fragment2.toString());
                }
            }
        }
        if (this.mCreatedMenus != null) {
            int size3 = this.mCreatedMenus.size();
            if (size3 > 0) {
                printWriter.print(str);
                printWriter.println("Fragments Created Menus:");
                for (int i3 = 0; i3 < size3; i3++) {
                    Fragment fragment3 = (Fragment) this.mCreatedMenus.get(i3);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i3);
                    printWriter.print(": ");
                    printWriter.println(fragment3.toString());
                }
            }
        }
        if (this.mBackStack != null) {
            int size4 = this.mBackStack.size();
            if (size4 > 0) {
                printWriter.print(str);
                printWriter.println("Back Stack:");
                for (int i4 = 0; i4 < size4; i4++) {
                    BackStackRecord backStackRecord = (BackStackRecord) this.mBackStack.get(i4);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i4);
                    printWriter.print(": ");
                    printWriter.println(backStackRecord.toString());
                    backStackRecord.dump(str2, fileDescriptor, printWriter, strArr);
                }
            }
        }
        synchronized (this) {
            if (this.mBackStackIndices != null) {
                int size5 = this.mBackStackIndices.size();
                if (size5 > 0) {
                    printWriter.print(str);
                    printWriter.println("Back Stack Indices:");
                    for (int i5 = 0; i5 < size5; i5++) {
                        BackStackRecord backStackRecord2 = (BackStackRecord) this.mBackStackIndices.get(i5);
                        printWriter.print(str);
                        printWriter.print("  #");
                        printWriter.print(i5);
                        printWriter.print(": ");
                        printWriter.println(backStackRecord2);
                    }
                }
            }
            if (this.mAvailBackStackIndices != null && this.mAvailBackStackIndices.size() > 0) {
                printWriter.print(str);
                printWriter.print("mAvailBackStackIndices: ");
                printWriter.println(Arrays.toString(this.mAvailBackStackIndices.toArray()));
            }
        }
        if (this.mPendingActions != null) {
            int size6 = this.mPendingActions.size();
            if (size6 > 0) {
                printWriter.print(str);
                printWriter.println("Pending Actions:");
                for (int i6 = 0; i6 < size6; i6++) {
                    OpGenerator opGenerator = (OpGenerator) this.mPendingActions.get(i6);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i6);
                    printWriter.print(": ");
                    printWriter.println(opGenerator);
                }
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.mHost);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.mContainer);
        if (this.mParent != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.mParent);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.mCurState);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.mStateSaved);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.mDestroyed);
        if (this.mNeedMenuInvalidate) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.mNeedMenuInvalidate);
        }
        if (this.mNoTransactionsBecause != null) {
            printWriter.print(str);
            printWriter.print("  mNoTransactionsBecause=");
            printWriter.println(this.mNoTransactionsBecause);
        }
        if (this.mAvailIndices != null && this.mAvailIndices.size() > 0) {
            printWriter.print(str);
            printWriter.print("  mAvailIndices: ");
            printWriter.println(Arrays.toString(this.mAvailIndices.toArray()));
        }
    }

    static Animation makeOpenCloseAnimation(Context context, float f, float f2, float f3, float f4) {
        AnimationSet animationSet = new AnimationSet(false);
        ScaleAnimation scaleAnimation = new ScaleAnimation(f, f2, f, f2, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setInterpolator(DECELERATE_QUINT);
        scaleAnimation.setDuration(220);
        animationSet.addAnimation(scaleAnimation);
        AlphaAnimation alphaAnimation = new AlphaAnimation(f3, f4);
        alphaAnimation.setInterpolator(DECELERATE_CUBIC);
        alphaAnimation.setDuration(220);
        animationSet.addAnimation(alphaAnimation);
        return animationSet;
    }

    static Animation makeFadeAnimation(Context context, float f, float f2) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(f, f2);
        alphaAnimation.setInterpolator(DECELERATE_CUBIC);
        alphaAnimation.setDuration(220);
        return alphaAnimation;
    }

    /* access modifiers changed from: 0000 */
    public Animation loadAnimation(Fragment fragment, int i, boolean z, int i2) {
        Animation onCreateAnimation = fragment.onCreateAnimation(i, z, fragment.getNextAnim());
        if (onCreateAnimation != null) {
            return onCreateAnimation;
        }
        if (fragment.getNextAnim() != 0) {
            Animation loadAnimation = AnimationUtils.loadAnimation(this.mHost.getContext(), fragment.getNextAnim());
            if (loadAnimation != null) {
                return loadAnimation;
            }
        }
        if (i == 0) {
            return null;
        }
        int transitToStyleIndex = transitToStyleIndex(i, z);
        if (transitToStyleIndex < 0) {
            return null;
        }
        switch (transitToStyleIndex) {
            case 1:
                return makeOpenCloseAnimation(this.mHost.getContext(), 1.125f, 1.0f, 0.0f, 1.0f);
            case 2:
                return makeOpenCloseAnimation(this.mHost.getContext(), 1.0f, 0.975f, 1.0f, 0.0f);
            case 3:
                return makeOpenCloseAnimation(this.mHost.getContext(), 0.975f, 1.0f, 0.0f, 1.0f);
            case 4:
                return makeOpenCloseAnimation(this.mHost.getContext(), 1.0f, 1.075f, 1.0f, 0.0f);
            case 5:
                return makeFadeAnimation(this.mHost.getContext(), 0.0f, 1.0f);
            case 6:
                return makeFadeAnimation(this.mHost.getContext(), 1.0f, 0.0f);
            default:
                if (i2 == 0 && this.mHost.onHasWindowAnimations()) {
                    i2 = this.mHost.onGetWindowAnimations();
                }
                if (i2 == 0) {
                    return null;
                }
                return null;
        }
    }

    public void performPendingDeferredStart(Fragment fragment) {
        if (!fragment.mDeferStart) {
            return;
        }
        if (this.mExecutingActions) {
            this.mHavePendingDeferredStart = true;
            return;
        }
        fragment.mDeferStart = false;
        moveToState(fragment, this.mCurState, 0, 0, false);
    }

    private void setHWLayerAnimListenerIfAlpha(View view, Animation animation) {
        AnimationListener animationListener;
        if (view != null && animation != null && shouldRunOnHWLayer(view, animation)) {
            try {
                if (sAnimationListenerField == null) {
                    sAnimationListenerField = Animation.class.getDeclaredField("mListener");
                    sAnimationListenerField.setAccessible(true);
                }
                animationListener = (AnimationListener) sAnimationListenerField.get(animation);
            } catch (NoSuchFieldException e) {
                Log.e(TAG, "No field with the name mListener is found in Animation class", e);
                animationListener = null;
            } catch (IllegalAccessException e2) {
                Log.e(TAG, "Cannot access Animation's mListener field", e2);
                animationListener = null;
            }
            ViewCompat.setLayerType(view, 2, null);
            animation.setAnimationListener(new AnimateOnHWLayerIfNeededListener(view, animation, animationListener));
        }
    }

    /* access modifiers changed from: 0000 */
    public boolean isStateAtLeast(int i) {
        return this.mCurState >= i;
    }

    /* access modifiers changed from: 0000 */
    /* JADX WARNING: Code restructure failed: missing block: B:124:0x030c, code lost:
        r1 = android.support.v4.os.EnvironmentCompat.MEDIA_UNKNOWN;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:132:0x032c, code lost:
        if (r12 >= 1) goto L_0x004a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:134:0x0330, code lost:
        if (r10.mDestroyed == false) goto L_0x0342;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:136:0x0336, code lost:
        if (r11.getAnimatingAway() == null) goto L_0x0342;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:137:0x0338, code lost:
        r0 = r11.getAnimatingAway();
        r11.setAnimatingAway(null);
        r0.clearAnimation();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:139:0x0346, code lost:
        if (r11.getAnimatingAway() == null) goto L_0x043e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:140:0x0348, code lost:
        r11.setStateAfterAnimating(r12);
        r12 = 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:147:0x0373, code lost:
        if (r12 >= 4) goto L_0x0397;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:149:0x0377, code lost:
        if (DEBUG == false) goto L_0x0391;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:150:0x0379, code lost:
        android.util.Log.v(TAG, "movefrom STARTED: " + r11);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:151:0x0391, code lost:
        r11.performStop();
        dispatchOnFragmentStopped(r11, false);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:152:0x0397, code lost:
        if (r12 >= 3) goto L_0x03b8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:154:0x039b, code lost:
        if (DEBUG == false) goto L_0x03b5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:155:0x039d, code lost:
        android.util.Log.v(TAG, "movefrom STOPPED: " + r11);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:156:0x03b5, code lost:
        r11.performReallyStop();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:158:0x03b9, code lost:
        if (r12 >= 2) goto L_0x032c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:160:0x03bd, code lost:
        if (DEBUG == false) goto L_0x03d7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:161:0x03bf, code lost:
        android.util.Log.v(TAG, "movefrom ACTIVITY_CREATED: " + r11);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:163:0x03d9, code lost:
        if (r11.mView == null) goto L_0x03ea;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:165:0x03e1, code lost:
        if (r10.mHost.onShouldSaveFragmentState(r11) == false) goto L_0x03ea;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:167:0x03e5, code lost:
        if (r11.mSavedViewState != null) goto L_0x03ea;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:168:0x03e7, code lost:
        saveFragmentViewState(r11);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:169:0x03ea, code lost:
        r11.performDestroyView();
        dispatchOnFragmentViewDestroyed(r11, false);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:170:0x03f2, code lost:
        if (r11.mView == null) goto L_0x0436;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:172:0x03f6, code lost:
        if (r11.mContainer == null) goto L_0x0436;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:174:0x03fa, code lost:
        if (r10.mCurState <= 0) goto L_0x0480;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:176:0x03fe, code lost:
        if (r10.mDestroyed != false) goto L_0x0480;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:178:0x0406, code lost:
        if (r11.mView.getVisibility() != 0) goto L_0x0480;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:180:0x040d, code lost:
        if (r11.mPostponedAlpha < 0.0f) goto L_0x0480;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:181:0x040f, code lost:
        r0 = loadAnimation(r11, r13, false, r14);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:182:0x0413, code lost:
        r11.mPostponedAlpha = 0.0f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:183:0x0416, code lost:
        if (r0 == null) goto L_0x042f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:184:0x0418, code lost:
        r11.setAnimatingAway(r11.mView);
        r11.setStateAfterAnimating(r12);
        r0.setAnimationListener(new android.support.v4.app.FragmentManagerImpl.AnonymousClass2(r10, r11.mView, r0));
        r11.mView.startAnimation(r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:185:0x042f, code lost:
        r11.mContainer.removeView(r11.mView);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:186:0x0436, code lost:
        r11.mContainer = null;
        r11.mView = null;
        r11.mInnerView = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:188:0x0440, code lost:
        if (DEBUG == false) goto L_0x045a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:189:0x0442, code lost:
        android.util.Log.v(TAG, "movefrom CREATED: " + r11);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:191:0x045c, code lost:
        if (r11.mRetaining != false) goto L_0x0475;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:192:0x045e, code lost:
        r11.performDestroy();
        dispatchOnFragmentDestroyed(r11, false);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:193:0x0464, code lost:
        r11.performDetach();
        dispatchOnFragmentDetached(r11, false);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:194:0x046a, code lost:
        if (r15 != false) goto L_0x004a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:196:0x046e, code lost:
        if (r11.mRetaining != false) goto L_0x0478;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:197:0x0470, code lost:
        makeInactive(r11);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:198:0x0475, code lost:
        r11.mState = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:199:0x0478, code lost:
        r11.mHost = null;
        r11.mParentFragment = null;
        r11.mFragmentManager = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:200:0x0480, code lost:
        r0 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:201:0x0482, code lost:
        r0 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:69:0x0199, code lost:
        if (r12 <= 1) goto L_0x029a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:71:0x019d, code lost:
        if (DEBUG == false) goto L_0x01b7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:72:0x019f, code lost:
        android.util.Log.v(TAG, "moveto ACTIVITY_CREATED: " + r11);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:74:0x01b9, code lost:
        if (r11.mFromLayout != false) goto L_0x0285;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:76:0x01bd, code lost:
        if (r11.mContainerId == 0) goto L_0x0482;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:78:0x01c2, code lost:
        if (r11.mContainerId != -1) goto L_0x01e5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:79:0x01c4, code lost:
        throwException(new java.lang.IllegalArgumentException("Cannot create fragment " + r11 + " for a container view with no id"));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:80:0x01e5, code lost:
        r0 = (android.view.ViewGroup) r10.mContainer.onFindViewById(r11.mContainerId);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:81:0x01ef, code lost:
        if (r0 != null) goto L_0x0234;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:83:0x01f3, code lost:
        if (r11.mRestored != false) goto L_0x0234;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:85:?, code lost:
        r1 = r11.getResources().getResourceName(r11.mContainerId);
     */
    /* JADX WARNING: Removed duplicated region for block: B:203:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x004e  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void moveToState(final android.support.v4.app.Fragment r11, int r12, int r13, int r14, boolean r15) {
        /*
            r10 = this;
            r9 = 4
            r6 = 3
            r5 = 1
            r7 = 0
            r3 = 0
            boolean r0 = r11.mAdded
            if (r0 == 0) goto L_0x000d
            boolean r0 = r11.mDetached
            if (r0 == 0) goto L_0x0010
        L_0x000d:
            if (r12 <= r5) goto L_0x0010
            r12 = r5
        L_0x0010:
            boolean r0 = r11.mRemoving
            if (r0 == 0) goto L_0x001a
            int r0 = r11.mState
            if (r12 <= r0) goto L_0x001a
            int r12 = r11.mState
        L_0x001a:
            boolean r0 = r11.mDeferStart
            if (r0 == 0) goto L_0x0025
            int r0 = r11.mState
            if (r0 >= r9) goto L_0x0025
            if (r12 <= r6) goto L_0x0025
            r12 = r6
        L_0x0025:
            int r0 = r11.mState
            if (r0 >= r12) goto L_0x0321
            boolean r0 = r11.mFromLayout
            if (r0 == 0) goto L_0x0032
            boolean r0 = r11.mInLayout
            if (r0 != 0) goto L_0x0032
        L_0x0031:
            return
        L_0x0032:
            android.view.View r0 = r11.getAnimatingAway()
            if (r0 == 0) goto L_0x0045
            r11.setAnimatingAway(r7)
            int r2 = r11.getStateAfterAnimating()
            r0 = r10
            r1 = r11
            r4 = r3
            r0.moveToState(r1, r2, r3, r4, r5)
        L_0x0045:
            int r0 = r11.mState
            switch(r0) {
                case 0: goto L_0x0085;
                case 1: goto L_0x0199;
                case 2: goto L_0x029a;
                case 3: goto L_0x029f;
                case 4: goto L_0x02c3;
                default: goto L_0x004a;
            }
        L_0x004a:
            int r0 = r11.mState
            if (r0 == r12) goto L_0x0031
            java.lang.String r0 = "FragmentManager"
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "moveToState: Fragment state for "
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.StringBuilder r1 = r1.append(r11)
            java.lang.String r2 = " not updated inline; "
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r2 = "expected state "
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.StringBuilder r1 = r1.append(r12)
            java.lang.String r2 = " found "
            java.lang.StringBuilder r1 = r1.append(r2)
            int r2 = r11.mState
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            android.util.Log.w(r0, r1)
            r11.mState = r12
            goto L_0x0031
        L_0x0085:
            boolean r0 = DEBUG
            if (r0 == 0) goto L_0x00a1
            java.lang.String r0 = "FragmentManager"
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "moveto CREATED: "
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.StringBuilder r1 = r1.append(r11)
            java.lang.String r1 = r1.toString()
            android.util.Log.v(r0, r1)
        L_0x00a1:
            android.os.Bundle r0 = r11.mSavedFragmentState
            if (r0 == 0) goto L_0x00e9
            android.os.Bundle r0 = r11.mSavedFragmentState
            android.support.v4.app.FragmentHostCallback r1 = r10.mHost
            android.content.Context r1 = r1.getContext()
            java.lang.ClassLoader r1 = r1.getClassLoader()
            r0.setClassLoader(r1)
            android.os.Bundle r0 = r11.mSavedFragmentState
            java.lang.String r1 = "android:view_state"
            android.util.SparseArray r0 = r0.getSparseParcelableArray(r1)
            r11.mSavedViewState = r0
            android.os.Bundle r0 = r11.mSavedFragmentState
            java.lang.String r1 = "android:target_state"
            android.support.v4.app.Fragment r0 = r10.getFragment(r0, r1)
            r11.mTarget = r0
            android.support.v4.app.Fragment r0 = r11.mTarget
            if (r0 == 0) goto L_0x00d6
            android.os.Bundle r0 = r11.mSavedFragmentState
            java.lang.String r1 = "android:target_req_state"
            int r0 = r0.getInt(r1, r3)
            r11.mTargetRequestCode = r0
        L_0x00d6:
            android.os.Bundle r0 = r11.mSavedFragmentState
            java.lang.String r1 = "android:user_visible_hint"
            boolean r0 = r0.getBoolean(r1, r5)
            r11.mUserVisibleHint = r0
            boolean r0 = r11.mUserVisibleHint
            if (r0 != 0) goto L_0x00e9
            r11.mDeferStart = r5
            if (r12 <= r6) goto L_0x00e9
            r12 = r6
        L_0x00e9:
            android.support.v4.app.FragmentHostCallback r0 = r10.mHost
            r11.mHost = r0
            android.support.v4.app.Fragment r0 = r10.mParent
            r11.mParentFragment = r0
            android.support.v4.app.Fragment r0 = r10.mParent
            if (r0 == 0) goto L_0x0132
            android.support.v4.app.Fragment r0 = r10.mParent
            android.support.v4.app.FragmentManagerImpl r0 = r0.mChildFragmentManager
        L_0x00f9:
            r11.mFragmentManager = r0
            android.support.v4.app.FragmentHostCallback r0 = r10.mHost
            android.content.Context r0 = r0.getContext()
            r10.dispatchOnFragmentPreAttached(r11, r0, r3)
            r11.mCalled = r3
            android.support.v4.app.FragmentHostCallback r0 = r10.mHost
            android.content.Context r0 = r0.getContext()
            r11.onAttach(r0)
            boolean r0 = r11.mCalled
            if (r0 != 0) goto L_0x0139
            android.support.v4.app.SuperNotCalledException r0 = new android.support.v4.app.SuperNotCalledException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Fragment "
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.StringBuilder r1 = r1.append(r11)
            java.lang.String r2 = " did not call through to super.onAttach()"
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L_0x0132:
            android.support.v4.app.FragmentHostCallback r0 = r10.mHost
            android.support.v4.app.FragmentManagerImpl r0 = r0.getFragmentManagerImpl()
            goto L_0x00f9
        L_0x0139:
            android.support.v4.app.Fragment r0 = r11.mParentFragment
            if (r0 != 0) goto L_0x02ed
            android.support.v4.app.FragmentHostCallback r0 = r10.mHost
            r0.onAttachFragment(r11)
        L_0x0142:
            android.support.v4.app.FragmentHostCallback r0 = r10.mHost
            android.content.Context r0 = r0.getContext()
            r10.dispatchOnFragmentAttached(r11, r0, r3)
            boolean r0 = r11.mRetaining
            if (r0 != 0) goto L_0x02f4
            android.os.Bundle r0 = r11.mSavedFragmentState
            r11.performCreate(r0)
            android.os.Bundle r0 = r11.mSavedFragmentState
            r10.dispatchOnFragmentCreated(r11, r0, r3)
        L_0x0159:
            r11.mRetaining = r3
            boolean r0 = r11.mFromLayout
            if (r0 == 0) goto L_0x0199
            android.os.Bundle r0 = r11.mSavedFragmentState
            android.view.LayoutInflater r0 = r11.getLayoutInflater(r0)
            android.os.Bundle r1 = r11.mSavedFragmentState
            android.view.View r0 = r11.performCreateView(r0, r7, r1)
            r11.mView = r0
            android.view.View r0 = r11.mView
            if (r0 == 0) goto L_0x0307
            android.view.View r0 = r11.mView
            r11.mInnerView = r0
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 11
            if (r0 < r1) goto L_0x02fd
            android.view.View r0 = r11.mView
            android.support.v4.view.ViewCompat.setSaveFromParentEnabled(r0, r3)
        L_0x0180:
            boolean r0 = r11.mHidden
            if (r0 == 0) goto L_0x018b
            android.view.View r0 = r11.mView
            r1 = 8
            r0.setVisibility(r1)
        L_0x018b:
            android.view.View r0 = r11.mView
            android.os.Bundle r1 = r11.mSavedFragmentState
            r11.onViewCreated(r0, r1)
            android.view.View r0 = r11.mView
            android.os.Bundle r1 = r11.mSavedFragmentState
            r10.dispatchOnFragmentViewCreated(r11, r0, r1, r3)
        L_0x0199:
            if (r12 <= r5) goto L_0x029a
            boolean r0 = DEBUG
            if (r0 == 0) goto L_0x01b7
            java.lang.String r0 = "FragmentManager"
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "moveto ACTIVITY_CREATED: "
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.StringBuilder r1 = r1.append(r11)
            java.lang.String r1 = r1.toString()
            android.util.Log.v(r0, r1)
        L_0x01b7:
            boolean r0 = r11.mFromLayout
            if (r0 != 0) goto L_0x0285
            int r0 = r11.mContainerId
            if (r0 == 0) goto L_0x0482
            int r0 = r11.mContainerId
            r1 = -1
            if (r0 != r1) goto L_0x01e5
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Cannot create fragment "
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.StringBuilder r1 = r1.append(r11)
            java.lang.String r2 = " for a container view with no id"
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            r10.throwException(r0)
        L_0x01e5:
            android.support.v4.app.FragmentContainer r0 = r10.mContainer
            int r1 = r11.mContainerId
            android.view.View r0 = r0.onFindViewById(r1)
            android.view.ViewGroup r0 = (android.view.ViewGroup) r0
            if (r0 != 0) goto L_0x0234
            boolean r1 = r11.mRestored
            if (r1 != 0) goto L_0x0234
            android.content.res.Resources r1 = r11.getResources()     // Catch:{ NotFoundException -> 0x030b }
            int r2 = r11.mContainerId     // Catch:{ NotFoundException -> 0x030b }
            java.lang.String r1 = r1.getResourceName(r2)     // Catch:{ NotFoundException -> 0x030b }
        L_0x01ff:
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r8 = "No view found for id 0x"
            java.lang.StringBuilder r4 = r4.append(r8)
            int r8 = r11.mContainerId
            java.lang.String r8 = java.lang.Integer.toHexString(r8)
            java.lang.StringBuilder r4 = r4.append(r8)
            java.lang.String r8 = " ("
            java.lang.StringBuilder r4 = r4.append(r8)
            java.lang.StringBuilder r1 = r4.append(r1)
            java.lang.String r4 = ") for fragment "
            java.lang.StringBuilder r1 = r1.append(r4)
            java.lang.StringBuilder r1 = r1.append(r11)
            java.lang.String r1 = r1.toString()
            r2.<init>(r1)
            r10.throwException(r2)
        L_0x0234:
            r11.mContainer = r0
            android.os.Bundle r1 = r11.mSavedFragmentState
            android.view.LayoutInflater r1 = r11.getLayoutInflater(r1)
            android.os.Bundle r2 = r11.mSavedFragmentState
            android.view.View r1 = r11.performCreateView(r1, r0, r2)
            r11.mView = r1
            android.view.View r1 = r11.mView
            if (r1 == 0) goto L_0x031d
            android.view.View r1 = r11.mView
            r11.mInnerView = r1
            int r1 = android.os.Build.VERSION.SDK_INT
            r2 = 11
            if (r1 < r2) goto L_0x0310
            android.view.View r1 = r11.mView
            android.support.v4.view.ViewCompat.setSaveFromParentEnabled(r1, r3)
        L_0x0257:
            if (r0 == 0) goto L_0x025e
            android.view.View r1 = r11.mView
            r0.addView(r1)
        L_0x025e:
            boolean r0 = r11.mHidden
            if (r0 == 0) goto L_0x0269
            android.view.View r0 = r11.mView
            r1 = 8
            r0.setVisibility(r1)
        L_0x0269:
            android.view.View r0 = r11.mView
            android.os.Bundle r1 = r11.mSavedFragmentState
            r11.onViewCreated(r0, r1)
            android.view.View r0 = r11.mView
            android.os.Bundle r1 = r11.mSavedFragmentState
            r10.dispatchOnFragmentViewCreated(r11, r0, r1, r3)
            android.view.View r0 = r11.mView
            int r0 = r0.getVisibility()
            if (r0 != 0) goto L_0x031a
            android.view.ViewGroup r0 = r11.mContainer
            if (r0 == 0) goto L_0x031a
        L_0x0283:
            r11.mIsNewlyAdded = r5
        L_0x0285:
            android.os.Bundle r0 = r11.mSavedFragmentState
            r11.performActivityCreated(r0)
            android.os.Bundle r0 = r11.mSavedFragmentState
            r10.dispatchOnFragmentActivityCreated(r11, r0, r3)
            android.view.View r0 = r11.mView
            if (r0 == 0) goto L_0x0298
            android.os.Bundle r0 = r11.mSavedFragmentState
            r11.restoreViewState(r0)
        L_0x0298:
            r11.mSavedFragmentState = r7
        L_0x029a:
            r0 = 2
            if (r12 <= r0) goto L_0x029f
            r11.mState = r6
        L_0x029f:
            if (r12 <= r6) goto L_0x02c3
            boolean r0 = DEBUG
            if (r0 == 0) goto L_0x02bd
            java.lang.String r0 = "FragmentManager"
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "moveto STARTED: "
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.StringBuilder r1 = r1.append(r11)
            java.lang.String r1 = r1.toString()
            android.util.Log.v(r0, r1)
        L_0x02bd:
            r11.performStart()
            r10.dispatchOnFragmentStarted(r11, r3)
        L_0x02c3:
            if (r12 <= r9) goto L_0x004a
            boolean r0 = DEBUG
            if (r0 == 0) goto L_0x02e1
            java.lang.String r0 = "FragmentManager"
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "moveto RESUMED: "
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.StringBuilder r1 = r1.append(r11)
            java.lang.String r1 = r1.toString()
            android.util.Log.v(r0, r1)
        L_0x02e1:
            r11.performResume()
            r10.dispatchOnFragmentResumed(r11, r3)
            r11.mSavedFragmentState = r7
            r11.mSavedViewState = r7
            goto L_0x004a
        L_0x02ed:
            android.support.v4.app.Fragment r0 = r11.mParentFragment
            r0.onAttachFragment(r11)
            goto L_0x0142
        L_0x02f4:
            android.os.Bundle r0 = r11.mSavedFragmentState
            r11.restoreChildFragmentState(r0)
            r11.mState = r5
            goto L_0x0159
        L_0x02fd:
            android.view.View r0 = r11.mView
            android.view.ViewGroup r0 = android.support.v4.app.NoSaveStateFrameLayout.wrap(r0)
            r11.mView = r0
            goto L_0x0180
        L_0x0307:
            r11.mInnerView = r7
            goto L_0x0199
        L_0x030b:
            r1 = move-exception
            java.lang.String r1 = "unknown"
            goto L_0x01ff
        L_0x0310:
            android.view.View r1 = r11.mView
            android.view.ViewGroup r1 = android.support.v4.app.NoSaveStateFrameLayout.wrap(r1)
            r11.mView = r1
            goto L_0x0257
        L_0x031a:
            r5 = r3
            goto L_0x0283
        L_0x031d:
            r11.mInnerView = r7
            goto L_0x0285
        L_0x0321:
            int r0 = r11.mState
            if (r0 <= r12) goto L_0x004a
            int r0 = r11.mState
            switch(r0) {
                case 1: goto L_0x032c;
                case 2: goto L_0x03b8;
                case 3: goto L_0x0397;
                case 4: goto L_0x0373;
                case 5: goto L_0x034e;
                default: goto L_0x032a;
            }
        L_0x032a:
            goto L_0x004a
        L_0x032c:
            if (r12 >= r5) goto L_0x004a
            boolean r0 = r10.mDestroyed
            if (r0 == 0) goto L_0x0342
            android.view.View r0 = r11.getAnimatingAway()
            if (r0 == 0) goto L_0x0342
            android.view.View r0 = r11.getAnimatingAway()
            r11.setAnimatingAway(r7)
            r0.clearAnimation()
        L_0x0342:
            android.view.View r0 = r11.getAnimatingAway()
            if (r0 == 0) goto L_0x043e
            r11.setStateAfterAnimating(r12)
            r12 = r5
            goto L_0x004a
        L_0x034e:
            r0 = 5
            if (r12 >= r0) goto L_0x0373
            boolean r0 = DEBUG
            if (r0 == 0) goto L_0x036d
            java.lang.String r0 = "FragmentManager"
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "movefrom RESUMED: "
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.StringBuilder r1 = r1.append(r11)
            java.lang.String r1 = r1.toString()
            android.util.Log.v(r0, r1)
        L_0x036d:
            r11.performPause()
            r10.dispatchOnFragmentPaused(r11, r3)
        L_0x0373:
            if (r12 >= r9) goto L_0x0397
            boolean r0 = DEBUG
            if (r0 == 0) goto L_0x0391
            java.lang.String r0 = "FragmentManager"
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "movefrom STARTED: "
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.StringBuilder r1 = r1.append(r11)
            java.lang.String r1 = r1.toString()
            android.util.Log.v(r0, r1)
        L_0x0391:
            r11.performStop()
            r10.dispatchOnFragmentStopped(r11, r3)
        L_0x0397:
            if (r12 >= r6) goto L_0x03b8
            boolean r0 = DEBUG
            if (r0 == 0) goto L_0x03b5
            java.lang.String r0 = "FragmentManager"
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "movefrom STOPPED: "
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.StringBuilder r1 = r1.append(r11)
            java.lang.String r1 = r1.toString()
            android.util.Log.v(r0, r1)
        L_0x03b5:
            r11.performReallyStop()
        L_0x03b8:
            r0 = 2
            if (r12 >= r0) goto L_0x032c
            boolean r0 = DEBUG
            if (r0 == 0) goto L_0x03d7
            java.lang.String r0 = "FragmentManager"
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "movefrom ACTIVITY_CREATED: "
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.StringBuilder r1 = r1.append(r11)
            java.lang.String r1 = r1.toString()
            android.util.Log.v(r0, r1)
        L_0x03d7:
            android.view.View r0 = r11.mView
            if (r0 == 0) goto L_0x03ea
            android.support.v4.app.FragmentHostCallback r0 = r10.mHost
            boolean r0 = r0.onShouldSaveFragmentState(r11)
            if (r0 == 0) goto L_0x03ea
            android.util.SparseArray<android.os.Parcelable> r0 = r11.mSavedViewState
            if (r0 != 0) goto L_0x03ea
            r10.saveFragmentViewState(r11)
        L_0x03ea:
            r11.performDestroyView()
            r10.dispatchOnFragmentViewDestroyed(r11, r3)
            android.view.View r0 = r11.mView
            if (r0 == 0) goto L_0x0436
            android.view.ViewGroup r0 = r11.mContainer
            if (r0 == 0) goto L_0x0436
            int r0 = r10.mCurState
            if (r0 <= 0) goto L_0x0480
            boolean r0 = r10.mDestroyed
            if (r0 != 0) goto L_0x0480
            android.view.View r0 = r11.mView
            int r0 = r0.getVisibility()
            if (r0 != 0) goto L_0x0480
            float r0 = r11.mPostponedAlpha
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x0480
            android.view.animation.Animation r0 = r10.loadAnimation(r11, r13, r3, r14)
        L_0x0413:
            r1 = 0
            r11.mPostponedAlpha = r1
            if (r0 == 0) goto L_0x042f
            android.view.View r1 = r11.mView
            r11.setAnimatingAway(r1)
            r11.setStateAfterAnimating(r12)
            android.view.View r1 = r11.mView
            android.support.v4.app.FragmentManagerImpl$2 r2 = new android.support.v4.app.FragmentManagerImpl$2
            r2.<init>(r1, r0, r11)
            r0.setAnimationListener(r2)
            android.view.View r1 = r11.mView
            r1.startAnimation(r0)
        L_0x042f:
            android.view.ViewGroup r0 = r11.mContainer
            android.view.View r1 = r11.mView
            r0.removeView(r1)
        L_0x0436:
            r11.mContainer = r7
            r11.mView = r7
            r11.mInnerView = r7
            goto L_0x032c
        L_0x043e:
            boolean r0 = DEBUG
            if (r0 == 0) goto L_0x045a
            java.lang.String r0 = "FragmentManager"
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "movefrom CREATED: "
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.StringBuilder r1 = r1.append(r11)
            java.lang.String r1 = r1.toString()
            android.util.Log.v(r0, r1)
        L_0x045a:
            boolean r0 = r11.mRetaining
            if (r0 != 0) goto L_0x0475
            r11.performDestroy()
            r10.dispatchOnFragmentDestroyed(r11, r3)
        L_0x0464:
            r11.performDetach()
            r10.dispatchOnFragmentDetached(r11, r3)
            if (r15 != 0) goto L_0x004a
            boolean r0 = r11.mRetaining
            if (r0 != 0) goto L_0x0478
            r10.makeInactive(r11)
            goto L_0x004a
        L_0x0475:
            r11.mState = r3
            goto L_0x0464
        L_0x0478:
            r11.mHost = r7
            r11.mParentFragment = r7
            r11.mFragmentManager = r7
            goto L_0x004a
        L_0x0480:
            r0 = r7
            goto L_0x0413
        L_0x0482:
            r0 = r7
            goto L_0x0234
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.app.FragmentManagerImpl.moveToState(android.support.v4.app.Fragment, int, int, int, boolean):void");
    }

    /* access modifiers changed from: 0000 */
    public void moveToState(Fragment fragment) {
        moveToState(fragment, this.mCurState, 0, 0, false);
    }

    /* access modifiers changed from: 0000 */
    public void completeShowHideFragment(Fragment fragment) {
        int i;
        if (fragment.mView != null) {
            Animation loadAnimation = loadAnimation(fragment, fragment.getNextTransition(), !fragment.mHidden, fragment.getNextTransitionStyle());
            if (loadAnimation != null) {
                setHWLayerAnimListenerIfAlpha(fragment.mView, loadAnimation);
                fragment.mView.startAnimation(loadAnimation);
                setHWLayerAnimListenerIfAlpha(fragment.mView, loadAnimation);
                loadAnimation.start();
            }
            if (!fragment.mHidden || fragment.isHideReplaced()) {
                i = 0;
            } else {
                i = 8;
            }
            fragment.mView.setVisibility(i);
            if (fragment.isHideReplaced()) {
                fragment.setHideReplaced(false);
            }
        }
        if (fragment.mAdded && fragment.mHasMenu && fragment.mMenuVisible) {
            this.mNeedMenuInvalidate = true;
        }
        fragment.mHiddenChanged = false;
        fragment.onHiddenChanged(fragment.mHidden);
    }

    /* access modifiers changed from: 0000 */
    public void moveFragmentToExpectedState(Fragment fragment) {
        if (fragment != null) {
            int i = this.mCurState;
            if (fragment.mRemoving) {
                if (fragment.isInBackStack()) {
                    i = Math.min(i, 1);
                } else {
                    i = Math.min(i, 0);
                }
            }
            moveToState(fragment, i, fragment.getNextTransition(), fragment.getNextTransitionStyle(), false);
            if (fragment.mView != null) {
                Fragment findFragmentUnder = findFragmentUnder(fragment);
                if (findFragmentUnder != null) {
                    View view = findFragmentUnder.mView;
                    ViewGroup viewGroup = fragment.mContainer;
                    int indexOfChild = viewGroup.indexOfChild(view);
                    int indexOfChild2 = viewGroup.indexOfChild(fragment.mView);
                    if (indexOfChild2 < indexOfChild) {
                        viewGroup.removeViewAt(indexOfChild2);
                        viewGroup.addView(fragment.mView, indexOfChild);
                    }
                }
                if (fragment.mIsNewlyAdded && fragment.mContainer != null) {
                    if (VERSION.SDK_INT < 11) {
                        fragment.mView.setVisibility(0);
                    } else if (fragment.mPostponedAlpha > 0.0f) {
                        fragment.mView.setAlpha(fragment.mPostponedAlpha);
                    }
                    fragment.mPostponedAlpha = 0.0f;
                    fragment.mIsNewlyAdded = false;
                    Animation loadAnimation = loadAnimation(fragment, fragment.getNextTransition(), true, fragment.getNextTransitionStyle());
                    if (loadAnimation != null) {
                        setHWLayerAnimListenerIfAlpha(fragment.mView, loadAnimation);
                        fragment.mView.startAnimation(loadAnimation);
                    }
                }
            }
            if (fragment.mHiddenChanged) {
                completeShowHideFragment(fragment);
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void moveToState(int i, boolean z) {
        boolean z2;
        boolean z3;
        boolean z4;
        if (this.mHost == null && i != 0) {
            throw new IllegalStateException("No activity");
        } else if (z || i != this.mCurState) {
            this.mCurState = i;
            if (this.mActive != null) {
                if (this.mAdded != null) {
                    int size = this.mAdded.size();
                    int i2 = 0;
                    z2 = false;
                    while (i2 < size) {
                        Fragment fragment = (Fragment) this.mAdded.get(i2);
                        moveFragmentToExpectedState(fragment);
                        if (fragment.mLoaderManager != null) {
                            z4 = fragment.mLoaderManager.hasRunningLoaders() | z2;
                        } else {
                            z4 = z2;
                        }
                        i2++;
                        z2 = z4;
                    }
                } else {
                    z2 = false;
                }
                int size2 = this.mActive.size();
                int i3 = 0;
                while (i3 < size2) {
                    Fragment fragment2 = (Fragment) this.mActive.get(i3);
                    if (fragment2 != null && ((fragment2.mRemoving || fragment2.mDetached) && !fragment2.mIsNewlyAdded)) {
                        moveFragmentToExpectedState(fragment2);
                        if (fragment2.mLoaderManager != null) {
                            z3 = fragment2.mLoaderManager.hasRunningLoaders() | z2;
                            i3++;
                            z2 = z3;
                        }
                    }
                    z3 = z2;
                    i3++;
                    z2 = z3;
                }
                if (!z2) {
                    startPendingDeferredFragments();
                }
                if (this.mNeedMenuInvalidate && this.mHost != null && this.mCurState == 5) {
                    this.mHost.onSupportInvalidateOptionsMenu();
                    this.mNeedMenuInvalidate = false;
                }
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void startPendingDeferredFragments() {
        if (this.mActive != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.mActive.size()) {
                    Fragment fragment = (Fragment) this.mActive.get(i2);
                    if (fragment != null) {
                        performPendingDeferredStart(fragment);
                    }
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void makeActive(Fragment fragment) {
        if (fragment.mIndex < 0) {
            if (this.mAvailIndices == null || this.mAvailIndices.size() <= 0) {
                if (this.mActive == null) {
                    this.mActive = new ArrayList<>();
                }
                fragment.setIndex(this.mActive.size(), this.mParent);
                this.mActive.add(fragment);
            } else {
                fragment.setIndex(((Integer) this.mAvailIndices.remove(this.mAvailIndices.size() - 1)).intValue(), this.mParent);
                this.mActive.set(fragment.mIndex, fragment);
            }
            if (DEBUG) {
                Log.v(TAG, "Allocated fragment index " + fragment);
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void makeInactive(Fragment fragment) {
        if (fragment.mIndex >= 0) {
            if (DEBUG) {
                Log.v(TAG, "Freeing fragment index " + fragment);
            }
            this.mActive.set(fragment.mIndex, null);
            if (this.mAvailIndices == null) {
                this.mAvailIndices = new ArrayList<>();
            }
            this.mAvailIndices.add(Integer.valueOf(fragment.mIndex));
            this.mHost.inactivateFragment(fragment.mWho);
            fragment.initState();
        }
    }

    public void addFragment(Fragment fragment, boolean z) {
        if (this.mAdded == null) {
            this.mAdded = new ArrayList<>();
        }
        if (DEBUG) {
            Log.v(TAG, "add: " + fragment);
        }
        makeActive(fragment);
        if (fragment.mDetached) {
            return;
        }
        if (this.mAdded.contains(fragment)) {
            throw new IllegalStateException("Fragment already added: " + fragment);
        }
        this.mAdded.add(fragment);
        fragment.mAdded = true;
        fragment.mRemoving = false;
        if (fragment.mView == null) {
            fragment.mHiddenChanged = false;
        }
        if (fragment.mHasMenu && fragment.mMenuVisible) {
            this.mNeedMenuInvalidate = true;
        }
        if (z) {
            moveToState(fragment);
        }
    }

    public void removeFragment(Fragment fragment) {
        if (DEBUG) {
            Log.v(TAG, "remove: " + fragment + " nesting=" + fragment.mBackStackNesting);
        }
        boolean z = !fragment.isInBackStack();
        if (!fragment.mDetached || z) {
            if (this.mAdded != null) {
                this.mAdded.remove(fragment);
            }
            if (fragment.mHasMenu && fragment.mMenuVisible) {
                this.mNeedMenuInvalidate = true;
            }
            fragment.mAdded = false;
            fragment.mRemoving = true;
        }
    }

    public void hideFragment(Fragment fragment) {
        boolean z = true;
        if (DEBUG) {
            Log.v(TAG, "hide: " + fragment);
        }
        if (!fragment.mHidden) {
            fragment.mHidden = true;
            if (fragment.mHiddenChanged) {
                z = false;
            }
            fragment.mHiddenChanged = z;
        }
    }

    public void showFragment(Fragment fragment) {
        boolean z = false;
        if (DEBUG) {
            Log.v(TAG, "show: " + fragment);
        }
        if (fragment.mHidden) {
            fragment.mHidden = false;
            if (!fragment.mHiddenChanged) {
                z = true;
            }
            fragment.mHiddenChanged = z;
        }
    }

    public void detachFragment(Fragment fragment) {
        if (DEBUG) {
            Log.v(TAG, "detach: " + fragment);
        }
        if (!fragment.mDetached) {
            fragment.mDetached = true;
            if (fragment.mAdded) {
                if (this.mAdded != null) {
                    if (DEBUG) {
                        Log.v(TAG, "remove from detach: " + fragment);
                    }
                    this.mAdded.remove(fragment);
                }
                if (fragment.mHasMenu && fragment.mMenuVisible) {
                    this.mNeedMenuInvalidate = true;
                }
                fragment.mAdded = false;
            }
        }
    }

    public void attachFragment(Fragment fragment) {
        if (DEBUG) {
            Log.v(TAG, "attach: " + fragment);
        }
        if (fragment.mDetached) {
            fragment.mDetached = false;
            if (!fragment.mAdded) {
                if (this.mAdded == null) {
                    this.mAdded = new ArrayList<>();
                }
                if (this.mAdded.contains(fragment)) {
                    throw new IllegalStateException("Fragment already added: " + fragment);
                }
                if (DEBUG) {
                    Log.v(TAG, "add from attach: " + fragment);
                }
                this.mAdded.add(fragment);
                fragment.mAdded = true;
                if (fragment.mHasMenu && fragment.mMenuVisible) {
                    this.mNeedMenuInvalidate = true;
                }
            }
        }
    }

    public Fragment findFragmentById(int i) {
        if (this.mAdded != null) {
            for (int size = this.mAdded.size() - 1; size >= 0; size--) {
                Fragment fragment = (Fragment) this.mAdded.get(size);
                if (fragment != null && fragment.mFragmentId == i) {
                    return fragment;
                }
            }
        }
        if (this.mActive != null) {
            for (int size2 = this.mActive.size() - 1; size2 >= 0; size2--) {
                Fragment fragment2 = (Fragment) this.mActive.get(size2);
                if (fragment2 != null && fragment2.mFragmentId == i) {
                    return fragment2;
                }
            }
        }
        return null;
    }

    public Fragment findFragmentByTag(String str) {
        if (!(this.mAdded == null || str == null)) {
            for (int size = this.mAdded.size() - 1; size >= 0; size--) {
                Fragment fragment = (Fragment) this.mAdded.get(size);
                if (fragment != null && str.equals(fragment.mTag)) {
                    return fragment;
                }
            }
        }
        if (!(this.mActive == null || str == null)) {
            for (int size2 = this.mActive.size() - 1; size2 >= 0; size2--) {
                Fragment fragment2 = (Fragment) this.mActive.get(size2);
                if (fragment2 != null && str.equals(fragment2.mTag)) {
                    return fragment2;
                }
            }
        }
        return null;
    }

    public Fragment findFragmentByWho(String str) {
        if (!(this.mActive == null || str == null)) {
            for (int size = this.mActive.size() - 1; size >= 0; size--) {
                Fragment fragment = (Fragment) this.mActive.get(size);
                if (fragment != null) {
                    Fragment findFragmentByWho = fragment.findFragmentByWho(str);
                    if (findFragmentByWho != null) {
                        return findFragmentByWho;
                    }
                }
            }
        }
        return null;
    }

    private void checkStateLoss() {
        if (this.mStateSaved) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        } else if (this.mNoTransactionsBecause != null) {
            throw new IllegalStateException("Can not perform this action inside of " + this.mNoTransactionsBecause);
        }
    }

    public void enqueueAction(OpGenerator opGenerator, boolean z) {
        if (!z) {
            checkStateLoss();
        }
        synchronized (this) {
            if (this.mDestroyed || this.mHost == null) {
                throw new IllegalStateException("Activity has been destroyed");
            }
            if (this.mPendingActions == null) {
                this.mPendingActions = new ArrayList<>();
            }
            this.mPendingActions.add(opGenerator);
            scheduleCommit();
        }
    }

    /* access modifiers changed from: private */
    public void scheduleCommit() {
        boolean z = true;
        synchronized (this) {
            boolean z2 = this.mPostponedTransactions != null && !this.mPostponedTransactions.isEmpty();
            if (this.mPendingActions == null || this.mPendingActions.size() != 1) {
                z = false;
            }
            if (z2 || z) {
                this.mHost.getHandler().removeCallbacks(this.mExecCommit);
                this.mHost.getHandler().post(this.mExecCommit);
            }
        }
    }

    public int allocBackStackIndex(BackStackRecord backStackRecord) {
        int i;
        synchronized (this) {
            if (this.mAvailBackStackIndices == null || this.mAvailBackStackIndices.size() <= 0) {
                if (this.mBackStackIndices == null) {
                    this.mBackStackIndices = new ArrayList<>();
                }
                i = this.mBackStackIndices.size();
                if (DEBUG) {
                    Log.v(TAG, "Setting back stack index " + i + " to " + backStackRecord);
                }
                this.mBackStackIndices.add(backStackRecord);
            } else {
                i = ((Integer) this.mAvailBackStackIndices.remove(this.mAvailBackStackIndices.size() - 1)).intValue();
                if (DEBUG) {
                    Log.v(TAG, "Adding back stack index " + i + " with " + backStackRecord);
                }
                this.mBackStackIndices.set(i, backStackRecord);
            }
        }
        return i;
    }

    public void setBackStackIndex(int i, BackStackRecord backStackRecord) {
        synchronized (this) {
            if (this.mBackStackIndices == null) {
                this.mBackStackIndices = new ArrayList<>();
            }
            int size = this.mBackStackIndices.size();
            if (i < size) {
                if (DEBUG) {
                    Log.v(TAG, "Setting back stack index " + i + " to " + backStackRecord);
                }
                this.mBackStackIndices.set(i, backStackRecord);
            } else {
                while (size < i) {
                    this.mBackStackIndices.add(null);
                    if (this.mAvailBackStackIndices == null) {
                        this.mAvailBackStackIndices = new ArrayList<>();
                    }
                    if (DEBUG) {
                        Log.v(TAG, "Adding available back stack index " + size);
                    }
                    this.mAvailBackStackIndices.add(Integer.valueOf(size));
                    size++;
                }
                if (DEBUG) {
                    Log.v(TAG, "Adding back stack index " + i + " with " + backStackRecord);
                }
                this.mBackStackIndices.add(backStackRecord);
            }
        }
    }

    public void freeBackStackIndex(int i) {
        synchronized (this) {
            this.mBackStackIndices.set(i, null);
            if (this.mAvailBackStackIndices == null) {
                this.mAvailBackStackIndices = new ArrayList<>();
            }
            if (DEBUG) {
                Log.v(TAG, "Freeing back stack index " + i);
            }
            this.mAvailBackStackIndices.add(Integer.valueOf(i));
        }
    }

    private void ensureExecReady(boolean z) {
        if (this.mExecutingActions) {
            throw new IllegalStateException("FragmentManager is already executing transactions");
        } else if (Looper.myLooper() != this.mHost.getHandler().getLooper()) {
            throw new IllegalStateException("Must be called from main thread of fragment host");
        } else {
            if (!z) {
                checkStateLoss();
            }
            if (this.mTmpRecords == null) {
                this.mTmpRecords = new ArrayList<>();
                this.mTmpIsPop = new ArrayList<>();
            }
            this.mExecutingActions = true;
            try {
                executePostponedTransaction(null, null);
            } finally {
                this.mExecutingActions = false;
            }
        }
    }

    public void execSingleAction(OpGenerator opGenerator, boolean z) {
        ensureExecReady(z);
        if (opGenerator.generateOps(this.mTmpRecords, this.mTmpIsPop)) {
            this.mExecutingActions = true;
            try {
                optimizeAndExecuteOps(this.mTmpRecords, this.mTmpIsPop);
            } finally {
                cleanupExec();
            }
        }
        doPendingDeferredStart();
    }

    private void cleanupExec() {
        this.mExecutingActions = false;
        this.mTmpIsPop.clear();
        this.mTmpRecords.clear();
    }

    /* JADX INFO: finally extract failed */
    public boolean execPendingActions() {
        ensureExecReady(true);
        boolean z = false;
        while (generateOpsForPendingActions(this.mTmpRecords, this.mTmpIsPop)) {
            this.mExecutingActions = true;
            try {
                optimizeAndExecuteOps(this.mTmpRecords, this.mTmpIsPop);
                cleanupExec();
                z = true;
            } catch (Throwable th) {
                cleanupExec();
                throw th;
            }
        }
        doPendingDeferredStart();
        return z;
    }

    private void executePostponedTransaction(ArrayList<BackStackRecord> arrayList, ArrayList<Boolean> arrayList2) {
        int i = 0;
        int size = this.mPostponedTransactions == null ? 0 : this.mPostponedTransactions.size();
        while (i < size) {
            StartEnterTransitionListener startEnterTransitionListener = (StartEnterTransitionListener) this.mPostponedTransactions.get(i);
            if (arrayList != null && !startEnterTransitionListener.mIsBack) {
                int indexOf = arrayList.indexOf(startEnterTransitionListener.mRecord);
                if (indexOf != -1 && ((Boolean) arrayList2.get(indexOf)).booleanValue()) {
                    startEnterTransitionListener.cancelTransaction();
                    i++;
                    size = size;
                }
            }
            if (startEnterTransitionListener.isReady() || (arrayList != null && startEnterTransitionListener.mRecord.interactsWith(arrayList, 0, arrayList.size()))) {
                this.mPostponedTransactions.remove(i);
                i--;
                size--;
                if (arrayList != null && !startEnterTransitionListener.mIsBack) {
                    int indexOf2 = arrayList.indexOf(startEnterTransitionListener.mRecord);
                    if (indexOf2 != -1 && ((Boolean) arrayList2.get(indexOf2)).booleanValue()) {
                        startEnterTransitionListener.cancelTransaction();
                    }
                }
                startEnterTransitionListener.completeTransaction();
            }
            i++;
            size = size;
        }
    }

    private void optimizeAndExecuteOps(ArrayList<BackStackRecord> arrayList, ArrayList<Boolean> arrayList2) {
        int i;
        int i2 = 0;
        if (arrayList != null && !arrayList.isEmpty()) {
            if (arrayList2 == null || arrayList.size() != arrayList2.size()) {
                throw new IllegalStateException("Internal error with the back stack records");
            }
            executePostponedTransaction(arrayList, arrayList2);
            int size = arrayList.size();
            int i3 = 0;
            while (i2 < size) {
                if (!((BackStackRecord) arrayList.get(i2)).mAllowOptimization) {
                    if (i3 != i2) {
                        executeOpsTogether(arrayList, arrayList2, i3, i2);
                    }
                    int i4 = i2 + 1;
                    if (((Boolean) arrayList2.get(i2)).booleanValue()) {
                        while (i4 < size && ((Boolean) arrayList2.get(i4)).booleanValue() && !((BackStackRecord) arrayList.get(i4)).mAllowOptimization) {
                            i4++;
                        }
                    }
                    int i5 = i4;
                    executeOpsTogether(arrayList, arrayList2, i2, i5);
                    i3 = i5;
                    i = i5 - 1;
                } else {
                    i = i2;
                }
                i2 = i + 1;
            }
            if (i3 != size) {
                executeOpsTogether(arrayList, arrayList2, i3, size);
            }
        }
    }

    private void executeOpsTogether(ArrayList<BackStackRecord> arrayList, ArrayList<Boolean> arrayList2, int i, int i2) {
        int i3;
        boolean z;
        boolean z2 = ((BackStackRecord) arrayList.get(i)).mAllowOptimization;
        if (this.mTmpAddedFragments == null) {
            this.mTmpAddedFragments = new ArrayList<>();
        } else {
            this.mTmpAddedFragments.clear();
        }
        if (this.mAdded != null) {
            this.mTmpAddedFragments.addAll(this.mAdded);
        }
        int i4 = i;
        boolean z3 = false;
        while (i4 < i2) {
            BackStackRecord backStackRecord = (BackStackRecord) arrayList.get(i4);
            if (!((Boolean) arrayList2.get(i4)).booleanValue()) {
                backStackRecord.expandReplaceOps(this.mTmpAddedFragments);
            } else {
                backStackRecord.trackAddedFragmentsInPop(this.mTmpAddedFragments);
            }
            if (z3 || backStackRecord.mAddToBackStack) {
                z = true;
            } else {
                z = false;
            }
            i4++;
            z3 = z;
        }
        this.mTmpAddedFragments.clear();
        if (!z2) {
            FragmentTransition.startTransitions(this, arrayList, arrayList2, i, i2, false);
        }
        executeOps(arrayList, arrayList2, i, i2);
        if (z2) {
            ArraySet arraySet = new ArraySet();
            addAddedFragments(arraySet);
            i3 = postponePostponableTransactions(arrayList, arrayList2, i, i2, arraySet);
            makeRemovedFragmentsInvisible(arraySet);
        } else {
            i3 = i2;
        }
        if (i3 != i && z2) {
            FragmentTransition.startTransitions(this, arrayList, arrayList2, i, i3, true);
            moveToState(this.mCurState, true);
        }
        while (i < i2) {
            BackStackRecord backStackRecord2 = (BackStackRecord) arrayList.get(i);
            if (((Boolean) arrayList2.get(i)).booleanValue() && backStackRecord2.mIndex >= 0) {
                freeBackStackIndex(backStackRecord2.mIndex);
                backStackRecord2.mIndex = -1;
            }
            i++;
        }
        if (z3) {
            reportBackStackChanged();
        }
    }

    private void makeRemovedFragmentsInvisible(ArraySet<Fragment> arraySet) {
        int size = arraySet.size();
        for (int i = 0; i < size; i++) {
            Fragment fragment = (Fragment) arraySet.valueAt(i);
            if (!fragment.mAdded) {
                View view = fragment.getView();
                if (VERSION.SDK_INT < 11) {
                    fragment.getView().setVisibility(4);
                } else {
                    fragment.mPostponedAlpha = view.getAlpha();
                    view.setAlpha(0.0f);
                }
            }
        }
    }

    private int postponePostponableTransactions(ArrayList<BackStackRecord> arrayList, ArrayList<Boolean> arrayList2, int i, int i2, ArraySet<Fragment> arraySet) {
        boolean z;
        int i3;
        int i4 = i2 - 1;
        int i5 = i2;
        while (i4 >= i) {
            BackStackRecord backStackRecord = (BackStackRecord) arrayList.get(i4);
            boolean booleanValue = ((Boolean) arrayList2.get(i4)).booleanValue();
            if (!backStackRecord.isPostponed() || backStackRecord.interactsWith(arrayList, i4 + 1, i2)) {
                z = false;
            } else {
                z = true;
            }
            if (z) {
                if (this.mPostponedTransactions == null) {
                    this.mPostponedTransactions = new ArrayList<>();
                }
                StartEnterTransitionListener startEnterTransitionListener = new StartEnterTransitionListener(backStackRecord, booleanValue);
                this.mPostponedTransactions.add(startEnterTransitionListener);
                backStackRecord.setOnStartPostponedListener(startEnterTransitionListener);
                if (booleanValue) {
                    backStackRecord.executeOps();
                } else {
                    backStackRecord.executePopOps(false);
                }
                int i6 = i5 - 1;
                if (i4 != i6) {
                    arrayList.remove(i4);
                    arrayList.add(i6, backStackRecord);
                }
                addAddedFragments(arraySet);
                i3 = i6;
            } else {
                i3 = i5;
            }
            i4--;
            i5 = i3;
        }
        return i5;
    }

    /* access modifiers changed from: private */
    public void completeExecute(BackStackRecord backStackRecord, boolean z, boolean z2, boolean z3) {
        ArrayList arrayList = new ArrayList(1);
        ArrayList arrayList2 = new ArrayList(1);
        arrayList.add(backStackRecord);
        arrayList2.add(Boolean.valueOf(z));
        executeOps(arrayList, arrayList2, 0, 1);
        if (z2) {
            FragmentTransition.startTransitions(this, arrayList, arrayList2, 0, 1, true);
        }
        if (z3) {
            moveToState(this.mCurState, true);
        }
        if (this.mActive != null) {
            int size = this.mActive.size();
            for (int i = 0; i < size; i++) {
                Fragment fragment = (Fragment) this.mActive.get(i);
                if (fragment != null && fragment.mView != null && fragment.mIsNewlyAdded && backStackRecord.interactsWith(fragment.mContainerId)) {
                    if (VERSION.SDK_INT >= 11 && fragment.mPostponedAlpha > 0.0f) {
                        fragment.mView.setAlpha(fragment.mPostponedAlpha);
                    }
                    if (z3) {
                        fragment.mPostponedAlpha = 0.0f;
                    } else {
                        fragment.mPostponedAlpha = -1.0f;
                        fragment.mIsNewlyAdded = false;
                    }
                }
            }
        }
    }

    private Fragment findFragmentUnder(Fragment fragment) {
        ViewGroup viewGroup = fragment.mContainer;
        View view = fragment.mView;
        if (viewGroup == null || view == null) {
            return null;
        }
        for (int indexOf = this.mAdded.indexOf(fragment) - 1; indexOf >= 0; indexOf--) {
            Fragment fragment2 = (Fragment) this.mAdded.get(indexOf);
            if (fragment2.mContainer == viewGroup && fragment2.mView != null) {
                return fragment2;
            }
        }
        return null;
    }

    private static void executeOps(ArrayList<BackStackRecord> arrayList, ArrayList<Boolean> arrayList2, int i, int i2) {
        while (i < i2) {
            BackStackRecord backStackRecord = (BackStackRecord) arrayList.get(i);
            if (((Boolean) arrayList2.get(i)).booleanValue()) {
                backStackRecord.bumpBackStackNesting(-1);
                backStackRecord.executePopOps(i == i2 + -1);
            } else {
                backStackRecord.bumpBackStackNesting(1);
                backStackRecord.executeOps();
            }
            i++;
        }
    }

    private void addAddedFragments(ArraySet<Fragment> arraySet) {
        if (this.mCurState >= 1) {
            int min = Math.min(this.mCurState, 4);
            int size = this.mAdded == null ? 0 : this.mAdded.size();
            for (int i = 0; i < size; i++) {
                Fragment fragment = (Fragment) this.mAdded.get(i);
                if (fragment.mState < min) {
                    moveToState(fragment, min, fragment.getNextAnim(), fragment.getNextTransition(), false);
                    if (fragment.mView != null && !fragment.mHidden && fragment.mIsNewlyAdded) {
                        arraySet.add(fragment);
                    }
                }
            }
        }
    }

    private void forcePostponedTransactions() {
        if (this.mPostponedTransactions != null) {
            while (!this.mPostponedTransactions.isEmpty()) {
                ((StartEnterTransitionListener) this.mPostponedTransactions.remove(0)).completeTransaction();
            }
        }
    }

    private void endAnimatingAwayFragments() {
        int size;
        if (this.mActive == null) {
            size = 0;
        } else {
            size = this.mActive.size();
        }
        for (int i = 0; i < size; i++) {
            Fragment fragment = (Fragment) this.mActive.get(i);
            if (!(fragment == null || fragment.getAnimatingAway() == null)) {
                int stateAfterAnimating = fragment.getStateAfterAnimating();
                View animatingAway = fragment.getAnimatingAway();
                fragment.setAnimatingAway(null);
                Animation animation = animatingAway.getAnimation();
                if (animation != null) {
                    animation.cancel();
                }
                moveToState(fragment, stateAfterAnimating, 0, 0, false);
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x003a, code lost:
        if (r3 <= 0) goto L_0x0041;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:?, code lost:
        return false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:?, code lost:
        return true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:?, code lost:
        return false;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean generateOpsForPendingActions(java.util.ArrayList<android.support.v4.app.BackStackRecord> r5, java.util.ArrayList<java.lang.Boolean> r6) {
        /*
            r4 = this;
            r1 = 0
            monitor-enter(r4)
            java.util.ArrayList<android.support.v4.app.FragmentManagerImpl$OpGenerator> r0 = r4.mPendingActions     // Catch:{ all -> 0x003e }
            if (r0 == 0) goto L_0x000e
            java.util.ArrayList<android.support.v4.app.FragmentManagerImpl$OpGenerator> r0 = r4.mPendingActions     // Catch:{ all -> 0x003e }
            int r0 = r0.size()     // Catch:{ all -> 0x003e }
            if (r0 != 0) goto L_0x0011
        L_0x000e:
            monitor-exit(r4)     // Catch:{ all -> 0x003e }
            r0 = r1
        L_0x0010:
            return r0
        L_0x0011:
            java.util.ArrayList<android.support.v4.app.FragmentManagerImpl$OpGenerator> r0 = r4.mPendingActions     // Catch:{ all -> 0x003e }
            int r3 = r0.size()     // Catch:{ all -> 0x003e }
            r2 = r1
        L_0x0018:
            if (r2 >= r3) goto L_0x0029
            java.util.ArrayList<android.support.v4.app.FragmentManagerImpl$OpGenerator> r0 = r4.mPendingActions     // Catch:{ all -> 0x003e }
            java.lang.Object r0 = r0.get(r2)     // Catch:{ all -> 0x003e }
            android.support.v4.app.FragmentManagerImpl$OpGenerator r0 = (android.support.v4.app.FragmentManagerImpl.OpGenerator) r0     // Catch:{ all -> 0x003e }
            r0.generateOps(r5, r6)     // Catch:{ all -> 0x003e }
            int r0 = r2 + 1
            r2 = r0
            goto L_0x0018
        L_0x0029:
            java.util.ArrayList<android.support.v4.app.FragmentManagerImpl$OpGenerator> r0 = r4.mPendingActions     // Catch:{ all -> 0x003e }
            r0.clear()     // Catch:{ all -> 0x003e }
            android.support.v4.app.FragmentHostCallback r0 = r4.mHost     // Catch:{ all -> 0x003e }
            android.os.Handler r0 = r0.getHandler()     // Catch:{ all -> 0x003e }
            java.lang.Runnable r2 = r4.mExecCommit     // Catch:{ all -> 0x003e }
            r0.removeCallbacks(r2)     // Catch:{ all -> 0x003e }
            monitor-exit(r4)     // Catch:{ all -> 0x003e }
            if (r3 <= 0) goto L_0x0041
            r0 = 1
            goto L_0x0010
        L_0x003e:
            r0 = move-exception
            monitor-exit(r4)     // Catch:{ all -> 0x003e }
            throw r0
        L_0x0041:
            r0 = r1
            goto L_0x0010
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.app.FragmentManagerImpl.generateOpsForPendingActions(java.util.ArrayList, java.util.ArrayList):boolean");
    }

    /* access modifiers changed from: 0000 */
    public void doPendingDeferredStart() {
        if (this.mHavePendingDeferredStart) {
            boolean z = false;
            for (int i = 0; i < this.mActive.size(); i++) {
                Fragment fragment = (Fragment) this.mActive.get(i);
                if (!(fragment == null || fragment.mLoaderManager == null)) {
                    z |= fragment.mLoaderManager.hasRunningLoaders();
                }
            }
            if (!z) {
                this.mHavePendingDeferredStart = false;
                startPendingDeferredFragments();
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void reportBackStackChanged() {
        if (this.mBackStackChangeListeners != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.mBackStackChangeListeners.size()) {
                    ((OnBackStackChangedListener) this.mBackStackChangeListeners.get(i2)).onBackStackChanged();
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void addBackStackState(BackStackRecord backStackRecord) {
        if (this.mBackStack == null) {
            this.mBackStack = new ArrayList<>();
        }
        this.mBackStack.add(backStackRecord);
        reportBackStackChanged();
    }

    /* access modifiers changed from: 0000 */
    public boolean popBackStackState(ArrayList<BackStackRecord> arrayList, ArrayList<Boolean> arrayList2, String str, int i, int i2) {
        int i3;
        if (this.mBackStack == null) {
            return false;
        }
        if (str == null && i < 0 && (i2 & 1) == 0) {
            int size = this.mBackStack.size() - 1;
            if (size < 0) {
                return false;
            }
            arrayList.add(this.mBackStack.remove(size));
            arrayList2.add(Boolean.valueOf(true));
        } else {
            int i4 = -1;
            if (str != null || i >= 0) {
                int size2 = this.mBackStack.size() - 1;
                while (i3 >= 0) {
                    BackStackRecord backStackRecord = (BackStackRecord) this.mBackStack.get(i3);
                    if ((str != null && str.equals(backStackRecord.getName())) || (i >= 0 && i == backStackRecord.mIndex)) {
                        break;
                    }
                    size2 = i3 - 1;
                }
                if (i3 < 0) {
                    return false;
                }
                if ((i2 & 1) != 0) {
                    i3--;
                    while (i3 >= 0) {
                        BackStackRecord backStackRecord2 = (BackStackRecord) this.mBackStack.get(i3);
                        if ((str == null || !str.equals(backStackRecord2.getName())) && (i < 0 || i != backStackRecord2.mIndex)) {
                            break;
                        }
                        i3--;
                    }
                }
                i4 = i3;
            }
            if (i4 == this.mBackStack.size() - 1) {
                return false;
            }
            for (int size3 = this.mBackStack.size() - 1; size3 > i4; size3--) {
                arrayList.add(this.mBackStack.remove(size3));
                arrayList2.add(Boolean.valueOf(true));
            }
        }
        return true;
    }

    /* access modifiers changed from: 0000 */
    public FragmentManagerNonConfig retainNonConfig() {
        ArrayList arrayList;
        ArrayList arrayList2;
        boolean z;
        ArrayList arrayList3;
        if (this.mActive != null) {
            int i = 0;
            arrayList2 = null;
            arrayList = null;
            while (i < this.mActive.size()) {
                Fragment fragment = (Fragment) this.mActive.get(i);
                if (fragment != null) {
                    if (fragment.mRetainInstance) {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(fragment);
                        fragment.mRetaining = true;
                        fragment.mTargetIndex = fragment.mTarget != null ? fragment.mTarget.mIndex : -1;
                        if (DEBUG) {
                            Log.v(TAG, "retainNonConfig: keeping retained " + fragment);
                        }
                    }
                    if (fragment.mChildFragmentManager != null) {
                        FragmentManagerNonConfig retainNonConfig = fragment.mChildFragmentManager.retainNonConfig();
                        if (retainNonConfig != null) {
                            if (arrayList2 == null) {
                                arrayList3 = new ArrayList();
                                for (int i2 = 0; i2 < i; i2++) {
                                    arrayList3.add(null);
                                }
                            } else {
                                arrayList3 = arrayList2;
                            }
                            arrayList3.add(retainNonConfig);
                            arrayList2 = arrayList3;
                            z = true;
                            if (arrayList2 != null && !z) {
                                arrayList2.add(null);
                            }
                        }
                    }
                    z = false;
                    arrayList2.add(null);
                }
                i++;
                arrayList = arrayList;
            }
        } else {
            arrayList2 = null;
            arrayList = null;
        }
        if (arrayList == null && arrayList2 == null) {
            return null;
        }
        return new FragmentManagerNonConfig(arrayList, arrayList2);
    }

    /* access modifiers changed from: 0000 */
    public void saveFragmentViewState(Fragment fragment) {
        if (fragment.mInnerView != null) {
            if (this.mStateArray == null) {
                this.mStateArray = new SparseArray<>();
            } else {
                this.mStateArray.clear();
            }
            fragment.mInnerView.saveHierarchyState(this.mStateArray);
            if (this.mStateArray.size() > 0) {
                fragment.mSavedViewState = this.mStateArray;
                this.mStateArray = null;
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public Bundle saveFragmentBasicState(Fragment fragment) {
        Bundle bundle;
        if (this.mStateBundle == null) {
            this.mStateBundle = new Bundle();
        }
        fragment.performSaveInstanceState(this.mStateBundle);
        dispatchOnFragmentSaveInstanceState(fragment, this.mStateBundle, false);
        if (!this.mStateBundle.isEmpty()) {
            bundle = this.mStateBundle;
            this.mStateBundle = null;
        } else {
            bundle = null;
        }
        if (fragment.mView != null) {
            saveFragmentViewState(fragment);
        }
        if (fragment.mSavedViewState != null) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putSparseParcelableArray(VIEW_STATE_TAG, fragment.mSavedViewState);
        }
        if (!fragment.mUserVisibleHint) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBoolean(USER_VISIBLE_HINT_TAG, fragment.mUserVisibleHint);
        }
        return bundle;
    }

    /* access modifiers changed from: 0000 */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x018d  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public android.os.Parcelable saveAllState() {
        /*
            r11 = this;
            r1 = 1
            r3 = 0
            r4 = 0
            r11.forcePostponedTransactions()
            r11.endAnimatingAwayFragments()
            r11.execPendingActions()
            boolean r0 = HONEYCOMB
            if (r0 == 0) goto L_0x0012
            r11.mStateSaved = r1
        L_0x0012:
            java.util.ArrayList<android.support.v4.app.Fragment> r0 = r11.mActive
            if (r0 == 0) goto L_0x001e
            java.util.ArrayList<android.support.v4.app.Fragment> r0 = r11.mActive
            int r0 = r0.size()
            if (r0 > 0) goto L_0x001f
        L_0x001e:
            return r3
        L_0x001f:
            java.util.ArrayList<android.support.v4.app.Fragment> r0 = r11.mActive
            int r6 = r0.size()
            android.support.v4.app.FragmentState[] r7 = new android.support.v4.app.FragmentState[r6]
            r5 = r4
            r2 = r4
        L_0x0029:
            if (r5 >= r6) goto L_0x00fb
            java.util.ArrayList<android.support.v4.app.Fragment> r0 = r11.mActive
            java.lang.Object r0 = r0.get(r5)
            android.support.v4.app.Fragment r0 = (android.support.v4.app.Fragment) r0
            if (r0 == 0) goto L_0x01e7
            int r2 = r0.mIndex
            if (r2 >= 0) goto L_0x0060
            java.lang.IllegalStateException r2 = new java.lang.IllegalStateException
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            java.lang.String r9 = "Failure saving state: active "
            java.lang.StringBuilder r8 = r8.append(r9)
            java.lang.StringBuilder r8 = r8.append(r0)
            java.lang.String r9 = " has cleared index: "
            java.lang.StringBuilder r8 = r8.append(r9)
            int r9 = r0.mIndex
            java.lang.StringBuilder r8 = r8.append(r9)
            java.lang.String r8 = r8.toString()
            r2.<init>(r8)
            r11.throwException(r2)
        L_0x0060:
            android.support.v4.app.FragmentState r2 = new android.support.v4.app.FragmentState
            r2.<init>(r0)
            r7[r5] = r2
            int r8 = r0.mState
            if (r8 <= 0) goto L_0x00f6
            android.os.Bundle r8 = r2.mSavedFragmentState
            if (r8 != 0) goto L_0x00f6
            android.os.Bundle r8 = r11.saveFragmentBasicState(r0)
            r2.mSavedFragmentState = r8
            android.support.v4.app.Fragment r8 = r0.mTarget
            if (r8 == 0) goto L_0x00c7
            android.support.v4.app.Fragment r8 = r0.mTarget
            int r8 = r8.mIndex
            if (r8 >= 0) goto L_0x00a6
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>()
            java.lang.String r10 = "Failure saving state: "
            java.lang.StringBuilder r9 = r9.append(r10)
            java.lang.StringBuilder r9 = r9.append(r0)
            java.lang.String r10 = " has target not in fragment manager: "
            java.lang.StringBuilder r9 = r9.append(r10)
            android.support.v4.app.Fragment r10 = r0.mTarget
            java.lang.StringBuilder r9 = r9.append(r10)
            java.lang.String r9 = r9.toString()
            r8.<init>(r9)
            r11.throwException(r8)
        L_0x00a6:
            android.os.Bundle r8 = r2.mSavedFragmentState
            if (r8 != 0) goto L_0x00b1
            android.os.Bundle r8 = new android.os.Bundle
            r8.<init>()
            r2.mSavedFragmentState = r8
        L_0x00b1:
            android.os.Bundle r8 = r2.mSavedFragmentState
            java.lang.String r9 = "android:target_state"
            android.support.v4.app.Fragment r10 = r0.mTarget
            r11.putFragment(r8, r9, r10)
            int r8 = r0.mTargetRequestCode
            if (r8 == 0) goto L_0x00c7
            android.os.Bundle r8 = r2.mSavedFragmentState
            java.lang.String r9 = "android:target_req_state"
            int r10 = r0.mTargetRequestCode
            r8.putInt(r9, r10)
        L_0x00c7:
            boolean r8 = DEBUG
            if (r8 == 0) goto L_0x00ef
            java.lang.String r8 = "FragmentManager"
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>()
            java.lang.String r10 = "Saved state of "
            java.lang.StringBuilder r9 = r9.append(r10)
            java.lang.StringBuilder r0 = r9.append(r0)
            java.lang.String r9 = ": "
            java.lang.StringBuilder r0 = r0.append(r9)
            android.os.Bundle r2 = r2.mSavedFragmentState
            java.lang.StringBuilder r0 = r0.append(r2)
            java.lang.String r0 = r0.toString()
            android.util.Log.v(r8, r0)
        L_0x00ef:
            r0 = r1
        L_0x00f0:
            int r2 = r5 + 1
            r5 = r2
            r2 = r0
            goto L_0x0029
        L_0x00f6:
            android.os.Bundle r8 = r0.mSavedFragmentState
            r2.mSavedFragmentState = r8
            goto L_0x00c7
        L_0x00fb:
            if (r2 != 0) goto L_0x010a
            boolean r0 = DEBUG
            if (r0 == 0) goto L_0x001e
            java.lang.String r0 = "FragmentManager"
            java.lang.String r1 = "saveAllState: no fragments!"
            android.util.Log.v(r0, r1)
            goto L_0x001e
        L_0x010a:
            java.util.ArrayList<android.support.v4.app.Fragment> r0 = r11.mAdded
            if (r0 == 0) goto L_0x0188
            java.util.ArrayList<android.support.v4.app.Fragment> r0 = r11.mAdded
            int r5 = r0.size()
            if (r5 <= 0) goto L_0x0188
            int[] r1 = new int[r5]
            r2 = r4
        L_0x0119:
            if (r2 >= r5) goto L_0x0189
            java.util.ArrayList<android.support.v4.app.Fragment> r0 = r11.mAdded
            java.lang.Object r0 = r0.get(r2)
            android.support.v4.app.Fragment r0 = (android.support.v4.app.Fragment) r0
            int r0 = r0.mIndex
            r1[r2] = r0
            r0 = r1[r2]
            if (r0 >= 0) goto L_0x0158
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r8 = "Failure saving state: active "
            java.lang.StringBuilder r6 = r6.append(r8)
            java.util.ArrayList<android.support.v4.app.Fragment> r8 = r11.mAdded
            java.lang.Object r8 = r8.get(r2)
            java.lang.StringBuilder r6 = r6.append(r8)
            java.lang.String r8 = " has cleared index: "
            java.lang.StringBuilder r6 = r6.append(r8)
            r8 = r1[r2]
            java.lang.StringBuilder r6 = r6.append(r8)
            java.lang.String r6 = r6.toString()
            r0.<init>(r6)
            r11.throwException(r0)
        L_0x0158:
            boolean r0 = DEBUG
            if (r0 == 0) goto L_0x0184
            java.lang.String r0 = "FragmentManager"
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r8 = "saveAllState: adding fragment #"
            java.lang.StringBuilder r6 = r6.append(r8)
            java.lang.StringBuilder r6 = r6.append(r2)
            java.lang.String r8 = ": "
            java.lang.StringBuilder r6 = r6.append(r8)
            java.util.ArrayList<android.support.v4.app.Fragment> r8 = r11.mAdded
            java.lang.Object r8 = r8.get(r2)
            java.lang.StringBuilder r6 = r6.append(r8)
            java.lang.String r6 = r6.toString()
            android.util.Log.v(r0, r6)
        L_0x0184:
            int r0 = r2 + 1
            r2 = r0
            goto L_0x0119
        L_0x0188:
            r1 = r3
        L_0x0189:
            java.util.ArrayList<android.support.v4.app.BackStackRecord> r0 = r11.mBackStack
            if (r0 == 0) goto L_0x01d9
            java.util.ArrayList<android.support.v4.app.BackStackRecord> r0 = r11.mBackStack
            int r5 = r0.size()
            if (r5 <= 0) goto L_0x01d9
            android.support.v4.app.BackStackState[] r3 = new android.support.v4.app.BackStackState[r5]
            r2 = r4
        L_0x0198:
            if (r2 >= r5) goto L_0x01d9
            android.support.v4.app.BackStackState r4 = new android.support.v4.app.BackStackState
            java.util.ArrayList<android.support.v4.app.BackStackRecord> r0 = r11.mBackStack
            java.lang.Object r0 = r0.get(r2)
            android.support.v4.app.BackStackRecord r0 = (android.support.v4.app.BackStackRecord) r0
            r4.<init>(r0)
            r3[r2] = r4
            boolean r0 = DEBUG
            if (r0 == 0) goto L_0x01d5
            java.lang.String r0 = "FragmentManager"
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r6 = "saveAllState: adding back stack #"
            java.lang.StringBuilder r4 = r4.append(r6)
            java.lang.StringBuilder r4 = r4.append(r2)
            java.lang.String r6 = ": "
            java.lang.StringBuilder r4 = r4.append(r6)
            java.util.ArrayList<android.support.v4.app.BackStackRecord> r6 = r11.mBackStack
            java.lang.Object r6 = r6.get(r2)
            java.lang.StringBuilder r4 = r4.append(r6)
            java.lang.String r4 = r4.toString()
            android.util.Log.v(r0, r4)
        L_0x01d5:
            int r0 = r2 + 1
            r2 = r0
            goto L_0x0198
        L_0x01d9:
            android.support.v4.app.FragmentManagerState r0 = new android.support.v4.app.FragmentManagerState
            r0.<init>()
            r0.mActive = r7
            r0.mAdded = r1
            r0.mBackStack = r3
            r3 = r0
            goto L_0x001e
        L_0x01e7:
            r0 = r2
            goto L_0x00f0
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.app.FragmentManagerImpl.saveAllState():android.os.Parcelable");
    }

    /* access modifiers changed from: 0000 */
    public void restoreAllState(Parcelable parcelable, FragmentManagerNonConfig fragmentManagerNonConfig) {
        List list;
        int i;
        FragmentManagerNonConfig fragmentManagerNonConfig2;
        int i2;
        if (parcelable != null) {
            FragmentManagerState fragmentManagerState = (FragmentManagerState) parcelable;
            if (fragmentManagerState.mActive != null) {
                if (fragmentManagerNonConfig != null) {
                    List fragments = fragmentManagerNonConfig.getFragments();
                    List childNonConfigs = fragmentManagerNonConfig.getChildNonConfigs();
                    if (fragments != null) {
                        i2 = fragments.size();
                    } else {
                        i2 = 0;
                    }
                    for (int i3 = 0; i3 < i2; i3++) {
                        Fragment fragment = (Fragment) fragments.get(i3);
                        if (DEBUG) {
                            Log.v(TAG, "restoreAllState: re-attaching retained " + fragment);
                        }
                        FragmentState fragmentState = fragmentManagerState.mActive[fragment.mIndex];
                        fragmentState.mInstance = fragment;
                        fragment.mSavedViewState = null;
                        fragment.mBackStackNesting = 0;
                        fragment.mInLayout = false;
                        fragment.mAdded = false;
                        fragment.mTarget = null;
                        if (fragmentState.mSavedFragmentState != null) {
                            fragmentState.mSavedFragmentState.setClassLoader(this.mHost.getContext().getClassLoader());
                            fragment.mSavedViewState = fragmentState.mSavedFragmentState.getSparseParcelableArray(VIEW_STATE_TAG);
                            fragment.mSavedFragmentState = fragmentState.mSavedFragmentState;
                        }
                    }
                    list = childNonConfigs;
                } else {
                    list = null;
                }
                this.mActive = new ArrayList<>(fragmentManagerState.mActive.length);
                if (this.mAvailIndices != null) {
                    this.mAvailIndices.clear();
                }
                for (int i4 = 0; i4 < fragmentManagerState.mActive.length; i4++) {
                    FragmentState fragmentState2 = fragmentManagerState.mActive[i4];
                    if (fragmentState2 != null) {
                        if (list == null || i4 >= list.size()) {
                            fragmentManagerNonConfig2 = null;
                        } else {
                            fragmentManagerNonConfig2 = (FragmentManagerNonConfig) list.get(i4);
                        }
                        Fragment instantiate = fragmentState2.instantiate(this.mHost, this.mParent, fragmentManagerNonConfig2);
                        if (DEBUG) {
                            Log.v(TAG, "restoreAllState: active #" + i4 + ": " + instantiate);
                        }
                        this.mActive.add(instantiate);
                        fragmentState2.mInstance = null;
                    } else {
                        this.mActive.add(null);
                        if (this.mAvailIndices == null) {
                            this.mAvailIndices = new ArrayList<>();
                        }
                        if (DEBUG) {
                            Log.v(TAG, "restoreAllState: avail #" + i4);
                        }
                        this.mAvailIndices.add(Integer.valueOf(i4));
                    }
                }
                if (fragmentManagerNonConfig != null) {
                    List fragments2 = fragmentManagerNonConfig.getFragments();
                    if (fragments2 != null) {
                        i = fragments2.size();
                    } else {
                        i = 0;
                    }
                    for (int i5 = 0; i5 < i; i5++) {
                        Fragment fragment2 = (Fragment) fragments2.get(i5);
                        if (fragment2.mTargetIndex >= 0) {
                            if (fragment2.mTargetIndex < this.mActive.size()) {
                                fragment2.mTarget = (Fragment) this.mActive.get(fragment2.mTargetIndex);
                            } else {
                                Log.w(TAG, "Re-attaching retained fragment " + fragment2 + " target no longer exists: " + fragment2.mTargetIndex);
                                fragment2.mTarget = null;
                            }
                        }
                    }
                }
                if (fragmentManagerState.mAdded != null) {
                    this.mAdded = new ArrayList<>(fragmentManagerState.mAdded.length);
                    for (int i6 = 0; i6 < fragmentManagerState.mAdded.length; i6++) {
                        Fragment fragment3 = (Fragment) this.mActive.get(fragmentManagerState.mAdded[i6]);
                        if (fragment3 == null) {
                            throwException(new IllegalStateException("No instantiated fragment for index #" + fragmentManagerState.mAdded[i6]));
                        }
                        fragment3.mAdded = true;
                        if (DEBUG) {
                            Log.v(TAG, "restoreAllState: added #" + i6 + ": " + fragment3);
                        }
                        if (this.mAdded.contains(fragment3)) {
                            throw new IllegalStateException("Already added!");
                        }
                        this.mAdded.add(fragment3);
                    }
                } else {
                    this.mAdded = null;
                }
                if (fragmentManagerState.mBackStack != null) {
                    this.mBackStack = new ArrayList<>(fragmentManagerState.mBackStack.length);
                    for (int i7 = 0; i7 < fragmentManagerState.mBackStack.length; i7++) {
                        BackStackRecord instantiate2 = fragmentManagerState.mBackStack[i7].instantiate(this);
                        if (DEBUG) {
                            Log.v(TAG, "restoreAllState: back stack #" + i7 + " (index " + instantiate2.mIndex + "): " + instantiate2);
                            PrintWriter printWriter = new PrintWriter(new LogWriter(TAG));
                            instantiate2.dump("  ", printWriter, false);
                            printWriter.close();
                        }
                        this.mBackStack.add(instantiate2);
                        if (instantiate2.mIndex >= 0) {
                            setBackStackIndex(instantiate2.mIndex, instantiate2);
                        }
                    }
                    return;
                }
                this.mBackStack = null;
            }
        }
    }

    public void attachController(FragmentHostCallback fragmentHostCallback, FragmentContainer fragmentContainer, Fragment fragment) {
        if (this.mHost != null) {
            throw new IllegalStateException("Already attached");
        }
        this.mHost = fragmentHostCallback;
        this.mContainer = fragmentContainer;
        this.mParent = fragment;
    }

    public void noteStateNotSaved() {
        this.mStateSaved = false;
    }

    public void dispatchCreate() {
        this.mStateSaved = false;
        this.mExecutingActions = true;
        moveToState(1, false);
        this.mExecutingActions = false;
    }

    public void dispatchActivityCreated() {
        this.mStateSaved = false;
        this.mExecutingActions = true;
        moveToState(2, false);
        this.mExecutingActions = false;
    }

    public void dispatchStart() {
        this.mStateSaved = false;
        this.mExecutingActions = true;
        moveToState(4, false);
        this.mExecutingActions = false;
    }

    public void dispatchResume() {
        this.mStateSaved = false;
        this.mExecutingActions = true;
        moveToState(5, false);
        this.mExecutingActions = false;
    }

    public void dispatchPause() {
        this.mExecutingActions = true;
        moveToState(4, false);
        this.mExecutingActions = false;
    }

    public void dispatchStop() {
        this.mStateSaved = true;
        this.mExecutingActions = true;
        moveToState(3, false);
        this.mExecutingActions = false;
    }

    public void dispatchReallyStop() {
        this.mExecutingActions = true;
        moveToState(2, false);
        this.mExecutingActions = false;
    }

    public void dispatchDestroyView() {
        this.mExecutingActions = true;
        moveToState(1, false);
        this.mExecutingActions = false;
    }

    public void dispatchDestroy() {
        this.mDestroyed = true;
        execPendingActions();
        this.mExecutingActions = true;
        moveToState(0, false);
        this.mExecutingActions = false;
        this.mHost = null;
        this.mContainer = null;
        this.mParent = null;
    }

    public void dispatchMultiWindowModeChanged(boolean z) {
        if (this.mAdded != null) {
            for (int size = this.mAdded.size() - 1; size >= 0; size--) {
                Fragment fragment = (Fragment) this.mAdded.get(size);
                if (fragment != null) {
                    fragment.performMultiWindowModeChanged(z);
                }
            }
        }
    }

    public void dispatchPictureInPictureModeChanged(boolean z) {
        if (this.mAdded != null) {
            for (int size = this.mAdded.size() - 1; size >= 0; size--) {
                Fragment fragment = (Fragment) this.mAdded.get(size);
                if (fragment != null) {
                    fragment.performPictureInPictureModeChanged(z);
                }
            }
        }
    }

    public void dispatchConfigurationChanged(Configuration configuration) {
        if (this.mAdded != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.mAdded.size()) {
                    Fragment fragment = (Fragment) this.mAdded.get(i2);
                    if (fragment != null) {
                        fragment.performConfigurationChanged(configuration);
                    }
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    public void dispatchLowMemory() {
        if (this.mAdded != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.mAdded.size()) {
                    Fragment fragment = (Fragment) this.mAdded.get(i2);
                    if (fragment != null) {
                        fragment.performLowMemory();
                    }
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    public boolean dispatchCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        boolean z;
        ArrayList<Fragment> arrayList = null;
        if (this.mAdded != null) {
            int i = 0;
            z = false;
            while (i < this.mAdded.size()) {
                Fragment fragment = (Fragment) this.mAdded.get(i);
                if (fragment != null && fragment.performCreateOptionsMenu(menu, menuInflater)) {
                    z = true;
                    if (arrayList == null) {
                        arrayList = new ArrayList<>();
                    }
                    arrayList.add(fragment);
                }
                i++;
                z = z;
            }
        } else {
            z = false;
        }
        if (this.mCreatedMenus != null) {
            for (int i2 = 0; i2 < this.mCreatedMenus.size(); i2++) {
                Fragment fragment2 = (Fragment) this.mCreatedMenus.get(i2);
                if (arrayList == null || !arrayList.contains(fragment2)) {
                    fragment2.onDestroyOptionsMenu();
                }
            }
        }
        this.mCreatedMenus = arrayList;
        return z;
    }

    public boolean dispatchPrepareOptionsMenu(Menu menu) {
        if (this.mAdded == null) {
            return false;
        }
        boolean z = false;
        for (int i = 0; i < this.mAdded.size(); i++) {
            Fragment fragment = (Fragment) this.mAdded.get(i);
            if (fragment != null && fragment.performPrepareOptionsMenu(menu)) {
                z = true;
            }
        }
        return z;
    }

    public boolean dispatchOptionsItemSelected(MenuItem menuItem) {
        if (this.mAdded == null) {
            return false;
        }
        for (int i = 0; i < this.mAdded.size(); i++) {
            Fragment fragment = (Fragment) this.mAdded.get(i);
            if (fragment != null && fragment.performOptionsItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public boolean dispatchContextItemSelected(MenuItem menuItem) {
        if (this.mAdded == null) {
            return false;
        }
        for (int i = 0; i < this.mAdded.size(); i++) {
            Fragment fragment = (Fragment) this.mAdded.get(i);
            if (fragment != null && fragment.performContextItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public void dispatchOptionsMenuClosed(Menu menu) {
        if (this.mAdded != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.mAdded.size()) {
                    Fragment fragment = (Fragment) this.mAdded.get(i2);
                    if (fragment != null) {
                        fragment.performOptionsMenuClosed(menu);
                    }
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    public void registerFragmentLifecycleCallbacks(FragmentLifecycleCallbacks fragmentLifecycleCallbacks, boolean z) {
        if (this.mLifecycleCallbacks == null) {
            this.mLifecycleCallbacks = new CopyOnWriteArrayList<>();
        }
        this.mLifecycleCallbacks.add(new Pair(fragmentLifecycleCallbacks, Boolean.valueOf(z)));
    }

    public void unregisterFragmentLifecycleCallbacks(FragmentLifecycleCallbacks fragmentLifecycleCallbacks) {
        if (this.mLifecycleCallbacks != null) {
            synchronized (this.mLifecycleCallbacks) {
                int size = this.mLifecycleCallbacks.size();
                int i = 0;
                while (true) {
                    if (i >= size) {
                        break;
                    } else if (((Pair) this.mLifecycleCallbacks.get(i)).first == fragmentLifecycleCallbacks) {
                        this.mLifecycleCallbacks.remove(i);
                        break;
                    } else {
                        i++;
                    }
                }
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void dispatchOnFragmentPreAttached(Fragment fragment, Context context, boolean z) {
        if (this.mParent != null) {
            FragmentManager fragmentManager = this.mParent.getFragmentManager();
            if (fragmentManager instanceof FragmentManagerImpl) {
                ((FragmentManagerImpl) fragmentManager).dispatchOnFragmentPreAttached(fragment, context, true);
            }
        }
        if (this.mLifecycleCallbacks != null) {
            Iterator it = this.mLifecycleCallbacks.iterator();
            while (it.hasNext()) {
                Pair pair = (Pair) it.next();
                if (!z || ((Boolean) pair.second).booleanValue()) {
                    ((FragmentLifecycleCallbacks) pair.first).onFragmentPreAttached(this, fragment, context);
                }
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void dispatchOnFragmentAttached(Fragment fragment, Context context, boolean z) {
        if (this.mParent != null) {
            FragmentManager fragmentManager = this.mParent.getFragmentManager();
            if (fragmentManager instanceof FragmentManagerImpl) {
                ((FragmentManagerImpl) fragmentManager).dispatchOnFragmentAttached(fragment, context, true);
            }
        }
        if (this.mLifecycleCallbacks != null) {
            Iterator it = this.mLifecycleCallbacks.iterator();
            while (it.hasNext()) {
                Pair pair = (Pair) it.next();
                if (!z || ((Boolean) pair.second).booleanValue()) {
                    ((FragmentLifecycleCallbacks) pair.first).onFragmentAttached(this, fragment, context);
                }
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void dispatchOnFragmentCreated(Fragment fragment, Bundle bundle, boolean z) {
        if (this.mParent != null) {
            FragmentManager fragmentManager = this.mParent.getFragmentManager();
            if (fragmentManager instanceof FragmentManagerImpl) {
                ((FragmentManagerImpl) fragmentManager).dispatchOnFragmentCreated(fragment, bundle, true);
            }
        }
        if (this.mLifecycleCallbacks != null) {
            Iterator it = this.mLifecycleCallbacks.iterator();
            while (it.hasNext()) {
                Pair pair = (Pair) it.next();
                if (!z || ((Boolean) pair.second).booleanValue()) {
                    ((FragmentLifecycleCallbacks) pair.first).onFragmentCreated(this, fragment, bundle);
                }
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void dispatchOnFragmentActivityCreated(Fragment fragment, Bundle bundle, boolean z) {
        if (this.mParent != null) {
            FragmentManager fragmentManager = this.mParent.getFragmentManager();
            if (fragmentManager instanceof FragmentManagerImpl) {
                ((FragmentManagerImpl) fragmentManager).dispatchOnFragmentActivityCreated(fragment, bundle, true);
            }
        }
        if (this.mLifecycleCallbacks != null) {
            Iterator it = this.mLifecycleCallbacks.iterator();
            while (it.hasNext()) {
                Pair pair = (Pair) it.next();
                if (!z || ((Boolean) pair.second).booleanValue()) {
                    ((FragmentLifecycleCallbacks) pair.first).onFragmentActivityCreated(this, fragment, bundle);
                }
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void dispatchOnFragmentViewCreated(Fragment fragment, View view, Bundle bundle, boolean z) {
        if (this.mParent != null) {
            FragmentManager fragmentManager = this.mParent.getFragmentManager();
            if (fragmentManager instanceof FragmentManagerImpl) {
                ((FragmentManagerImpl) fragmentManager).dispatchOnFragmentViewCreated(fragment, view, bundle, true);
            }
        }
        if (this.mLifecycleCallbacks != null) {
            Iterator it = this.mLifecycleCallbacks.iterator();
            while (it.hasNext()) {
                Pair pair = (Pair) it.next();
                if (!z || ((Boolean) pair.second).booleanValue()) {
                    ((FragmentLifecycleCallbacks) pair.first).onFragmentViewCreated(this, fragment, view, bundle);
                }
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void dispatchOnFragmentStarted(Fragment fragment, boolean z) {
        if (this.mParent != null) {
            FragmentManager fragmentManager = this.mParent.getFragmentManager();
            if (fragmentManager instanceof FragmentManagerImpl) {
                ((FragmentManagerImpl) fragmentManager).dispatchOnFragmentStarted(fragment, true);
            }
        }
        if (this.mLifecycleCallbacks != null) {
            Iterator it = this.mLifecycleCallbacks.iterator();
            while (it.hasNext()) {
                Pair pair = (Pair) it.next();
                if (!z || ((Boolean) pair.second).booleanValue()) {
                    ((FragmentLifecycleCallbacks) pair.first).onFragmentStarted(this, fragment);
                }
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void dispatchOnFragmentResumed(Fragment fragment, boolean z) {
        if (this.mParent != null) {
            FragmentManager fragmentManager = this.mParent.getFragmentManager();
            if (fragmentManager instanceof FragmentManagerImpl) {
                ((FragmentManagerImpl) fragmentManager).dispatchOnFragmentResumed(fragment, true);
            }
        }
        if (this.mLifecycleCallbacks != null) {
            Iterator it = this.mLifecycleCallbacks.iterator();
            while (it.hasNext()) {
                Pair pair = (Pair) it.next();
                if (!z || ((Boolean) pair.second).booleanValue()) {
                    ((FragmentLifecycleCallbacks) pair.first).onFragmentResumed(this, fragment);
                }
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void dispatchOnFragmentPaused(Fragment fragment, boolean z) {
        if (this.mParent != null) {
            FragmentManager fragmentManager = this.mParent.getFragmentManager();
            if (fragmentManager instanceof FragmentManagerImpl) {
                ((FragmentManagerImpl) fragmentManager).dispatchOnFragmentPaused(fragment, true);
            }
        }
        if (this.mLifecycleCallbacks != null) {
            Iterator it = this.mLifecycleCallbacks.iterator();
            while (it.hasNext()) {
                Pair pair = (Pair) it.next();
                if (!z || ((Boolean) pair.second).booleanValue()) {
                    ((FragmentLifecycleCallbacks) pair.first).onFragmentPaused(this, fragment);
                }
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void dispatchOnFragmentStopped(Fragment fragment, boolean z) {
        if (this.mParent != null) {
            FragmentManager fragmentManager = this.mParent.getFragmentManager();
            if (fragmentManager instanceof FragmentManagerImpl) {
                ((FragmentManagerImpl) fragmentManager).dispatchOnFragmentStopped(fragment, true);
            }
        }
        if (this.mLifecycleCallbacks != null) {
            Iterator it = this.mLifecycleCallbacks.iterator();
            while (it.hasNext()) {
                Pair pair = (Pair) it.next();
                if (!z || ((Boolean) pair.second).booleanValue()) {
                    ((FragmentLifecycleCallbacks) pair.first).onFragmentStopped(this, fragment);
                }
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void dispatchOnFragmentSaveInstanceState(Fragment fragment, Bundle bundle, boolean z) {
        if (this.mParent != null) {
            FragmentManager fragmentManager = this.mParent.getFragmentManager();
            if (fragmentManager instanceof FragmentManagerImpl) {
                ((FragmentManagerImpl) fragmentManager).dispatchOnFragmentSaveInstanceState(fragment, bundle, true);
            }
        }
        if (this.mLifecycleCallbacks != null) {
            Iterator it = this.mLifecycleCallbacks.iterator();
            while (it.hasNext()) {
                Pair pair = (Pair) it.next();
                if (!z || ((Boolean) pair.second).booleanValue()) {
                    ((FragmentLifecycleCallbacks) pair.first).onFragmentSaveInstanceState(this, fragment, bundle);
                }
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void dispatchOnFragmentViewDestroyed(Fragment fragment, boolean z) {
        if (this.mParent != null) {
            FragmentManager fragmentManager = this.mParent.getFragmentManager();
            if (fragmentManager instanceof FragmentManagerImpl) {
                ((FragmentManagerImpl) fragmentManager).dispatchOnFragmentViewDestroyed(fragment, true);
            }
        }
        if (this.mLifecycleCallbacks != null) {
            Iterator it = this.mLifecycleCallbacks.iterator();
            while (it.hasNext()) {
                Pair pair = (Pair) it.next();
                if (!z || ((Boolean) pair.second).booleanValue()) {
                    ((FragmentLifecycleCallbacks) pair.first).onFragmentViewDestroyed(this, fragment);
                }
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void dispatchOnFragmentDestroyed(Fragment fragment, boolean z) {
        if (this.mParent != null) {
            FragmentManager fragmentManager = this.mParent.getFragmentManager();
            if (fragmentManager instanceof FragmentManagerImpl) {
                ((FragmentManagerImpl) fragmentManager).dispatchOnFragmentDestroyed(fragment, true);
            }
        }
        if (this.mLifecycleCallbacks != null) {
            Iterator it = this.mLifecycleCallbacks.iterator();
            while (it.hasNext()) {
                Pair pair = (Pair) it.next();
                if (!z || ((Boolean) pair.second).booleanValue()) {
                    ((FragmentLifecycleCallbacks) pair.first).onFragmentDestroyed(this, fragment);
                }
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void dispatchOnFragmentDetached(Fragment fragment, boolean z) {
        if (this.mParent != null) {
            FragmentManager fragmentManager = this.mParent.getFragmentManager();
            if (fragmentManager instanceof FragmentManagerImpl) {
                ((FragmentManagerImpl) fragmentManager).dispatchOnFragmentDetached(fragment, true);
            }
        }
        if (this.mLifecycleCallbacks != null) {
            Iterator it = this.mLifecycleCallbacks.iterator();
            while (it.hasNext()) {
                Pair pair = (Pair) it.next();
                if (!z || ((Boolean) pair.second).booleanValue()) {
                    ((FragmentLifecycleCallbacks) pair.first).onFragmentDetached(this, fragment);
                }
            }
        }
    }

    public static int reverseTransit(int i) {
        switch (i) {
            case FragmentTransaction.TRANSIT_FRAGMENT_OPEN /*4097*/:
                return 8194;
            case FragmentTransaction.TRANSIT_FRAGMENT_FADE /*4099*/:
                return FragmentTransaction.TRANSIT_FRAGMENT_FADE;
            case 8194:
                return FragmentTransaction.TRANSIT_FRAGMENT_OPEN;
            default:
                return 0;
        }
    }

    public static int transitToStyleIndex(int i, boolean z) {
        switch (i) {
            case FragmentTransaction.TRANSIT_FRAGMENT_OPEN /*4097*/:
                return z ? 1 : 2;
            case FragmentTransaction.TRANSIT_FRAGMENT_FADE /*4099*/:
                return z ? 5 : 6;
            case 8194:
                return z ? 3 : 4;
            default:
                return -1;
        }
    }

    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        String str2;
        int i;
        Fragment fragment;
        if (!"fragment".equals(str)) {
            return null;
        }
        String attributeValue = attributeSet.getAttributeValue(null, "class");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, FragmentTag.Fragment);
        if (attributeValue == null) {
            str2 = obtainStyledAttributes.getString(0);
        } else {
            str2 = attributeValue;
        }
        int resourceId = obtainStyledAttributes.getResourceId(1, -1);
        String string = obtainStyledAttributes.getString(2);
        obtainStyledAttributes.recycle();
        if (!Fragment.isSupportFragmentClass(this.mHost.getContext(), str2)) {
            return null;
        }
        if (view != null) {
            i = view.getId();
        } else {
            i = 0;
        }
        if (i == -1 && resourceId == -1 && string == null) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + str2);
        }
        Fragment fragment2 = resourceId != -1 ? findFragmentById(resourceId) : null;
        if (fragment2 == null && string != null) {
            fragment2 = findFragmentByTag(string);
        }
        if (fragment2 == null && i != -1) {
            fragment2 = findFragmentById(i);
        }
        if (DEBUG) {
            Log.v(TAG, "onCreateView: id=0x" + Integer.toHexString(resourceId) + " fname=" + str2 + " existing=" + fragment2);
        }
        if (fragment2 == null) {
            Fragment instantiate = Fragment.instantiate(context, str2);
            instantiate.mFromLayout = true;
            instantiate.mFragmentId = resourceId != 0 ? resourceId : i;
            instantiate.mContainerId = i;
            instantiate.mTag = string;
            instantiate.mInLayout = true;
            instantiate.mFragmentManager = this;
            instantiate.mHost = this.mHost;
            instantiate.onInflate(this.mHost.getContext(), attributeSet, instantiate.mSavedFragmentState);
            addFragment(instantiate, true);
            fragment = instantiate;
        } else if (fragment2.mInLayout) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(i) + " with another fragment for " + str2);
        } else {
            fragment2.mInLayout = true;
            fragment2.mHost = this.mHost;
            if (!fragment2.mRetaining) {
                fragment2.onInflate(this.mHost.getContext(), attributeSet, fragment2.mSavedFragmentState);
            }
            fragment = fragment2;
        }
        if (this.mCurState >= 1 || !fragment.mFromLayout) {
            moveToState(fragment);
        } else {
            moveToState(fragment, 1, 0, 0, false);
        }
        if (fragment.mView == null) {
            throw new IllegalStateException("Fragment " + str2 + " did not create a view.");
        }
        if (resourceId != 0) {
            fragment.mView.setId(resourceId);
        }
        if (fragment.mView.getTag() == null) {
            fragment.mView.setTag(string);
        }
        return fragment.mView;
    }

    /* access modifiers changed from: 0000 */
    public LayoutInflaterFactory getLayoutInflaterFactory() {
        return this;
    }
}
