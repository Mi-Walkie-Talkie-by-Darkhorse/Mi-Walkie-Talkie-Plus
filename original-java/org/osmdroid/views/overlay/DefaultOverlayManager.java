package org.osmdroid.views.overlay;

import android.graphics.Canvas;
import android.graphics.Point;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.concurrent.CopyOnWriteArrayList;
import org.osmdroid.api.IMapView;
import org.osmdroid.views.MapView;
import org.osmdroid.views.overlay.Overlay.Snappable;

public class DefaultOverlayManager extends AbstractList<Overlay> implements OverlayManager {
    /* access modifiers changed from: private */
    public final CopyOnWriteArrayList<Overlay> mOverlayList = new CopyOnWriteArrayList<>();
    private TilesOverlay mTilesOverlay;

    public DefaultOverlayManager(TilesOverlay tilesOverlay) {
        setTilesOverlay(tilesOverlay);
    }

    public Overlay get(int i) {
        return (Overlay) this.mOverlayList.get(i);
    }

    public int size() {
        return this.mOverlayList.size();
    }

    public void add(int i, Overlay overlay) {
        if (overlay == null) {
            Log.e(IMapView.LOGTAG, "Attempt to add a null overlay to the collection. This is probably a bug and should be reported!", new Exception());
            return;
        }
        this.mOverlayList.add(i, overlay);
    }

    public Overlay remove(int i) {
        return (Overlay) this.mOverlayList.remove(i);
    }

    public Overlay set(int i, Overlay overlay) {
        if (overlay != null) {
            return (Overlay) this.mOverlayList.set(i, overlay);
        }
        Log.e(IMapView.LOGTAG, "Attempt to set a null overlay to the collection. This is probably a bug and should be reported!", new Exception());
        return null;
    }

    public TilesOverlay getTilesOverlay() {
        return this.mTilesOverlay;
    }

    public void setTilesOverlay(TilesOverlay tilesOverlay) {
        this.mTilesOverlay = tilesOverlay;
    }

    public Iterable<Overlay> overlaysReversed() {
        return new Iterable<Overlay>() {
            public Iterator<Overlay> iterator() {
                final ListIterator listIterator = DefaultOverlayManager.this.mOverlayList.listIterator(DefaultOverlayManager.this.mOverlayList.size());
                return new Iterator<Overlay>() {
                    public boolean hasNext() {
                        return listIterator.hasPrevious();
                    }

                    public Overlay next() {
                        return (Overlay) listIterator.previous();
                    }

                    public void remove() {
                        listIterator.remove();
                    }
                };
            }
        };
    }

    public List<Overlay> overlays() {
        return this.mOverlayList;
    }

    public void onDraw(Canvas canvas, MapView mapView) {
        if (this.mTilesOverlay != null && this.mTilesOverlay.isEnabled()) {
            this.mTilesOverlay.draw(canvas, mapView, false);
        }
        Iterator it = this.mOverlayList.iterator();
        while (it.hasNext()) {
            Overlay overlay = (Overlay) it.next();
            if (overlay != null && overlay.isEnabled()) {
                overlay.draw(canvas, mapView, false);
            }
        }
    }

    public void onDetach(MapView mapView) {
        if (this.mTilesOverlay != null) {
            this.mTilesOverlay.onDetach(mapView);
        }
        for (Overlay onDetach : overlaysReversed()) {
            onDetach.onDetach(mapView);
        }
        clear();
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent, MapView mapView) {
        for (Overlay onKeyDown : overlaysReversed()) {
            if (onKeyDown.onKeyDown(i, keyEvent, mapView)) {
                return true;
            }
        }
        return false;
    }

    public boolean onKeyUp(int i, KeyEvent keyEvent, MapView mapView) {
        for (Overlay onKeyUp : overlaysReversed()) {
            if (onKeyUp.onKeyUp(i, keyEvent, mapView)) {
                return true;
            }
        }
        return false;
    }

    public boolean onTouchEvent(MotionEvent motionEvent, MapView mapView) {
        for (Overlay onTouchEvent : overlaysReversed()) {
            if (onTouchEvent.onTouchEvent(motionEvent, mapView)) {
                return true;
            }
        }
        return false;
    }

    public boolean onTrackballEvent(MotionEvent motionEvent, MapView mapView) {
        for (Overlay onTrackballEvent : overlaysReversed()) {
            if (onTrackballEvent.onTrackballEvent(motionEvent, mapView)) {
                return true;
            }
        }
        return false;
    }

    public boolean onSnapToItem(int i, int i2, Point point, IMapView iMapView) {
        for (Overlay overlay : overlaysReversed()) {
            if ((overlay instanceof Snappable) && ((Snappable) overlay).onSnapToItem(i, i2, point, iMapView)) {
                return true;
            }
        }
        return false;
    }

    public boolean onDoubleTap(MotionEvent motionEvent, MapView mapView) {
        for (Overlay onDoubleTap : overlaysReversed()) {
            if (onDoubleTap.onDoubleTap(motionEvent, mapView)) {
                return true;
            }
        }
        return false;
    }

