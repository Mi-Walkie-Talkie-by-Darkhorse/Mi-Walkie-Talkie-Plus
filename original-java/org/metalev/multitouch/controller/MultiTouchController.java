package org.metalev.multitouch.controller;

import android.util.Log;
import android.view.MotionEvent;
import java.lang.reflect.Method;

public class MultiTouchController<T> {
    private static int ACTION_POINTER_INDEX_SHIFT = 0;
    private static int ACTION_POINTER_UP = 0;
    public static final boolean DEBUG = false;
    private static final long EVENT_SETTLE_TIME_INTERVAL = 20;
    private static final float MAX_MULTITOUCH_DIM_JUMP_SIZE = 40.0f;
    private static final float MAX_MULTITOUCH_POS_JUMP_SIZE = 30.0f;
    public static final int MAX_TOUCH_POINTS = 20;
    private static final float MIN_MULTITOUCH_SEPARATION = 30.0f;
    private static final int MODE_DRAG = 1;
    private static final int MODE_NOTHING = 0;
    private static final int MODE_PINCH = 2;
    private static Method m_getHistoricalPressure;
    private static Method m_getHistoricalX;
    private static Method m_getHistoricalY;
    private static Method m_getPointerCount;
    private static Method m_getPointerId;
    private static Method m_getPressure;
    private static Method m_getX;
    private static Method m_getY;
    public static final boolean multiTouchSupported;
    private static final int[] pointerIds = new int[20];
    private static final float[] pressureVals = new float[20];
    private static final float[] xVals = new float[20];
    private static final float[] yVals = new float[20];
    private boolean handleSingleTouchEvents;
    private PointInfo mCurrPt;
    private float mCurrPtAng;
    private float mCurrPtDiam;
    private float mCurrPtHeight;
    private float mCurrPtWidth;
    private float mCurrPtX;
    private float mCurrPtY;
    private PositionAndScale mCurrXform;
    private int mMode;
    private PointInfo mPrevPt;
    private long mSettleEndTime;
    private long mSettleStartTime;
    MultiTouchObjectCanvas<T> objectCanvas;
    private T selectedObject;
    private float startAngleMinusPinchAngle;
    private float startPosX;
    private float startPosY;
    private float startScaleOverPinchDiam;
    private float startScaleXOverPinchWidth;
    private float startScaleYOverPinchHeight;

    public interface MultiTouchObjectCanvas<T> {
        T getDraggableObjectAtPoint(PointInfo pointInfo);

        void getPositionAndScale(T t, PositionAndScale positionAndScale);

        void selectObject(T t, PointInfo pointInfo);

        boolean setPositionAndScale(T t, PositionAndScale positionAndScale, PointInfo pointInfo);
    }

    public static class PointInfo {
        private int action;
        private float angle;
        private boolean angleIsCalculated;
        private float diameter;
        private boolean diameterIsCalculated;
        private float diameterSq;
        private boolean diameterSqIsCalculated;
        private float dx;
        private float dy;
        /* access modifiers changed from: private */
        public long eventTime;
        private boolean isDown;
        private boolean isMultiTouch;
        private int numPoints;
        private int[] pointerIds = new int[20];
        private float pressureMid;
        private float[] pressures = new float[20];
        private float xMid;
        private float[] xs = new float[20];
        private float yMid;
        private float[] ys = new float[20];

