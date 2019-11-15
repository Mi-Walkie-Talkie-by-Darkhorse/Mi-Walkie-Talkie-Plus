package android.support.v4.view;

import android.content.Context;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Message;
import android.view.GestureDetector;
import android.view.GestureDetector.OnDoubleTapListener;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;

public final class GestureDetectorCompat {
    private final GestureDetectorCompatImpl mImpl;

    interface GestureDetectorCompatImpl {
        boolean isLongpressEnabled();

        boolean onTouchEvent(MotionEvent motionEvent);

        void setIsLongpressEnabled(boolean z);

        void setOnDoubleTapListener(OnDoubleTapListener onDoubleTapListener);
    }

    static class GestureDetectorCompatImplBase implements GestureDetectorCompatImpl {
        private static final int DOUBLE_TAP_TIMEOUT = ViewConfiguration.getDoubleTapTimeout();
        private static final int LONGPRESS_TIMEOUT = ViewConfiguration.getLongPressTimeout();
        private static final int LONG_PRESS = 2;
        private static final int SHOW_PRESS = 1;
        private static final int TAP = 3;
        private static final int TAP_TIMEOUT = ViewConfiguration.getTapTimeout();
        private boolean mAlwaysInBiggerTapRegion;
        private boolean mAlwaysInTapRegion;
        MotionEvent mCurrentDownEvent;
        boolean mDeferConfirmSingleTap;
        OnDoubleTapListener mDoubleTapListener;
        private int mDoubleTapSlopSquare;
        private float mDownFocusX;
        private float mDownFocusY;
        private final Handler mHandler;
        private boolean mInLongPress;
        private boolean mIsDoubleTapping;
        private boolean mIsLongpressEnabled;
        private float mLastFocusX;
        private float mLastFocusY;
        final OnGestureListener mListener;
        private int mMaximumFlingVelocity;
        private int mMinimumFlingVelocity;
        private MotionEvent mPreviousUpEvent;
        boolean mStillDown;
        private int mTouchSlopSquare;
        private VelocityTracker mVelocityTracker;

        private class GestureHandler extends Handler {
            GestureHandler() {
            }

            GestureHandler(Handler handler) {
                super(handler.getLooper());
            }

            public void handleMessage(Message message) {
                switch (message.what) {
                    case 1:
                        GestureDetectorCompatImplBase.this.mListener.onShowPress(GestureDetectorCompatImplBase.this.mCurrentDownEvent);
                        return;
                    case 2:
                        GestureDetectorCompatImplBase.this.dispatchLongPress();
                        return;
                    case 3:
                        if (GestureDetectorCompatImplBase.this.mDoubleTapListener == null) {
                            return;
                        }
                        if (!GestureDetectorCompatImplBase.this.mStillDown) {
                            GestureDetectorCompatImplBase.this.mDoubleTapListener.onSingleTapConfirmed(GestureDetectorCompatImplBase.this.mCurrentDownEvent);
                            return;
                        } else {
                            GestureDetectorCompatImplBase.this.mDeferConfirmSingleTap = true;
                            return;
                        }
                    default:
                        throw new RuntimeException("Unknown message " + message);
                }
            }
        }

        public GestureDetectorCompatImplBase(Context context, OnGestureListener onGestureListener, Handler handler) {
            if (handler != null) {
                this.mHandler = new GestureHandler(handler);
            } else {
                this.mHandler = new GestureHandler();
            }
            this.mListener = onGestureListener;
            if (onGestureListener instanceof OnDoubleTapListener) {
                setOnDoubleTapListener((OnDoubleTapListener) onGestureListener);
            }
            init(context);
        }

