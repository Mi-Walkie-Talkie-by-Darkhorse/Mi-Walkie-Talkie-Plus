package android.support.design.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.annotation.ColorInt;
import android.support.annotation.DrawableRes;
import android.support.annotation.LayoutRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo.Scope;
import android.support.annotation.StringRes;
import android.support.design.R;
import android.support.v4.util.Pools.Pool;
import android.support.v4.util.Pools.SimplePool;
import android.support.v4.util.Pools.SynchronizedPool;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.PointerIconCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.DecorView;
import android.support.v4.view.ViewPager.OnAdapterChangeListener;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.support.v4.widget.TextViewCompat;
import android.support.v7.content.res.AppCompatResources;
import android.text.Layout;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import android.widget.Toast;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

@DecorView
public class TabLayout extends HorizontalScrollView {
    private static final int ANIMATION_DURATION = 300;
    static final int DEFAULT_GAP_TEXT_ICON = 8;
    private static final int DEFAULT_HEIGHT = 48;
    private static final int DEFAULT_HEIGHT_WITH_TEXT_ICON = 72;
    static final int FIXED_WRAP_GUTTER_MIN = 16;
    public static final int GRAVITY_CENTER = 1;
    public static final int GRAVITY_FILL = 0;
    private static final int INVALID_WIDTH = -1;
    public static final int MODE_FIXED = 1;
    public static final int MODE_SCROLLABLE = 0;
    static final int MOTION_NON_ADJACENT_OFFSET = 24;
    private static final int TAB_MIN_WIDTH_MARGIN = 56;
    private static final Pool<Tab> sTabPool = new SynchronizedPool(16);
    private AdapterChangeListener mAdapterChangeListener;
    private int mContentInsetStart;
    private OnTabSelectedListener mCurrentVpSelectedListener;
    int mMode;
    private TabLayoutOnPageChangeListener mPageChangeListener;
    private PagerAdapter mPagerAdapter;
    private DataSetObserver mPagerAdapterObserver;
    private final int mRequestedTabMaxWidth;
    private final int mRequestedTabMinWidth;
    private ValueAnimatorCompat mScrollAnimator;
    private final int mScrollableTabMinWidth;
    private OnTabSelectedListener mSelectedListener;
    private final ArrayList<OnTabSelectedListener> mSelectedListeners;
    private Tab mSelectedTab;
    private boolean mSetupViewPagerImplicitly;
    final int mTabBackgroundResId;
    int mTabGravity;
    int mTabMaxWidth;
    int mTabPaddingBottom;
    int mTabPaddingEnd;
    int mTabPaddingStart;
    int mTabPaddingTop;
    private final SlidingTabStrip mTabStrip;
    int mTabTextAppearance;
    ColorStateList mTabTextColors;
    float mTabTextMultiLineSize;
    float mTabTextSize;
    private final Pool<TabView> mTabViewPool;
    private final ArrayList<Tab> mTabs;
    ViewPager mViewPager;

    private class AdapterChangeListener implements OnAdapterChangeListener {
        private boolean mAutoRefresh;

        AdapterChangeListener() {
        }

        public void onAdapterChanged(@NonNull ViewPager viewPager, @Nullable PagerAdapter pagerAdapter, @Nullable PagerAdapter pagerAdapter2) {
            if (TabLayout.this.mViewPager == viewPager) {
                TabLayout.this.setPagerAdapter(pagerAdapter2, this.mAutoRefresh);
            }
        }

        /* access modifiers changed from: 0000 */
        public void setAutoRefresh(boolean z) {
            this.mAutoRefresh = z;
        }
    }

    @RestrictTo({Scope.LIBRARY_GROUP})
    @Retention(RetentionPolicy.SOURCE)
    public @interface Mode {
    }

    public interface OnTabSelectedListener {
        void onTabReselected(Tab tab);

        void onTabSelected(Tab tab);

        void onTabUnselected(Tab tab);
    }

    private class PagerAdapterObserver extends DataSetObserver {
        PagerAdapterObserver() {
        }

        public void onChanged() {
            TabLayout.this.populateFromPagerAdapter();
        }

        public void onInvalidated() {
            TabLayout.this.populateFromPagerAdapter();
        }
    }

    private class SlidingTabStrip extends LinearLayout {
        private ValueAnimatorCompat mIndicatorAnimator;
        private int mIndicatorLeft = -1;
        private int mIndicatorRight = -1;
        private int mSelectedIndicatorHeight;
        private final Paint mSelectedIndicatorPaint;
        int mSelectedPosition = -1;
        float mSelectionOffset;

        SlidingTabStrip(Context context) {
            super(context);
            setWillNotDraw(false);
            this.mSelectedIndicatorPaint = new Paint();
        }

        /* access modifiers changed from: 0000 */
        public void setSelectedIndicatorColor(int i) {
            if (this.mSelectedIndicatorPaint.getColor() != i) {
                this.mSelectedIndicatorPaint.setColor(i);
                ViewCompat.postInvalidateOnAnimation(this);
            }
        }

        /* access modifiers changed from: 0000 */
        public void setSelectedIndicatorHeight(int i) {
            if (this.mSelectedIndicatorHeight != i) {
                this.mSelectedIndicatorHeight = i;
                ViewCompat.postInvalidateOnAnimation(this);
            }
        }

        /* access modifiers changed from: 0000 */
        public boolean childrenNeedLayout() {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                if (getChildAt(i).getWidth() <= 0) {
                    return true;
                }
            }
            return false;
        }

        /* access modifiers changed from: 0000 */
        public void setIndicatorPositionFromTabPosition(int i, float f) {
            if (this.mIndicatorAnimator != null && this.mIndicatorAnimator.isRunning()) {
                this.mIndicatorAnimator.cancel();
            }
            this.mSelectedPosition = i;
            this.mSelectionOffset = f;
            updateIndicatorPosition();
        }

        /* access modifiers changed from: 0000 */
        public float getIndicatorPosition() {
            return ((float) this.mSelectedPosition) + this.mSelectionOffset;
        }

