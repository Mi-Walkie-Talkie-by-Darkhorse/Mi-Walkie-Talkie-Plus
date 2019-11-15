package com.ifengyu.library.widget.recyclerview.adapter;

import android.animation.Animator;
import android.content.Context;
import android.support.v4.view.InputDeviceCompat;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.GridLayoutManager.SpanSizeLookup;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.LayoutManager;
import android.support.v7.widget.RecyclerView.OnScrollListener;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.support.v7.widget.StaggeredGridLayoutManager.LayoutParams;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import com.ifengyu.library.widget.recyclerview.a.d;
import com.ifengyu.library.widget.recyclerview.a.e;
import com.ifengyu.library.widget.recyclerview.a.f;
import com.ifengyu.library.widget.recyclerview.d.a;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;

public abstract class BaseFetchLoadAdapter<T, K extends com.ifengyu.library.widget.recyclerview.d.a> extends Adapter<K> implements c {
    public static final int ALPHAIN = 1;
    public static final int SCALEIN = 2;
    public static final int SLIDEIN_BOTTOM = 3;
    public static final int SLIDEIN_LEFT = 4;
    public static final int SLIDEIN_RIGHT = 5;
    private static final String TAG = BaseFetchLoadAdapter.class.getSimpleName();
    /* access modifiers changed from: private */
    public boolean isScrolling = false;
    private int mAnimationDuration = 200;
    private boolean mAnimationShowFirstOnly = true;
    private int mAutoFetchMoreSize = 1;
    private int mAutoLoadMoreSize = 1;
    protected Context mContext;
    private com.ifengyu.library.widget.recyclerview.a.b mCustomAnimation;
    protected List<T> mData;
    private FrameLayout mEmptyView;
    private boolean mFetchMoreEnable = false;
    /* access modifiers changed from: private */
    public com.ifengyu.library.widget.recyclerview.f.a mFetchMoreView = new com.ifengyu.library.widget.recyclerview.f.c();
    private boolean mFetching = false;
    private boolean mFirstFetchSuccess = true;
    private boolean mFirstLoadSuccess = true;
    private Interpolator mInterpolator = new LinearInterpolator();
    private boolean mIsUseEmpty = true;
    private int mLastPosition = -1;
    protected LayoutInflater mLayoutInflater;
    protected int mLayoutResId;
    private boolean mLoadMoreEnable = false;
    /* access modifiers changed from: private */
    public com.ifengyu.library.widget.recyclerview.f.a mLoadMoreView = new com.ifengyu.library.widget.recyclerview.f.c();
    private boolean mLoading = false;
    private boolean mNextFetchEnable = false;
    private boolean mNextLoadEnable = false;
    private boolean mOpenAnimationEnable = false;
    protected RecyclerView mRecyclerView;
    private a mRequestFetchMoreListener;
    private b mRequestLoadMoreListener;
    private com.ifengyu.library.widget.recyclerview.a.b mSelectAnimation = new com.ifengyu.library.widget.recyclerview.a.a();
    /* access modifiers changed from: private */
    public c mSpanSizeLookup;

    @Retention(RetentionPolicy.SOURCE)
    public @interface AnimationType {
    }

    public interface a {
        void onFetchMoreRequested();
    }

    public interface b {
        void onLoadMoreRequested();
    }

    public interface c {
        int a(GridLayoutManager gridLayoutManager, int i);
    }

    /* access modifiers changed from: protected */
    public abstract void convert(K k, T t, int i, boolean z);