        private void init(Context context) {
            if (context == null) {
                throw new IllegalArgumentException("Context must not be null");
            } else if (this.mListener == null) {
                throw new IllegalArgumentException("OnGestureListener must not be null");
            } else {
                this.mIsLongpressEnabled = true;
                ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
                int scaledTouchSlop = viewConfiguration.getScaledTouchSlop();
                int scaledDoubleTapSlop = viewConfiguration.getScaledDoubleTapSlop();
                this.mMinimumFlingVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
                this.mMaximumFlingVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
                this.mTouchSlopSquare = scaledTouchSlop * scaledTouchSlop;
                this.mDoubleTapSlopSquare = scaledDoubleTapSlop * scaledDoubleTapSlop;
            }
        }

        public void setOnDoubleTapListener(OnDoubleTapListener onDoubleTapListener) {
            this.mDoubleTapListener = onDoubleTapListener;
        }

        public void setIsLongpressEnabled(boolean z) {
            this.mIsLongpressEnabled = z;
        }

        public boolean isLongpressEnabled() {
            return this.mIsLongpressEnabled;
        }

        /* JADX WARNING: Removed duplicated region for block: B:43:0x00eb  */
        /* JADX WARNING: Removed duplicated region for block: B:46:0x0104  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean onTouchEvent(android.view.MotionEvent r14) {
            /*
                r13 = this;
                r6 = 0
                r12 = 2
                r11 = 3
                r8 = 1
                r3 = 0
                int r9 = r14.getAction()
                android.view.VelocityTracker r0 = r13.mVelocityTracker
                if (r0 != 0) goto L_0x0013
                android.view.VelocityTracker r0 = android.view.VelocityTracker.obtain()
                r13.mVelocityTracker = r0
            L_0x0013:
                android.view.VelocityTracker r0 = r13.mVelocityTracker
                r0.addMovement(r14)
                r0 = r9 & 255(0xff, float:3.57E-43)
                r1 = 6
                if (r0 != r1) goto L_0x0032
                r7 = r8
            L_0x001e:
                if (r7 == 0) goto L_0x0034
                int r0 = android.support.v4.view.MotionEventCompat.getActionIndex(r14)
            L_0x0024:
                int r4 = r14.getPointerCount()
                r5 = r3
                r1 = r6
                r2 = r6
            L_0x002b:
                if (r5 >= r4) goto L_0x0041
                if (r0 != r5) goto L_0x0036
            L_0x002f:
                int r5 = r5 + 1
                goto L_0x002b
            L_0x0032:
                r7 = r3
                goto L_0x001e
            L_0x0034:
                r0 = -1
                goto L_0x0024
            L_0x0036:
                float r10 = r14.getX(r5)
                float r2 = r2 + r10
                float r10 = r14.getY(r5)
                float r1 = r1 + r10
                goto L_0x002f
            L_0x0041:
                if (r7 == 0) goto L_0x004f
                int r0 = r4 + -1
            L_0x0045:
                float r5 = (float) r0
                float r2 = r2 / r5
                float r0 = (float) r0
                float r1 = r1 / r0
                r0 = r9 & 255(0xff, float:3.57E-43)
                switch(r0) {
                    case 0: goto L_0x00a8;
                    case 1: goto L_0x01b3;
                    case 2: goto L_0x013f;
                    case 3: goto L_0x0247;
                    case 4: goto L_0x004e;
                    case 5: goto L_0x0051;
                    case 6: goto L_0x005d;
                    default: goto L_0x004e;
                }
            L_0x004e:
                return r3
            L_0x004f:
                r0 = r4
                goto L_0x0045
            L_0x0051:
                r13.mLastFocusX = r2
                r13.mDownFocusX = r2
                r13.mLastFocusY = r1
                r13.mDownFocusY = r1
                r13.cancelTaps()
                goto L_0x004e
            L_0x005d:
                r13.mLastFocusX = r2
                r13.mDownFocusX = r2
                r13.mLastFocusY = r1
                r13.mDownFocusY = r1
                android.view.VelocityTracker r0 = r13.mVelocityTracker
                r1 = 1000(0x3e8, float:1.401E-42)
                int r2 = r13.mMaximumFlingVelocity
                float r2 = (float) r2
                r0.computeCurrentVelocity(r1, r2)
                int r1 = android.support.v4.view.MotionEventCompat.getActionIndex(r14)
                int r0 = r14.getPointerId(r1)
                android.view.VelocityTracker r2 = r13.mVelocityTracker
                float r2 = android.support.v4.view.VelocityTrackerCompat.getXVelocity(r2, r0)
                android.view.VelocityTracker r5 = r13.mVelocityTracker
                float r5 = android.support.v4.view.VelocityTrackerCompat.getYVelocity(r5, r0)
                r0 = r3
            L_0x0084:
                if (r0 >= r4) goto L_0x004e
                if (r0 != r1) goto L_0x008b
            L_0x0088:
                int r0 = r0 + 1
                goto L_0x0084
            L_0x008b:
                int r7 = r14.getPointerId(r0)
                android.view.VelocityTracker r8 = r13.mVelocityTracker
                float r8 = android.support.v4.view.VelocityTrackerCompat.getXVelocity(r8, r7)
                float r8 = r8 * r2
                android.view.VelocityTracker r9 = r13.mVelocityTracker
                float r7 = android.support.v4.view.VelocityTrackerCompat.getYVelocity(r9, r7)
                float r7 = r7 * r5
                float r7 = r7 + r8
                int r7 = (r7 > r6 ? 1 : (r7 == r6 ? 0 : -1))
                if (r7 >= 0) goto L_0x0088
                android.view.VelocityTracker r0 = r13.mVelocityTracker
                r0.clear()
                goto L_0x004e
            L_0x00a8:
                android.view.GestureDetector$OnDoubleTapListener r0 = r13.mDoubleTapListener
                if (r0 == 0) goto L_0x013d
                android.os.Handler r0 = r13.mHandler
                boolean r0 = r0.hasMessages(r11)
                if (r0 == 0) goto L_0x00b9
                android.os.Handler r4 = r13.mHandler
                r4.removeMessages(r11)
            L_0x00b9:
                android.view.MotionEvent r4 = r13.mCurrentDownEvent
                if (r4 == 0) goto L_0x0135
                android.view.MotionEvent r4 = r13.mPreviousUpEvent
                if (r4 == 0) goto L_0x0135
                if (r0 == 0) goto L_0x0135
                android.view.MotionEvent r0 = r13.mCurrentDownEvent
                android.view.MotionEvent r4 = r13.mPreviousUpEvent
                boolean r0 = r13.isConsideredDoubleTap(r0, r4, r14)
                if (r0 == 0) goto L_0x0135
                r13.mIsDoubleTapping = r8
                android.view.GestureDetector$OnDoubleTapListener r0 = r13.mDoubleTapListener
                android.view.MotionEvent r4 = r13.mCurrentDownEvent
                boolean r0 = r0.onDoubleTap(r4)
                r0 = r0 | r3
                android.view.GestureDetector$OnDoubleTapListener r4 = r13.mDoubleTapListener
                boolean r4 = r4.onDoubleTapEvent(r14)
                r0 = r0 | r4
            L_0x00df:
                r13.mLastFocusX = r2
                r13.mDownFocusX = r2
                r13.mLastFocusY = r1
                r13.mDownFocusY = r1
                android.view.MotionEvent r1 = r13.mCurrentDownEvent
                if (r1 == 0) goto L_0x00f0
                android.view.MotionEvent r1 = r13.mCurrentDownEvent
                r1.recycle()
            L_0x00f0:
                android.view.MotionEvent r1 = android.view.MotionEvent.obtain(r14)
                r13.mCurrentDownEvent = r1
                r13.mAlwaysInTapRegion = r8
                r13.mAlwaysInBiggerTapRegion = r8
                r13.mStillDown = r8
                r13.mInLongPress = r3
                r13.mDeferConfirmSingleTap = r3
                boolean r1 = r13.mIsLongpressEnabled
                if (r1 == 0) goto L_0x011c
                android.os.Handler r1 = r13.mHandler
                r1.removeMessages(r12)
                android.os.Handler r1 = r13.mHandler
                android.view.MotionEvent r2 = r13.mCurrentDownEvent
                long r2 = r2.getDownTime()
                int r4 = TAP_TIMEOUT
                long r4 = (long) r4
                long r2 = r2 + r4
                int r4 = LONGPRESS_TIMEOUT
                long r4 = (long) r4
                long r2 = r2 + r4
                r1.sendEmptyMessageAtTime(r12, r2)
            L_0x011c:
                android.os.Handler r1 = r13.mHandler
                android.view.MotionEvent r2 = r13.mCurrentDownEvent
                long r2 = r2.getDownTime()
                int r4 = TAP_TIMEOUT
                long r4 = (long) r4
                long r2 = r2 + r4
                r1.sendEmptyMessageAtTime(r8, r2)
                android.view.GestureDetector$OnGestureListener r1 = r13.mListener
                boolean r1 = r1.onDown(r14)
                r3 = r0 | r1
                goto L_0x004e
            L_0x0135:
                android.os.Handler r0 = r13.mHandler
                int r4 = DOUBLE_TAP_TIMEOUT
                long r4 = (long) r4
                r0.sendEmptyMessageDelayed(r11, r4)
            L_0x013d:
                r0 = r3
                goto L_0x00df
            L_0x013f:
                boolean r0 = r13.mInLongPress
                if (r0 != 0) goto L_0x004e
                float r0 = r13.mLastFocusX
                float r0 = r0 - r2
                float r4 = r13.mLastFocusY
                float r4 = r4 - r1
                boolean r5 = r13.mIsDoubleTapping
                if (r5 == 0) goto L_0x0156
                android.view.GestureDetector$OnDoubleTapListener r0 = r13.mDoubleTapListener
                boolean r0 = r0.onDoubleTapEvent(r14)
                r3 = r3 | r0
                goto L_0x004e
            L_0x0156:
                boolean r5 = r13.mAlwaysInTapRegion
                if (r5 == 0) goto L_0x0191
                float r5 = r13.mDownFocusX
                float r5 = r2 - r5
                int r5 = (int) r5
                float r6 = r13.mDownFocusY
                float r6 = r1 - r6
                int r6 = (int) r6
                int r5 = r5 * r5
                int r6 = r6 * r6
                int r5 = r5 + r6
                int r6 = r13.mTouchSlopSquare
                if (r5 <= r6) goto L_0x024f
                android.view.GestureDetector$OnGestureListener r6 = r13.mListener
                android.view.MotionEvent r7 = r13.mCurrentDownEvent
                boolean r0 = r6.onScroll(r7, r14, r0, r4)
                r13.mLastFocusX = r2
                r13.mLastFocusY = r1
                r13.mAlwaysInTapRegion = r3
                android.os.Handler r1 = r13.mHandler
                r1.removeMessages(r11)
                android.os.Handler r1 = r13.mHandler
                r1.removeMessages(r8)
                android.os.Handler r1 = r13.mHandler
                r1.removeMessages(r12)
            L_0x0188:
                int r1 = r13.mTouchSlopSquare
                if (r5 <= r1) goto L_0x018e
                r13.mAlwaysInBiggerTapRegion = r3
            L_0x018e:
                r3 = r0
                goto L_0x004e
            L_0x0191:
                float r5 = java.lang.Math.abs(r0)
                r6 = 1065353216(0x3f800000, float:1.0)
                int r5 = (r5 > r6 ? 1 : (r5 == r6 ? 0 : -1))
                if (r5 >= 0) goto L_0x01a5
                float r5 = java.lang.Math.abs(r4)
                r6 = 1065353216(0x3f800000, float:1.0)
                int r5 = (r5 > r6 ? 1 : (r5 == r6 ? 0 : -1))
                if (r5 < 0) goto L_0x004e
            L_0x01a5:
                android.view.GestureDetector$OnGestureListener r3 = r13.mListener
                android.view.MotionEvent r5 = r13.mCurrentDownEvent
                boolean r3 = r3.onScroll(r5, r14, r0, r4)
                r13.mLastFocusX = r2
                r13.mLastFocusY = r1
                goto L_0x004e
            L_0x01b3:
                r13.mStillDown = r3
                android.view.MotionEvent r1 = android.view.MotionEvent.obtain(r14)
                boolean r0 = r13.mIsDoubleTapping
                if (r0 == 0) goto L_0x01ec
                android.view.GestureDetector$OnDoubleTapListener r0 = r13.mDoubleTapListener
                boolean r0 = r0.onDoubleTapEvent(r14)
                r0 = r0 | r3
            L_0x01c4:
                android.view.MotionEvent r2 = r13.mPreviousUpEvent
                if (r2 == 0) goto L_0x01cd
                android.view.MotionEvent r2 = r13.mPreviousUpEvent
                r2.recycle()
            L_0x01cd:
                r13.mPreviousUpEvent = r1
                android.view.VelocityTracker r1 = r13.mVelocityTracker
                if (r1 == 0) goto L_0x01db
                android.view.VelocityTracker r1 = r13.mVelocityTracker
                r1.recycle()
                r1 = 0
                r13.mVelocityTracker = r1
            L_0x01db:
                r13.mIsDoubleTapping = r3
                r13.mDeferConfirmSingleTap = r3
                android.os.Handler r1 = r13.mHandler
                r1.removeMessages(r8)
                android.os.Handler r1 = r13.mHandler
                r1.removeMessages(r12)
                r3 = r0
                goto L_0x004e
            L_0x01ec:
                boolean r0 = r13.mInLongPress
                if (r0 == 0) goto L_0x01f9
                android.os.Handler r0 = r13.mHandler
                r0.removeMessages(r11)
                r13.mInLongPress = r3
                r0 = r3
                goto L_0x01c4
            L_0x01f9:
                boolean r0 = r13.mAlwaysInTapRegion
                if (r0 == 0) goto L_0x0211
                android.view.GestureDetector$OnGestureListener r0 = r13.mListener
                boolean r0 = r0.onSingleTapUp(r14)
                boolean r2 = r13.mDeferConfirmSingleTap
                if (r2 == 0) goto L_0x01c4
                android.view.GestureDetector$OnDoubleTapListener r2 = r13.mDoubleTapListener
                if (r2 == 0) goto L_0x01c4
                android.view.GestureDetector$OnDoubleTapListener r2 = r13.mDoubleTapListener
                r2.onSingleTapConfirmed(r14)
                goto L_0x01c4
            L_0x0211:
                android.view.VelocityTracker r0 = r13.mVelocityTracker
                int r2 = r14.getPointerId(r3)
                r4 = 1000(0x3e8, float:1.401E-42)
                int r5 = r13.mMaximumFlingVelocity
                float r5 = (float) r5
                r0.computeCurrentVelocity(r4, r5)
                float r4 = android.support.v4.view.VelocityTrackerCompat.getYVelocity(r0, r2)
                float r0 = android.support.v4.view.VelocityTrackerCompat.getXVelocity(r0, r2)
                float r2 = java.lang.Math.abs(r4)
                int r5 = r13.mMinimumFlingVelocity
                float r5 = (float) r5
                int r2 = (r2 > r5 ? 1 : (r2 == r5 ? 0 : -1))
                if (r2 > 0) goto L_0x023d
                float r2 = java.lang.Math.abs(r0)
                int r5 = r13.mMinimumFlingVelocity
                float r5 = (float) r5
                int r2 = (r2 > r5 ? 1 : (r2 == r5 ? 0 : -1))
                if (r2 <= 0) goto L_0x024c
            L_0x023d:
                android.view.GestureDetector$OnGestureListener r2 = r13.mListener
                android.view.MotionEvent r5 = r13.mCurrentDownEvent
                boolean r0 = r2.onFling(r5, r14, r0, r4)
                goto L_0x01c4
            L_0x0247:
                r13.cancel()
                goto L_0x004e
            L_0x024c:
                r0 = r3
                goto L_0x01c4
            L_0x024f:
                r0 = r3
                goto L_0x0188
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v4.view.GestureDetectorCompat.GestureDetectorCompatImplBase.onTouchEvent(android.view.MotionEvent):boolean");
        }

        private void cancel() {
            this.mHandler.removeMessages(1);
            this.mHandler.removeMessages(2);
            this.mHandler.removeMessages(3);
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = null;
            this.mIsDoubleTapping = false;
            this.mStillDown = false;
            this.mAlwaysInTapRegion = false;
            this.mAlwaysInBiggerTapRegion = false;
            this.mDeferConfirmSingleTap = false;
            if (this.mInLongPress) {
                this.mInLongPress = false;
            }
        }

        private void cancelTaps() {
            this.mHandler.removeMessages(1);
            this.mHandler.removeMessages(2);
            this.mHandler.removeMessages(3);
            this.mIsDoubleTapping = false;
            this.mAlwaysInTapRegion = false;
            this.mAlwaysInBiggerTapRegion = false;
            this.mDeferConfirmSingleTap = false;
            if (this.mInLongPress) {
                this.mInLongPress = false;
            }
        }

        private boolean isConsideredDoubleTap(MotionEvent motionEvent, MotionEvent motionEvent2, MotionEvent motionEvent3) {
            if (!this.mAlwaysInBiggerTapRegion || motionEvent3.getEventTime() - motionEvent2.getEventTime() > ((long) DOUBLE_TAP_TIMEOUT)) {
                return false;
            }
            int x = ((int) motionEvent.getX()) - ((int) motionEvent3.getX());
            int y = ((int) motionEvent.getY()) - ((int) motionEvent3.getY());
            if ((x * x) + (y * y) < this.mDoubleTapSlopSquare) {
                return true;
            }
            return false;
        }

        /* access modifiers changed from: 0000 */
        public void dispatchLongPress() {
            this.mHandler.removeMessages(3);
            this.mDeferConfirmSingleTap = false;
            this.mInLongPress = true;
            this.mListener.onLongPress(this.mCurrentDownEvent);
        }
    }

