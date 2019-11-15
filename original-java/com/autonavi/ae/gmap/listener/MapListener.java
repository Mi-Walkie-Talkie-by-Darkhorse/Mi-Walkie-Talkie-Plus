package com.autonavi.ae.gmap.listener;

import android.view.MotionEvent;
import com.autonavi.ae.gmap.GLMapState;
import com.autonavi.amap.mapcore.interfaces.IAMapListener;

public interface MapListener extends IAMapListener {
    void beforeDrawFrame(int i, GLMapState gLMapState);

    void onDoubleTap(int i, MotionEvent motionEvent);

    boolean onFling(int i, MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2);

    void onHorizontalMove(int i, float f);

    void onHorizontalMoveEnd(int i);

    void onLongPress(int i, MotionEvent motionEvent);

    void onMapAnimationFinished(int i, int i2);

    void onMapLevelChange(int i, boolean z);

    void onMapSizeChange(int i);

    void onMapTipClear(int i);

    void onMapTipInfo(int i, String str);

    void onMotionFinished(int i, int i2);

    void onOfflineMap(int i, String str, int i2);

    void onRealCityAnimateFinish(int i);

    void onShowPress(int i, MotionEvent motionEvent);

    boolean onSingleTapUp(int i, MotionEvent motionEvent);

    void onUserMapTouchEvent(int i, MotionEvent motionEvent);
}
