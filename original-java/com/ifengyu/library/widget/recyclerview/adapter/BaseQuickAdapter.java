package com.ifengyu.library.widget.recyclerview.adapter;

import android.animation.Animator;
import android.content.Context;
import android.support.annotation.IntRange;
import android.support.annotation.NonNull;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.InputDeviceCompat;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.GridLayoutManager.SpanSizeLookup;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.LayoutManager;
import android.support.v7.widget.RecyclerView.OnScrollListener;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.support.v7.widget.StaggeredGridLayoutManager.LayoutParams;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.ifengyu.library.widget.recyclerview.a.d;
import com.ifengyu.library.widget.recyclerview.a.e;
import com.ifengyu.library.widget.recyclerview.a.f;
import com.ifengyu.library.widget.recyclerview.d.a;
import com.ifengyu.library.widget.recyclerview.f.c;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;

public abstract class BaseQuickAdapter<T, K extends com.ifengyu.library.widget.recyclerview.d.a> extends Adapter<K> implements c {
    public static final int ALPHAIN = 1;
    public static final int SCALEIN = 2;
    public static final int SLIDEIN_BOTTOM = 3;
    public static final int SLIDEIN_LEFT = 4;
    public static final int SLIDEIN_RIGHT = 5;
    protected static final String TAG = BaseQuickAdapter.class.getSimpleName();
    private boolean flag;
    /* access modifiers changed from: private */
    public boolean isScrolling;
    private int mAutoLoadMoreSize;
    protected Context mContext;
    private com.ifengyu.library.widget.recyclerview.a.b mCustomAnimation;
    protected List<T> mData;
    private int mDuration;
    private FrameLayout mEmptyView;
    private boolean mFirstOnlyEnable;
    private boolean mFootAndEmptyEnable;
    private LinearLayout mFooterLayout;
    private boolean mHeadAndEmptyEnable;
    private LinearLayout mHeaderLayout;
    private Interpolator mInterpolator;
    private boolean mIsUseEmpty;
    private int mLastPosition;
    protected LayoutInflater mLayoutInflater;
    protected int mLayoutResId;
    private boolean mLoadMoreEnable;
    /* access modifiers changed from: private */
    public com.ifengyu.library.widget.recyclerview.f.a mLoadMoreView;
    private boolean mLoading;
    private boolean mNextLoadEnable;
    private boolean mOpenAnimationEnable;
    private a mRequestLoadMoreListener;
    private com.ifengyu.library.widget.recyclerview.a.b mSelectAnimation;
    /* access modifiers changed from: private */
    public b mSpanSizeLookup;

    @Retention(RetentionPolicy.SOURCE)
    public @interface AnimationType {
    }

    public interface a {
        void a();
    }

    public interface b {
        int a(GridLayoutManager gridLayoutManager, int i);
    }

    /* access modifiers changed from: protected */
    public abstract void convert(K k, T t, int i, boolean z);

    public void setOnLoadMoreListener(a aVar) {
        this.mRequestLoadMoreListener = aVar;
        this.mNextLoadEnable = true;
        this.mLoadMoreEnable = true;
        this.mLoading = false;
    }

    public void setLoadMoreView(com.ifengyu.library.widget.recyclerview.f.a aVar) {
        this.mLoadMoreView = aVar;
    }

    private int getLoadMoreViewCount() {
        if (this.mRequestLoadMoreListener == null || !this.mLoadMoreEnable) {
            return 0;
        }
        if ((this.mNextLoadEnable || !this.mLoadMoreView.b()) && this.mData.size() != 0) {
            return 1;
        }
        return 0;
    }

    public boolean isLoading() {
        return this.mLoading;
    }

    public void loadMoreEnd() {
        loadMoreEnd(false);
    }

