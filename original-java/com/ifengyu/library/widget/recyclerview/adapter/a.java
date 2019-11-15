package com.ifengyu.library.widget.recyclerview.adapter;

import android.support.annotation.LayoutRes;
import android.support.v7.widget.RecyclerView;
import android.util.SparseArray;
import android.view.ViewGroup;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.library.widget.recyclerview.d.a;
import com.ifengyu.library.widget.recyclerview.d.b;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: BaseMultiItemFetchLoadAdapter */
public abstract class a<T, K extends com.ifengyu.library.widget.recyclerview.d.a> extends BaseFetchLoadAdapter<T, K> {
    private SparseArray<Class<? extends b>> holderClasses;
    private SparseArray<Integer> layouts;
    private Map<Integer, Map<String, b>> multiTypeViewHolders;

    /* access modifiers changed from: protected */
    public abstract String getItemKey(T t);

    /* access modifiers changed from: protected */
    public abstract int getViewType(T t);

    public a(RecyclerView recyclerView, List<T> list) {
        super(recyclerView, 0, list);
    }

    /* access modifiers changed from: protected */
    public void addItemType(int i, @LayoutRes int i2, Class<? extends b> cls) {
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
        b bVar = (b) ((Map) this.multiTypeViewHolders.get(Integer.valueOf(itemViewType))).get(itemKey);
        if (bVar == null) {
            try {
                Constructor constructor = ((Class) this.holderClasses.get(itemViewType)).getDeclaredConstructors()[0];
                constructor.setAccessible(true);
                bVar = (b) constructor.newInstance(new Object[]{this});
                ((Map) this.multiTypeViewHolders.get(Integer.valueOf(itemViewType))).put(itemKey, bVar);
            } catch (Exception e) {
                Exception exc = e;
                b bVar2 = bVar;
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

    /* access modifiers changed from: protected */
    public b getViewHolder(int i, String str) {
        if (this.multiTypeViewHolders.containsKey(Integer.valueOf(i))) {
            return (b) ((Map) this.multiTypeViewHolders.get(Integer.valueOf(i))).get(str);
        }
        return null;
    }
}