        /* access modifiers changed from: protected */
        public void onMeasure(int i, int i2) {
            boolean z;
            int i3;
            boolean z2 = false;
            super.onMeasure(i, i2);
            if (MeasureSpec.getMode(i) == 1073741824 && TabLayout.this.mMode == 1 && TabLayout.this.mTabGravity == 1) {
                int childCount = getChildCount();
                int i4 = 0;
                int i5 = 0;
                while (i4 < childCount) {
                    View childAt = getChildAt(i4);
                    if (childAt.getVisibility() == 0) {
                        i3 = Math.max(i5, childAt.getMeasuredWidth());
                    } else {
                        i3 = i5;
                    }
                    i4++;
                    i5 = i3;
                }
                if (i5 > 0) {
                    if (i5 * childCount <= getMeasuredWidth() - (TabLayout.this.dpToPx(16) * 2)) {
                        int i6 = 0;
                        while (i6 < childCount) {
                            LayoutParams layoutParams = (LayoutParams) getChildAt(i6).getLayoutParams();
                            if (layoutParams.width == i5 && layoutParams.weight == 0.0f) {
                                z = z2;
                            } else {
                                layoutParams.width = i5;
                                layoutParams.weight = 0.0f;
                                z = true;
                            }
                            i6++;
                            z2 = z;
                        }
                    } else {
                        TabLayout.this.mTabGravity = 0;
                        TabLayout.this.updateTabViews(false);
                        z2 = true;
                    }
                    if (z2) {
                        super.onMeasure(i, i2);
                    }
                }
            }
        }

