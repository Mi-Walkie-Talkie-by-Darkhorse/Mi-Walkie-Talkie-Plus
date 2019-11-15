package android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.CollectionItemInfoCompat;
import android.support.v7.widget.RecyclerView.LayoutManager.LayoutPrefetchRegistry;
import android.support.v7.widget.RecyclerView.Recycler;
import android.support.v7.widget.RecyclerView.State;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.MarginLayoutParams;
import java.util.Arrays;

public class GridLayoutManager extends LinearLayoutManager {
    private static final boolean DEBUG = false;
    public static final int DEFAULT_SPAN_COUNT = -1;
    private static final String TAG = "GridLayoutManager";
    int[] mCachedBorders;
    final Rect mDecorInsets = new Rect();
    boolean mPendingSpanCountChange = false;
    final SparseIntArray mPreLayoutSpanIndexCache = new SparseIntArray();
    final SparseIntArray mPreLayoutSpanSizeCache = new SparseIntArray();
    View[] mSet;
    int mSpanCount = -1;
    SpanSizeLookup mSpanSizeLookup = new DefaultSpanSizeLookup();

    public static final class DefaultSpanSizeLookup extends SpanSizeLookup {
        public int getSpanSize(int i) {
            return 1;
        }

        public int getSpanIndex(int i, int i2) {
            return i % i2;
        }
    }

    public static class LayoutParams extends android.support.v7.widget.RecyclerView.LayoutParams {
        public static final int INVALID_SPAN_ID = -1;
        int mSpanIndex = -1;
        int mSpanSize = 0;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(android.support.v7.widget.RecyclerView.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public int getSpanIndex() {
            return this.mSpanIndex;
        }

        public int getSpanSize() {
            return this.mSpanSize;
        }
    }

    public static abstract class SpanSizeLookup {
        private boolean mCacheSpanIndices = false;
        final SparseIntArray mSpanIndexCache = new SparseIntArray();

        public abstract int getSpanSize(int i);

        public void setSpanIndexCacheEnabled(boolean z) {
            this.mCacheSpanIndices = z;
        }

        public void invalidateSpanIndexCache() {
            this.mSpanIndexCache.clear();
        }

        public boolean isSpanIndexCacheEnabled() {
            return this.mCacheSpanIndices;
        }

        /* access modifiers changed from: 0000 */
        public int getCachedSpanIndex(int i, int i2) {
            if (!this.mCacheSpanIndices) {
                return getSpanIndex(i, i2);
            }
            int i3 = this.mSpanIndexCache.get(i, -1);
            if (i3 != -1) {
                return i3;
            }
            int spanIndex = getSpanIndex(i, i2);
            this.mSpanIndexCache.put(i, spanIndex);
            return spanIndex;
        }

        /* JADX WARNING: Removed duplicated region for block: B:11:0x002a  */
        /* JADX WARNING: Removed duplicated region for block: B:19:0x003f  */
        /* JADX WARNING: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public int getSpanIndex(int r6, int r7) {
            /*
                r5 = this;
                r1 = 0
                int r4 = r5.getSpanSize(r6)
                if (r4 != r7) goto L_0x0008
            L_0x0007:
                return r1
            L_0x0008:
                boolean r0 = r5.mCacheSpanIndices
                if (r0 == 0) goto L_0x0041
                android.util.SparseIntArray r0 = r5.mSpanIndexCache
                int r0 = r0.size()
                if (r0 <= 0) goto L_0x0041
                int r0 = r5.findReferenceIndexFromCache(r6)
                if (r0 < 0) goto L_0x0041
                android.util.SparseIntArray r2 = r5.mSpanIndexCache
                int r2 = r2.get(r0)
                int r3 = r5.getSpanSize(r0)
                int r2 = r2 + r3
                int r0 = r0 + 1
            L_0x0027:
                r3 = r0
            L_0x0028:
                if (r3 >= r6) goto L_0x003b
                int r0 = r5.getSpanSize(r3)
                int r2 = r2 + r0
                if (r2 != r7) goto L_0x0037
                r0 = r1
            L_0x0032:
                int r2 = r3 + 1
                r3 = r2
                r2 = r0
                goto L_0x0028
            L_0x0037:
                if (r2 > r7) goto L_0x0032
                r0 = r2
                goto L_0x0032
            L_0x003b:
                int r0 = r2 + r4
                if (r0 > r7) goto L_0x0007
                r1 = r2
                goto L_0x0007
            L_0x0041:
                r0 = r1
                r2 = r1
                goto L_0x0027
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.GridLayoutManager.SpanSizeLookup.getSpanIndex(int, int):int");
        }

        /* access modifiers changed from: 0000 */
        public int findReferenceIndexFromCache(int i) {
            int i2 = 0;
            int size = this.mSpanIndexCache.size() - 1;
            while (i2 <= size) {
                int i3 = (i2 + size) >>> 1;
                if (this.mSpanIndexCache.keyAt(i3) < i) {
                    i2 = i3 + 1;
                } else {
                    size = i3 - 1;
                }
            }
            int i4 = i2 - 1;
            if (i4 < 0 || i4 >= this.mSpanIndexCache.size()) {
                return -1;
            }
            return this.mSpanIndexCache.keyAt(i4);
        }

