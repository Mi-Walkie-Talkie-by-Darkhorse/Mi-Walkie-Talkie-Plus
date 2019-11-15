package com.autonavi.ae.gmap.gloverlay;

import android.content.Context;
import android.graphics.Bitmap;
import com.autonavi.ae.gmap.gloverlay.GLOverlay;
import com.autonavi.amap.mapcore.interfaces.IAMap;
import java.io.Serializable;
import java.util.List;
import java.util.Vector;

public abstract class BaseMapOverlay<T extends GLOverlay, E> implements Serializable {
    private static final long serialVersionUID = 1;
    protected Context mContext;
    protected int mEngineID = 1;
    protected T mGLOverlay;
    protected Vector<E> mItemList = null;
    protected int mLastFocusedIndex;
    protected IAMap mMapView;

    public abstract void addItem(E e);

    /* access modifiers changed from: protected */
    public abstract void iniGLOverlay();

    public abstract void resumeMarker(Bitmap bitmap);

    public BaseMapOverlay(int i, Context context, IAMap iAMap) {
        this.mEngineID = i;
        this.mContext = context;
        this.mMapView = iAMap;
        this.mItemList = new Vector<>();
        iniGLOverlay();
    }

    public T getGLOverlay() {
        return this.mGLOverlay;
    }

    public void setVisible(boolean z) {
        if (this.mGLOverlay != null) {
            this.mGLOverlay.setVisible(z);
        }
    }

    public boolean isVisible() {
        if (this.mGLOverlay != null) {
            return this.mGLOverlay.isVisible();
        }
        return false;
    }

    public void setClickable(boolean z) {
        if (this.mGLOverlay != null) {
            this.mGLOverlay.setClickable(z);
        }
    }

    public boolean isClickable() {
        if (this.mGLOverlay != null) {
            return this.mGLOverlay.isClickable();
        }
        return false;
    }

    public int getSize() {
        return this.mItemList.size();
    }

    public boolean clear() {
        try {
            this.mItemList.clear();
            clearFocus();
            if (this.mGLOverlay != null) {
                this.mGLOverlay.removeAll();
            }
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public boolean removeAll() {
        return clear();
    }

    public void clearFocus() {
        this.mLastFocusedIndex = -1;
        this.mGLOverlay.clearFocus();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:19:?, code lost:
        return null;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final E getItem(int r4) {
        /*
            r3 = this;
            r1 = 0
            java.util.Vector<E> r2 = r3.mItemList     // Catch:{ IndexOutOfBoundsException -> 0x001e }
            monitor-enter(r2)     // Catch:{ IndexOutOfBoundsException -> 0x001e }
            if (r4 < 0) goto L_0x0010
            java.util.Vector<E> r0 = r3.mItemList     // Catch:{ all -> 0x001b }
            int r0 = r0.size()     // Catch:{ all -> 0x001b }
            int r0 = r0 + -1
            if (r4 <= r0) goto L_0x0013
        L_0x0010:
            monitor-exit(r2)     // Catch:{ all -> 0x001b }
            r0 = r1
        L_0x0012:
            return r0
        L_0x0013:
            java.util.Vector<E> r0 = r3.mItemList     // Catch:{ all -> 0x001b }
            java.lang.Object r0 = r0.get(r4)     // Catch:{ all -> 0x001b }
            monitor-exit(r2)     // Catch:{ all -> 0x001b }
            goto L_0x0012
        L_0x001b:
            r0 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x001b }
            throw r0     // Catch:{ IndexOutOfBoundsException -> 0x001e }
        L_0x001e:
            r0 = move-exception
            r0 = r1
            goto L_0x0012
        */
        throw new UnsupportedOperationException("Method not decompiled: com.autonavi.ae.gmap.gloverlay.BaseMapOverlay.getItem(int):java.lang.Object");
    }

    public void removeItem(int i) {
        if (i >= 0) {
            try {
                if (i <= this.mItemList.size() - 1) {
                    if (i == this.mLastFocusedIndex) {
                        this.mLastFocusedIndex = -1;
                        clearFocus();
                    }
                    this.mItemList.remove(i);
                    if (this.mGLOverlay != null) {
                        this.mGLOverlay.removeItem(i);
                    }
                }
            } catch (IndexOutOfBoundsException e) {
            }
        }
    }

    public void removeItem(E e) {
        if (e != null) {
            try {
                synchronized (this.mItemList) {
                    removeItem(this.mItemList.indexOf(e));
                }
            } catch (IndexOutOfBoundsException e2) {
            }
        }
    }

    public List<E> getItems() {
        return this.mItemList;
    }

    /* access modifiers changed from: protected */
    public void finalize() throws Throwable {
        releaseInstance();
        super.finalize();
    }

    public void releaseInstance() {
        if (getGLOverlay() != null) {
            if (this.mMapView != null && this.mMapView.isMaploaded()) {
                this.mMapView.removeGLOverlay(this);
            }
            getGLOverlay().releaseInstance();
        }
    }
}