    public void loadMoreEnd(boolean z) {
        if (getLoadMoreViewCount() != 0) {
            this.mLoading = false;
            this.mNextLoadEnable = false;
            this.mLoadMoreView.a(z);
            if (z) {
                notifyItemRemoved(getHeaderLayoutCount() + this.mData.size() + getFooterLayoutCount());
                return;
            }
            this.mLoadMoreView.a(4);
            notifyItemChanged(getHeaderLayoutCount() + this.mData.size() + getFooterLayoutCount());
        }
    }

    public void loadMoreComplete() {
        if (getLoadMoreViewCount() != 0) {
            this.mLoading = false;
            this.mLoadMoreView.a(1);
            notifyItemChanged(getHeaderLayoutCount() + this.mData.size() + getFooterLayoutCount());
        }
    }

    public void loadMoreFail() {
        if (getLoadMoreViewCount() != 0) {
            this.mLoading = false;
            this.mLoadMoreView.a(3);
            notifyItemChanged(getHeaderLayoutCount() + this.mData.size() + getFooterLayoutCount());
        }
    }

    public void setEnableLoadMore(boolean z) {
        int loadMoreViewCount = getLoadMoreViewCount();
        this.mLoadMoreEnable = z;
        int loadMoreViewCount2 = getLoadMoreViewCount();
        if (loadMoreViewCount == 1) {
            if (loadMoreViewCount2 == 0) {
                notifyItemRemoved(getHeaderLayoutCount() + this.mData.size() + getFooterLayoutCount());
            }
        } else if (loadMoreViewCount2 == 1) {
            this.mLoadMoreView.a(1);
            notifyItemInserted(getHeaderLayoutCount() + this.mData.size() + getFooterLayoutCount());
        }
    }

    public boolean isLoadMoreEnable() {
        return this.mLoadMoreEnable;
    }

    public void setDuration(int i) {
        this.mDuration = i;
    }

    public BaseQuickAdapter(RecyclerView recyclerView, int i, List<T> list) {
        this.isScrolling = false;
        this.mNextLoadEnable = false;
        this.mLoadMoreEnable = false;
        this.mLoading = false;
        this.mLoadMoreView = new c();
        this.mFirstOnlyEnable = true;
        this.mOpenAnimationEnable = false;
        this.mInterpolator = new LinearInterpolator();
        this.mDuration = 300;
        this.mLastPosition = -1;
        this.mSelectAnimation = new com.ifengyu.library.widget.recyclerview.a.a();
        this.mIsUseEmpty = true;
        this.flag = true;
        this.mAutoLoadMoreSize = 1;
        if (list == null) {
            list = new ArrayList<>();
        }
        this.mData = list;
        if (i != 0) {
            this.mLayoutResId = i;
        }
        recyclerView.addOnScrollListener(new OnScrollListener() {
            public void onScrollStateChanged(RecyclerView recyclerView, int i) {
                super.onScrollStateChanged(recyclerView, i);
                BaseQuickAdapter.this.isScrolling = i != 0;
            }
        });
        com.ifengyu.library.widget.recyclerview.g.a.a(recyclerView, false);
    }

    public BaseQuickAdapter(RecyclerView recyclerView, List<T> list) {
        this(recyclerView, 0, list);
    }

    public void remove(int i) {
        Object obj = this.mData.get(i);
        this.mData.remove(i);
        notifyItemRemoved(getHeaderLayoutCount() + i);
        onRemove(obj);
    }

    /* access modifiers changed from: protected */
    public void onRemove(T t) {
    }

    public void add(int i, T t) {
        this.mData.add(i, t);
        notifyItemInserted(getHeaderLayoutCount() + i);
    }

    public void setNewData(List<T> list) {
        if (list == null) {
            list = new ArrayList<>();
        }
        this.mData = list;
        if (this.mRequestLoadMoreListener != null) {
            this.mNextLoadEnable = true;
            this.mLoadMoreEnable = true;
            this.mLoading = false;
            this.mLoadMoreView.a(1);
        }
        this.mLastPosition = -1;
        notifyDataSetChanged();
    }