        public int getSpanGroupIndex(int i, int i2) {
            int spanSize = getSpanSize(i);
            int i3 = 0;
            int i4 = 0;
            int i5 = 0;
            while (i3 < i) {
                int spanSize2 = getSpanSize(i3);
                int i6 = i5 + spanSize2;
                if (i6 == i2) {
                    i4++;
                    spanSize2 = 0;
                } else if (i6 > i2) {
                    i4++;
                } else {
                    spanSize2 = i6;
                }
                i3++;
                i5 = spanSize2;
            }
            if (i5 + spanSize > i2) {
                return i4 + 1;
            }
            return i4;
        }
    }

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        setSpanCount(getProperties(context, attributeSet, i, i2).spanCount);
    }

    public GridLayoutManager(Context context, int i) {
        super(context);
        setSpanCount(i);
    }

    public GridLayoutManager(Context context, int i, int i2, boolean z) {
        super(context, i2, z);
        setSpanCount(i);
    }

    public void setStackFromEnd(boolean z) {
        if (z) {
            throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
        }
        super.setStackFromEnd(false);
    }

    public int getRowCountForAccessibility(Recycler recycler, State state) {
        if (this.mOrientation == 0) {
            return this.mSpanCount;
        }
        if (state.getItemCount() < 1) {
            return 0;
        }
        return getSpanGroupIndex(recycler, state, state.getItemCount() - 1) + 1;
    }

    public int getColumnCountForAccessibility(Recycler recycler, State state) {
        if (this.mOrientation == 1) {
            return this.mSpanCount;
        }
        if (state.getItemCount() < 1) {
            return 0;
        }
        return getSpanGroupIndex(recycler, state, state.getItemCount() - 1) + 1;
    }

