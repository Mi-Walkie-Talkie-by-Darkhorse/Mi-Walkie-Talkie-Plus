package com.nostra13.universalimageloader.cache.memory.impl;

import android.graphics.Bitmap;
import com.nostra13.universalimageloader.cache.memory.LimitedMemoryCache;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class LargestLimitedMemoryCache extends LimitedMemoryCache {
    private final Map<Bitmap, Integer> valueSizes = Collections.synchronizedMap(new HashMap());

    public LargestLimitedMemoryCache(int i) {
        super(i);
    }

    public boolean put(String str, Bitmap bitmap) {
        if (!super.put(str, bitmap)) {
            return false;
        }
        this.valueSizes.put(bitmap, Integer.valueOf(getSize(bitmap)));
        return true;
    }

    public Bitmap remove(String str) {
        Bitmap bitmap = super.get(str);
        if (bitmap != null) {
            this.valueSizes.remove(bitmap);
        }
        return super.remove(str);
    }

    public void clear() {
        this.valueSizes.clear();
        super.clear();
    }

    /* access modifiers changed from: protected */
    public int getSize(Bitmap bitmap) {
        return bitmap.getRowBytes() * bitmap.getHeight();
    }

    /* access modifiers changed from: protected */
    public Bitmap removeNext() {
        Bitmap bitmap;
        Integer num;
        Bitmap bitmap2 = null;
        Set<Entry> entrySet = this.valueSizes.entrySet();
        synchronized (this.valueSizes) {
            Integer num2 = null;
            for (Entry entry : entrySet) {
                if (bitmap2 == null) {
                    bitmap = (Bitmap) entry.getKey();
                    num = (Integer) entry.getValue();
                } else {
                    Integer num3 = (Integer) entry.getValue();
                    if (num3.intValue() > num2.intValue()) {
                        Bitmap bitmap3 = (Bitmap) entry.getKey();
                        num = num3;
                        bitmap = bitmap3;
                    } else {
                        bitmap = bitmap2;
                        num = num2;
                    }
                }
                bitmap2 = bitmap;
                num2 = num;
            }
        }
        this.valueSizes.remove(bitmap2);
        return bitmap2;
    }

    /* access modifiers changed from: protected */
    public Reference<Bitmap> createReference(Bitmap bitmap) {
        return new WeakReference(bitmap);
    }
}
