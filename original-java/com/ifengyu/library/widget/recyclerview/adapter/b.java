package com.ifengyu.library.widget.recyclerview.adapter;

import android.support.annotation.LayoutRes;
import android.support.v7.widget.RecyclerView;
import android.util.SparseArray;
import android.view.ViewGroup;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.library.widget.recyclerview.d.a;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: BaseMultiItemQuickAdapter */
public abstract class b<T, K extends a> extends BaseQuickAdapter<T, K> {
    private SparseArray<Class<? extends com.ifengyu.library.widget.recyclerview.d.b>> holderClasses;
    private SparseArray<Integer> layouts;
    private Map<Integer, Map<String, com.ifengyu.library.widget.recyclerview.d.b>> multiTypeViewHolders;

    /* access modifiers changed from: protected */
    public abstract String getItemKey(T t);

    /* access modifiers changed from: protected */
    public abstract int getViewType(T t);

    public b(RecyclerView recyclerView, List<T> list) {
        super(recyclerView, list);
    }

    /* access modifiers changed from: protected */
    public void addItemType(int i, @LayoutRes int i2, Class<? extends com.ifengyu.library.widget.recyclerview.d.b> cls) {
        if (this.layouts == null) {
            this.layouts = new SparseArray<>();
        }
        this.layouts.put(i, Integer.valueOf(i2));
        if (this.holderClasses == null) {
            this.holderClasses = new SparseArray<>();
        }
        this.holderClasses.put(i, cls);
        if (this.multiTypeViewHolders == null) {
            this.multiTypeViewHolders = new HashMap();
        }
        this.multiTypeViewHolders.put(Integer.valueOf(i), new HashMap());
    }

    /* access modifiers changed from: protected */
    public int getDefItemViewType(int i) {
        return getViewType(this.mData.get(i));
    }

    /* access modifiers changed from: protected */
    public K onCreateDefViewHolder(ViewGroup viewGroup, int i) {
        return createBaseViewHolder(viewGroup, getLayoutId(i));
    }

    /* access modifiers changed from: protected */
    public void convert(K k, T t, int i, boolean z) {
        String itemKey = getItemKey(t);
        int itemViewType = k.getItemViewType();
        com.ifengyu.library.widget.recyclerview.d.b bVar = (com.ifengyu.library.widget.recyclerview.d.b) ((Map) this.multiTypeViewHolders.get(Integer.valueOf(itemViewType))).get(itemKey);
        if (bVar == null) {
            try {
                Constructor constructor = ((Class) this.holderClasses.get(itemViewType)).getDeclaredConstructors()[0];
                constructor.setAccessible(true);
                bVar = (com.ifengyu.library.widget.recyclerview.d.b) constructor.newInstance(new Object[]{this});
                ((Map) this.multiTypeViewHolders.get(Integer.valueOf(itemViewType))).put(itemKey, bVar);
            } catch (Exception e) {
                Exception exc = e;
                com.ifengyu.library.widget.recyclerview.d.b bVar2 = bVar;
                ThrowableExtension.printStackTrace(exc);
                bVar = bVar2;
            }
        }
        if (bVar != null) {
            bVar.convert(k, t, i, z);
        }
    }

    /* access modifiers changed from: protected */
    public void onRemove(T t) {
        super.onRemove(t);
        ((Map) this.multiTypeViewHolders.get(Integer.valueOf(getViewType(t)))).remove(getItemKey(t));
    }

    private int getLayoutId(int i) {
        return ((Integer) this.layouts.get(i)).intValue();
    }
}