    static class GestureDetectorCompatImplJellybeanMr2 implements GestureDetectorCompatImpl {
        private final GestureDetector mDetector;

        public GestureDetectorCompatImplJellybeanMr2(Context context, OnGestureListener onGestureListener, Handler handler) {
            this.mDetector = new GestureDetector(context, onGestureListener, handler);
        }

        public boolean isLongpressEnabled() {
            return this.mDetector.isLongpressEnabled();
        }

        public boolean onTouchEvent(MotionEvent motionEvent) {
            return this.mDetector.onTouchEvent(motionEvent);
        }

        public void setIsLongpressEnabled(boolean z) {
            this.mDetector.setIsLongpressEnabled(z);
        }

        public void setOnDoubleTapListener(OnDoubleTapListener onDoubleTapListener) {
            this.mDetector.setOnDoubleTapListener(onDoubleTapListener);
        }
    }

    public GestureDetectorCompat(Context context, OnGestureListener onGestureListener) {
        this(context, onGestureListener, null);
    }

    public GestureDetectorCompat(Context context, OnGestureListener onGestureListener, Handler handler) {
        if (VERSION.SDK_INT > 17) {
            this.mImpl = new GestureDetectorCompatImplJellybeanMr2(context, onGestureListener, handler);
        } else {
            this.mImpl = new GestureDetectorCompatImplBase(context, onGestureListener, handler);
        }
    }

    public boolean isLongpressEnabled() {
        return this.mImpl.isLongpressEnabled();
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        return this.mImpl.onTouchEvent(motionEvent);
    }

    public void setIsLongpressEnabled(boolean z) {
        this.mImpl.setIsLongpressEnabled(z);
    }

    public void setOnDoubleTapListener(OnDoubleTapListener onDoubleTapListener) {
        this.mImpl.setOnDoubleTapListener(onDoubleTapListener);
    }
}