        /* access modifiers changed from: private */
        public void set(int i, float[] fArr, float[] fArr2, float[] fArr3, int[] iArr, int i2, boolean z, long j) {
            this.eventTime = j;
            this.action = i2;
            this.numPoints = i;
            for (int i3 = 0; i3 < i; i3++) {
                this.xs[i3] = fArr[i3];
                this.ys[i3] = fArr2[i3];
                this.pressures[i3] = fArr3[i3];
                this.pointerIds[i3] = iArr[i3];
            }
            this.isDown = z;
            this.isMultiTouch = i >= 2;
            if (this.isMultiTouch) {
                this.xMid = (fArr[0] + fArr[1]) * 0.5f;
                this.yMid = (fArr2[0] + fArr2[1]) * 0.5f;
                this.pressureMid = (fArr3[0] + fArr3[1]) * 0.5f;
                this.dx = Math.abs(fArr[1] - fArr[0]);
                this.dy = Math.abs(fArr2[1] - fArr2[0]);
            } else {
                this.xMid = fArr[0];
                this.yMid = fArr2[0];
                this.pressureMid = fArr3[0];
                this.dy = 0.0f;
                this.dx = 0.0f;
            }
            this.angleIsCalculated = false;
            this.diameterIsCalculated = false;
            this.diameterSqIsCalculated = false;
        }

        public void set(PointInfo pointInfo) {
            this.numPoints = pointInfo.numPoints;
            for (int i = 0; i < this.numPoints; i++) {
                this.xs[i] = pointInfo.xs[i];
                this.ys[i] = pointInfo.ys[i];
                this.pressures[i] = pointInfo.pressures[i];
                this.pointerIds[i] = pointInfo.pointerIds[i];
            }
            this.xMid = pointInfo.xMid;
            this.yMid = pointInfo.yMid;
            this.pressureMid = pointInfo.pressureMid;
            this.dx = pointInfo.dx;
            this.dy = pointInfo.dy;
            this.diameter = pointInfo.diameter;
            this.diameterSq = pointInfo.diameterSq;
            this.angle = pointInfo.angle;
            this.isDown = pointInfo.isDown;
            this.action = pointInfo.action;
            this.isMultiTouch = pointInfo.isMultiTouch;
            this.diameterIsCalculated = pointInfo.diameterIsCalculated;
            this.diameterSqIsCalculated = pointInfo.diameterSqIsCalculated;
            this.angleIsCalculated = pointInfo.angleIsCalculated;
            this.eventTime = pointInfo.eventTime;
        }

        public boolean isMultiTouch() {
            return this.isMultiTouch;
        }

        public float getMultiTouchWidth() {
            if (this.isMultiTouch) {
                return this.dx;
            }
            return 0.0f;
        }

        public float getMultiTouchHeight() {
            if (this.isMultiTouch) {
                return this.dy;
            }
            return 0.0f;
        }

        private int julery_isqrt(int i) {
            int i2 = 32768;
            int i3 = i;
            int i4 = 15;
            int i5 = 0;
            while (true) {
                int i6 = i4 - 1;
                int i7 = ((i5 << 1) + i2) << i4;
                if (i3 >= i7) {
                    i5 += i2;
                    i3 -= i7;
                }
                int i8 = i2 >> 1;
                if (i8 <= 0) {
                    return i5;
                }
                i2 = i8;
                i4 = i6;
            }
        }

        public float getMultiTouchDiameterSq() {
            if (!this.diameterSqIsCalculated) {
                this.diameterSq = this.isMultiTouch ? (this.dx * this.dx) + (this.dy * this.dy) : 0.0f;
                this.diameterSqIsCalculated = true;
            }
            return this.diameterSq;
        }

        public float getMultiTouchDiameter() {
            float f = 0.0f;
            if (!this.diameterIsCalculated) {
                if (!this.isMultiTouch) {
                    this.diameter = 0.0f;
                } else {
                    float multiTouchDiameterSq = getMultiTouchDiameterSq();
                    if (multiTouchDiameterSq != 0.0f) {
                        f = ((float) julery_isqrt((int) (256.0f * multiTouchDiameterSq))) / 16.0f;
                    }
                    this.diameter = f;
                    if (this.diameter < this.dx) {
                        this.diameter = this.dx;
                    }
                    if (this.diameter < this.dy) {
                        this.diameter = this.dy;
                    }
                }
                this.diameterIsCalculated = true;
            }
            return this.diameter;
        }