    public BaseFetchLoadAdapter(RecyclerView recyclerView, int i, List<T> list) {
        this.mRecyclerView = recyclerView;
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
                BaseFetchLoadAdapter.this.isScrolling = i != 0;
            }
        });
        com.ifengyu.library.widget.recyclerview.g.a.a(recyclerView, false);
    }

    public int getHeaderLayoutCount() {
        return getFetchMoreViewCount();
    }

    public void setOnFetchMoreListener(a aVar) {
        this.mRequestFetchMoreListener = aVar;
        this.mNextFetchEnable = true;
        this.mFetchMoreEnable = true;
        this.mFetching = false;
    }

    public void setAutoFetchMoreSize(int i) {
        if (i > 1) {
            this.mAutoFetchMoreSize = i;
        }
    }

    public void setFetchMoreView(com.ifengyu.library.widget.recyclerview.f.a aVar) {
        this.mFetchMoreView = aVar;
    }

    /* access modifiers changed from: private */
    public int getFetchMoreViewCount() {
        if (this.mRequestFetchMoreListener == null || !this.mFetchMoreEnable) {
            return 0;
        }
        if (this.mNextFetchEnable || !this.mFetchMoreView.b()) {
            return 1;
        }
        return 0;
    }

    private void autoRequestFetchMoreData(int i) {
        if (getFetchMoreViewCount() == 0 || i > this.mAutoFetchMoreSize - 1 || this.mFetchMoreView.a() != 1) {
            return;
        }
        if (this.mData.size() != 0 || !this.mFirstFetchSuccess) {
            Log.d(TAG, "auto fetch, pos=" + i);
            this.mFetchMoreView.a(2);
            if (!this.mFetching) {
                this.mFetching = true;
                this.mRequestFetchMoreListener.onFetchMoreRequested();
            }
        }
    }

    public void fetchMoreComplete(List<T> list) {
        addFrontData(list);
        if (getFetchMoreViewCount() != 0) {
            fetchMoreComplete(list.size());
        }
    }

    public void fetchMoreComplete(int i) {
        if (getFetchMoreViewCount() != 0) {
            this.mFetching = false;
            this.mFetchMoreView.a(1);
            notifyItemChanged(0);
            if (this.mRecyclerView != null) {
                LayoutManager layoutManager = this.mRecyclerView.getLayoutManager();
                if (!(layoutManager instanceof LinearLayoutManager)) {
                    this.mRecyclerView.scrollToPosition(i);
                } else if (((LinearLayoutManager) layoutManager).findFirstVisibleItemPosition() == 0) {
                    this.mRecyclerView.scrollToPosition(getFetchMoreViewCount() + i);
                }
            }
        }
    }

    public void fetchMoreEnd(List<T> list, boolean z) {
        addFrontData(list);
        if (getFetchMoreViewCount() != 0) {
            this.mFetching = false;
            this.mNextFetchEnable = false;
            this.mFetchMoreView.a(z);
            if (z) {
                notifyItemRemoved(0);
                return;
            }
            this.mFetchMoreView.a(4);
            notifyItemChanged(0);
        }
    }

    public void fetchMoreFailed() {
        if (getFetchMoreViewCount() != 0) {
            this.mFetching = false;
            if (this.mData.size() == 0) {
                this.mFirstFetchSuccess = false;
            }
            this.mFetchMoreView.a(3);
            notifyItemChanged(0);
        }
    }

    public void setLoadMoreView(com.ifengyu.library.widget.recyclerview.f.a aVar) {
        this.mLoadMoreView = aVar;
    }

    public void setOnLoadMoreListener(b bVar) {
        this.mRequestLoadMoreListener = bVar;
        this.mNextLoadEnable = true;
        this.mLoadMoreEnable = true;
        this.mLoading = false;
    }

    public void setAutoLoadMoreSize(int i) {
        if (i > 1) {
            this.mAutoLoadMoreSize = i;
        }
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

    private void autoRequestLoadMoreData(int i) {
        if (getLoadMoreViewCount() == 0 || i < getItemCount() - this.mAutoLoadMoreSize || this.mLoadMoreView.a() != 1) {
            return;
        }
        if (this.mData.size() != 0 || !this.mFirstLoadSuccess) {
            Log.d(TAG, "auto load, pos=" + i);
            this.mLoadMoreView.a(2);
            if (!this.mLoading) {
                this.mLoading = true;
                this.mRequestLoadMoreListener.onLoadMoreRequested();
            }
        }
    }

    public void loadMoreComplete(List<T> list) {
        appendData(list);
        loadMoreComplete();
    }

    public void loadMoreComplete() {
        if (getLoadMoreViewCount() != 0) {
            this.mLoading = false;
            this.mLoadMoreView.a(1);
            notifyItemChanged(getFetchMoreViewCount() + this.mData.size());
        }
    }

    public void loadMoreEnd(List<T> list, boolean z) {
        appendData(list);
        if (getLoadMoreViewCount() != 0) {
            this.mLoading = false;
            this.mNextLoadEnable = false;
            this.mLoadMoreView.a(z);
            if (z) {
                notifyItemRemoved(getFetchMoreViewCount() + this.mData.size());
                return;
            }
            this.mLoadMoreView.a(4);
            notifyItemChanged(getFetchMoreViewCount() + this.mData.size());
        }
    }

    public void loadMoreFail() {
        if (getLoadMoreViewCount() != 0) {
            this.mLoading = false;
            if (this.mData.size() == 0) {
                this.mFirstLoadSuccess = false;
            }
            this.mLoadMoreView.a(3);
            notifyItemChanged(getFetchMoreViewCount() + this.mData.size());
        }
    }

    public void setEnableLoadMore(boolean z) {
        int loadMoreViewCount = getLoadMoreViewCount();
        this.mLoadMoreEnable = z;
        int loadMoreViewCount2 = getLoadMoreViewCount();
        if (loadMoreViewCount == 1) {
            if (loadMoreViewCount2 == 0) {
                notifyItemRemoved(getFetchMoreViewCount() + this.mData.size());
            }
        } else if (loadMoreViewCount2 == 1) {
            this.mLoadMoreView.a(1);
            notifyItemInserted(getFetchMoreViewCount() + this.mData.size());
        }
    }

    public boolean isLoadMoreEnable() {
        return this.mLoadMoreEnable;
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
        if (this.mRequestFetchMoreListener != null) {
            this.mNextFetchEnable = true;
            this.mFetchMoreEnable = true;
            this.mFetching = false;
            this.mFetchMoreView.a(1);
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
        if (this.mRequestFetchMoreListener != null) {
            this.mNextFetchEnable = true;
            this.mFetching = false;
            this.mFetchMoreView.a(1);
        }
        this.mLastPosition = -1;
        notifyDataSetChanged();
    }

    public void add(int i, T t) {
        this.mData.add(i, t);
        notifyItemInserted(getFetchMoreViewCount() + i);
    }

    public void addData(int i, List<T> list) {
        if (i < 0 || i >= this.mData.size()) {
            throw new ArrayIndexOutOfBoundsException("inserted position most greater than 0 and less than data size");
        }
        this.mData.addAll(i, list);
        notifyItemRangeInserted(getFetchMoreViewCount() + i, list.size());
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

    public void addFrontData(List<T> list) {
        if (list != null && !list.isEmpty()) {
            this.mData.addAll(0, list);
            notifyItemRangeInserted(getFetchMoreViewCount(), list.size());
        }
    }

    public void appendData(List<T> list) {
        if (list != null && !list.isEmpty()) {
            this.mData.addAll(list);
            notifyItemRangeInserted((this.mData.size() - list.size()) + getFetchMoreViewCount(), list.size());
        }
    }

    public void appendData(T t) {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(t);
        appendData((List<T>) arrayList);
    }

    public List<T> getData() {
        return this.mData;
    }

    public T getItem(int i) {
        return this.mData.get(i);
    }

    public int getDataSize() {
        if (this.mData == null) {
            return 0;
        }
        return this.mData.size();
    }

    public int getBottomDataPosition() {
        return (getHeaderLayoutCount() + this.mData.size()) - 1;
    }

    public void notifyDataItemChanged(int i) {
        notifyItemChanged(getHeaderLayoutCount() + i);
    }

    public int getItemCount() {
        if (getEmptyViewCount() == 1) {
            return 1;
        }
        return getFetchMoreViewCount() + this.mData.size() + getLoadMoreViewCount();
    }

    public int getItemViewType(int i) {
        if (getEmptyViewCount() == 1) {
            return 4100;
        }
        autoRequestFetchMoreData(i);
        autoRequestLoadMoreData(i);
        int fetchMoreViewCount = getFetchMoreViewCount();
        if (i < fetchMoreViewCount) {
            Log.d(TAG, "FETCH pos=" + i);
            return 4096;
        }
        int i2 = i - fetchMoreViewCount;
        if (i2 < this.mData.size()) {
            Log.d(TAG, "DATA pos=" + i);
            return getDefItemViewType(i2);
        }
        Log.d(TAG, "LOAD pos=" + i);
        return InputDeviceCompat.SOURCE_TOUCHSCREEN;
    }

    public void onBindViewHolder(K k, int i) {
        switch (k.getItemViewType()) {
            case 4096:
                this.mFetchMoreView.a((com.ifengyu.library.widget.recyclerview.d.a) k);
                return;
            case InputDeviceCompat.SOURCE_TOUCHSCREEN /*4098*/:
                this.mLoadMoreView.a((com.ifengyu.library.widget.recyclerview.d.a) k);
                return;
            case 4100:
                return;
            default:
                convert(k, this.mData.get(k.getLayoutPosition() - getFetchMoreViewCount()), i, this.isScrolling);
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
    public View getItemView(int i, ViewGroup viewGroup) {
        return this.mLayoutInflater.inflate(i, viewGroup, false);
    }

    /* access modifiers changed from: protected */
    public K createBaseViewHolder(View view) {
        return new com.ifengyu.library.widget.recyclerview.d.a(view);
    }

    /* access modifiers changed from: protected */
    public int getDefItemViewType(int i) {
        return super.getItemViewType(i);
    }

    public K onCreateViewHolder(ViewGroup viewGroup, int i) {
        this.mContext = viewGroup.getContext();
        this.mLayoutInflater = LayoutInflater.from(this.mContext);
        switch (i) {
            case 4096:
                return getFetchingView(viewGroup);
            case InputDeviceCompat.SOURCE_TOUCHSCREEN /*4098*/:
                return getLoadingView(viewGroup);
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
                if (BaseFetchLoadAdapter.this.mLoadMoreView.a() == 3) {
                    BaseFetchLoadAdapter.this.mLoadMoreView.a(1);
                    BaseFetchLoadAdapter.this.notifyItemChanged(BaseFetchLoadAdapter.this.getFetchMoreViewCount() + BaseFetchLoadAdapter.this.mData.size());
                }
            }
        });
        return createBaseViewHolder;
    }

    private K getFetchingView(ViewGroup viewGroup) {
        K createBaseViewHolder = createBaseViewHolder(getItemView(this.mFetchMoreView.c(), viewGroup));
        createBaseViewHolder.itemView.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                if (BaseFetchLoadAdapter.this.mFetchMoreView.a() == 3) {
                    BaseFetchLoadAdapter.this.mFetchMoreView.a(1);
                    BaseFetchLoadAdapter.this.notifyItemChanged(0);
                }
            }
        });
        return createBaseViewHolder;
    }

    public void onViewAttachedToWindow(K k) {
        super.onViewAttachedToWindow(k);
        int itemViewType = k.getItemViewType();
        if (itemViewType == 4100 || itemViewType == 4098 || itemViewType == 4096) {
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
                    int itemViewType = BaseFetchLoadAdapter.this.getItemViewType(i);
                    if (BaseFetchLoadAdapter.this.mSpanSizeLookup != null) {
                        return (itemViewType == 4100 || itemViewType == 4098 || itemViewType == 4096) ? gridLayoutManager.getSpanCount() : BaseFetchLoadAdapter.this.mSpanSizeLookup.a(gridLayoutManager, i - BaseFetchLoadAdapter.this.getFetchMoreViewCount());
                    }
                    if (itemViewType == 4100 || itemViewType == 4098 || itemViewType == 4096) {
                        return gridLayoutManager.getSpanCount();
                    }
                    return 1;
                }
            });
        }
    }

    public int getEmptyViewCount() {
        if (this.mEmptyView == null || this.mEmptyView.getChildCount() == 0 || !this.mIsUseEmpty || this.mData.size() != 0) {
            return 0;
        }
        return 1;
    }

    public void setEmptyView(View view) {
        boolean z;
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
            notifyItemInserted(0);
        }
    }

    public void isUseEmpty(boolean z) {
        this.mIsUseEmpty = z;
    }

    public View getEmptyView() {
        return this.mEmptyView;
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
        this.mAnimationDuration = 0;
    }

    public void setAnimationShowFirstOnly(boolean z) {
        this.mAnimationShowFirstOnly = z;
    }

    public void setAnimationDuration(int i) {
        this.mAnimationDuration = i;
    }

    private void addAnimation(ViewHolder viewHolder) {
        com.ifengyu.library.widget.recyclerview.a.b bVar;
        if (!this.mOpenAnimationEnable) {
            return;
        }
        if (!this.mAnimationShowFirstOnly || viewHolder.getLayoutPosition() > this.mLastPosition) {
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
        animator.setDuration((long) this.mAnimationDuration).start();
        animator.setInterpolator(this.mInterpolator);
    }
}
