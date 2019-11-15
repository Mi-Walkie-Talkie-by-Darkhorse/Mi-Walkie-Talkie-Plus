package com.autonavi.ae.gmap.gesture;

import android.content.Context;
import android.view.MotionEvent;
import android.view.ViewConfiguration;

public class ScaleGestureDetector {
    private static final float PRESSURE_THRESHOLD = 0.67f;
    private boolean mActive0MostRecent;
    private int mActiveId0;
    private int mActiveId1;
    private float mBottomSlopEdge;
    private final Context mContext;
    private MotionEvent mCurrEvent;
    private float mCurrFingerDiffX;
    private float mCurrFingerDiffY;
    private float mCurrLen;
    private float mCurrPressure;
    private final float mEdgeSlop;
    private float mFocusX;
    private float mFocusY;
    private boolean mGestureInProgress;
    private boolean mInvalidGesture;
    private final OnScaleGestureListener mListener;
    private MotionEvent mPrevEvent;
    private float mPrevFingerDiffX;
    private float mPrevFingerDiffY;
    private float mPrevLen;
    private float mPrevPressure;
    private float mRightSlopEdge;
    private float mScaleFactor;
    private boolean mSloppyGesture;
    private long mTimeDelta;

    public interface OnScaleGestureListener {
        boolean onScale(ScaleGestureDetector scaleGestureDetector);

        boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector);