        public float getMultiTouchAngle() {
            if (!this.angleIsCalculated) {
                if (!this.isMultiTouch) {
                    this.angle = 0.0f;
                } else {
                    this.angle = (float) Math.atan2((double) (this.ys[1] - this.ys[0]), (double) (this.xs[1] - this.xs[0]));
                }
                this.angleIsCalculated = true;
            }
            return this.angle;
        }

        public int getNumTouchPoints() {
            return this.numPoints;
        }

        public float getX() {
            return this.xMid;
        }

        public float[] getXs() {
            return this.xs;
        }

        public float getY() {
            return this.yMid;
        }

        public float[] getYs() {
            return this.ys;
        }

        public int[] getPointerIds() {
            return this.pointerIds;
        }

        public float getPressure() {
            return this.pressureMid;
        }

        public float[] getPressures() {
            return this.pressures;
        }

        public boolean isDown() {
            return this.isDown;
        }

        public int getAction() {
            return this.action;
        }

        public long getEventTime() {
            return this.eventTime;
        }
    }

    public static class PositionAndScale {
        /* access modifiers changed from: private */
        public float angle;
        /* access modifiers changed from: private */
        public float scale;
        /* access modifiers changed from: private */
        public float scaleX;
        /* access modifiers changed from: private */
        public float scaleY;
        /* access modifiers changed from: private */
        public boolean updateAngle;
        /* access modifiers changed from: private */
        public boolean updateScale;
        /* access modifiers changed from: private */
        public boolean updateScaleXY;
        /* access modifiers changed from: private */
        public float xOff;
        /* access modifiers changed from: private */
        public float yOff;

        public void set(float f, float f2, boolean z, float f3, boolean z2, float f4, float f5, boolean z3, float f6) {
            float f7 = 1.0f;
            this.xOff = f;
            this.yOff = f2;
            this.updateScale = z;
            if (f3 == 0.0f) {
                f3 = 1.0f;
            }
            this.scale = f3;
            this.updateScaleXY = z2;
            if (f4 == 0.0f) {
                f4 = 1.0f;
            }
            this.scaleX = f4;
            if (f5 != 0.0f) {
                f7 = f5;
            }
            this.scaleY = f7;
            this.updateAngle = z3;
            this.angle = f6;
        }

        /* access modifiers changed from: protected */
        public void set(float f, float f2, float f3, float f4, float f5, float f6) {
            float f7 = 1.0f;
            this.xOff = f;
            this.yOff = f2;
            if (f3 == 0.0f) {
                f3 = 1.0f;
            }
            this.scale = f3;
            if (f4 == 0.0f) {
                f4 = 1.0f;
            }
            this.scaleX = f4;
            if (f5 != 0.0f) {
                f7 = f5;
            }
            this.scaleY = f7;
            this.angle = f6;
        }

        public float getXOff() {
            return this.xOff;
        }

        public float getYOff() {
            return this.yOff;
        }

        public float getScale() {
            if (!this.updateScale) {
                return 1.0f;
            }
            return this.scale;
        }

        public float getScaleX() {
            if (!this.updateScaleXY) {
                return 1.0f;
            }
            return this.scaleX;
        }

        public float getScaleY() {
            if (!this.updateScaleXY) {
                return 1.0f;
            }
            return this.scaleY;
        }

        public float getAngle() {
            if (!this.updateAngle) {
                return 0.0f;
            }
            return this.angle;
        }
    }

    private void extractCurrPtInfo() {
        float f = 0.0f;
        this.mCurrPtX = this.mCurrPt.getX();
        this.mCurrPtY = this.mCurrPt.getY();
        this.mCurrPtDiam = Math.max(21.3f, !this.mCurrXform.updateScale ? 0.0f : this.mCurrPt.getMultiTouchDiameter());
        this.mCurrPtWidth = Math.max(30.0f, !this.mCurrXform.updateScaleXY ? 0.0f : this.mCurrPt.getMultiTouchWidth());
        this.mCurrPtHeight = Math.max(30.0f, !this.mCurrXform.updateScaleXY ? 0.0f : this.mCurrPt.getMultiTouchHeight());
        if (this.mCurrXform.updateAngle) {
            f = this.mCurrPt.getMultiTouchAngle();
        }
        this.mCurrPtAng = f;
    }