    public boolean onDoubleTapEvent(MotionEvent motionEvent, MapView mapView) {
        for (Overlay onDoubleTapEvent : overlaysReversed()) {
            if (onDoubleTapEvent.onDoubleTapEvent(motionEvent, mapView)) {
                return true;
            }
        }
        return false;
    }

    public boolean onSingleTapConfirmed(MotionEvent motionEvent, MapView mapView) {
        for (Overlay onSingleTapConfirmed : overlaysReversed()) {
            if (onSingleTapConfirmed.onSingleTapConfirmed(motionEvent, mapView)) {
                return true;
            }
        }
        return false;
    }

    public boolean onDown(MotionEvent motionEvent, MapView mapView) {
        for (Overlay onDown : overlaysReversed()) {
            if (onDown.onDown(motionEvent, mapView)) {
                return true;
            }
        }
        return false;
    }

    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2, MapView mapView) {
        for (Overlay onFling : overlaysReversed()) {
            if (onFling.onFling(motionEvent, motionEvent2, f, f2, mapView)) {
                return true;
            }
        }
        return false;
    }

    public boolean onLongPress(MotionEvent motionEvent, MapView mapView) {
        for (Overlay onLongPress : overlaysReversed()) {
            if (onLongPress.onLongPress(motionEvent, mapView)) {
                return true;
            }
        }
        return false;
    }

    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2, MapView mapView) {
        for (Overlay onScroll : overlaysReversed()) {
            if (onScroll.onScroll(motionEvent, motionEvent2, f, f2, mapView)) {
                return true;
            }
        }
        return false;
    }

    public void onShowPress(MotionEvent motionEvent, MapView mapView) {
        for (Overlay onShowPress : overlaysReversed()) {
            onShowPress.onShowPress(motionEvent, mapView);
        }
    }

    public boolean onSingleTapUp(MotionEvent motionEvent, MapView mapView) {
        for (Overlay onSingleTapUp : overlaysReversed()) {
            if (onSingleTapUp.onSingleTapUp(motionEvent, mapView)) {
                return true;
            }
        }
        return false;
    }

    public void setOptionsMenusEnabled(boolean z) {
        Iterator it = this.mOverlayList.iterator();
        while (it.hasNext()) {
            Overlay overlay = (Overlay) it.next();
            if ((overlay instanceof IOverlayMenuProvider) && ((IOverlayMenuProvider) overlay).isOptionsMenuEnabled()) {
                ((IOverlayMenuProvider) overlay).setOptionsMenuEnabled(z);
            }
        }
    }

    public boolean onCreateOptionsMenu(Menu menu, int i, MapView mapView) {
        boolean z;
        boolean z2 = true;
        Iterator it = overlaysReversed().iterator();
        while (true) {
            z = z2;
            if (!it.hasNext()) {
                break;
            }
            Overlay overlay = (Overlay) it.next();
            if (overlay instanceof IOverlayMenuProvider) {
                IOverlayMenuProvider iOverlayMenuProvider = (IOverlayMenuProvider) overlay;
                if (iOverlayMenuProvider.isOptionsMenuEnabled()) {
                    z &= iOverlayMenuProvider.onCreateOptionsMenu(menu, i, mapView);
                }
            }
            z2 = z;
        }
        if (this.mTilesOverlay == null || !this.mTilesOverlay.isOptionsMenuEnabled()) {
            return z;
        }
        return z & this.mTilesOverlay.onCreateOptionsMenu(menu, i, mapView);
    }

    public boolean onPrepareOptionsMenu(Menu menu, int i, MapView mapView) {
        for (Overlay overlay : overlaysReversed()) {
            if (overlay instanceof IOverlayMenuProvider) {
                IOverlayMenuProvider iOverlayMenuProvider = (IOverlayMenuProvider) overlay;
                if (iOverlayMenuProvider.isOptionsMenuEnabled()) {
                    iOverlayMenuProvider.onPrepareOptionsMenu(menu, i, mapView);
                }
            }
        }
        if (this.mTilesOverlay != null && this.mTilesOverlay.isOptionsMenuEnabled()) {
            this.mTilesOverlay.onPrepareOptionsMenu(menu, i, mapView);
        }
        return true;
    }

    public boolean onOptionsItemSelected(MenuItem menuItem, int i, MapView mapView) {
        for (Overlay overlay : overlaysReversed()) {
            if (overlay instanceof IOverlayMenuProvider) {
                IOverlayMenuProvider iOverlayMenuProvider = (IOverlayMenuProvider) overlay;
                if (iOverlayMenuProvider.isOptionsMenuEnabled() && iOverlayMenuProvider.onOptionsItemSelected(menuItem, i, mapView)) {
                    return true;
                }
            }
        }
        if (this.mTilesOverlay == null || !this.mTilesOverlay.isOptionsMenuEnabled() || !this.mTilesOverlay.onOptionsItemSelected(menuItem, i, mapView)) {
            return false;
        }
        return true;
    }
}