    public void clearData() {
        this.mData.clear();
        if (this.mRequestLoadMoreListener != null) {
            this.mNextLoadEnable = true;
            this.mLoading = false;
            this.mLoadMoreView.a(1);
        }
        this.mLastPosition = -1;
        notifyDataSetChanged();
    }

    public void addData(int i, T t) {
        if (i < 0 || i >= this.mData.size()) {
            throw new ArrayIndexOutOfBoundsException("inserted position most greater than 0 and less than data size");
        }
        this.mData.add(i, t);
        notifyItemInserted(getHeaderLayoutCount() + i);
    }

    public void addData(T t) {
        this.mData.add(t);
        notifyItemInserted(this.mData.size() + getHeaderLayoutCount());
    }

    public void addData(int i, List<T> list) {
        if (i < 0 || i >= this.mData.size()) {
            throw new ArrayIndexOutOfBoundsException("inserted position most greater than 0 and less than data size");
        }
        this.mData.addAll(i, list);
        notifyItemRangeInserted(getHeaderLayoutCount() + i, list.size());
    }

    public void addData(List<T> list) {
        this.mData.addAll(list);
        notifyItemRangeInserted((this.mData.size() - list.size()) + getHeaderLayoutCount(), list.size());
    }

    public List<T> getData() {
        return this.mData;
    }

    public T getItem(int i) {
        return this.mData.get(i);
    }

    @Deprecated
    public int getHeaderViewsCount() {
        return getHeaderLayoutCount();
    }

    @Deprecated
    public int getFooterViewsCount() {
        return getFooterLayoutCount();
    }

    public int getHeaderLayoutCount() {
        if (this.mHeaderLayout == null || this.mHeaderLayout.getChildCount() == 0) {
            return 0;
        }
        return 1;
    }

    public int getFooterLayoutCount() {
        if (this.mFooterLayout == null || this.mFooterLayout.getChildCount() == 0) {
            return 0;
        }
        return 1;
    }

    public int getEmptyViewCount() {
        if (this.mEmptyView == null || this.mEmptyView.getChildCount() == 0 || !this.mIsUseEmpty || this.mData.size() != 0) {
            return 0;
        }
        return 1;
    }

    public int getItemCount() {
        int i = 1;
        if (getEmptyViewCount() != 1) {
            return getHeaderLayoutCount() + this.mData.size() + getFooterLayoutCount() + getLoadMoreViewCount();
        }
        if (this.mHeadAndEmptyEnable && getHeaderLayoutCount() != 0) {
            i = 2;
        }
        if (!this.mFootAndEmptyEnable || getFooterLayoutCount() == 0) {
            return i;
        }
        return i + 1;
    }

    public int getItemViewType(int i) {
        boolean z = true;
        if (getEmptyViewCount() == 1) {
            if (!this.mHeadAndEmptyEnable || getHeaderLayoutCount() == 0) {
                z = false;
            }
            switch (i) {
                case 0:
                    if (!z) {
                        return 4100;
                    }
                    return FragmentTransaction.TRANSIT_FRAGMENT_OPEN;
                case 1:
                    if (z) {
                        return 4100;
                    }
                    return FragmentTransaction.TRANSIT_FRAGMENT_FADE;
                case 2:
                    return FragmentTransaction.TRANSIT_FRAGMENT_FADE;
                default:
                    return 4100;
            }
        } else {
            autoLoadMore(i);
            int headerLayoutCount = getHeaderLayoutCount();
            if (i < headerLayoutCount) {
                return FragmentTransaction.TRANSIT_FRAGMENT_OPEN;
            }
            int i2 = i - headerLayoutCount;
            int size = this.mData.size();
            if (i2 < size) {
                return getDefItemViewType(i2);
            }
            if (i2 - size < getFooterLayoutCount()) {
                return FragmentTransaction.TRANSIT_FRAGMENT_FADE;
            }
            return InputDeviceCompat.SOURCE_TOUCHSCREEN;
        }
    }