        void onScaleEnd(ScaleGestureDetector scaleGestureDetector);
    }

    public static class SimpleOnScaleGestureListener implements OnScaleGestureListener {
        public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            return false;
        }

        public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
            return true;
        }

        public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
        }
    }

    public ScaleGestureDetector(Context context, OnScaleGestureListener onScaleGestureListener) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.mContext = context;
        this.mListener = onScaleGestureListener;
        this.mEdgeSlop = (float) viewConfiguration.getScaledEdgeSlop();
    }

    /* JADX WARNING: Removed duplicated region for block: B:79:0x017b  */
    /* JADX WARNING: Removed duplicated region for block: B:83:0x0192 A[ADDED_TO_REGION] */
    /* JADX WARNING: Removed duplicated region for block: B:88:0x01a0  */
    /* JADX WARNING: Removed duplicated region for block: B:89:0x01ae  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean onTouchEvent(android.view.MotionEvent r15) {
        /*
            r14 = this;
            r0 = -1
            r8 = 8
            r12 = -1082130432(0xffffffffbf800000, float:-1.0)
            r4 = 1
            r2 = 0
            int r1 = r15.getAction()
            r1 = r1 & 255(0xff, float:3.57E-43)
            if (r1 != 0) goto L_0x0012
            r14.reset()
        L_0x0012:
            boolean r3 = r14.mInvalidGesture
            if (r3 == 0) goto L_0x0019
            r4 = r2
        L_0x0017:
            r2 = r4
        L_0x0018:
            return r2
        L_0x0019:
            boolean r3 = r14.mGestureInProgress
            if (r3 != 0) goto L_0x023d
            switch(r1) {
                case 0: goto L_0x0021;
                case 1: goto L_0x002a;
                case 2: goto L_0x0119;
                case 3: goto L_0x0020;
                case 4: goto L_0x0020;
                case 5: goto L_0x002e;
                case 6: goto L_0x01ca;
                default: goto L_0x0020;
            }
        L_0x0020:
            goto L_0x0017
        L_0x0021:
            int r0 = r15.getPointerId(r2)
            r14.mActiveId0 = r0
            r14.mActive0MostRecent = r4
            goto L_0x0017
        L_0x002a:
            r14.reset()
            goto L_0x0017
        L_0x002e:
            android.content.Context r1 = r14.mContext
            android.content.res.Resources r1 = r1.getResources()
            android.util.DisplayMetrics r1 = r1.getDisplayMetrics()
            int r3 = r1.widthPixels
            float r3 = (float) r3
            float r5 = r14.mEdgeSlop
            float r3 = r3 - r5
            r14.mRightSlopEdge = r3
            int r1 = r1.heightPixels
            float r1 = (float) r1
            float r3 = r14.mEdgeSlop
            float r1 = r1 - r3
            r14.mBottomSlopEdge = r1
            android.view.MotionEvent r1 = r14.mPrevEvent
            if (r1 == 0) goto L_0x0051
            android.view.MotionEvent r1 = r14.mPrevEvent
            r1.recycle()
        L_0x0051:
            android.view.MotionEvent r1 = android.view.MotionEvent.obtain(r15)
            r14.mPrevEvent = r1
            r6 = 0
            r14.mTimeDelta = r6
            int r1 = android.os.Build.VERSION.SDK_INT
            if (r1 < r8) goto L_0x00ce
            int r1 = r15.getActionIndex()
            int r3 = r14.mActiveId0
            int r3 = r15.findPointerIndex(r3)
            int r5 = r15.getPointerId(r1)
            r14.mActiveId1 = r5
            if (r3 < 0) goto L_0x0073
            if (r3 != r1) goto L_0x038c
        L_0x0073:
            if (r3 != r1) goto L_0x00cb
        L_0x0075:
            int r0 = r14.findNewActiveIndex(r15, r0, r3)
            int r3 = r15.getPointerId(r0)
            r14.mActiveId0 = r3
            r13 = r1
            r1 = r0
            r0 = r13
        L_0x0082:
            r14.mActive0MostRecent = r2
            r14.setContext(r15)
            float r3 = r14.mEdgeSlop
            float r6 = r14.mRightSlopEdge
            float r7 = r14.mBottomSlopEdge
            float r5 = getRawX(r15, r1)
            float r8 = getRawY(r15, r1)
            float r9 = getRawX(r15, r0)
            float r10 = getRawY(r15, r0)
            int r11 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r11 < 0) goto L_0x00ad
            int r11 = (r8 > r3 ? 1 : (r8 == r3 ? 0 : -1))
            if (r11 < 0) goto L_0x00ad
            int r5 = (r5 > r6 ? 1 : (r5 == r6 ? 0 : -1))
            if (r5 > 0) goto L_0x00ad
            int r5 = (r8 > r7 ? 1 : (r8 == r7 ? 0 : -1))
            if (r5 <= 0) goto L_0x00e5
        L_0x00ad:
            r5 = r4
        L_0x00ae:
            int r8 = (r9 > r3 ? 1 : (r9 == r3 ? 0 : -1))
            if (r8 < 0) goto L_0x00be
            int r3 = (r10 > r3 ? 1 : (r10 == r3 ? 0 : -1))
            if (r3 < 0) goto L_0x00be
            int r3 = (r9 > r6 ? 1 : (r9 == r6 ? 0 : -1))
            if (r3 > 0) goto L_0x00be
            int r3 = (r10 > r7 ? 1 : (r10 == r7 ? 0 : -1))
            if (r3 <= 0) goto L_0x00e7
        L_0x00be:
            r3 = r4
        L_0x00bf:
            if (r5 == 0) goto L_0x00e9
            if (r3 == 0) goto L_0x00e9
            r14.mFocusX = r12
            r14.mFocusY = r12
            r14.mSloppyGesture = r4
            goto L_0x0017
        L_0x00cb:
            int r0 = r14.mActiveId1
            goto L_0x0075
        L_0x00ce:
            int r0 = r15.getPointerCount()
            if (r0 <= 0) goto L_0x0388
            int r0 = r15.findPointerIndex(r4)
            int r1 = r14.mActiveId0
            int r1 = r15.findPointerIndex(r1)
            int r3 = r15.getPointerId(r0)
            r14.mActiveId1 = r3
            goto L_0x0082
        L_0x00e5:
            r5 = r2
            goto L_0x00ae
        L_0x00e7:
            r3 = r2
            goto L_0x00bf
        L_0x00e9:
            if (r5 == 0) goto L_0x00fb
            float r1 = r15.getX(r0)
            r14.mFocusX = r1
            float r0 = r15.getY(r0)
            r14.mFocusY = r0
            r14.mSloppyGesture = r4
            goto L_0x0017
        L_0x00fb:
            if (r3 == 0) goto L_0x010d
            float r0 = r15.getX(r1)
            r14.mFocusX = r0
            float r0 = r15.getY(r1)
            r14.mFocusY = r0
            r14.mSloppyGesture = r4
            goto L_0x0017
        L_0x010d:
            r14.mSloppyGesture = r2
            com.autonavi.ae.gmap.gesture.ScaleGestureDetector$OnScaleGestureListener r0 = r14.mListener
            boolean r0 = r0.onScaleBegin(r14)
            r14.mGestureInProgress = r0
            goto L_0x0017
        L_0x0119:
            boolean r0 = r14.mSloppyGesture
            if (r0 == 0) goto L_0x0017
            float r0 = r14.mEdgeSlop
            float r5 = r14.mRightSlopEdge
            float r7 = r14.mBottomSlopEdge
            int r1 = r14.mActiveId0
            int r6 = r15.findPointerIndex(r1)
            int r1 = r14.mActiveId1
            int r3 = r15.findPointerIndex(r1)
            float r1 = getRawX(r15, r6)
            float r8 = getRawY(r15, r6)
            float r9 = getRawX(r15, r3)
            float r10 = getRawY(r15, r3)
            int r11 = (r1 > r0 ? 1 : (r1 == r0 ? 0 : -1))
            if (r11 < 0) goto L_0x014f
            int r11 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            if (r11 < 0) goto L_0x014f
            int r1 = (r1 > r5 ? 1 : (r1 == r5 ? 0 : -1))
            if (r1 > 0) goto L_0x014f
            int r1 = (r8 > r7 ? 1 : (r8 == r7 ? 0 : -1))
            if (r1 <= 0) goto L_0x019a
        L_0x014f:
            r1 = r4
        L_0x0150:
            int r8 = (r9 > r0 ? 1 : (r9 == r0 ? 0 : -1))
            if (r8 < 0) goto L_0x0160
            int r0 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r0 < 0) goto L_0x0160
            int r0 = (r9 > r5 ? 1 : (r9 == r5 ? 0 : -1))
            if (r0 > 0) goto L_0x0160
            int r0 = (r10 > r7 ? 1 : (r10 == r7 ? 0 : -1))
            if (r0 <= 0) goto L_0x019c
        L_0x0160:
            r0 = r4
        L_0x0161:
            if (r1 == 0) goto L_0x0385
            int r5 = r14.mActiveId1
            int r5 = r14.findNewActiveIndex(r15, r5, r6)
            if (r5 < 0) goto L_0x0385
            int r1 = r15.getPointerId(r5)
            r14.mActiveId0 = r1
            getRawX(r15, r5)
            getRawY(r15, r5)
            r6 = r5
            r5 = r2
        L_0x0179:
            if (r0 == 0) goto L_0x0382
            int r1 = r14.mActiveId0
            int r1 = r14.findNewActiveIndex(r15, r1, r3)
            if (r1 < 0) goto L_0x0382
            int r0 = r15.getPointerId(r1)
            r14.mActiveId1 = r0
            getRawX(r15, r1)
            getRawY(r15, r1)
            r0 = r2
        L_0x0190:
            if (r5 == 0) goto L_0x019e
            if (r0 == 0) goto L_0x019e
            r14.mFocusX = r12
            r14.mFocusY = r12
            goto L_0x0017
        L_0x019a:
            r1 = r2
            goto L_0x0150
        L_0x019c:
            r0 = r2
            goto L_0x0161
        L_0x019e:
            if (r5 == 0) goto L_0x01ae
            float r0 = r15.getX(r1)
            r14.mFocusX = r0
            float r0 = r15.getY(r1)
            r14.mFocusY = r0
            goto L_0x0017
        L_0x01ae:
            if (r0 == 0) goto L_0x01be
            float r0 = r15.getX(r6)
            r14.mFocusX = r0
            float r0 = r15.getY(r6)
            r14.mFocusY = r0
            goto L_0x0017
        L_0x01be:
            r14.mSloppyGesture = r2
            com.autonavi.ae.gmap.gesture.ScaleGestureDetector$OnScaleGestureListener r0 = r14.mListener
            boolean r0 = r0.onScaleBegin(r14)
            r14.mGestureInProgress = r0
            goto L_0x0017
        L_0x01ca:
            boolean r1 = r14.mSloppyGesture
            if (r1 == 0) goto L_0x0017
            int r3 = r15.getPointerCount()
            int r1 = android.os.Build.VERSION.SDK_INT
            if (r1 < r8) goto L_0x037f
            int r1 = r15.getActionIndex()
        L_0x01da:
            int r5 = r15.getPointerId(r1)
            r6 = 2
            if (r3 <= r6) goto L_0x0209
            int r0 = r14.mActiveId0
            if (r5 != r0) goto L_0x01f5
            int r0 = r14.mActiveId1
            int r0 = r14.findNewActiveIndex(r15, r0, r1)
            if (r0 < 0) goto L_0x0017
            int r0 = r15.getPointerId(r0)
            r14.mActiveId0 = r0
            goto L_0x0017
        L_0x01f5:
            int r0 = r14.mActiveId1
            if (r5 != r0) goto L_0x0017
            int r0 = r14.mActiveId0
            int r0 = r14.findNewActiveIndex(r15, r0, r1)
            if (r0 < 0) goto L_0x0017
            int r0 = r15.getPointerId(r0)
            r14.mActiveId1 = r0
            goto L_0x0017
        L_0x0209:
            int r1 = r14.mActiveId0
            if (r5 != r1) goto L_0x0222
            int r1 = r14.mActiveId1
        L_0x020f:
            int r1 = r15.findPointerIndex(r1)
            if (r1 >= 0) goto L_0x0225
            r14.mInvalidGesture = r4
            boolean r0 = r14.mGestureInProgress
            if (r0 == 0) goto L_0x0018
            com.autonavi.ae.gmap.gesture.ScaleGestureDetector$OnScaleGestureListener r0 = r14.mListener
            r0.onScaleEnd(r14)
            goto L_0x0018
        L_0x0222:
            int r1 = r14.mActiveId0
            goto L_0x020f
        L_0x0225:
            int r2 = r15.getPointerId(r1)
            r14.mActiveId0 = r2
            r14.mActive0MostRecent = r4
            r14.mActiveId1 = r0
            float r0 = r15.getX(r1)
            r14.mFocusX = r0
            float r0 = r15.getY(r1)
            r14.mFocusY = r0
            goto L_0x0017
        L_0x023d:
            switch(r1) {
                case 1: goto L_0x0242;
                case 2: goto L_0x0358;
                case 3: goto L_0x034e;
                case 4: goto L_0x0240;
                case 5: goto L_0x0247;
                case 6: goto L_0x02a6;
                default: goto L_0x0240;
            }
        L_0x0240:
            goto L_0x0017
        L_0x0242:
            r14.reset()
            goto L_0x0017
        L_0x0247:
            com.autonavi.ae.gmap.gesture.ScaleGestureDetector$OnScaleGestureListener r1 = r14.mListener
            r1.onScaleEnd(r14)
            int r1 = r14.mActiveId0
            int r3 = r14.mActiveId1
            r14.reset()
            android.view.MotionEvent r5 = android.view.MotionEvent.obtain(r15)
            r14.mPrevEvent = r5
            boolean r5 = r14.mActive0MostRecent
            if (r5 == 0) goto L_0x029a
        L_0x025d:
            r14.mActiveId0 = r1
            int r1 = android.os.Build.VERSION.SDK_INT
            if (r1 < r8) goto L_0x029c
            int r1 = r15.getActionIndex()
            int r1 = r15.getPointerId(r1)
            r14.mActiveId1 = r1
        L_0x026d:
            r14.mActive0MostRecent = r2
            int r1 = r14.mActiveId0
            int r1 = r15.findPointerIndex(r1)
            if (r1 < 0) goto L_0x027d
            int r2 = r14.mActiveId0
            int r3 = r14.mActiveId1
            if (r2 != r3) goto L_0x028d
        L_0x027d:
            int r2 = r14.mActiveId0
            int r3 = r14.mActiveId1
            if (r2 != r3) goto L_0x02a3
        L_0x0283:
            int r0 = r14.findNewActiveIndex(r15, r0, r1)
            int r0 = r15.getPointerId(r0)
            r14.mActiveId0 = r0
        L_0x028d:
            r14.setContext(r15)
            com.autonavi.ae.gmap.gesture.ScaleGestureDetector$OnScaleGestureListener r0 = r14.mListener
            boolean r0 = r0.onScaleBegin(r14)
            r14.mGestureInProgress = r0
            goto L_0x0017
        L_0x029a:
            r1 = r3
            goto L_0x025d
        L_0x029c:
            int r1 = r15.getPointerId(r4)
            r14.mActiveId1 = r1
            goto L_0x026d
        L_0x02a3:
            int r0 = r14.mActiveId1
            goto L_0x0283
        L_0x02a6:
            int r1 = r15.getPointerCount()
            int r0 = android.os.Build.VERSION.SDK_INT
            if (r0 < r8) goto L_0x037c
            int r0 = r15.getActionIndex()
        L_0x02b2:
            int r3 = r15.getPointerId(r0)
            r5 = 2
            if (r1 <= r5) goto L_0x0349
            int r1 = r14.mActiveId0
            if (r3 != r1) goto L_0x031c
            int r1 = r14.mActiveId1
            int r0 = r14.findNewActiveIndex(r15, r1, r0)
            if (r0 < 0) goto L_0x031a
            com.autonavi.ae.gmap.gesture.ScaleGestureDetector$OnScaleGestureListener r1 = r14.mListener
            r1.onScaleEnd(r14)
            int r0 = r15.getPointerId(r0)
            r14.mActiveId0 = r0
            r14.mActive0MostRecent = r4
            android.view.MotionEvent r0 = android.view.MotionEvent.obtain(r15)
            r14.mPrevEvent = r0
            r14.setContext(r15)
            com.autonavi.ae.gmap.gesture.ScaleGestureDetector$OnScaleGestureListener r0 = r14.mListener
            boolean r0 = r0.onScaleBegin(r14)
            r14.mGestureInProgress = r0
        L_0x02e3:
            android.view.MotionEvent r0 = r14.mPrevEvent
            r0.recycle()
            android.view.MotionEvent r0 = android.view.MotionEvent.obtain(r15)
            r14.mPrevEvent = r0
            r14.setContext(r15)
        L_0x02f1:
            if (r2 == 0) goto L_0x0017
            r14.setContext(r15)
            int r0 = r14.mActiveId0
            if (r3 != r0) goto L_0x034b
            int r0 = r14.mActiveId1
        L_0x02fc:
            int r1 = r15.findPointerIndex(r0)
            float r2 = r15.getX(r1)
            r14.mFocusX = r2
            float r1 = r15.getY(r1)
            r14.mFocusY = r1
            com.autonavi.ae.gmap.gesture.ScaleGestureDetector$OnScaleGestureListener r1 = r14.mListener
            r1.onScaleEnd(r14)
            r14.reset()
            r14.mActiveId0 = r0
            r14.mActive0MostRecent = r4
            goto L_0x0017
        L_0x031a:
            r2 = r4
            goto L_0x02e3
        L_0x031c:
            int r1 = r14.mActiveId1
            if (r3 != r1) goto L_0x02e3
            int r1 = r14.mActiveId0
            int r0 = r14.findNewActiveIndex(r15, r1, r0)
            if (r0 < 0) goto L_0x0347
            com.autonavi.ae.gmap.gesture.ScaleGestureDetector$OnScaleGestureListener r1 = r14.mListener
            r1.onScaleEnd(r14)
            int r0 = r15.getPointerId(r0)
            r14.mActiveId1 = r0
            r14.mActive0MostRecent = r2
            android.view.MotionEvent r0 = android.view.MotionEvent.obtain(r15)
            r14.mPrevEvent = r0
            r14.setContext(r15)
            com.autonavi.ae.gmap.gesture.ScaleGestureDetector$OnScaleGestureListener r0 = r14.mListener
            boolean r0 = r0.onScaleBegin(r14)
            r14.mGestureInProgress = r0
            goto L_0x02e3
        L_0x0347:
            r2 = r4
            goto L_0x02e3
        L_0x0349:
            r2 = r4
            goto L_0x02f1
        L_0x034b:
            int r0 = r14.mActiveId0
            goto L_0x02fc
        L_0x034e:
            com.autonavi.ae.gmap.gesture.ScaleGestureDetector$OnScaleGestureListener r0 = r14.mListener
            r0.onScaleEnd(r14)
            r14.reset()
            goto L_0x0017
        L_0x0358:
            r14.setContext(r15)
            float r0 = r14.mCurrPressure
            float r1 = r14.mPrevPressure
            float r0 = r0 / r1
            r1 = 1059816735(0x3f2b851f, float:0.67)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0017
            com.autonavi.ae.gmap.gesture.ScaleGestureDetector$OnScaleGestureListener r0 = r14.mListener
            boolean r0 = r0.onScale(r14)
            if (r0 == 0) goto L_0x0017
            android.view.MotionEvent r0 = r14.mPrevEvent
            r0.recycle()
            android.view.MotionEvent r0 = android.view.MotionEvent.obtain(r15)
            r14.mPrevEvent = r0
            goto L_0x0017
        L_0x037c:
            r0 = r2
            goto L_0x02b2
        L_0x037f:
            r1 = r2
            goto L_0x01da
        L_0x0382:
            r1 = r3
            goto L_0x0190
        L_0x0385:
            r5 = r1
            goto L_0x0179
        L_0x0388:
            r0 = r2
            r1 = r2
            goto L_0x0082
        L_0x038c:
            r0 = r1
            r1 = r3
            goto L_0x0082
        */
        throw new UnsupportedOperationException("Method not decompiled: com.autonavi.ae.gmap.gesture.ScaleGestureDetector.onTouchEvent(android.view.MotionEvent):boolean");
    }

    private int findNewActiveIndex(MotionEvent motionEvent, int i, int i2) {
        int pointerCount = motionEvent.getPointerCount();
        int findPointerIndex = motionEvent.findPointerIndex(i);
        for (int i3 = 0; i3 < pointerCount; i3++) {
            if (!(i3 == i2 || i3 == findPointerIndex)) {
                float f = this.mEdgeSlop;
                float f2 = this.mRightSlopEdge;
                float f3 = this.mBottomSlopEdge;
                float rawX = getRawX(motionEvent, i3);
                float rawY = getRawY(motionEvent, i3);
                if (rawX >= f && rawY >= f && rawX <= f2 && rawY <= f3) {
                    return i3;
                }
            }
        }
        return -1;
    }

    private static float getRawX(MotionEvent motionEvent, int i) {
        if (i < 0) {
            return Float.MIN_VALUE;
        }
        if (i == 0) {
            return motionEvent.getRawX();
        }
        return (motionEvent.getRawX() - motionEvent.getX()) + motionEvent.getX(i);
    }

    private static float getRawY(MotionEvent motionEvent, int i) {
        if (i < 0) {
            return Float.MIN_VALUE;
        }
        if (i == 0) {
            return motionEvent.getRawY();
        }
        return (motionEvent.getRawY() - motionEvent.getY()) + motionEvent.getY(i);
    }

    private void setContext(MotionEvent motionEvent) {
        if (this.mCurrEvent != null) {
            this.mCurrEvent.recycle();
        }
        this.mCurrEvent = MotionEvent.obtain(motionEvent);
        this.mCurrLen = -1.0f;
        this.mPrevLen = -1.0f;
        this.mScaleFactor = -1.0f;
        MotionEvent motionEvent2 = this.mPrevEvent;
        int findPointerIndex = motionEvent2.findPointerIndex(this.mActiveId0);
        int findPointerIndex2 = motionEvent2.findPointerIndex(this.mActiveId1);
        int findPointerIndex3 = motionEvent.findPointerIndex(this.mActiveId0);
        int findPointerIndex4 = motionEvent.findPointerIndex(this.mActiveId1);
        if (findPointerIndex < 0 || findPointerIndex2 < 0 || findPointerIndex3 < 0 || findPointerIndex4 < 0) {
            this.mInvalidGesture = true;
            if (this.mGestureInProgress) {
                this.mListener.onScaleEnd(this);
                return;
            }
            return;
        }
        float x = motionEvent2.getX(findPointerIndex);
        float y = motionEvent2.getY(findPointerIndex);
        float x2 = motionEvent2.getX(findPointerIndex2);
        float y2 = motionEvent2.getY(findPointerIndex2);
        float x3 = motionEvent.getX(findPointerIndex3);
        float y3 = motionEvent.getY(findPointerIndex3);
        float f = x2 - x;
        float f2 = y2 - y;
        float x4 = motionEvent.getX(findPointerIndex4) - x3;
        float y4 = motionEvent.getY(findPointerIndex4) - y3;
        this.mPrevFingerDiffX = f;
        this.mPrevFingerDiffY = f2;
        this.mCurrFingerDiffX = x4;
        this.mCurrFingerDiffY = y4;
        this.mFocusX = (x4 * 0.5f) + x3;
        this.mFocusY = (y4 * 0.5f) + y3;
        this.mTimeDelta = motionEvent.getEventTime() - motionEvent2.getEventTime();
        this.mCurrPressure = motionEvent.getPressure(findPointerIndex3) + motionEvent.getPressure(findPointerIndex4);
        this.mPrevPressure = motionEvent2.getPressure(findPointerIndex2) + motionEvent2.getPressure(findPointerIndex);
    }

    private void reset() {
        if (this.mPrevEvent != null) {
            this.mPrevEvent.recycle();
            this.mPrevEvent = null;
        }
        if (this.mCurrEvent != null) {
            this.mCurrEvent.recycle();
            this.mCurrEvent = null;
        }
        this.mSloppyGesture = false;
        this.mGestureInProgress = false;
        this.mActiveId0 = -1;
        this.mActiveId1 = -1;
        this.mInvalidGesture = false;
    }

    public boolean isInProgress() {
        return this.mGestureInProgress;
    }

    public float getFocusX() {
        return this.mFocusX;
    }

    public float getFocusY() {
        return this.mFocusY;
    }

    public float getCurrentSpan() {
        if (this.mCurrLen == -1.0f) {
            float f = this.mCurrFingerDiffX;
            float f2 = this.mCurrFingerDiffY;
            this.mCurrLen = (float) Math.sqrt((double) ((f * f) + (f2 * f2)));
        }
        return this.mCurrLen;
    }

    public float getCurrentSpanX() {
        return this.mCurrFingerDiffX;
    }

    public float getCurrentSpanY() {
        return this.mCurrFingerDiffY;
    }

    public float getPreviousSpan() {
        if (this.mPrevLen == -1.0f) {
            float f = this.mPrevFingerDiffX;
            float f2 = this.mPrevFingerDiffY;
            this.mPrevLen = (float) Math.sqrt((double) ((f * f) + (f2 * f2)));
        }
        return this.mPrevLen;
    }

    public float getPreviousSpanX() {
        return this.mPrevFingerDiffX;
    }

    public float getPreviousSpanY() {
        return this.mPrevFingerDiffY;
    }

    public float getScaleFactor() {
        if (this.mScaleFactor == -1.0f) {
            this.mScaleFactor = getCurrentSpan() / getPreviousSpan();
        }
        return this.mScaleFactor;
    }

    public long getTimeDelta() {
        return this.mTimeDelta;
    }

    public long getEventTime() {
        return this.mCurrEvent.getEventTime();
    }

    public MotionEvent getEvent() {
        return this.mCurrEvent;
    }
}
