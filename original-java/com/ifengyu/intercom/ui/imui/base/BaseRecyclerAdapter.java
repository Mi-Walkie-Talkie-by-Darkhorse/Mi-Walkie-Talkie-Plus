package com.ifengyu.intercom.ui.imui.base;

import android.content.Context;
import android.support.v7.widget.RecyclerView.Adapter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;

public abstract class BaseRecyclerAdapter<T> extends Adapter<a> {
    public static final int TYPE_MULTI = 2;
    public static final int TYPE_NONE = 0;
    public static final int TYPE_SINGLE = 1;
    private int curSelectedPos = -1;
    /* access modifiers changed from: private */
    public a mClickListener;
    protected final Context mContext;
    protected List<T> mData;
    protected LayoutInflater mInflater;
    /* access modifiers changed from: private */
    public b mLongClickListener;
    public ArrayList<Integer> mSelectedList = new ArrayList<>();
    private int preSelectedPos = -1;
    protected List<T> selectedItems = new ArrayList();
    private int selectedType = 0;

    @Retention(RetentionPolicy.SOURCE)
    public @interface SelectedType {
    }

    public interface a {
        void onItemClick(View view, int i);
    }

    public interface b {
        void a(View view, int i);
    }

    public abstract void bindData(a aVar, int i, T t);

    public abstract int getItemLayoutId(int i);

    public BaseRecyclerAdapter(Context context, List<T> list) {
        if (list == null) {
            list = new ArrayList<>();
        }
        this.mData = list;
        this.mContext = context;
        this.mInflater = LayoutInflater.from(context);
    }

    public void toggleSelect(int i) {
        if (!this.selectedItems.contains(getItem(i))) {
            this.selectedItems.add(getItem(i));
        } else {
            this.selectedItems.remove(getItem(i));
        }
        notifyItemChanged(i);
    }

    public void addSelectedItems(List<T> list) {
        this.selectedItems.addAll(list);
    }

    public List<T> getSelectedItems() {
        return this.selectedItems;
    }

    public void setSelectedItems(List<T> list) {
        this.selectedItems = list;
    }

    public a onCreateViewHolder(ViewGroup viewGroup, int i) {
        final a aVar = new a(this.mContext, this.mInflater.inflate(getItemLayoutId(i), viewGroup, false));
        if (this.mClickListener != null) {
            aVar.itemView.setOnClickListener(new OnClickListener() {
                public void onClick(View view) {
                    BaseRecyclerAdapter.this.mClickListener.onItemClick(aVar.itemView, aVar.getLayoutPosition());
                }
            });
        }
        if (this.mLongClickListener != null) {
            aVar.itemView.setOnLongClickListener(new OnLongClickListener() {
                public boolean onLongClick(View view) {
                    BaseRecyclerAdapter.this.mLongClickListener.a(aVar.itemView, aVar.getLayoutPosition());
                    return true;
                }
            });
        }
        return aVar;
    }

    public void onBindViewHolder(a aVar, int i) {
        switch (this.selectedType) {
            case 0:
            case 1:
                bindData(aVar, i, this.mData.get(i));
                return;
            case 2:
                bindMultiTypeData(aVar, i, this.mData.get(i));
                return;
            default:
                return;
        }
    }

    /* access modifiers changed from: protected */
    public void bindMultiTypeData(a aVar, int i, T t) {
    }

    public T getItem(int i) {
        return this.mData.get(i);
    }

    public int getItemCount() {
        return this.mData.size();
    }

    public int getSelectedType() {
        return this.selectedType;
    }

    public void setSelectedType(int i) {
        this.selectedType = i;
    }

    public int getCurSelectedPos() {
        return this.curSelectedPos;
    }

    public void setCurSelectedPos(int i) {
        this.curSelectedPos = i;
    }

    public void refreshItemState(int i) {
        switch (this.selectedType) {
            case 0:
            case 1:
                this.preSelectedPos = this.curSelectedPos;
                this.curSelectedPos = i;
                if (this.preSelectedPos != -1) {
                    notifyItemChanged(this.preSelectedPos);
                }
                if (this.curSelectedPos != -1) {
                    notifyItemChanged(this.curSelectedPos);
                    return;
                }
                return;
            case 2:
                toggleSelect(i);
                return;
            default:
                return;
        }
    }

    public List<T> getData() {
        return this.mData;
    }

    public void setNewData(List<T> list) {
        if (list == null) {
            list = new ArrayList<>();
        }
        this.mData = list;
        notifyDataSetChanged();
    }

    public void add(int i, T t) {
        this.mData.add(i, t);
        notifyItemInserted(i);
    }

    public void add(T t) {
        this.mData.add(t);
        notifyItemInserted(getItemCount() - 1);
    }

    public void clear() {
        this.mData.clear();
        notifyDataSetChanged();
    }

    public void delete(int i) {
        this.mData.remove(i);
        notifyItemRemoved(i);
    }

    public void setOnItemClickListener(a aVar) {
        this.mClickListener = aVar;
    }

    public void setOnItemLongClickListener(b bVar) {
        this.mLongClickListener = bVar;
    }
}