    /* access modifiers changed from: protected */
    public int getDefItemViewType(int i) {
        return super.getItemViewType(i);
    }

    public K onCreateViewHolder(ViewGroup viewGroup, int i) {
        this.mContext = viewGroup.getContext();
        this.mLayoutInflater = LayoutInflater.from(this.mContext);
        switch (i) {
            case FragmentTransaction.TRANSIT_FRAGMENT_OPEN /*4097*/:
                return createBaseViewHolder(this.mHeaderLayout);
            case InputDeviceCompat.SOURCE_TOUCHSCREEN /*4098*/:
                return getLoadingView(viewGroup);
            case FragmentTransaction.TRANSIT_FRAGMENT_FADE /*4099*/:
                return createBaseViewHolder(this.mFooterLayout);
            case 4100:
                return createBaseViewHolder(this.mEmptyView);
            default:
                return onCreateDefViewHolder(viewGroup, i);
        }
    }

    private K getLoadingView(ViewGroup viewGroup) {
        K createBaseViewHolder = createBaseViewHolder(getItemView(this.mLoadMoreView.c(), viewGroup));
        createBaseViewHolder.itemView.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                if (BaseQuickAdapter.this.mLoadMoreView.a() == 3) {
                    BaseQuickAdapter.this.mLoadMoreView.a(1);
                    BaseQuickAdapter.this.notifyItemChanged(BaseQuickAdapter.this.getHeaderLayoutCount() + BaseQuickAdapter.this.mData.size() + BaseQuickAdapter.this.getFooterLayoutCount());
                }
            }
        });
        return createBaseViewHolder;
    }

    public void onViewAttachedToWindow(K k) {
        super.onViewAttachedToWindow(k);
        int itemViewType = k.getItemViewType();
        if (itemViewType == 4100 || itemViewType == 4097 || itemViewType == 4099 || itemViewType == 4098) {
            setFullSpan(k);
        } else {
            addAnimation(k);
        }
    }

    /* access modifiers changed from: protected */
    public void setFullSpan(ViewHolder viewHolder) {
        if (viewHolder.itemView.getLayoutParams() instanceof LayoutParams) {
            ((LayoutParams) viewHolder.itemView.getLayoutParams()).setFullSpan(true);
        }
    }

    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        super.onAttachedToRecyclerView(recyclerView);
        LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            final GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
            gridLayoutManager.setSpanSizeLookup(new SpanSizeLookup() {
                public int getSpanSize(int i) {
                    int itemViewType = BaseQuickAdapter.this.getItemViewType(i);
                    if (BaseQuickAdapter.this.mSpanSizeLookup != null) {
                        return (itemViewType == 4100 || itemViewType == 4097 || itemViewType == 4099 || itemViewType == 4098) ? gridLayoutManager.getSpanCount() : BaseQuickAdapter.this.mSpanSizeLookup.a(gridLayoutManager, i - BaseQuickAdapter.this.getHeaderLayoutCount());
                    }
                    if (itemViewType == 4100 || itemViewType == 4097 || itemViewType == 4099 || itemViewType == 4098) {
                        return gridLayoutManager.getSpanCount();
                    }
                    return 1;
                }
            });
        }
    }

    public void setSpanSizeLookup(b bVar) {
        this.mSpanSizeLookup = bVar;
    }

    public void onBindViewHolder(K k, int i) {
        int layoutPosition = k.getLayoutPosition() - getHeaderLayoutCount();
        switch (k.getItemViewType()) {
            case FragmentTransaction.TRANSIT_FRAGMENT_OPEN /*4097*/:
            case FragmentTransaction.TRANSIT_FRAGMENT_FADE /*4099*/:
            case 4100:
                return;
            case InputDeviceCompat.SOURCE_TOUCHSCREEN /*4098*/:
                this.mLoadMoreView.a((com.ifengyu.library.widget.recyclerview.d.a) k);
                return;
            default:
                convert(k, this.mData.get(layoutPosition), layoutPosition, this.isScrolling);
                return;
        }
    }

    /* access modifiers changed from: protected */
    public K onCreateDefViewHolder(ViewGroup viewGroup, int i) {
        return createBaseViewHolder(viewGroup, this.mLayoutResId);
    }

    /* access modifiers changed from: protected */
    public K createBaseViewHolder(ViewGroup viewGroup, int i) {
        return createBaseViewHolder(getItemView(i, viewGroup));
    }

    /* access modifiers changed from: protected */
    public K createBaseViewHolder(View view) {
        return new com.ifengyu.library.widget.recyclerview.d.a(view);
    }

    public LinearLayout getHeaderLayout() {
        return this.mHeaderLayout;
    }

    public LinearLayout getFooterLayout() {
        return this.mFooterLayout;
    }

    public void addHeaderView(View view) {
        addHeaderView(view, -1);
    }

    public void addHeaderView(View view, int i) {
        addHeaderView(view, i, 1);
    }

    public void addHeaderView(View view, int i, int i2) {
        if (this.mHeaderLayout == null) {
            this.mHeaderLayout = new LinearLayout(view.getContext());
            if (i2 == 1) {
                this.mHeaderLayout.setOrientation(1);
                this.mHeaderLayout.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            } else {
                this.mHeaderLayout.setOrientation(0);
                this.mHeaderLayout.setLayoutParams(new RecyclerView.LayoutParams(-2, -1));
            }
        }
        if (i >= this.mHeaderLayout.getChildCount()) {
            i = -1;
        }
        this.mHeaderLayout.addView(view, i);
        if (this.mHeaderLayout.getChildCount() == 1) {
            int headerViewPosition = getHeaderViewPosition();
            if (headerViewPosition != -1) {
                notifyItemInserted(headerViewPosition);
            }
        }
    }

    public void addFooterView(View view) {
        addFooterView(view, -1);
    }

    public void addFooterView(View view, int i) {
        if (this.mFooterLayout == null) {
            this.mFooterLayout = new LinearLayout(view.getContext());
            this.mFooterLayout.setOrientation(1);
            this.mFooterLayout.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
        }
        if (i >= this.mFooterLayout.getChildCount()) {
            i = -1;
        }
        this.mFooterLayout.addView(view, i);
        if (this.mFooterLayout.getChildCount() == 1) {
            int footerViewPosition = getFooterViewPosition();
            if (footerViewPosition != -1) {
                notifyItemInserted(footerViewPosition);
            }
        }
    }

    public void removeHeaderView(View view) {
        if (getHeaderLayoutCount() != 0) {
            this.mHeaderLayout.removeView(view);
            if (this.mHeaderLayout.getChildCount() == 0) {
                int headerViewPosition = getHeaderViewPosition();
                if (headerViewPosition != -1) {
                    notifyItemRemoved(headerViewPosition);
                }
            }
        }
    }

    public void removeFooterView(View view) {
        if (getFooterLayoutCount() != 0) {
            this.mFooterLayout.removeView(view);
            if (this.mFooterLayout.getChildCount() == 0) {
                int footerViewPosition = getFooterViewPosition();
                if (footerViewPosition != -1) {
                    notifyItemRemoved(footerViewPosition);
                }
            }
        }
    }

    public void removeAllHeaderView() {
        if (getHeaderLayoutCount() != 0) {
            this.mHeaderLayout.removeAllViews();
            int headerViewPosition = getHeaderViewPosition();
            if (headerViewPosition != -1) {
                notifyItemRemoved(headerViewPosition);
            }
        }
    }

    public void removeAllFooterView() {
        if (getFooterLayoutCount() != 0) {
            this.mFooterLayout.removeAllViews();
            int footerViewPosition = getFooterViewPosition();
            if (footerViewPosition != -1) {
                notifyItemRemoved(footerViewPosition);
            }
        }
    }

    private int getHeaderViewPosition() {
        if (getEmptyViewCount() != 1 || this.mHeadAndEmptyEnable) {
            return 0;
        }
        return -1;
    }

    private int getFooterViewPosition() {
        int i = 1;
        if (getEmptyViewCount() != 1) {
            return getHeaderLayoutCount() + this.mData.size();
        }
        if (this.mHeadAndEmptyEnable && getHeaderLayoutCount() != 0) {
            i = 2;
        }
        if (this.mFootAndEmptyEnable) {
            return i;
        }
        return -1;
    }

    public void setEmptyView(View view) {
        boolean z;
        int i = 0;
        if (this.mEmptyView == null) {
            this.mEmptyView = new FrameLayout(view.getContext());
            this.mEmptyView.setLayoutParams(new RecyclerView.LayoutParams(-1, -1));
            z = true;
        } else {
            z = false;
        }
        this.mEmptyView.removeAllViews();
        this.mEmptyView.addView(view);
        this.mIsUseEmpty = true;
        if (z && getEmptyViewCount() == 1) {
            if (this.mHeadAndEmptyEnable && getHeaderLayoutCount() != 0) {
                i = 1;
            }
            notifyItemInserted(i);
        }
    }

    public void setHeaderAndEmpty(boolean z) {
        setHeaderFooterEmpty(z, false);
    }

    public void setHeaderFooterEmpty(boolean z, boolean z2) {
        this.mHeadAndEmptyEnable = z;
        this.mFootAndEmptyEnable = z2;
    }

    public void isUseEmpty(boolean z) {
        this.mIsUseEmpty = z;
    }

    public View getEmptyView() {
        return this.mEmptyView;
    }

    public void setAutoLoadMoreSize(int i) {
        if (i > 1) {
            this.mAutoLoadMoreSize = i;
        }
    }

    private void autoLoadMore(int i) {
        if (getLoadMoreViewCount() != 0 && i >= getItemCount() - this.mAutoLoadMoreSize && this.mLoadMoreView.a() == 1) {
            this.mLoadMoreView.a(2);
            if (!this.mLoading) {
                this.mLoading = true;
                this.mRequestLoadMoreListener.a();
            }
        }
    }

    private void addAnimation(ViewHolder viewHolder) {
        com.ifengyu.library.widget.recyclerview.a.b bVar;
        if (!this.mOpenAnimationEnable) {
            return;
        }
        if (!this.mFirstOnlyEnable || viewHolder.getLayoutPosition() > this.mLastPosition) {
            if (this.mCustomAnimation != null) {
                bVar = this.mCustomAnimation;
            } else {
                bVar = this.mSelectAnimation;
            }
            for (Animator startAnim : bVar.a(viewHolder.itemView)) {
                startAnim(startAnim, viewHolder.getLayoutPosition());
            }
            this.mLastPosition = viewHolder.getLayoutPosition();
        }
    }

    /* access modifiers changed from: protected */
    public void startAnim(Animator animator, int i) {
        animator.setDuration((long) this.mDuration).start();
        animator.setInterpolator(this.mInterpolator);
    }

    /* access modifiers changed from: protected */
    public View getItemView(int i, ViewGroup viewGroup) {
        return this.mLayoutInflater.inflate(i, viewGroup, false);
    }

    public void openLoadAnimation(int i) {
        this.mOpenAnimationEnable = true;
        this.mCustomAnimation = null;
        switch (i) {
            case 1:
                this.mSelectAnimation = new com.ifengyu.library.widget.recyclerview.a.a();
                return;
            case 2:
                this.mSelectAnimation = new com.ifengyu.library.widget.recyclerview.a.c();
                return;
            case 3:
                this.mSelectAnimation = new d();
                return;
            case 4:
                this.mSelectAnimation = new e();
                return;
            case 5:
                this.mSelectAnimation = new f();
                return;
            default:
                return;
        }
    }

    public void openLoadAnimation(com.ifengyu.library.widget.recyclerview.a.b bVar) {
        this.mOpenAnimationEnable = true;
        this.mCustomAnimation = bVar;
    }

    public void openLoadAnimation() {
        this.mOpenAnimationEnable = true;
    }

    public void closeLoadAnimation() {
        this.mOpenAnimationEnable = false;
        this.mSelectAnimation = null;
        this.mCustomAnimation = null;
        this.mDuration = 0;
    }

    public void isFirstOnly(boolean z) {
        this.mFirstOnlyEnable = z;
    }

    public long getItemId(int i) {
        return (long) i;
    }

    private int recursiveExpand(int i, @NonNull List list) {
        int i2;
        int size = (list.size() + i) - 1;
        int i3 = 0;
        int size2 = list.size() - 1;
        while (size2 >= 0) {
            if (list.get(size2) instanceof com.ifengyu.library.widget.recyclerview.c.a) {
                com.ifengyu.library.widget.recyclerview.c.a aVar = (com.ifengyu.library.widget.recyclerview.c.a) list.get(size2);
                if (aVar.a() && hasSubItems(aVar)) {
                    List b2 = aVar.b();
                    this.mData.addAll(size + 1, b2);
                    i2 = recursiveExpand(size + 1, b2) + i3;
                    size--;
                    size2--;
                    i3 = i2;
                }
            }
            i2 = i3;
            size--;
            size2--;
            i3 = i2;
        }
        return i3;
    }

    public int expand(@IntRange(from = 0) int i, boolean z, boolean z2) {
        int i2 = 0;
        int headerLayoutCount = i - getHeaderLayoutCount();
        com.ifengyu.library.widget.recyclerview.c.a expandableItem = getExpandableItem(headerLayoutCount);
        if (expandableItem != null) {
            if (!hasSubItems(expandableItem)) {
                expandableItem.a(false);
            } else {
                if (!expandableItem.a()) {
                    List b2 = expandableItem.b();
                    this.mData.addAll(headerLayoutCount + 1, b2);
                    int recursiveExpand = 0 + recursiveExpand(headerLayoutCount + 1, b2);
                    expandableItem.a(true);
                    i2 = recursiveExpand + b2.size();
                }
                int headerLayoutCount2 = headerLayoutCount + getHeaderLayoutCount();
                if (z2) {
                    if (z) {
                        notifyItemChanged(headerLayoutCount2);
                        notifyItemRangeInserted(headerLayoutCount2 + 1, i2);
                    } else {
                        notifyDataSetChanged();
                    }
                }
            }
        }
        return i2;
    }

    public int expand(@IntRange(from = 0) int i, boolean z) {
        return expand(i, z, true);
    }

    public int expand(@IntRange(from = 0) int i) {
        return expand(i, true, true);
    }

    public int expandAll(int i, boolean z, boolean z2) {
        int headerLayoutCount = i - getHeaderLayoutCount();
        Object obj = null;
        if (headerLayoutCount + 1 < this.mData.size()) {
            obj = getItem(headerLayoutCount + 1);
        }
        if (!hasSubItems(getExpandableItem(headerLayoutCount))) {
            return 0;
        }
        int expand = expand(getHeaderLayoutCount() + headerLayoutCount, false, false);
        for (int i2 = headerLayoutCount + 1; i2 < this.mData.size(); i2++) {
            Object item = getItem(i2);
            if (item == obj) {
                break;
            }
            if (isExpandable(item)) {
                expand += expand(getHeaderLayoutCount() + i2, false, false);
            }
        }
        if (!z2) {
            return expand;
        }
        if (z) {
            notifyItemRangeInserted(getHeaderLayoutCount() + headerLayoutCount + 1, expand);
            return expand;
        }
        notifyDataSetChanged();
        return expand;
    }

    public int expandAll(int i, boolean z) {
        return expandAll(i, true, !z);
    }

    private int recursiveCollapse(@IntRange(from = 0) int i) {
        int i2;
        Object item = getItem(i);
        if (!isExpandable(item)) {
            return 0;
        }
        com.ifengyu.library.widget.recyclerview.c.a aVar = (com.ifengyu.library.widget.recyclerview.c.a) item;
        if (aVar.a()) {
            List b2 = aVar.b();
            i2 = 0;
            for (int size = b2.size() - 1; size >= 0; size--) {
                Object obj = b2.get(size);
                int itemPosition = getItemPosition(obj);
                if (itemPosition >= 0) {
                    if (obj instanceof com.ifengyu.library.widget.recyclerview.c.a) {
                        i2 += recursiveCollapse(itemPosition);
                    }
                    this.mData.remove(itemPosition);
                    i2++;
                }
            }
        } else {
            i2 = 0;
        }
        return i2;
    }

    public int collapse(@IntRange(from = 0) int i, boolean z, boolean z2) {
        int headerLayoutCount = i - getHeaderLayoutCount();
        com.ifengyu.library.widget.recyclerview.c.a expandableItem = getExpandableItem(headerLayoutCount);
        if (expandableItem == null) {
            return 0;
        }
        int recursiveCollapse = recursiveCollapse(headerLayoutCount);
        expandableItem.a(false);
        int headerLayoutCount2 = getHeaderLayoutCount() + headerLayoutCount;
        if (z2) {
            if (z) {
                notifyItemChanged(headerLayoutCount2);
                notifyItemRangeRemoved(headerLayoutCount2 + 1, recursiveCollapse);
            } else {
                notifyDataSetChanged();
            }
        }
        return recursiveCollapse;
    }

    public int collapse(@IntRange(from = 0) int i) {
        return collapse(i, true, true);
    }

    public int collapse(@IntRange(from = 0) int i, boolean z) {
        return collapse(i, z, true);
    }

    private int getItemPosition(T t) {
        if (t == null || this.mData == null || this.mData.isEmpty()) {
            return -1;
        }
        return this.mData.indexOf(t);
    }

    private boolean hasSubItems(com.ifengyu.library.widget.recyclerview.c.a aVar) {
        List b2 = aVar.b();
        return b2 != null && b2.size() > 0;
    }

    private boolean isExpandable(T t) {
        return t != null && (t instanceof com.ifengyu.library.widget.recyclerview.c.a);
    }

    private com.ifengyu.library.widget.recyclerview.c.a getExpandableItem(int i) {
        Object item = getItem(i);
        if (isExpandable(item)) {
            return (com.ifengyu.library.widget.recyclerview.c.a) item;
        }
        return null;
    }

    public int getParentPosition(@NonNull T t) {
        int i;
        int itemPosition = getItemPosition(t);
        if (itemPosition == -1) {
            return -1;
        }
        if (t instanceof com.ifengyu.library.widget.recyclerview.c.a) {
            i = ((com.ifengyu.library.widget.recyclerview.c.a) t).c();
        } else {
            i = Integer.MAX_VALUE;
        }
        if (i == 0) {
            return itemPosition;
        }
        if (i == -1) {
            return -1;
        }
        for (int i2 = itemPosition; i2 >= 0; i2--) {
            Object obj = this.mData.get(i2);
            if (obj instanceof com.ifengyu.library.widget.recyclerview.c.a) {
                com.ifengyu.library.widget.recyclerview.c.a aVar = (com.ifengyu.library.widget.recyclerview.c.a) obj;
                if (aVar.c() >= 0 && aVar.c() < i) {
                    return i2;
                }
            }
        }
        return -1;
    }

    public boolean isFirstDataItem(int i) {
        return i == 0;
    }

    public boolean isLastDataItem(int i) {
        return i == this.mData.size() + -1;
    }

    public int getViewHolderPosition(int i) {
        return getHeaderLayoutCount() + i;
    }

    public int getBottomDataPosition() {
        return (getHeaderLayoutCount() + this.mData.size()) - 1;
    }
}