    public void onInitializeAccessibilityNodeInfoForItem(Recycler recycler, State state, View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        android.view.ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof LayoutParams)) {
            super.onInitializeAccessibilityNodeInfoForItem(view, accessibilityNodeInfoCompat);
            return;
        }
        LayoutParams layoutParams2 = (LayoutParams) layoutParams;
        int spanGroupIndex = getSpanGroupIndex(recycler, state, layoutParams2.getViewLayoutPosition());
        if (this.mOrientation == 0) {
            accessibilityNodeInfoCompat.setCollectionItemInfo(CollectionItemInfoCompat.obtain(layoutParams2.getSpanIndex(), layoutParams2.getSpanSize(), spanGroupIndex, 1, this.mSpanCount > 1 && layoutParams2.getSpanSize() == this.mSpanCount, false));
        } else {
            accessibilityNodeInfoCompat.setCollectionItemInfo(CollectionItemInfoCompat.obtain(spanGroupIndex, 1, layoutParams2.getSpanIndex(), layoutParams2.getSpanSize(), this.mSpanCount > 1 && layoutParams2.getSpanSize() == this.mSpanCount, false));
        }
    }

    public void onLayoutChildren(Recycler recycler, State state) {
        if (state.isPreLayout()) {
            cachePreLayoutSpanMapping();
        }
        super.onLayoutChildren(recycler, state);
        clearPreLayoutSpanMappingCache();
    }

    public void onLayoutCompleted(State state) {
        super.onLayoutCompleted(state);
        this.mPendingSpanCountChange = false;
    }

    private void clearPreLayoutSpanMappingCache() {
        this.mPreLayoutSpanSizeCache.clear();
        this.mPreLayoutSpanIndexCache.clear();
    }

    private void cachePreLayoutSpanMapping() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            LayoutParams layoutParams = (LayoutParams) getChildAt(i).getLayoutParams();
            int viewLayoutPosition = layoutParams.getViewLayoutPosition();
            this.mPreLayoutSpanSizeCache.put(viewLayoutPosition, layoutParams.getSpanSize());
            this.mPreLayoutSpanIndexCache.put(viewLayoutPosition, layoutParams.getSpanIndex());
        }
    }

    public void onItemsAdded(RecyclerView recyclerView, int i, int i2) {
        this.mSpanSizeLookup.invalidateSpanIndexCache();
    }

    public void onItemsChanged(RecyclerView recyclerView) {
        this.mSpanSizeLookup.invalidateSpanIndexCache();
    }

    public void onItemsRemoved(RecyclerView recyclerView, int i, int i2) {
        this.mSpanSizeLookup.invalidateSpanIndexCache();
    }

    public void onItemsUpdated(RecyclerView recyclerView, int i, int i2, Object obj) {
        this.mSpanSizeLookup.invalidateSpanIndexCache();
    }

    public void onItemsMoved(RecyclerView recyclerView, int i, int i2, int i3) {
        this.mSpanSizeLookup.invalidateSpanIndexCache();
    }

    public android.support.v7.widget.RecyclerView.LayoutParams generateDefaultLayoutParams() {
        if (this.mOrientation == 0) {
            return new LayoutParams(-2, -1);
        }
        return new LayoutParams(-1, -2);
    }

    public android.support.v7.widget.RecyclerView.LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new LayoutParams(context, attributeSet);
    }

    public android.support.v7.widget.RecyclerView.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof MarginLayoutParams) {
            return new LayoutParams((MarginLayoutParams) layoutParams);
        }
        return new LayoutParams(layoutParams);
    }

    public boolean checkLayoutParams(android.support.v7.widget.RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    public void setSpanSizeLookup(SpanSizeLookup spanSizeLookup) {
        this.mSpanSizeLookup = spanSizeLookup;
    }

    public SpanSizeLookup getSpanSizeLookup() {
        return this.mSpanSizeLookup;
    }

    private void updateMeasurements() {
        int height;
        if (getOrientation() == 1) {
            height = (getWidth() - getPaddingRight()) - getPaddingLeft();
        } else {
            height = (getHeight() - getPaddingBottom()) - getPaddingTop();
        }
        calculateItemBorders(height);
    }

    public void setMeasuredDimension(Rect rect, int i, int i2) {
        int chooseSize;
        int chooseSize2;
        if (this.mCachedBorders == null) {
            super.setMeasuredDimension(rect, i, i2);
        }
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        if (this.mOrientation == 1) {
            chooseSize2 = chooseSize(i2, paddingTop + rect.height(), getMinimumHeight());
            chooseSize = chooseSize(i, paddingRight + this.mCachedBorders[this.mCachedBorders.length - 1], getMinimumWidth());
        } else {
            chooseSize = chooseSize(i, paddingRight + rect.width(), getMinimumWidth());
            chooseSize2 = chooseSize(i2, paddingTop + this.mCachedBorders[this.mCachedBorders.length - 1], getMinimumHeight());
        }
        setMeasuredDimension(chooseSize, chooseSize2);
    }

    private void calculateItemBorders(int i) {
        this.mCachedBorders = calculateItemBorders(this.mCachedBorders, this.mSpanCount, i);
    }

    static int[] calculateItemBorders(int[] iArr, int i, int i2) {
        int i3;
        int i4 = 0;
        if (!(iArr != null && iArr.length == i + 1 && iArr[iArr.length - 1] == i2)) {
            iArr = new int[(i + 1)];
        }
        iArr[0] = 0;
        int i5 = i2 / i;
        int i6 = i2 % i;
        int i7 = 0;
        for (int i8 = 1; i8 <= i; i8++) {
            i4 += i6;
            if (i4 <= 0 || i - i4 >= i6) {
                i3 = i5;
            } else {
                i3 = i5 + 1;
                i4 -= i;
            }
            i7 += i3;
            iArr[i8] = i7;
        }
        return iArr;
    }

    /* access modifiers changed from: 0000 */
    public int getSpaceForSpanRange(int i, int i2) {
        if (this.mOrientation != 1 || !isLayoutRTL()) {
            return this.mCachedBorders[i + i2] - this.mCachedBorders[i];
        }
        return this.mCachedBorders[this.mSpanCount - i] - this.mCachedBorders[(this.mSpanCount - i) - i2];
    }

    /* access modifiers changed from: 0000 */
    public void onAnchorReady(Recycler recycler, State state, AnchorInfo anchorInfo, int i) {
        super.onAnchorReady(recycler, state, anchorInfo, i);
        updateMeasurements();
        if (state.getItemCount() > 0 && !state.isPreLayout()) {
            ensureAnchorIsInCorrectSpan(recycler, state, anchorInfo, i);
        }
        ensureViewSet();
    }

    private void ensureViewSet() {
        if (this.mSet == null || this.mSet.length != this.mSpanCount) {
            this.mSet = new View[this.mSpanCount];
        }
    }

    public int scrollHorizontallyBy(int i, Recycler recycler, State state) {
        updateMeasurements();
        ensureViewSet();
        return super.scrollHorizontallyBy(i, recycler, state);
    }

    public int scrollVerticallyBy(int i, Recycler recycler, State state) {
        updateMeasurements();
        ensureViewSet();
        return super.scrollVerticallyBy(i, recycler, state);
    }

    private void ensureAnchorIsInCorrectSpan(Recycler recycler, State state, AnchorInfo anchorInfo, int i) {
        boolean z = true;
        if (i != 1) {
            z = false;
        }
        int spanIndex = getSpanIndex(recycler, state, anchorInfo.mPosition);
        if (z) {
            while (spanIndex > 0 && anchorInfo.mPosition > 0) {
                anchorInfo.mPosition--;
                spanIndex = getSpanIndex(recycler, state, anchorInfo.mPosition);
            }
            return;
        }
        int itemCount = state.getItemCount() - 1;
        int i2 = anchorInfo.mPosition;
        int i3 = spanIndex;
        while (i2 < itemCount) {
            int spanIndex2 = getSpanIndex(recycler, state, i2 + 1);
            if (spanIndex2 <= i3) {
                break;
            }
            i2++;
            i3 = spanIndex2;
        }
        anchorInfo.mPosition = i2;
    }

    /* access modifiers changed from: 0000 */
    public View findReferenceChild(Recycler recycler, State state, int i, int i2, int i3) {
        View view;
        View view2 = null;
        ensureLayoutState();
        int startAfterPadding = this.mOrientationHelper.getStartAfterPadding();
        int endAfterPadding = this.mOrientationHelper.getEndAfterPadding();
        int i4 = i2 > i ? 1 : -1;
        View view3 = null;
        while (i != i2) {
            View childAt = getChildAt(i);
            int position = getPosition(childAt);
            if (position >= 0 && position < i3) {
                if (getSpanIndex(recycler, state, position) != 0) {
                    view = view2;
                    childAt = view3;
                } else if (((android.support.v7.widget.RecyclerView.LayoutParams) childAt.getLayoutParams()).isItemRemoved()) {
                    if (view3 == null) {
                        view = view2;
                    }
                } else if (this.mOrientationHelper.getDecoratedStart(childAt) < endAfterPadding && this.mOrientationHelper.getDecoratedEnd(childAt) >= startAfterPadding) {
                    return childAt;
                } else {
                    if (view2 == null) {
                        view = childAt;
                        childAt = view3;
                    }
                }
                i += i4;
                view2 = view;
                view3 = childAt;
            }
            view = view2;
            childAt = view3;
            i += i4;
            view2 = view;
            view3 = childAt;
        }
        if (view2 == null) {
            view2 = view3;
        }
        return view2;
    }

    private int getSpanGroupIndex(Recycler recycler, State state, int i) {
        if (!state.isPreLayout()) {
            return this.mSpanSizeLookup.getSpanGroupIndex(i, this.mSpanCount);
        }
        int convertPreLayoutPositionToPostLayout = recycler.convertPreLayoutPositionToPostLayout(i);
        if (convertPreLayoutPositionToPostLayout != -1) {
            return this.mSpanSizeLookup.getSpanGroupIndex(convertPreLayoutPositionToPostLayout, this.mSpanCount);
        }
        Log.w(TAG, "Cannot find span size for pre layout position. " + i);
        return 0;
    }

    private int getSpanIndex(Recycler recycler, State state, int i) {
        if (!state.isPreLayout()) {
            return this.mSpanSizeLookup.getCachedSpanIndex(i, this.mSpanCount);
        }
        int i2 = this.mPreLayoutSpanIndexCache.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        int convertPreLayoutPositionToPostLayout = recycler.convertPreLayoutPositionToPostLayout(i);
        if (convertPreLayoutPositionToPostLayout != -1) {
            return this.mSpanSizeLookup.getCachedSpanIndex(convertPreLayoutPositionToPostLayout, this.mSpanCount);
        }
        Log.w(TAG, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i);
        return 0;
    }

    private int getSpanSize(Recycler recycler, State state, int i) {
        if (!state.isPreLayout()) {
            return this.mSpanSizeLookup.getSpanSize(i);
        }
        int i2 = this.mPreLayoutSpanSizeCache.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        int convertPreLayoutPositionToPostLayout = recycler.convertPreLayoutPositionToPostLayout(i);
        if (convertPreLayoutPositionToPostLayout != -1) {
            return this.mSpanSizeLookup.getSpanSize(convertPreLayoutPositionToPostLayout);
        }
        Log.w(TAG, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i);
        return 1;
    }

    /* access modifiers changed from: 0000 */
    public void collectPrefetchPositionsForLayoutState(State state, LayoutState layoutState, LayoutPrefetchRegistry layoutPrefetchRegistry) {
        int i = this.mSpanCount;
        for (int i2 = 0; i2 < this.mSpanCount && layoutState.hasMore(state) && i > 0; i2++) {
            int i3 = layoutState.mCurrentPosition;
            layoutPrefetchRegistry.addPosition(i3, Math.max(0, layoutState.mScrollingOffset));
            i -= this.mSpanSizeLookup.getSpanSize(i3);
            layoutState.mCurrentPosition += layoutState.mItemDirection;
        }
    }

    /* access modifiers changed from: 0000 */
    public void layoutChunk(Recycler recycler, State state, LayoutState layoutState, LayoutChunkResult layoutChunkResult) {
        int i;
        int i2;
        int i3;
        int makeMeasureSpec;
        int childMeasureSpec;
        int modeInOther = this.mOrientationHelper.getModeInOther();
        boolean z = modeInOther != 1073741824;
        int i4 = getChildCount() > 0 ? this.mCachedBorders[this.mSpanCount] : 0;
        if (z) {
            updateMeasurements();
        }
        boolean z2 = layoutState.mItemDirection == 1;
        int i5 = 0;
        int i6 = 0;
        int i7 = this.mSpanCount;
        if (!z2) {
            i7 = getSpanIndex(recycler, state, layoutState.mCurrentPosition) + getSpanSize(recycler, state, layoutState.mCurrentPosition);
        }
        while (i5 < this.mSpanCount && layoutState.hasMore(state) && i7 > 0) {
            int i8 = layoutState.mCurrentPosition;
            int spanSize = getSpanSize(recycler, state, i8);
            if (spanSize <= this.mSpanCount) {
                i7 -= spanSize;
                if (i7 >= 0) {
                    View next = layoutState.next(recycler);
                    if (next == null) {
                        break;
                    }
                    i6 += spanSize;
                    this.mSet[i5] = next;
                    i5++;
                } else {
                    break;
                }
            } else {
                throw new IllegalArgumentException("Item at position " + i8 + " requires " + spanSize + " spans but GridLayoutManager has only " + this.mSpanCount + " spans.");
            }
        }
        if (i5 == 0) {
            layoutChunkResult.mFinished = true;
            return;
        }
        assignSpans(recycler, state, i5, i6, z2);
        int i9 = 0;
        float f = 0.0f;
        int i10 = 0;
        while (i9 < i5) {
            View view = this.mSet[i9];
            if (layoutState.mScrapList == null) {
                if (z2) {
                    addView(view);
                } else {
                    addView(view, 0);
                }
            } else if (z2) {
                addDisappearingView(view);
            } else {
                addDisappearingView(view, 0);
            }
            calculateItemDecorationsForChild(view, this.mDecorInsets);
            measureChild(view, modeInOther, false);
            int decoratedMeasurement = this.mOrientationHelper.getDecoratedMeasurement(view);
            if (decoratedMeasurement > i10) {
                i10 = decoratedMeasurement;
            }
            float decoratedMeasurementInOther = (((float) this.mOrientationHelper.getDecoratedMeasurementInOther(view)) * 1.0f) / ((float) ((LayoutParams) view.getLayoutParams()).mSpanSize);
            if (decoratedMeasurementInOther <= f) {
                decoratedMeasurementInOther = f;
            }
            i9++;
            f = decoratedMeasurementInOther;
        }
        if (z) {
            guessMeasurement(f, i4);
            i10 = 0;
            int i11 = 0;
            while (i11 < i5) {
                View view2 = this.mSet[i11];
                measureChild(view2, 1073741824, true);
                int decoratedMeasurement2 = this.mOrientationHelper.getDecoratedMeasurement(view2);
                if (decoratedMeasurement2 <= i10) {
                    decoratedMeasurement2 = i10;
                }
                i11++;
                i10 = decoratedMeasurement2;
            }
        }
        for (int i12 = 0; i12 < i5; i12++) {
            View view3 = this.mSet[i12];
            if (this.mOrientationHelper.getDecoratedMeasurement(view3) != i10) {
                LayoutParams layoutParams = (LayoutParams) view3.getLayoutParams();
                Rect rect = layoutParams.mDecorInsets;
                int i13 = rect.top + rect.bottom + layoutParams.topMargin + layoutParams.bottomMargin;
                int i14 = rect.right + rect.left + layoutParams.leftMargin + layoutParams.rightMargin;
                int spaceForSpanRange = getSpaceForSpanRange(layoutParams.mSpanIndex, layoutParams.mSpanSize);
                if (this.mOrientation == 1) {
                    makeMeasureSpec = getChildMeasureSpec(spaceForSpanRange, 1073741824, i14, layoutParams.width, false);
                    childMeasureSpec = MeasureSpec.makeMeasureSpec(i10 - i13, 1073741824);
                } else {
                    makeMeasureSpec = MeasureSpec.makeMeasureSpec(i10 - i14, 1073741824);
                    childMeasureSpec = getChildMeasureSpec(spaceForSpanRange, 1073741824, i13, layoutParams.height, false);
                }
                measureChildWithDecorationsAndMargin(view3, makeMeasureSpec, childMeasureSpec, true);
            }
        }
        layoutChunkResult.mConsumed = i10;
        int i15 = 0;
        if (this.mOrientation == 1) {
            if (layoutState.mLayoutDirection == -1) {
                i15 = layoutState.mOffset;
                i3 = i15 - i10;
                i2 = 0;
                i = 0;
            } else {
                int i16 = layoutState.mOffset;
                i15 = i16 + i10;
                i3 = i16;
                i2 = 0;
                i = 0;
            }
        } else if (layoutState.mLayoutDirection == -1) {
            int i17 = layoutState.mOffset;
            i2 = i17;
            i = i17 - i10;
            i3 = 0;
        } else {
            i = layoutState.mOffset;
            i2 = i10 + i;
            i3 = 0;
        }
        int i18 = i15;
        int i19 = i3;
        int i20 = i2;
        int i21 = i;
        for (int i22 = 0; i22 < i5; i22++) {
            View view4 = this.mSet[i22];
            LayoutParams layoutParams2 = (LayoutParams) view4.getLayoutParams();
            if (this.mOrientation != 1) {
                i19 = getPaddingTop() + this.mCachedBorders[layoutParams2.mSpanIndex];
                i18 = i19 + this.mOrientationHelper.getDecoratedMeasurementInOther(view4);
            } else if (isLayoutRTL()) {
                i20 = getPaddingLeft() + this.mCachedBorders[this.mSpanCount - layoutParams2.mSpanIndex];
                i21 = i20 - this.mOrientationHelper.getDecoratedMeasurementInOther(view4);
            } else {
                i21 = getPaddingLeft() + this.mCachedBorders[layoutParams2.mSpanIndex];
                i20 = i21 + this.mOrientationHelper.getDecoratedMeasurementInOther(view4);
            }
            layoutDecoratedWithMargins(view4, i21, i19, i20, i18);
            if (layoutParams2.isItemRemoved() || layoutParams2.isItemChanged()) {
                layoutChunkResult.mIgnoreConsumed = true;
            }
            layoutChunkResult.mFocusable |= view4.hasFocusable();
        }
        Arrays.fill(this.mSet, null);
    }

    private void measureChild(View view, int i, boolean z) {
        int childMeasureSpec;
        int i2;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        Rect rect = layoutParams.mDecorInsets;
        int i3 = rect.top + rect.bottom + layoutParams.topMargin + layoutParams.bottomMargin;
        int i4 = layoutParams.rightMargin + rect.right + rect.left + layoutParams.leftMargin;
        int spaceForSpanRange = getSpaceForSpanRange(layoutParams.mSpanIndex, layoutParams.mSpanSize);
        if (this.mOrientation == 1) {
            childMeasureSpec = getChildMeasureSpec(spaceForSpanRange, i, i4, layoutParams.width, false);
            i2 = getChildMeasureSpec(this.mOrientationHelper.getTotalSpace(), getHeightMode(), i3, layoutParams.height, true);
        } else {
            int childMeasureSpec2 = getChildMeasureSpec(spaceForSpanRange, i, i3, layoutParams.height, false);
            childMeasureSpec = getChildMeasureSpec(this.mOrientationHelper.getTotalSpace(), getWidthMode(), i4, layoutParams.width, true);
            i2 = childMeasureSpec2;
        }
        measureChildWithDecorationsAndMargin(view, childMeasureSpec, i2, z);
    }

    private void guessMeasurement(float f, int i) {
        calculateItemBorders(Math.max(Math.round(((float) this.mSpanCount) * f), i));
    }

    private void measureChildWithDecorationsAndMargin(View view, int i, int i2, boolean z) {
        boolean shouldMeasureChild;
        android.support.v7.widget.RecyclerView.LayoutParams layoutParams = (android.support.v7.widget.RecyclerView.LayoutParams) view.getLayoutParams();
        if (z) {
            shouldMeasureChild = shouldReMeasureChild(view, i, i2, layoutParams);
        } else {
            shouldMeasureChild = shouldMeasureChild(view, i, i2, layoutParams);
        }
        if (shouldMeasureChild) {
            view.measure(i, i2);
        }
    }

    private void assignSpans(Recycler recycler, State state, int i, int i2, boolean z) {
        int i3;
        int i4;
        if (z) {
            i4 = 1;
            i3 = 0;
        } else {
            int i5 = i - 1;
            i = -1;
            i3 = i5;
            i4 = -1;
        }
        int i6 = 0;
        for (int i7 = i3; i7 != i; i7 += i4) {
            View view = this.mSet[i7];
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            layoutParams.mSpanSize = getSpanSize(recycler, state, getPosition(view));
            layoutParams.mSpanIndex = i6;
            i6 += layoutParams.mSpanSize;
        }
    }

    public int getSpanCount() {
        return this.mSpanCount;
    }

    public void setSpanCount(int i) {
        if (i != this.mSpanCount) {
            this.mPendingSpanCountChange = true;
            if (i < 1) {
                throw new IllegalArgumentException("Span count should be at least 1. Provided " + i);
            }
            this.mSpanCount = i;
            this.mSpanSizeLookup.invalidateSpanIndexCache();
            requestLayout();
        }
    }

    public View onFocusSearchFailed(View view, int i, Recycler recycler, State state) {
        int i2;
        int i3;
        int childCount;
        int i4;
        int min;
        View view2;
        int i5;
        int i6;
        View view3;
        View findContainingItemView = findContainingItemView(view);
        if (findContainingItemView == null) {
            return null;
        }
        LayoutParams layoutParams = (LayoutParams) findContainingItemView.getLayoutParams();
        int i7 = layoutParams.mSpanIndex;
        int i8 = layoutParams.mSpanIndex + layoutParams.mSpanSize;
        if (super.onFocusSearchFailed(view, i, recycler, state) == null) {
            return null;
        }
        if ((convertFocusDirectionToLayoutDirection(i) == 1) != this.mShouldReverseLayout) {
            i2 = getChildCount() - 1;
            i3 = -1;
            childCount = -1;
        } else {
            i2 = 0;
            i3 = 1;
            childCount = getChildCount();
        }
        boolean z = this.mOrientation == 1 && isLayoutRTL();
        View view4 = null;
        int i9 = -1;
        int i10 = 0;
        View view5 = null;
        int i11 = -1;
        int i12 = 0;
        int spanGroupIndex = getSpanGroupIndex(recycler, state, i2);
        int i13 = i2;
        while (i13 != childCount) {
            int spanGroupIndex2 = getSpanGroupIndex(recycler, state, i13);
            View childAt = getChildAt(i13);
            if (childAt == findContainingItemView) {
                break;
            }
            if (childAt.hasFocusable() && spanGroupIndex2 != spanGroupIndex) {
                if (view4 != null) {
                    break;
                }
            } else {
                LayoutParams layoutParams2 = (LayoutParams) childAt.getLayoutParams();
                int i14 = layoutParams2.mSpanIndex;
                int i15 = layoutParams2.mSpanIndex + layoutParams2.mSpanSize;
                if (childAt.hasFocusable() && i14 == i7 && i15 == i8) {
                    return childAt;
                }
                boolean z2 = false;
                if ((!childAt.hasFocusable() || view4 != null) && (childAt.hasFocusable() || view5 != null)) {
                    int min2 = Math.min(i15, i8) - Math.max(i14, i7);
                    if (childAt.hasFocusable()) {
                        if (min2 > i10) {
                            z2 = true;
                        } else if (min2 == i10) {
                            if (z == (i14 > i9)) {
                                z2 = true;
                            }
                        }
                    } else if (view4 == null && isViewPartiallyVisible(childAt, false, true)) {
                        if (min2 > i12) {
                            z2 = true;
                        } else if (min2 == i12) {
                            if (z == (i14 > i11)) {
                                z2 = true;
                            }
                        }
                    }
                } else {
                    z2 = true;
                }
                if (z2) {
                    if (childAt.hasFocusable()) {
                        int i16 = layoutParams2.mSpanIndex;
                        int i17 = i12;
                        i4 = i11;
                        view2 = view5;
                        i5 = Math.min(i15, i8) - Math.max(i14, i7);
                        min = i17;
                        int i18 = i16;
                        view3 = childAt;
                        i6 = i18;
                    } else {
                        i4 = layoutParams2.mSpanIndex;
                        min = Math.min(i15, i8) - Math.max(i14, i7);
                        view2 = childAt;
                        i5 = i10;
                        i6 = i9;
                        view3 = view4;
                    }
                    i13 += i3;
                    view4 = view3;
                    i10 = i5;
                    i9 = i6;
                    view5 = view2;
                    i11 = i4;
                    i12 = min;
                }
            }
            min = i12;
            i6 = i9;
            i4 = i11;
            view2 = view5;
            i5 = i10;
            view3 = view4;
            i13 += i3;
            view4 = view3;
            i10 = i5;
            i9 = i6;
            view5 = view2;
            i11 = i4;
            i12 = min;
        }
        if (view4 == null) {
            view4 = view5;
        }
        return view4;
    }

    public boolean supportsPredictiveItemAnimations() {
        return this.mPendingSavedState == null && !this.mPendingSpanCountChange;
    }
}