    public MultiTouchController(MultiTouchObjectCanvas<T> multiTouchObjectCanvas) {
        this(multiTouchObjectCanvas, true);
    }

    public MultiTouchController(MultiTouchObjectCanvas<T> multiTouchObjectCanvas, boolean z) {
        this.selectedObject = null;
        this.mCurrXform = new PositionAndScale();
        this.mMode = 0;
        this.mCurrPt = new PointInfo();
        this.mPrevPt = new PointInfo();
        this.handleSingleTouchEvents = z;
        this.objectCanvas = multiTouchObjectCanvas;
    }

    /* access modifiers changed from: protected */
    public void setHandleSingleTouchEvents(boolean z) {
        this.handleSingleTouchEvents = z;
    }

    /* access modifiers changed from: protected */
    public boolean getHandleSingleTouchEvents() {
        return this.handleSingleTouchEvents;
    }

    static {
        boolean z = true;
        ACTION_POINTER_UP = 6;
        ACTION_POINTER_INDEX_SHIFT = 8;
        try {
            m_getPointerCount = MotionEvent.class.getMethod("getPointerCount", new Class[0]);
            m_getPointerId = MotionEvent.class.getMethod("getPointerId", new Class[]{Integer.TYPE});
            m_getPressure = MotionEvent.class.getMethod("getPressure", new Class[]{Integer.TYPE});
            m_getHistoricalX = MotionEvent.class.getMethod("getHistoricalX", new Class[]{Integer.TYPE, Integer.TYPE});
            m_getHistoricalY = MotionEvent.class.getMethod("getHistoricalY", new Class[]{Integer.TYPE, Integer.TYPE});
            m_getHistoricalPressure = MotionEvent.class.getMethod("getHistoricalPressure", new Class[]{Integer.TYPE, Integer.TYPE});
            m_getX = MotionEvent.class.getMethod("getX", new Class[]{Integer.TYPE});
            m_getY = MotionEvent.class.getMethod("getY", new Class[]{Integer.TYPE});
        } catch (Exception e) {
            Log.e("MultiTouchController", "static initializer failed", e);
            z = false;
        }
        multiTouchSupported = z;
        if (multiTouchSupported) {
            try {
                ACTION_POINTER_UP = MotionEvent.class.getField("ACTION_POINTER_UP").getInt(null);
                ACTION_POINTER_INDEX_SHIFT = MotionEvent.class.getField("ACTION_POINTER_INDEX_SHIFT").getInt(null);
            } catch (Exception e2) {
            }
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        int i;
        float pressure;
        Object invoke;
        try {
            int i2 = multiTouchSupported ? ((Integer) m_getPointerCount.invoke(motionEvent, new Object[0])).intValue() : 1;
            if (this.mMode == 0 && !this.handleSingleTouchEvents && i2 == 1) {
                return false;
            }
            int action = motionEvent.getAction();
            int historySize = motionEvent.getHistorySize() / i2;
            int i3 = 0;
            while (i3 <= historySize) {
                boolean z = i3 < historySize;
                if (!multiTouchSupported || i2 == 1) {
                    xVals[0] = z ? motionEvent.getHistoricalX(i3) : motionEvent.getX();
                    yVals[0] = z ? motionEvent.getHistoricalY(i3) : motionEvent.getY();
                    float[] fArr = pressureVals;
                    if (z) {
                        pressure = motionEvent.getHistoricalPressure(i3);
                    } else {
                        pressure = motionEvent.getPressure();
                    }
                    fArr[0] = pressure;
                } else {
                    int min = Math.min(i2, 20);
                    for (int i4 = 0; i4 < min; i4++) {
                        pointerIds[i4] = ((Integer) m_getPointerId.invoke(motionEvent, new Object[]{Integer.valueOf(i4)})).intValue();
                        xVals[i4] = ((Float) (z ? m_getHistoricalX.invoke(motionEvent, new Object[]{Integer.valueOf(i4), Integer.valueOf(i3)}) : m_getX.invoke(motionEvent, new Object[]{Integer.valueOf(i4)}))).floatValue();
                        yVals[i4] = ((Float) (z ? m_getHistoricalY.invoke(motionEvent, new Object[]{Integer.valueOf(i4), Integer.valueOf(i3)}) : m_getY.invoke(motionEvent, new Object[]{Integer.valueOf(i4)}))).floatValue();
                        float[] fArr2 = pressureVals;
                        if (z) {
                            invoke = m_getHistoricalPressure.invoke(motionEvent, new Object[]{Integer.valueOf(i4), Integer.valueOf(i3)});
                        } else {
                            invoke = m_getPressure.invoke(motionEvent, new Object[]{Integer.valueOf(i4)});
                        }
                        fArr2[i4] = ((Float) invoke).floatValue();
                    }
                }
                float[] fArr3 = xVals;
                float[] fArr4 = yVals;
                float[] fArr5 = pressureVals;
                int[] iArr = pointerIds;
                if (z) {
                    i = 2;
                } else {
                    i = action;
                }
                boolean z2 = z ? true : (action == 1 || (((1 << ACTION_POINTER_INDEX_SHIFT) + -1) & action) == ACTION_POINTER_UP || action == 3) ? false : true;
                decodeTouchEvent(i2, fArr3, fArr4, fArr5, iArr, i, z2, z ? motionEvent.getHistoricalEventTime(i3) : motionEvent.getEventTime());
                i3++;
            }
            return true;
        } catch (Exception e) {
            Log.e("MultiTouchController", "onTouchEvent() failed", e);
            return false;
        }
    }

    private void decodeTouchEvent(int i, float[] fArr, float[] fArr2, float[] fArr3, int[] iArr, int i2, boolean z, long j) {
        PointInfo pointInfo = this.mPrevPt;
        this.mPrevPt = this.mCurrPt;
        this.mCurrPt = pointInfo;
        this.mCurrPt.set(i, fArr, fArr2, fArr3, iArr, i2, z, j);
        multiTouchController();
    }

    private void anchorAtThisPositionAndScale() {
        if (this.selectedObject != null) {
            this.objectCanvas.getPositionAndScale(this.selectedObject, this.mCurrXform);
            float access$400 = !this.mCurrXform.updateScale ? 1.0f : this.mCurrXform.scale == 0.0f ? 1.0f : this.mCurrXform.scale;
            float f = 1.0f / access$400;
            extractCurrPtInfo();
            this.startPosX = (this.mCurrPtX - this.mCurrXform.xOff) * f;
            this.startPosY = f * (this.mCurrPtY - this.mCurrXform.yOff);
            this.startScaleOverPinchDiam = this.mCurrXform.scale / this.mCurrPtDiam;
            this.startScaleXOverPinchWidth = this.mCurrXform.scaleX / this.mCurrPtWidth;
            this.startScaleYOverPinchHeight = this.mCurrXform.scaleY / this.mCurrPtHeight;
            this.startAngleMinusPinchAngle = this.mCurrXform.angle - this.mCurrPtAng;
        }
    }

    private void performDragOrPinch() {
        float f = 1.0f;
        if (this.selectedObject != null) {
            if (this.mCurrXform.updateScale && this.mCurrXform.scale != 0.0f) {
                f = this.mCurrXform.scale;
            }
            extractCurrPtInfo();
            this.mCurrXform.set(this.mCurrPtX - (this.startPosX * f), this.mCurrPtY - (f * this.startPosY), this.mCurrPtDiam * this.startScaleOverPinchDiam, this.mCurrPtWidth * this.startScaleXOverPinchWidth, this.mCurrPtHeight * this.startScaleYOverPinchHeight, this.mCurrPtAng + this.startAngleMinusPinchAngle);
            if (!this.objectCanvas.setPositionAndScale(this.selectedObject, this.mCurrXform, this.mCurrPt)) {
            }
        }
    }

    public boolean isPinching() {
        return this.mMode == 2;
    }

    private void multiTouchController() {
        switch (this.mMode) {
            case 0:
                if (this.mCurrPt.isDown()) {
                    this.selectedObject = this.objectCanvas.getDraggableObjectAtPoint(this.mCurrPt);
                    if (this.selectedObject != null) {
                        this.mMode = 1;
                        this.objectCanvas.selectObject(this.selectedObject, this.mCurrPt);
                        anchorAtThisPositionAndScale();
                        long eventTime = this.mCurrPt.getEventTime();
                        this.mSettleEndTime = eventTime;
                        this.mSettleStartTime = eventTime;
                        return;
                    }
                    return;
                }
                return;
            case 1:
                if (!this.mCurrPt.isDown()) {
                    this.mMode = 0;
                    MultiTouchObjectCanvas<T> multiTouchObjectCanvas = this.objectCanvas;
                    this.selectedObject = null;
                    multiTouchObjectCanvas.selectObject(null, this.mCurrPt);
                    return;
                } else if (this.mCurrPt.isMultiTouch()) {
                    this.mMode = 2;
                    anchorAtThisPositionAndScale();
                    this.mSettleStartTime = this.mCurrPt.getEventTime();
                    this.mSettleEndTime = this.mSettleStartTime + EVENT_SETTLE_TIME_INTERVAL;
                    return;
                } else if (this.mCurrPt.getEventTime() < this.mSettleEndTime) {
                    anchorAtThisPositionAndScale();
                    return;
                } else {
                    performDragOrPinch();
                    return;
                }
            case 2:
                if (!this.mCurrPt.isMultiTouch() || !this.mCurrPt.isDown()) {
                    if (!this.mCurrPt.isDown()) {
                        this.mMode = 0;
                        MultiTouchObjectCanvas<T> multiTouchObjectCanvas2 = this.objectCanvas;
                        this.selectedObject = null;
                        multiTouchObjectCanvas2.selectObject(null, this.mCurrPt);
                        return;
                    }
                    this.mMode = 1;
                    anchorAtThisPositionAndScale();
                    this.mSettleStartTime = this.mCurrPt.getEventTime();
                    this.mSettleEndTime = this.mSettleStartTime + EVENT_SETTLE_TIME_INTERVAL;
                    return;
                } else if (Math.abs(this.mCurrPt.getX() - this.mPrevPt.getX()) > 30.0f || Math.abs(this.mCurrPt.getY() - this.mPrevPt.getY()) > 30.0f || Math.abs(this.mCurrPt.getMultiTouchWidth() - this.mPrevPt.getMultiTouchWidth()) * 0.5f > MAX_MULTITOUCH_DIM_JUMP_SIZE || Math.abs(this.mCurrPt.getMultiTouchHeight() - this.mPrevPt.getMultiTouchHeight()) * 0.5f > MAX_MULTITOUCH_DIM_JUMP_SIZE) {
                    anchorAtThisPositionAndScale();
                    this.mSettleStartTime = this.mCurrPt.getEventTime();
                    this.mSettleEndTime = this.mSettleStartTime + EVENT_SETTLE_TIME_INTERVAL;
                    return;
                } else if (this.mCurrPt.eventTime < this.mSettleEndTime) {
                    anchorAtThisPositionAndScale();
                    return;
                } else {
                    performDragOrPinch();
                    return;
                }
            default:
                return;
        }
    }

    public int getMode() {
        return this.mMode;
    }
}
