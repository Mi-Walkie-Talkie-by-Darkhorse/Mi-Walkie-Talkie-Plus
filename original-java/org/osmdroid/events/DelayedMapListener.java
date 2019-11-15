package org.osmdroid.events;

import android.os.Handler;
import android.util.Log;
import org.osmdroid.api.IMapView;

public class DelayedMapListener implements MapListener {
    protected static final int DEFAULT_DELAY = 100;
    protected CallbackTask callback;
    protected long delay;
    protected Handler handler;
    MapListener wrappedListener;

    private class CallbackTask implements Runnable {
        private final MapEvent event;

        public CallbackTask(MapEvent mapEvent) {
            this.event = mapEvent;
        }

        public void run() {
            if (this.event instanceof ScrollEvent) {
                DelayedMapListener.this.wrappedListener.onScroll((ScrollEvent) this.event);
            } else if (this.event instanceof ZoomEvent) {
                DelayedMapListener.this.wrappedListener.onZoom((ZoomEvent) this.event);
            } else {
                Log.d(IMapView.LOGTAG, "Unknown event received: " + this.event);
            }
        }
    }

    public DelayedMapListener(MapListener mapListener, long j) {
        this.wrappedListener = mapListener;
        this.delay = j;
        this.handler = new Handler();
        this.callback = null;
    }

    public DelayedMapListener(MapListener mapListener) {
        this(mapListener, 100);
    }

    public boolean onScroll(ScrollEvent scrollEvent) {
        dispatch(scrollEvent);
        return true;
    }

    public boolean onZoom(ZoomEvent zoomEvent) {
        dispatch(zoomEvent);
        return true;
    }

    /* access modifiers changed from: protected */
    public void dispatch(MapEvent mapEvent) {
        if (this.callback != null) {
            this.handler.removeCallbacks(this.callback);
        }
        this.callback = new CallbackTask(mapEvent);
        this.handler.postDelayed(this.callback, this.delay);
    }
}
