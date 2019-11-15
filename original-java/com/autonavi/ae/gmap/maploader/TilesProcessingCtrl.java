package com.autonavi.ae.gmap.maploader;

import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.util.Hashtable;
import java.util.Map.Entry;

public class TilesProcessingCtrl {
    private static final int EXPIRED_MAX_TIME = 60;
    private Hashtable<String, ProcessingTile> mProcessingTiles = new Hashtable<>();
    private int mRequireSize = 0;

    public synchronized void removeTile(String str) {
        ((ProcessingTile) this.mProcessingTiles.remove(str)).recycle();
    }

    public synchronized boolean isProcessing(String str) {
        boolean z;
        if (((ProcessingTile) this.mProcessingTiles.get(str)) != null) {
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    public synchronized void addProcessingTile(String str) {
        this.mProcessingTiles.put(str, ProcessingTile.obtain(str));
    }

    public synchronized void clearAll() {
        try {
            for (Entry value : this.mProcessingTiles.entrySet()) {
                ((ProcessingTile) value.getValue()).recycle();
            }
            this.mProcessingTiles.clear();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
        return;
    }

    public synchronized int getSize() {
        return this.mProcessingTiles.size();
    }
}
