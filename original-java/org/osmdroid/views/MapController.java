package org.osmdroid.views;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.annotation.TargetApi;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.ScaleAnimation;
import java.util.Iterator;
import java.util.LinkedList;
import org.osmdroid.api.IGeoPoint;
import org.osmdroid.api.IMapController;
import org.osmdroid.events.ScrollEvent;
import org.osmdroid.events.ZoomEvent;
import org.osmdroid.util.BoundingBox;
import org.osmdroid.util.BoundingBoxE6;
import org.osmdroid.views.MapView.OnFirstLayoutListener;
import org.osmdroid.views.util.MyMath;

public class MapController implements IMapController, OnFirstLayoutListener {
    private Animator mCurrentAnimator;
    protected final MapView mMapView;
    private ReplayController mReplayController = new ReplayController();
    private ValueAnimator mZoomInAnimation;
    private ScaleAnimation mZoomInAnimationOld;
    private ValueAnimator mZoomOutAnimation;
    private ScaleAnimation mZoomOutAnimationOld;

    private class ReplayController {
        private LinkedList<ReplayClass> mReplayList;

        private class ReplayClass {
            /* access modifiers changed from: private */
            public IGeoPoint mGeoPoint;
            /* access modifiers changed from: private */
            public Point mPoint;
            /* access modifiers changed from: private */
            public ReplayType mReplayType;

            public ReplayClass(ReplayType replayType, Point point, IGeoPoint iGeoPoint) {
                this.mReplayType = replayType;
                this.mPoint = point;
                this.mGeoPoint = iGeoPoint;
            }
        }

        private ReplayController() {
            this.mReplayList = new LinkedList<>();
        }

        public void animateTo(IGeoPoint iGeoPoint) {
            this.mReplayList.add(new ReplayClass(ReplayType.AnimateToGeoPoint, null, iGeoPoint));
        }

        public void animateTo(int i, int i2) {
            this.mReplayList.add(new ReplayClass(ReplayType.AnimateToPoint, new Point(i, i2), null));
        }

        public void setCenter(IGeoPoint iGeoPoint) {
            this.mReplayList.add(new ReplayClass(ReplayType.SetCenterPoint, null, iGeoPoint));
        }

        public void zoomToSpan(int i, int i2) {
            this.mReplayList.add(new ReplayClass(ReplayType.ZoomToSpanPoint, new Point(i, i2), null));
        }

        public void zoomToSpan(double d, double d2) {
            this.mReplayList.add(new ReplayClass(ReplayType.ZoomToSpanPoint, new Point((int) (d * 1000000.0d), (int) (1000000.0d * d2)), null));
        }

        public void replayCalls() {
            Iterator it = this.mReplayList.iterator();
            while (it.hasNext()) {
                ReplayClass replayClass = (ReplayClass) it.next();
                switch (replayClass.mReplayType) {
                    case AnimateToGeoPoint:
                        MapController.this.animateTo(replayClass.mGeoPoint);
                        break;
                    case AnimateToPoint:
                        MapController.this.animateTo(replayClass.mPoint.x, replayClass.mPoint.y);
                        break;
                    case SetCenterPoint:
                        MapController.this.setCenter(replayClass.mGeoPoint);
                        break;
                    case ZoomToSpanPoint:
                        MapController.this.zoomToSpan(replayClass.mPoint.x, replayClass.mPoint.y);
                        break;
                }
            }
            this.mReplayList.clear();
        }
    }

    private enum ReplayType {
        ZoomToSpanPoint,
        AnimateToPoint,
        AnimateToGeoPoint,
        SetCenterPoint
    }

    protected static class ZoomAnimationListener implements AnimationListener {
        private MapController mMapController;

        public ZoomAnimationListener(MapController mapController) {
            this.mMapController = mapController;
        }

        public void onAnimationStart(Animation animation) {
            this.mMapController.onAnimationStart();
        }

        public void onAnimationEnd(Animation animation) {
            this.mMapController.onAnimationEnd();
        }

        public void onAnimationRepeat(Animation animation) {
        }
    }

    @TargetApi(11)
    private static class ZoomAnimatorListener implements AnimatorListener, AnimatorUpdateListener {
        private MapController mMapController;

        public ZoomAnimatorListener(MapController mapController) {
            this.mMapController = mapController;
        }