        /* access modifiers changed from: protected */
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            if (this.mIndicatorAnimator == null || !this.mIndicatorAnimator.isRunning()) {
                updateIndicatorPosition();
                return;
            }
            this.mIndicatorAnimator.cancel();
            animateIndicatorToPosition(this.mSelectedPosition, Math.round(((float) this.mIndicatorAnimator.getDuration()) * (1.0f - this.mIndicatorAnimator.getAnimatedFraction())));
        }

        private void updateIndicatorPosition() {
            int i;
            int i2;
            View childAt = getChildAt(this.mSelectedPosition);
            if (childAt == null || childAt.getWidth() <= 0) {
                i = -1;
                i2 = -1;
            } else {
                i2 = childAt.getLeft();
                i = childAt.getRight();
                if (this.mSelectionOffset > 0.0f && this.mSelectedPosition < getChildCount() - 1) {
                    View childAt2 = getChildAt(this.mSelectedPosition + 1);
                    i2 = (int) ((((float) i2) * (1.0f - this.mSelectionOffset)) + (this.mSelectionOffset * ((float) childAt2.getLeft())));
                    i = (int) ((((float) i) * (1.0f - this.mSelectionOffset)) + (((float) childAt2.getRight()) * this.mSelectionOffset));
                }
            }
            setIndicatorPosition(i2, i);
        }

        /* access modifiers changed from: 0000 */
        public void setIndicatorPosition(int i, int i2) {
            if (i != this.mIndicatorLeft || i2 != this.mIndicatorRight) {
                this.mIndicatorLeft = i;
                this.mIndicatorRight = i2;
                ViewCompat.postInvalidateOnAnimation(this);
            }
        }

        /* access modifiers changed from: 0000 */
        public void animateIndicatorToPosition(final int i, int i2) {
            final int i3;
            final int i4;
            if (this.mIndicatorAnimator != null && this.mIndicatorAnimator.isRunning()) {
                this.mIndicatorAnimator.cancel();
            }
            boolean z = ViewCompat.getLayoutDirection(this) == 1;
            View childAt = getChildAt(i);
            if (childAt == null) {
                updateIndicatorPosition();
                return;
            }
            final int left = childAt.getLeft();
            final int right = childAt.getRight();
            if (Math.abs(i - this.mSelectedPosition) <= 1) {
                i4 = this.mIndicatorLeft;
                i3 = this.mIndicatorRight;
            } else {
                int dpToPx = TabLayout.this.dpToPx(24);
                if (i < this.mSelectedPosition) {
                    if (z) {
                        i3 = left - dpToPx;
                        i4 = i3;
                    } else {
                        i3 = right + dpToPx;
                        i4 = i3;
                    }
                } else if (z) {
                    i3 = right + dpToPx;
                    i4 = i3;
                } else {
                    i3 = left - dpToPx;
                    i4 = i3;
                }
            }
            if (i4 != left || i3 != right) {
                ValueAnimatorCompat createAnimator = ViewUtils.createAnimator();
                this.mIndicatorAnimator = createAnimator;
                createAnimator.setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
                createAnimator.setDuration((long) i2);
                createAnimator.setFloatValues(0.0f, 1.0f);
                createAnimator.addUpdateListener(new AnimatorUpdateListener() {
                    public void onAnimationUpdate(ValueAnimatorCompat valueAnimatorCompat) {
                        float animatedFraction = valueAnimatorCompat.getAnimatedFraction();
                        SlidingTabStrip.this.setIndicatorPosition(AnimationUtils.lerp(i4, left, animatedFraction), AnimationUtils.lerp(i3, right, animatedFraction));
                    }
                });
                createAnimator.addListener(new AnimatorListenerAdapter() {
                    public void onAnimationEnd(ValueAnimatorCompat valueAnimatorCompat) {
                        SlidingTabStrip.this.mSelectedPosition = i;
                        SlidingTabStrip.this.mSelectionOffset = 0.0f;
                    }
                });
                createAnimator.start();
            }
        }

        public void draw(Canvas canvas) {
            super.draw(canvas);
            if (this.mIndicatorLeft >= 0 && this.mIndicatorRight > this.mIndicatorLeft) {
                canvas.drawRect((float) this.mIndicatorLeft, (float) (getHeight() - this.mSelectedIndicatorHeight), (float) this.mIndicatorRight, (float) getHeight(), this.mSelectedIndicatorPaint);
            }
        }
    }

    public static final class Tab {
        public static final int INVALID_POSITION = -1;
        private CharSequence mContentDesc;
        private View mCustomView;
        private Drawable mIcon;
        TabLayout mParent;
        private int mPosition = -1;
        private Object mTag;
        private CharSequence mText;
        TabView mView;

        Tab() {
        }

        @Nullable
        public Object getTag() {
            return this.mTag;
        }

        @NonNull
        public Tab setTag(@Nullable Object obj) {
            this.mTag = obj;
            return this;
        }

        @Nullable
        public View getCustomView() {
            return this.mCustomView;
        }

        @NonNull
        public Tab setCustomView(@Nullable View view) {
            this.mCustomView = view;
            updateView();
            return this;
        }

        @NonNull
        public Tab setCustomView(@LayoutRes int i) {
            return setCustomView(LayoutInflater.from(this.mView.getContext()).inflate(i, this.mView, false));
        }

        @Nullable
        public Drawable getIcon() {
            return this.mIcon;
        }

        public int getPosition() {
            return this.mPosition;
        }

        /* access modifiers changed from: 0000 */
        public void setPosition(int i) {
            this.mPosition = i;
        }

        @Nullable
        public CharSequence getText() {
            return this.mText;
        }

        @NonNull
        public Tab setIcon(@Nullable Drawable drawable) {
            this.mIcon = drawable;
            updateView();
            return this;
        }

        @NonNull
        public Tab setIcon(@DrawableRes int i) {
            if (this.mParent != null) {
                return setIcon(AppCompatResources.getDrawable(this.mParent.getContext(), i));
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        @NonNull
        public Tab setText(@Nullable CharSequence charSequence) {
            this.mText = charSequence;
            updateView();
            return this;
        }

        @NonNull
        public Tab setText(@StringRes int i) {
            if (this.mParent != null) {
                return setText(this.mParent.getResources().getText(i));
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        public void select() {
            if (this.mParent == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            this.mParent.selectTab(this);
        }

        public boolean isSelected() {
            if (this.mParent != null) {
                return this.mParent.getSelectedTabPosition() == this.mPosition;
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        @NonNull
        public Tab setContentDescription(@StringRes int i) {
            if (this.mParent != null) {
                return setContentDescription(this.mParent.getResources().getText(i));
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        @NonNull
        public Tab setContentDescription(@Nullable CharSequence charSequence) {
            this.mContentDesc = charSequence;
            updateView();
            return this;
        }

        @Nullable
        public CharSequence getContentDescription() {
            return this.mContentDesc;
        }

        /* access modifiers changed from: 0000 */
        public void updateView() {
            if (this.mView != null) {
                this.mView.update();
            }
        }

        /* access modifiers changed from: 0000 */
        public void reset() {
            this.mParent = null;
            this.mView = null;
            this.mTag = null;
            this.mIcon = null;
            this.mText = null;
            this.mContentDesc = null;
            this.mPosition = -1;
            this.mCustomView = null;
        }
    }

    @RestrictTo({Scope.LIBRARY_GROUP})
    @Retention(RetentionPolicy.SOURCE)
    public @interface TabGravity {
    }

    public static class TabLayoutOnPageChangeListener implements OnPageChangeListener {
        private int mPreviousScrollState;
        private int mScrollState;
        private final WeakReference<TabLayout> mTabLayoutRef;

        public TabLayoutOnPageChangeListener(TabLayout tabLayout) {
            this.mTabLayoutRef = new WeakReference<>(tabLayout);
        }

        public void onPageScrollStateChanged(int i) {
            this.mPreviousScrollState = this.mScrollState;
            this.mScrollState = i;
        }

        public void onPageScrolled(int i, float f, int i2) {
            boolean z = false;
            TabLayout tabLayout = (TabLayout) this.mTabLayoutRef.get();
            if (tabLayout != null) {
                boolean z2 = this.mScrollState != 2 || this.mPreviousScrollState == 1;
                if (!(this.mScrollState == 2 && this.mPreviousScrollState == 0)) {
                    z = true;
                }
                tabLayout.setScrollPosition(i, f, z2, z);
            }
        }

        public void onPageSelected(int i) {
            TabLayout tabLayout = (TabLayout) this.mTabLayoutRef.get();
            if (tabLayout != null && tabLayout.getSelectedTabPosition() != i && i < tabLayout.getTabCount()) {
                tabLayout.selectTab(tabLayout.getTabAt(i), this.mScrollState == 0 || (this.mScrollState == 2 && this.mPreviousScrollState == 0));
            }
        }

        /* access modifiers changed from: 0000 */
        public void reset() {
            this.mScrollState = 0;
            this.mPreviousScrollState = 0;
        }
    }

    class TabView extends LinearLayout implements OnLongClickListener {
        private ImageView mCustomIconView;
        private TextView mCustomTextView;
        private View mCustomView;
        private int mDefaultMaxLines = 2;
        private ImageView mIconView;
        private Tab mTab;
        private TextView mTextView;

        public TabView(Context context) {
            super(context);
            if (TabLayout.this.mTabBackgroundResId != 0) {
                ViewCompat.setBackground(this, AppCompatResources.getDrawable(context, TabLayout.this.mTabBackgroundResId));
            }
            ViewCompat.setPaddingRelative(this, TabLayout.this.mTabPaddingStart, TabLayout.this.mTabPaddingTop, TabLayout.this.mTabPaddingEnd, TabLayout.this.mTabPaddingBottom);
            setGravity(17);
            setOrientation(1);
            setClickable(true);
            ViewCompat.setPointerIcon(this, PointerIconCompat.getSystemIcon(getContext(), 1002));
        }

        public boolean performClick() {
            boolean performClick = super.performClick();
            if (this.mTab == null) {
                return performClick;
            }
            if (!performClick) {
                playSoundEffect(0);
            }
            this.mTab.select();
            return true;
        }

        public void setSelected(boolean z) {
            boolean z2 = isSelected() != z;
            super.setSelected(z);
            if (z2 && z && VERSION.SDK_INT < 16) {
                sendAccessibilityEvent(4);
            }
            if (this.mTextView != null) {
                this.mTextView.setSelected(z);
            }
            if (this.mIconView != null) {
                this.mIconView.setSelected(z);
            }
            if (this.mCustomView != null) {
                this.mCustomView.setSelected(z);
            }
        }

        @TargetApi(14)
        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setClassName(android.support.v7.app.ActionBar.Tab.class.getName());
        }

        @TargetApi(14)
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName(android.support.v7.app.ActionBar.Tab.class.getName());
        }

        public void onMeasure(int i, int i2) {
            boolean z = true;
            int size = MeasureSpec.getSize(i);
            int mode = MeasureSpec.getMode(i);
            int tabMaxWidth = TabLayout.this.getTabMaxWidth();
            if (tabMaxWidth > 0 && (mode == 0 || size > tabMaxWidth)) {
                i = MeasureSpec.makeMeasureSpec(TabLayout.this.mTabMaxWidth, Integer.MIN_VALUE);
            }
            super.onMeasure(i, i2);
            if (this.mTextView != null) {
                getResources();
                float f = TabLayout.this.mTabTextSize;
                int i3 = this.mDefaultMaxLines;
                if (this.mIconView != null && this.mIconView.getVisibility() == 0) {
                    i3 = 1;
                } else if (this.mTextView != null && this.mTextView.getLineCount() > 1) {
                    f = TabLayout.this.mTabTextMultiLineSize;
                }
                float textSize = this.mTextView.getTextSize();
                int lineCount = this.mTextView.getLineCount();
                int maxLines = TextViewCompat.getMaxLines(this.mTextView);
                if (f != textSize || (maxLines >= 0 && i3 != maxLines)) {
                    if (TabLayout.this.mMode == 1 && f > textSize && lineCount == 1) {
                        Layout layout = this.mTextView.getLayout();
                        if (layout == null || approximateLineWidth(layout, 0, f) > ((float) ((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight()))) {
                            z = false;
                        }
                    }
                    if (z) {
                        this.mTextView.setTextSize(0, f);
                        this.mTextView.setMaxLines(i3);
                        super.onMeasure(i, i2);
                    }
                }
            }
        }

        /* access modifiers changed from: 0000 */
        public void setTab(@Nullable Tab tab) {
            if (tab != this.mTab) {
                this.mTab = tab;
                update();
            }
        }

        /* access modifiers changed from: 0000 */
        public void reset() {
            setTab(null);
            setSelected(false);
        }

        /* access modifiers changed from: 0000 */
        public final void update() {
            boolean z;
            Tab tab = this.mTab;
            View view = tab != null ? tab.getCustomView() : null;
            if (view != null) {
                ViewParent parent = view.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(view);
                    }
                    addView(view);
                }
                this.mCustomView = view;
                if (this.mTextView != null) {
                    this.mTextView.setVisibility(8);
                }
                if (this.mIconView != null) {
                    this.mIconView.setVisibility(8);
                    this.mIconView.setImageDrawable(null);
                }
                this.mCustomTextView = (TextView) view.findViewById(16908308);
                if (this.mCustomTextView != null) {
                    this.mDefaultMaxLines = TextViewCompat.getMaxLines(this.mCustomTextView);
                }
                this.mCustomIconView = (ImageView) view.findViewById(16908294);
            } else {
                if (this.mCustomView != null) {
                    removeView(this.mCustomView);
                    this.mCustomView = null;
                }
                this.mCustomTextView = null;
                this.mCustomIconView = null;
            }
            if (this.mCustomView == null) {
                if (this.mIconView == null) {
                    ImageView imageView = (ImageView) LayoutInflater.from(getContext()).inflate(R.layout.design_layout_tab_icon, this, false);
                    addView(imageView, 0);
                    this.mIconView = imageView;
                }
                if (this.mTextView == null) {
                    TextView textView = (TextView) LayoutInflater.from(getContext()).inflate(R.layout.design_layout_tab_text, this, false);
                    addView(textView);
                    this.mTextView = textView;
                    this.mDefaultMaxLines = TextViewCompat.getMaxLines(this.mTextView);
                }
                TextViewCompat.setTextAppearance(this.mTextView, TabLayout.this.mTabTextAppearance);
                if (TabLayout.this.mTabTextColors != null) {
                    this.mTextView.setTextColor(TabLayout.this.mTabTextColors);
                }
                updateTextAndIcon(this.mTextView, this.mIconView);
            } else if (!(this.mCustomTextView == null && this.mCustomIconView == null)) {
                updateTextAndIcon(this.mCustomTextView, this.mCustomIconView);
            }
            if (tab == null || !tab.isSelected()) {
                z = false;
            } else {
                z = true;
            }
            setSelected(z);
        }

        private void updateTextAndIcon(@Nullable TextView textView, @Nullable ImageView imageView) {
            CharSequence charSequence;
            CharSequence charSequence2;
            boolean z;
            int i;
            Drawable drawable = this.mTab != null ? this.mTab.getIcon() : null;
            if (this.mTab != null) {
                charSequence = this.mTab.getText();
            } else {
                charSequence = null;
            }
            if (this.mTab != null) {
                charSequence2 = this.mTab.getContentDescription();
            } else {
                charSequence2 = null;
            }
            if (imageView != null) {
                if (drawable != null) {
                    imageView.setImageDrawable(drawable);
                    imageView.setVisibility(0);
                    setVisibility(0);
                } else {
                    imageView.setVisibility(8);
                    imageView.setImageDrawable(null);
                }
                imageView.setContentDescription(charSequence2);
            }
            if (!TextUtils.isEmpty(charSequence)) {
                z = true;
            } else {
                z = false;
            }
            if (textView != null) {
                if (z) {
                    textView.setText(charSequence);
                    textView.setVisibility(0);
                    setVisibility(0);
                } else {
                    textView.setVisibility(8);
                    textView.setText(null);
                }
                textView.setContentDescription(charSequence2);
            }
            if (imageView != null) {
                MarginLayoutParams marginLayoutParams = (MarginLayoutParams) imageView.getLayoutParams();
                if (!z || imageView.getVisibility() != 0) {
                    i = 0;
                } else {
                    i = TabLayout.this.dpToPx(8);
                }
                if (i != marginLayoutParams.bottomMargin) {
                    marginLayoutParams.bottomMargin = i;
                    imageView.requestLayout();
                }
            }
            if (z || TextUtils.isEmpty(charSequence2)) {
                setOnLongClickListener(null);
                setLongClickable(false);
                return;
            }
            setOnLongClickListener(this);
        }

        public boolean onLongClick(View view) {
            int[] iArr = new int[2];
            Rect rect = new Rect();
            getLocationOnScreen(iArr);
            getWindowVisibleDisplayFrame(rect);
            Context context = getContext();
            int width = getWidth();
            int height = getHeight();
            int i = iArr[1] + (height / 2);
            int i2 = (width / 2) + iArr[0];
            if (ViewCompat.getLayoutDirection(view) == 0) {
                i2 = context.getResources().getDisplayMetrics().widthPixels - i2;
            }
            Toast makeText = Toast.makeText(context, this.mTab.getContentDescription(), 0);
            if (i < rect.height()) {
                makeText.setGravity(8388661, i2, (iArr[1] + height) - rect.top);
            } else {
                makeText.setGravity(81, 0, height);
            }
            makeText.show();
            return true;
        }

        public Tab getTab() {
            return this.mTab;
        }

        private float approximateLineWidth(Layout layout, int i, float f) {
            return layout.getLineWidth(i) * (f / layout.getPaint().getTextSize());
        }
    }

    public static class ViewPagerOnTabSelectedListener implements OnTabSelectedListener {
        private final ViewPager mViewPager;

        public ViewPagerOnTabSelectedListener(ViewPager viewPager) {
            this.mViewPager = viewPager;
        }

        public void onTabSelected(Tab tab) {
            this.mViewPager.setCurrentItem(tab.getPosition());
        }

        public void onTabUnselected(Tab tab) {
        }

        public void onTabReselected(Tab tab) {
        }
    }

    public TabLayout(Context context) {
        this(context, null);
    }

    public TabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX INFO: finally extract failed */
    public TabLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mTabs = new ArrayList<>();
        this.mTabMaxWidth = Integer.MAX_VALUE;
        this.mSelectedListeners = new ArrayList<>();
        this.mTabViewPool = new SimplePool(12);
        ThemeUtils.checkAppCompatTheme(context);
        setHorizontalScrollBarEnabled(false);
        this.mTabStrip = new SlidingTabStrip(context);
        super.addView(this.mTabStrip, 0, new FrameLayout.LayoutParams(-2, -1));
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.TabLayout, i, R.style.Widget_Design_TabLayout);
        this.mTabStrip.setSelectedIndicatorHeight(obtainStyledAttributes.getDimensionPixelSize(R.styleable.TabLayout_tabIndicatorHeight, 0));
        this.mTabStrip.setSelectedIndicatorColor(obtainStyledAttributes.getColor(R.styleable.TabLayout_tabIndicatorColor, 0));
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(R.styleable.TabLayout_tabPadding, 0);
        this.mTabPaddingBottom = dimensionPixelSize;
        this.mTabPaddingEnd = dimensionPixelSize;
        this.mTabPaddingTop = dimensionPixelSize;
        this.mTabPaddingStart = dimensionPixelSize;
        this.mTabPaddingStart = obtainStyledAttributes.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingStart, this.mTabPaddingStart);
        this.mTabPaddingTop = obtainStyledAttributes.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingTop, this.mTabPaddingTop);
        this.mTabPaddingEnd = obtainStyledAttributes.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingEnd, this.mTabPaddingEnd);
        this.mTabPaddingBottom = obtainStyledAttributes.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingBottom, this.mTabPaddingBottom);
        this.mTabTextAppearance = obtainStyledAttributes.getResourceId(R.styleable.TabLayout_tabTextAppearance, R.style.TextAppearance_Design_Tab);
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(this.mTabTextAppearance, android.support.v7.appcompat.R.styleable.TextAppearance);
        try {
            this.mTabTextSize = (float) obtainStyledAttributes2.getDimensionPixelSize(android.support.v7.appcompat.R.styleable.TextAppearance_android_textSize, 0);
            this.mTabTextColors = obtainStyledAttributes2.getColorStateList(android.support.v7.appcompat.R.styleable.TextAppearance_android_textColor);
            obtainStyledAttributes2.recycle();
            if (obtainStyledAttributes.hasValue(R.styleable.TabLayout_tabTextColor)) {
                this.mTabTextColors = obtainStyledAttributes.getColorStateList(R.styleable.TabLayout_tabTextColor);
            }
            if (obtainStyledAttributes.hasValue(R.styleable.TabLayout_tabSelectedTextColor)) {
                this.mTabTextColors = createColorStateList(this.mTabTextColors.getDefaultColor(), obtainStyledAttributes.getColor(R.styleable.TabLayout_tabSelectedTextColor, 0));
            }
            this.mRequestedTabMinWidth = obtainStyledAttributes.getDimensionPixelSize(R.styleable.TabLayout_tabMinWidth, -1);
            this.mRequestedTabMaxWidth = obtainStyledAttributes.getDimensionPixelSize(R.styleable.TabLayout_tabMaxWidth, -1);
            this.mTabBackgroundResId = obtainStyledAttributes.getResourceId(R.styleable.TabLayout_tabBackground, 0);
            this.mContentInsetStart = obtainStyledAttributes.getDimensionPixelSize(R.styleable.TabLayout_tabContentStart, 0);
            this.mMode = obtainStyledAttributes.getInt(R.styleable.TabLayout_tabMode, 1);
            this.mTabGravity = obtainStyledAttributes.getInt(R.styleable.TabLayout_tabGravity, 0);
            obtainStyledAttributes.recycle();
            Resources resources = getResources();
            this.mTabTextMultiLineSize = (float) resources.getDimensionPixelSize(R.dimen.design_tab_text_size_2line);
            this.mScrollableTabMinWidth = resources.getDimensionPixelSize(R.dimen.design_tab_scrollable_min_width);
            applyModeAndGravity();
        } catch (Throwable th) {
            obtainStyledAttributes2.recycle();
            throw th;
        }
    }

    public void setSelectedTabIndicatorColor(@ColorInt int i) {
        this.mTabStrip.setSelectedIndicatorColor(i);
    }

    public void setSelectedTabIndicatorHeight(int i) {
        this.mTabStrip.setSelectedIndicatorHeight(i);
    }

    public void setScrollPosition(int i, float f, boolean z) {
        setScrollPosition(i, f, z, true);
    }

    /* access modifiers changed from: 0000 */
    public void setScrollPosition(int i, float f, boolean z, boolean z2) {
        int round = Math.round(((float) i) + f);
        if (round >= 0 && round < this.mTabStrip.getChildCount()) {
            if (z2) {
                this.mTabStrip.setIndicatorPositionFromTabPosition(i, f);
            }
            if (this.mScrollAnimator != null && this.mScrollAnimator.isRunning()) {
                this.mScrollAnimator.cancel();
            }
            scrollTo(calculateScrollXForTab(i, f), 0);
            if (z) {
                setSelectedTabView(round);
            }
        }
    }

    private float getScrollPosition() {
        return this.mTabStrip.getIndicatorPosition();
    }

    public void addTab(@NonNull Tab tab) {
        addTab(tab, this.mTabs.isEmpty());
    }

    public void addTab(@NonNull Tab tab, int i) {
        addTab(tab, i, this.mTabs.isEmpty());
    }

    public void addTab(@NonNull Tab tab, boolean z) {
        addTab(tab, this.mTabs.size(), z);
    }

    public void addTab(@NonNull Tab tab, int i, boolean z) {
        if (tab.mParent != this) {
            throw new IllegalArgumentException("Tab belongs to a different TabLayout.");
        }
        configureTab(tab, i);
        addTabView(tab);
        if (z) {
            tab.select();
        }
    }

    private void addTabFromItemView(@NonNull TabItem tabItem) {
        Tab newTab = newTab();
        if (tabItem.mText != null) {
            newTab.setText(tabItem.mText);
        }
        if (tabItem.mIcon != null) {
            newTab.setIcon(tabItem.mIcon);
        }
        if (tabItem.mCustomLayout != 0) {
            newTab.setCustomView(tabItem.mCustomLayout);
        }
        if (!TextUtils.isEmpty(tabItem.getContentDescription())) {
            newTab.setContentDescription(tabItem.getContentDescription());
        }
        addTab(newTab);
    }

    @Deprecated
    public void setOnTabSelectedListener(@Nullable OnTabSelectedListener onTabSelectedListener) {
        if (this.mSelectedListener != null) {
            removeOnTabSelectedListener(this.mSelectedListener);
        }
        this.mSelectedListener = onTabSelectedListener;
        if (onTabSelectedListener != null) {
            addOnTabSelectedListener(onTabSelectedListener);
        }
    }

    public void addOnTabSelectedListener(@NonNull OnTabSelectedListener onTabSelectedListener) {
        if (!this.mSelectedListeners.contains(onTabSelectedListener)) {
            this.mSelectedListeners.add(onTabSelectedListener);
        }
    }

    public void removeOnTabSelectedListener(@NonNull OnTabSelectedListener onTabSelectedListener) {
        this.mSelectedListeners.remove(onTabSelectedListener);
    }

    public void clearOnTabSelectedListeners() {
        this.mSelectedListeners.clear();
    }

    @NonNull
    public Tab newTab() {
        Tab tab = (Tab) sTabPool.acquire();
        if (tab == null) {
            tab = new Tab();
        }
        tab.mParent = this;
        tab.mView = createTabView(tab);
        return tab;
    }

    public int getTabCount() {
        return this.mTabs.size();
    }

    @Nullable
    public Tab getTabAt(int i) {
        if (i < 0 || i >= getTabCount()) {
            return null;
        }
        return (Tab) this.mTabs.get(i);
    }

    public int getSelectedTabPosition() {
        if (this.mSelectedTab != null) {
            return this.mSelectedTab.getPosition();
        }
        return -1;
    }

    public void removeTab(Tab tab) {
        if (tab.mParent != this) {
            throw new IllegalArgumentException("Tab does not belong to this TabLayout.");
        }
        removeTabAt(tab.getPosition());
    }

    public void removeTabAt(int i) {
        int i2 = this.mSelectedTab != null ? this.mSelectedTab.getPosition() : 0;
        removeTabViewAt(i);
        Tab tab = (Tab) this.mTabs.remove(i);
        if (tab != null) {
            tab.reset();
            sTabPool.release(tab);
        }
        int size = this.mTabs.size();
        for (int i3 = i; i3 < size; i3++) {
            ((Tab) this.mTabs.get(i3)).setPosition(i3);
        }
        if (i2 == i) {
            selectTab(this.mTabs.isEmpty() ? null : (Tab) this.mTabs.get(Math.max(0, i - 1)));
        }
    }

    public void removeAllTabs() {
        for (int childCount = this.mTabStrip.getChildCount() - 1; childCount >= 0; childCount--) {
            removeTabViewAt(childCount);
        }
        Iterator it = this.mTabs.iterator();
        while (it.hasNext()) {
            Tab tab = (Tab) it.next();
            it.remove();
            tab.reset();
            sTabPool.release(tab);
        }
        this.mSelectedTab = null;
    }

    public void setTabMode(int i) {
        if (i != this.mMode) {
            this.mMode = i;
            applyModeAndGravity();
        }
    }

    public int getTabMode() {
        return this.mMode;
    }

    public void setTabGravity(int i) {
        if (this.mTabGravity != i) {
            this.mTabGravity = i;
            applyModeAndGravity();
        }
    }

    public int getTabGravity() {
        return this.mTabGravity;
    }

    public void setTabTextColors(@Nullable ColorStateList colorStateList) {
        if (this.mTabTextColors != colorStateList) {
            this.mTabTextColors = colorStateList;
            updateAllTabs();
        }
    }

    @Nullable
    public ColorStateList getTabTextColors() {
        return this.mTabTextColors;
    }

    public void setTabTextColors(int i, int i2) {
        setTabTextColors(createColorStateList(i, i2));
    }

    public void setupWithViewPager(@Nullable ViewPager viewPager) {
        setupWithViewPager(viewPager, true);
    }

    public void setupWithViewPager(@Nullable ViewPager viewPager, boolean z) {
        setupWithViewPager(viewPager, z, false);
    }

    private void setupWithViewPager(@Nullable ViewPager viewPager, boolean z, boolean z2) {
        if (this.mViewPager != null) {
            if (this.mPageChangeListener != null) {
                this.mViewPager.removeOnPageChangeListener(this.mPageChangeListener);
            }
            if (this.mAdapterChangeListener != null) {
                this.mViewPager.removeOnAdapterChangeListener(this.mAdapterChangeListener);
            }
        }
        if (this.mCurrentVpSelectedListener != null) {
            removeOnTabSelectedListener(this.mCurrentVpSelectedListener);
            this.mCurrentVpSelectedListener = null;
        }
        if (viewPager != null) {
            this.mViewPager = viewPager;
            if (this.mPageChangeListener == null) {
                this.mPageChangeListener = new TabLayoutOnPageChangeListener(this);
            }
            this.mPageChangeListener.reset();
            viewPager.addOnPageChangeListener(this.mPageChangeListener);
            this.mCurrentVpSelectedListener = new ViewPagerOnTabSelectedListener(viewPager);
            addOnTabSelectedListener(this.mCurrentVpSelectedListener);
            PagerAdapter adapter = viewPager.getAdapter();
            if (adapter != null) {
                setPagerAdapter(adapter, z);
            }
            if (this.mAdapterChangeListener == null) {
                this.mAdapterChangeListener = new AdapterChangeListener();
            }
            this.mAdapterChangeListener.setAutoRefresh(z);
            viewPager.addOnAdapterChangeListener(this.mAdapterChangeListener);
            setScrollPosition(viewPager.getCurrentItem(), 0.0f, true);
        } else {
            this.mViewPager = null;
            setPagerAdapter(null, false);
        }
        this.mSetupViewPagerImplicitly = z2;
    }

    @Deprecated
    public void setTabsFromPagerAdapter(@Nullable PagerAdapter pagerAdapter) {
        setPagerAdapter(pagerAdapter, false);
    }

    public boolean shouldDelayChildPressedState() {
        return getTabScrollRange() > 0;
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.mViewPager == null) {
            ViewParent parent = getParent();
            if (parent instanceof ViewPager) {
                setupWithViewPager((ViewPager) parent, true, true);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mSetupViewPagerImplicitly) {
            setupWithViewPager(null);
            this.mSetupViewPagerImplicitly = false;
        }
    }

    private int getTabScrollRange() {
        return Math.max(0, ((this.mTabStrip.getWidth() - getWidth()) - getPaddingLeft()) - getPaddingRight());
    }

    /* access modifiers changed from: 0000 */
    public void setPagerAdapter(@Nullable PagerAdapter pagerAdapter, boolean z) {
        if (!(this.mPagerAdapter == null || this.mPagerAdapterObserver == null)) {
            this.mPagerAdapter.unregisterDataSetObserver(this.mPagerAdapterObserver);
        }
        this.mPagerAdapter = pagerAdapter;
        if (z && pagerAdapter != null) {
            if (this.mPagerAdapterObserver == null) {
                this.mPagerAdapterObserver = new PagerAdapterObserver();
            }
            pagerAdapter.registerDataSetObserver(this.mPagerAdapterObserver);
        }
        populateFromPagerAdapter();
    }

    /* access modifiers changed from: 0000 */
    public void populateFromPagerAdapter() {
        removeAllTabs();
        if (this.mPagerAdapter != null) {
            int count = this.mPagerAdapter.getCount();
            for (int i = 0; i < count; i++) {
                addTab(newTab().setText(this.mPagerAdapter.getPageTitle(i)), false);
            }
            if (this.mViewPager != null && count > 0) {
                int currentItem = this.mViewPager.getCurrentItem();
                if (currentItem != getSelectedTabPosition() && currentItem < getTabCount()) {
                    selectTab(getTabAt(currentItem));
                }
            }
        }
    }

    private void updateAllTabs() {
        int size = this.mTabs.size();
        for (int i = 0; i < size; i++) {
            ((Tab) this.mTabs.get(i)).updateView();
        }
    }

    private TabView createTabView(@NonNull Tab tab) {
        TabView tabView = this.mTabViewPool != null ? (TabView) this.mTabViewPool.acquire() : null;
        if (tabView == null) {
            tabView = new TabView(getContext());
        }
        tabView.setTab(tab);
        tabView.setFocusable(true);
        tabView.setMinimumWidth(getTabMinWidth());
        return tabView;
    }

    private void configureTab(Tab tab, int i) {
        tab.setPosition(i);
        this.mTabs.add(i, tab);
        int size = this.mTabs.size();
        for (int i2 = i + 1; i2 < size; i2++) {
            ((Tab) this.mTabs.get(i2)).setPosition(i2);
        }
    }

    private void addTabView(Tab tab) {
        this.mTabStrip.addView(tab.mView, tab.getPosition(), createLayoutParamsForTabs());
    }

    public void addView(View view) {
        addViewInternal(view);
    }

    public void addView(View view, int i) {
        addViewInternal(view);
    }

    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        addViewInternal(view);
    }

    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        addViewInternal(view);
    }

    private void addViewInternal(View view) {
        if (view instanceof TabItem) {
            addTabFromItemView((TabItem) view);
            return;
        }
        throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
    }

    private LayoutParams createLayoutParamsForTabs() {
        LayoutParams layoutParams = new LayoutParams(-2, -1);
        updateTabViewLayoutParams(layoutParams);
        return layoutParams;
    }

    private void updateTabViewLayoutParams(LayoutParams layoutParams) {
        if (this.mMode == 1 && this.mTabGravity == 0) {
            layoutParams.width = 0;
            layoutParams.weight = 1.0f;
            return;
        }
        layoutParams.width = -2;
        layoutParams.weight = 0.0f;
    }

    /* access modifiers changed from: 0000 */
    public int dpToPx(int i) {
        return Math.round(getResources().getDisplayMetrics().density * ((float) i));
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {
        boolean z;
        int dpToPx;
        boolean z2 = true;
        int dpToPx2 = dpToPx(getDefaultHeight()) + getPaddingTop() + getPaddingBottom();
        switch (MeasureSpec.getMode(i2)) {
            case Integer.MIN_VALUE:
                i2 = MeasureSpec.makeMeasureSpec(Math.min(dpToPx2, MeasureSpec.getSize(i2)), 1073741824);
                break;
            case 0:
                i2 = MeasureSpec.makeMeasureSpec(dpToPx2, 1073741824);
                break;
        }
        int size = MeasureSpec.getSize(i);
        if (MeasureSpec.getMode(i) != 0) {
            if (this.mRequestedTabMaxWidth > 0) {
                dpToPx = this.mRequestedTabMaxWidth;
            } else {
                dpToPx = size - dpToPx(56);
            }
            this.mTabMaxWidth = dpToPx;
        }
        super.onMeasure(i, i2);
        if (getChildCount() == 1) {
            View childAt = getChildAt(0);
            switch (this.mMode) {
                case 0:
                    if (childAt.getMeasuredWidth() >= getMeasuredWidth()) {
                        z = false;
                        break;
                    } else {
                        z = true;
                        break;
                    }
                case 1:
                    if (childAt.getMeasuredWidth() == getMeasuredWidth()) {
                        z2 = false;
                    }
                    z = z2;
                    break;
                default:
                    z = false;
                    break;
            }
            if (z) {
                childAt.measure(MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), getChildMeasureSpec(i2, getPaddingTop() + getPaddingBottom(), childAt.getLayoutParams().height));
            }
        }
    }

    private void removeTabViewAt(int i) {
        TabView tabView = (TabView) this.mTabStrip.getChildAt(i);
        this.mTabStrip.removeViewAt(i);
        if (tabView != null) {
            tabView.reset();
            this.mTabViewPool.release(tabView);
        }
        requestLayout();
    }

    private void animateToTab(int i) {
        if (i != -1) {
            if (getWindowToken() == null || !ViewCompat.isLaidOut(this) || this.mTabStrip.childrenNeedLayout()) {
                setScrollPosition(i, 0.0f, true);
                return;
            }
            int scrollX = getScrollX();
            int calculateScrollXForTab = calculateScrollXForTab(i, 0.0f);
            if (scrollX != calculateScrollXForTab) {
                ensureScrollAnimator();
                this.mScrollAnimator.setIntValues(scrollX, calculateScrollXForTab);
                this.mScrollAnimator.start();
            }
            this.mTabStrip.animateIndicatorToPosition(i, 300);
        }
    }

    private void ensureScrollAnimator() {
        if (this.mScrollAnimator == null) {
            this.mScrollAnimator = ViewUtils.createAnimator();
            this.mScrollAnimator.setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
            this.mScrollAnimator.setDuration(300);
            this.mScrollAnimator.addUpdateListener(new AnimatorUpdateListener() {
                public void onAnimationUpdate(ValueAnimatorCompat valueAnimatorCompat) {
                    TabLayout.this.scrollTo(valueAnimatorCompat.getAnimatedIntValue(), 0);
                }
            });
        }
    }

    /* access modifiers changed from: 0000 */
    public void setScrollAnimatorListener(AnimatorListener animatorListener) {
        ensureScrollAnimator();
        this.mScrollAnimator.addListener(animatorListener);
    }

    private void setSelectedTabView(int i) {
        boolean z;
        int childCount = this.mTabStrip.getChildCount();
        if (i < childCount) {
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = this.mTabStrip.getChildAt(i2);
                if (i2 == i) {
                    z = true;
                } else {
                    z = false;
                }
                childAt.setSelected(z);
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void selectTab(Tab tab) {
        selectTab(tab, true);
    }

    /* access modifiers changed from: 0000 */
    public void selectTab(Tab tab, boolean z) {
        Tab tab2 = this.mSelectedTab;
        if (tab2 != tab) {
            int i = tab != null ? tab.getPosition() : -1;
            if (z) {
                if ((tab2 == null || tab2.getPosition() == -1) && i != -1) {
                    setScrollPosition(i, 0.0f, true);
                } else {
                    animateToTab(i);
                }
                if (i != -1) {
                    setSelectedTabView(i);
                }
            }
            if (tab2 != null) {
                dispatchTabUnselected(tab2);
            }
            this.mSelectedTab = tab;
            if (tab != null) {
                dispatchTabSelected(tab);
            }
        } else if (tab2 != null) {
            dispatchTabReselected(tab);
            animateToTab(tab.getPosition());
        }
    }

    private void dispatchTabSelected(@NonNull Tab tab) {
        for (int size = this.mSelectedListeners.size() - 1; size >= 0; size--) {
            ((OnTabSelectedListener) this.mSelectedListeners.get(size)).onTabSelected(tab);
        }
    }

    private void dispatchTabUnselected(@NonNull Tab tab) {
        for (int size = this.mSelectedListeners.size() - 1; size >= 0; size--) {
            ((OnTabSelectedListener) this.mSelectedListeners.get(size)).onTabUnselected(tab);
        }
    }

    private void dispatchTabReselected(@NonNull Tab tab) {
        for (int size = this.mSelectedListeners.size() - 1; size >= 0; size--) {
            ((OnTabSelectedListener) this.mSelectedListeners.get(size)).onTabReselected(tab);
        }
    }

    private int calculateScrollXForTab(int i, float f) {
        int i2;
        int i3 = 0;
        if (this.mMode != 0) {
            return 0;
        }
        View childAt = this.mTabStrip.getChildAt(i);
        View view = i + 1 < this.mTabStrip.getChildCount() ? this.mTabStrip.getChildAt(i + 1) : null;
        if (childAt != null) {
            i2 = childAt.getWidth();
        } else {
            i2 = 0;
        }
        if (view != null) {
            i3 = view.getWidth();
        }
        int left = (childAt.getLeft() + (i2 / 2)) - (getWidth() / 2);
        int i4 = (int) (((float) (i3 + i2)) * 0.5f * f);
        return ViewCompat.getLayoutDirection(this) == 0 ? i4 + left : left - i4;
    }

    private void applyModeAndGravity() {
        int i;
        if (this.mMode == 0) {
            i = Math.max(0, this.mContentInsetStart - this.mTabPaddingStart);
        } else {
            i = 0;
        }
        ViewCompat.setPaddingRelative(this.mTabStrip, i, 0, 0, 0);
        switch (this.mMode) {
            case 0:
                this.mTabStrip.setGravity(GravityCompat.START);
                break;
            case 1:
                this.mTabStrip.setGravity(1);
                break;
        }
        updateTabViews(true);
    }

    /* access modifiers changed from: 0000 */
    public void updateTabViews(boolean z) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.mTabStrip.getChildCount()) {
                View childAt = this.mTabStrip.getChildAt(i2);
                childAt.setMinimumWidth(getTabMinWidth());
                updateTabViewLayoutParams((LayoutParams) childAt.getLayoutParams());
                if (z) {
                    childAt.requestLayout();
                }
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    private static ColorStateList createColorStateList(int i, int i2) {
        return new ColorStateList(new int[][]{SELECTED_STATE_SET, EMPTY_STATE_SET}, new int[]{i2, i});
    }

    private int getDefaultHeight() {
        boolean z;
        int size = this.mTabs.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                z = false;
                break;
            }
            Tab tab = (Tab) this.mTabs.get(i);
            if (tab != null && tab.getIcon() != null && !TextUtils.isEmpty(tab.getText())) {
                z = true;
                break;
            }
            i++;
        }
        if (z) {
            return 72;
        }
        return 48;
    }

    private int getTabMinWidth() {
        if (this.mRequestedTabMinWidth != -1) {
            return this.mRequestedTabMinWidth;
        }
        if (this.mMode == 0) {
            return this.mScrollableTabMinWidth;
        }
        return 0;
    }

    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    /* access modifiers changed from: 0000 */
    public int getTabMaxWidth() {
        return this.mTabMaxWidth;
    }
}