        public void onAnimationStart(Animator animator) {
            this.mMapController.onAnimationStart();
        }

        public void onAnimationEnd(Animator animator) {
            this.mMapController.onAnimationEnd();
        }

        public void onAnimationCancel(Animator animator) {
        }

        public void onAnimationRepeat(Animator animator) {
        }

        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.mMapController.mMapView.mMultiTouchScale = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            this.mMapController.mMapView.invalidate();
        }
    }

    public MapController(MapView mapView) {
        this.mMapView = mapView;
        if (!this.mMapView.isLayoutOccurred()) {
            this.mMapView.addOnFirstLayoutListener(this);
        }
        if (VERSION.SDK_INT >= 11) {
            ZoomAnimatorListener zoomAnimatorListener = new ZoomAnimatorListener(this);
            this.mZoomInAnimation = ValueAnimator.ofFloat(new float[]{1.0f, 2.0f});
            this.mZoomInAnimation.addListener(zoomAnimatorListener);
            this.mZoomInAnimation.addUpdateListener(zoomAnimatorListener);
            this.mZoomInAnimation.setDuration(500);
            this.mZoomOutAnimation = ValueAnimator.ofFloat(new float[]{1.0f, 0.5f});
            this.mZoomOutAnimation.addListener(zoomAnimatorListener);
            this.mZoomOutAnimation.addUpdateListener(zoomAnimatorListener);
            this.mZoomOutAnimation.setDuration(500);
            return;
        }
        ZoomAnimationListener zoomAnimationListener = new ZoomAnimationListener(this);
        this.mZoomInAnimationOld = new ScaleAnimation(1.0f, 2.0f, 1.0f, 2.0f, 1, 0.5f, 1, 0.5f);
        this.mZoomOutAnimationOld = new ScaleAnimation(1.0f, 0.5f, 1.0f, 0.5f, 1, 0.5f, 1, 0.5f);
        this.mZoomInAnimationOld.setDuration(500);
        this.mZoomOutAnimationOld.setDuration(500);
        this.mZoomInAnimationOld.setAnimationListener(zoomAnimationListener);
        this.mZoomOutAnimationOld.setAnimationListener(zoomAnimationListener);
    }

    public void onFirstLayout(View view, int i, int i2, int i3, int i4) {
        this.mReplayController.replayCalls();
    }

    @Deprecated
    public void zoomToSpan(BoundingBoxE6 boundingBoxE6) {
        zoomToSpan(boundingBoxE6.getLatitudeSpanE6(), boundingBoxE6.getLongitudeSpanE6());
    }

    public void zoomToSpan(double d, double d2) {
        if (d > 0.0d && d2 > 0.0d) {
            if (!this.mMapView.isLayoutOccurred()) {
                this.mReplayController.zoomToSpan(d, d2);
                return;
            }
            BoundingBox boundingBox = this.mMapView.getProjection().getBoundingBox();
            int zoomLevel = this.mMapView.getProjection().getZoomLevel();
            double max = Math.max(d / boundingBox.getLatitudeSpan(), d2 / boundingBox.getLongitudeSpan());
            if (max > 1.0d) {
                this.mMapView.setZoomLevel(zoomLevel - MyMath.getNextSquareNumberAbove((float) max));
            } else if (max < 0.5d) {
                this.mMapView.setZoomLevel((zoomLevel + MyMath.getNextSquareNumberAbove(1.0f / ((float) max))) - 1);
            }
        }
    }

    public void zoomToSpan(int i, int i2) {
        if (i > 0 && i2 > 0) {
            if (!this.mMapView.isLayoutOccurred()) {
                this.mReplayController.zoomToSpan(i, i2);
                return;
            }
            BoundingBox boundingBox = this.mMapView.getProjection().getBoundingBox();
            int zoomLevel = this.mMapView.getProjection().getZoomLevel();
            float max = Math.max(((float) i) / ((float) boundingBox.getLatitudeSpanE6()), ((float) i2) / ((float) boundingBox.getLongitudeSpanE6()));
            if (max > 1.0f) {
                this.mMapView.setZoomLevel(zoomLevel - MyMath.getNextSquareNumberAbove(max));
            } else if (((double) max) < 0.5d) {
                this.mMapView.setZoomLevel((MyMath.getNextSquareNumberAbove(1.0f / max) + zoomLevel) - 1);
            }
        }
    }

    public void animateTo(IGeoPoint iGeoPoint) {
        if (!this.mMapView.isLayoutOccurred()) {
            this.mReplayController.animateTo(iGeoPoint);
            return;
        }
        Point pixels = this.mMapView.getProjection().toPixels(iGeoPoint, null);
        animateTo(pixels.x, pixels.y);
    }

    public void animateTo(int i, int i2) {
        if (!this.mMapView.isLayoutOccurred()) {
            this.mReplayController.animateTo(i, i2);
        } else if (!this.mMapView.isAnimating()) {
            this.mMapView.mIsFlinging = false;
            Point mercatorPixels = this.mMapView.getProjection().toMercatorPixels(i, i2, null);
            mercatorPixels.offset((-this.mMapView.getWidth()) / 2, (-this.mMapView.getHeight()) / 2);
            int scrollX = this.mMapView.getScrollX();
            int scrollY = this.mMapView.getScrollY();
            int i3 = mercatorPixels.x - scrollX;
            int i4 = mercatorPixels.y - scrollY;
            if (i3 != 0 || i4 != 0) {
                this.mMapView.getScroller().startScroll(scrollX, scrollY, i3, i4, 1000);
                this.mMapView.postInvalidate();
            }
        }
    }

    public void scrollBy(int i, int i2) {
        this.mMapView.scrollBy(i, i2);
    }

    public void setCenter(IGeoPoint iGeoPoint) {
        if (this.mMapView.mListener != null) {
            this.mMapView.mListener.onScroll(new ScrollEvent(this.mMapView, 0, 0));
        }
        if (!this.mMapView.isLayoutOccurred()) {
            this.mReplayController.setCenter(iGeoPoint);
            return;
        }
        Point pixels = this.mMapView.getProjection().toPixels(iGeoPoint, null);
        Point mercatorPixels = this.mMapView.getProjection().toMercatorPixels(pixels.x, pixels.y, pixels);
        mercatorPixels.offset((-this.mMapView.getWidth()) / 2, (-this.mMapView.getHeight()) / 2);
        this.mMapView.scrollTo(mercatorPixels.x, mercatorPixels.y);
    }

    public void stopPanning() {
        this.mMapView.mIsFlinging = false;
        this.mMapView.getScroller().forceFinished(true);
    }

    public void stopAnimation(boolean z) {
        if (!this.mMapView.getScroller().isFinished()) {
            if (z) {
                this.mMapView.mIsFlinging = false;
                this.mMapView.getScroller().abortAnimation();
            } else {
                stopPanning();
            }
        }
        if (VERSION.SDK_INT >= 11) {
            Animator animator = this.mCurrentAnimator;
            if (this.mMapView.mIsAnimating.get()) {
                animator.end();
            }
        } else if (this.mMapView.mIsAnimating.get()) {
            this.mMapView.clearAnimation();
        }
    }

    public int setZoom(int i) {
        return this.mMapView.setZoomLevel(i);
    }

    public boolean zoomIn() {
        return zoomTo(this.mMapView.getZoomLevel(false) + 1);
    }

    public boolean zoomInFixing(int i, int i2) {
        this.mMapView.mMultiTouchScalePoint.set((float) i, (float) i2);
        if (!this.mMapView.canZoomIn()) {
            return false;
        }
        if (this.mMapView.mListener != null) {
            this.mMapView.mListener.onZoom(new ZoomEvent(this.mMapView, this.mMapView.getZoomLevel() + 1));
        }
        if (this.mMapView.mIsAnimating.getAndSet(true)) {
            return false;
        }
        this.mMapView.mTargetZoomLevel.set(this.mMapView.getZoomLevel(false) + 1);
        if (VERSION.SDK_INT >= 11) {
            this.mCurrentAnimator = this.mZoomInAnimation;
            this.mZoomInAnimation.start();
        } else {
            this.mMapView.startAnimation(this.mZoomInAnimationOld);
        }
        return true;
    }

    public boolean zoomOut() {
        return zoomTo(this.mMapView.getZoomLevel(false) - 1);
    }

    public boolean zoomOutFixing(int i, int i2) {
        this.mMapView.mMultiTouchScalePoint.set((float) i, (float) i2);
        if (!this.mMapView.canZoomOut()) {
            return false;
        }
        if (this.mMapView.mListener != null) {
            this.mMapView.mListener.onZoom(new ZoomEvent(this.mMapView, this.mMapView.getZoomLevel() - 1));
        }
        if (this.mMapView.mIsAnimating.getAndSet(true)) {
            return false;
        }
        this.mMapView.mTargetZoomLevel.set(this.mMapView.getZoomLevel(false) - 1);
        if (VERSION.SDK_INT >= 11) {
            this.mCurrentAnimator = this.mZoomOutAnimation;
            this.mZoomOutAnimation.start();
        } else {
            this.mMapView.startAnimation(this.mZoomOutAnimationOld);
        }
        return true;
    }

    public boolean zoomTo(int i) {
        return zoomToFixing(i, this.mMapView.getWidth() / 2, this.mMapView.getHeight() / 2);
    }

    public boolean zoomToFixing(int i, int i2, int i3) {
        if (i > this.mMapView.getMaxZoomLevel()) {
            i = this.mMapView.getMaxZoomLevel();
        }
        if (i < this.mMapView.getMinZoomLevel()) {
            i = this.mMapView.getMinZoomLevel();
        }
        int zoomLevel = this.mMapView.getZoomLevel();
        boolean z = (i < zoomLevel && this.mMapView.canZoomOut()) || (i > zoomLevel && this.mMapView.canZoomIn());
        this.mMapView.mMultiTouchScalePoint.set((float) i2, (float) i3);
        if (!z) {
            return false;
        }
        if (this.mMapView.mListener != null) {
            this.mMapView.mListener.onZoom(new ZoomEvent(this.mMapView, i));
        }
        if (this.mMapView.mIsAnimating.getAndSet(true)) {
            return false;
        }
        this.mMapView.mTargetZoomLevel.set(i);
        float pow = (float) Math.pow(2.0d, (double) (i - zoomLevel));
        if (VERSION.SDK_INT >= 11) {
            ZoomAnimatorListener zoomAnimatorListener = new ZoomAnimatorListener(this);
            ValueAnimator ofFloat = ValueAnimator.ofFloat(new float[]{1.0f, pow});
            ofFloat.addListener(zoomAnimatorListener);
            ofFloat.addUpdateListener(zoomAnimatorListener);
            ofFloat.setDuration(500);
            this.mCurrentAnimator = ofFloat;
            ofFloat.start();
        } else {
            if (i > zoomLevel) {
                this.mMapView.startAnimation(this.mZoomInAnimationOld);
            } else {
                this.mMapView.startAnimation(this.mZoomOutAnimationOld);
            }
            ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, pow, 1.0f, pow, 1, 0.5f, 1, 0.5f);
            scaleAnimation.setDuration(500);
            scaleAnimation.setAnimationListener(new ZoomAnimationListener(this));
        }
        return true;
    }

    /* access modifiers changed from: protected */
    public void onAnimationStart() {
        this.mMapView.mIsAnimating.set(true);
    }

    /* access modifiers changed from: protected */
    public void onAnimationEnd() {
        Rect screenRect = this.mMapView.getProjection().getScreenRect();
        Point unrotateAndScalePoint = this.mMapView.getProjection().unrotateAndScalePoint(screenRect.centerX(), screenRect.centerY(), null);
        Point mercatorPixels = this.mMapView.getProjection().toMercatorPixels(unrotateAndScalePoint.x, unrotateAndScalePoint.y, unrotateAndScalePoint);
        mercatorPixels.offset((-this.mMapView.getWidth()) / 2, (-this.mMapView.getHeight()) / 2);
        this.mMapView.mIsAnimating.set(false);
        this.mMapView.scrollTo(mercatorPixels.x, mercatorPixels.y);
        setZoom(this.mMapView.mTargetZoomLevel.get());
        this.mMapView.mMultiTouchScale = 1.0f;
        if (VERSION.SDK_INT >= 11) {
            this.mCurrentAnimator = null;
        }
        if (VERSION.SDK_INT <= 10) {
            this.mMapView.clearAnimation();
            this.mZoomInAnimationOld.reset();
            this.mZoomOutAnimationOld.reset();
        }
    }
}
