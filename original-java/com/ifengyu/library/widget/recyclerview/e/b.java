package com.ifengyu.library.widget.recyclerview.e;

import android.os.Build.VERSION;
import android.support.v4.view.GestureDetectorCompat;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.OnItemTouchListener;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import com.ifengyu.library.widget.recyclerview.adapter.c;
import java.util.Set;

/* compiled from: SimpleClickListener */
public abstract class b<T extends c> implements OnItemTouchListener {
    public static String TAG = "SimpleClickListener";
    protected T baseAdapter;
    /* access modifiers changed from: private */
    public Set<Integer> childClickViewIds;
    /* access modifiers changed from: private */
    public int longClickDelta = 200;
    /* access modifiers changed from: private */
    public Set<Integer> longClickViewIds;
    private GestureDetectorCompat mGestureDetector;
    /* access modifiers changed from: private */
    public boolean mIsPrepressed = false;
    /* access modifiers changed from: private */
    public boolean mIsShowPress = false;
    /* access modifiers changed from: private */
    public View mPressedView = null;
    private RecyclerView recyclerView;
    private boolean shouldDetectGesture = true;

    /* compiled from: SimpleClickListener */
    private class a extends SimpleOnGestureListener {
        private RecyclerView b;

        public a(RecyclerView recyclerView) {
            this.b = recyclerView;
        }

        public boolean onDown(MotionEvent motionEvent) {
            if (b.this.shouldDetectGesture()) {
                b.this.mIsPrepressed = true;
                b.this.mPressedView = this.b.findChildViewUnder(motionEvent.getX(), motionEvent.getY());
                super.onDown(motionEvent);
            }
            return false;
        }

        public void onShowPress(MotionEvent motionEvent) {
            if (b.this.shouldDetectGesture()) {
                if (b.this.mIsPrepressed && b.this.mPressedView != null) {
                    b.this.mIsShowPress = true;
                }
                super.onShowPress(motionEvent);
            }
        }

        public boolean onSingleTapUp(MotionEvent motionEvent) {
            if (!b.this.shouldDetectGesture()) {
                return false;
            }
            if (b.this.mIsPrepressed && b.this.mPressedView != null) {
                View access$200 = b.this.mPressedView;
                com.ifengyu.library.widget.recyclerview.d.a aVar = (com.ifengyu.library.widget.recyclerview.d.a) this.b.getChildViewHolder(access$200);
                if (b.this.isHeaderOrFooterPosition(aVar.getLayoutPosition())) {
                    return false;
                }
                b.this.childClickViewIds = aVar.b();
                if (b.this.childClickViewIds == null || b.this.childClickViewIds.size() <= 0) {
                    b.this.setPressViewHotSpot(motionEvent, access$200);
                    b.this.mPressedView.setPressed(true);
                    for (Integer intValue : b.this.childClickViewIds) {
                        access$200.findViewById(intValue.intValue()).setPressed(false);
                    }
                    b.this.onItemClick(b.this.baseAdapter, access$200, aVar.getLayoutPosition() - b.this.baseAdapter.getHeaderLayoutCount());
                } else {
                    for (Integer intValue2 : b.this.childClickViewIds) {
                        View findViewById = access$200.findViewById(intValue2.intValue());
                        if (!b.this.inRangeOfView(findViewById, motionEvent) || !findViewById.isEnabled()) {
                            findViewById.setPressed(false);
                        } else {
                            b.this.setPressViewHotSpot(motionEvent, findViewById);
                            findViewById.setPressed(true);
                            b.this.onItemChildClick(b.this.baseAdapter, findViewById, aVar.getLayoutPosition() - b.this.baseAdapter.getHeaderLayoutCount());
                            a(findViewById);
                            return true;
                        }
                    }
                    b.this.setPressViewHotSpot(motionEvent, access$200);
                    b.this.mPressedView.setPressed(true);
                    for (Integer intValue3 : b.this.childClickViewIds) {
                        access$200.findViewById(intValue3.intValue()).setPressed(false);
                    }
                    b.this.onItemClick(b.this.baseAdapter, access$200, aVar.getLayoutPosition() - b.this.baseAdapter.getHeaderLayoutCount());
                }
                a(access$200);
            }
            return true;
        }

        /* JADX WARNING: Removed duplicated region for block: B:21:0x00b3  */
        /* JADX WARNING: Removed duplicated region for block: B:37:? A[RETURN, SYNTHETIC] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void onLongPress(android.view.MotionEvent r9) {
            /*
                r8 = this;
                r3 = 0
                r2 = 1
                com.ifengyu.library.widget.recyclerview.e.b r0 = com.ifengyu.library.widget.recyclerview.e.b.this
                boolean r0 = r0.shouldDetectGesture()
                if (r0 != 0) goto L_0x000b
            L_0x000a:
                return
            L_0x000b:
                com.ifengyu.library.widget.recyclerview.e.b r0 = com.ifengyu.library.widget.recyclerview.e.b.this
                boolean r0 = r0.mIsPrepressed
                if (r0 == 0) goto L_0x000a
                com.ifengyu.library.widget.recyclerview.e.b r0 = com.ifengyu.library.widget.recyclerview.e.b.this
                android.view.View r0 = r0.mPressedView
                if (r0 == 0) goto L_0x000a
                com.ifengyu.library.widget.recyclerview.e.b r0 = com.ifengyu.library.widget.recyclerview.e.b.this
                android.view.View r0 = r0.mPressedView
                r0.performHapticFeedback(r3)
                android.support.v7.widget.RecyclerView r0 = r8.b
                com.ifengyu.library.widget.recyclerview.e.b r1 = com.ifengyu.library.widget.recyclerview.e.b.this
                android.view.View r1 = r1.mPressedView
                android.support.v7.widget.RecyclerView$ViewHolder r0 = r0.getChildViewHolder(r1)
                com.ifengyu.library.widget.recyclerview.d.a r0 = (com.ifengyu.library.widget.recyclerview.d.a) r0
                com.ifengyu.library.widget.recyclerview.e.b r1 = com.ifengyu.library.widget.recyclerview.e.b.this
                int r4 = r0.getLayoutPosition()
                boolean r1 = r1.isHeaderOrFooterPosition(r4)
                if (r1 != 0) goto L_0x000a
                com.ifengyu.library.widget.recyclerview.e.b r1 = com.ifengyu.library.widget.recyclerview.e.b.this
                java.util.HashSet r4 = r0.a()
                r1.longClickViewIds = r4
                com.ifengyu.library.widget.recyclerview.e.b r1 = com.ifengyu.library.widget.recyclerview.e.b.this
                java.util.Set r1 = r1.longClickViewIds
                if (r1 == 0) goto L_0x0112
                com.ifengyu.library.widget.recyclerview.e.b r1 = com.ifengyu.library.widget.recyclerview.e.b.this
                java.util.Set r1 = r1.longClickViewIds
                int r1 = r1.size()
                if (r1 <= 0) goto L_0x0112
                com.ifengyu.library.widget.recyclerview.e.b r1 = com.ifengyu.library.widget.recyclerview.e.b.this
                java.util.Set r1 = r1.longClickViewIds
                java.util.Iterator r4 = r1.iterator()
            L_0x0065:
                boolean r1 = r4.hasNext()
                if (r1 == 0) goto L_0x0112
                com.ifengyu.library.widget.recyclerview.e.b r1 = com.ifengyu.library.widget.recyclerview.e.b.this
                android.view.View r5 = r1.mPressedView
                java.lang.Object r1 = r4.next()
                java.lang.Integer r1 = (java.lang.Integer) r1
                int r1 = r1.intValue()
                android.view.View r1 = r5.findViewById(r1)
                com.ifengyu.library.widget.recyclerview.e.b r5 = com.ifengyu.library.widget.recyclerview.e.b.this
                boolean r5 = r5.inRangeOfView(r1, r9)
                if (r5 == 0) goto L_0x0065
                boolean r5 = r1.isEnabled()
                if (r5 == 0) goto L_0x0065
                com.ifengyu.library.widget.recyclerview.e.b r4 = com.ifengyu.library.widget.recyclerview.e.b.this
                r4.setPressViewHotSpot(r9, r1)
                com.ifengyu.library.widget.recyclerview.e.b r4 = com.ifengyu.library.widget.recyclerview.e.b.this
                com.ifengyu.library.widget.recyclerview.e.b r5 = com.ifengyu.library.widget.recyclerview.e.b.this
                T r5 = r5.baseAdapter
                int r6 = r0.getLayoutPosition()
                com.ifengyu.library.widget.recyclerview.e.b r7 = com.ifengyu.library.widget.recyclerview.e.b.this
                T r7 = r7.baseAdapter
                int r7 = r7.getHeaderLayoutCount()
                int r6 = r6 - r7
                r4.onItemChildLongClick(r5, r1, r6)
                r1.setPressed(r2)
                com.ifengyu.library.widget.recyclerview.e.b r1 = com.ifengyu.library.widget.recyclerview.e.b.this
                r1.mIsShowPress = r2
                r1 = r2
            L_0x00b1:
                if (r1 != 0) goto L_0x000a
                com.ifengyu.library.widget.recyclerview.e.b r1 = com.ifengyu.library.widget.recyclerview.e.b.this
                com.ifengyu.library.widget.recyclerview.e.b r4 = com.ifengyu.library.widget.recyclerview.e.b.this
                T r4 = r4.baseAdapter
                com.ifengyu.library.widget.recyclerview.e.b r5 = com.ifengyu.library.widget.recyclerview.e.b.this
                android.view.View r5 = r5.mPressedView
                int r0 = r0.getLayoutPosition()
                com.ifengyu.library.widget.recyclerview.e.b r6 = com.ifengyu.library.widget.recyclerview.e.b.this
                T r6 = r6.baseAdapter
                int r6 = r6.getHeaderLayoutCount()
                int r0 = r0 - r6
                r1.onItemLongClick(r4, r5, r0)
                com.ifengyu.library.widget.recyclerview.e.b r0 = com.ifengyu.library.widget.recyclerview.e.b.this
                com.ifengyu.library.widget.recyclerview.e.b r1 = com.ifengyu.library.widget.recyclerview.e.b.this
                android.view.View r1 = r1.mPressedView
                r0.setPressViewHotSpot(r9, r1)
                com.ifengyu.library.widget.recyclerview.e.b r0 = com.ifengyu.library.widget.recyclerview.e.b.this
                android.view.View r0 = r0.mPressedView
                r0.setPressed(r2)
                com.ifengyu.library.widget.recyclerview.e.b r0 = com.ifengyu.library.widget.recyclerview.e.b.this
                java.util.Set r0 = r0.longClickViewIds
                java.util.Iterator r1 = r0.iterator()
            L_0x00ed:
                boolean r0 = r1.hasNext()
                if (r0 == 0) goto L_0x010b
                com.ifengyu.library.widget.recyclerview.e.b r0 = com.ifengyu.library.widget.recyclerview.e.b.this
                android.view.View r4 = r0.mPressedView
                java.lang.Object r0 = r1.next()
                java.lang.Integer r0 = (java.lang.Integer) r0
                int r0 = r0.intValue()
                android.view.View r0 = r4.findViewById(r0)
                r0.setPressed(r3)
                goto L_0x00ed
            L_0x010b:
                com.ifengyu.library.widget.recyclerview.e.b r0 = com.ifengyu.library.widget.recyclerview.e.b.this
                r0.mIsShowPress = r2
                goto L_0x000a
            L_0x0112:
                r1 = r3
                goto L_0x00b1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.ifengyu.library.widget.recyclerview.e.b.a.onLongPress(android.view.MotionEvent):void");
        }

        private final void a(final View view) {
            if (view != null) {
                view.postDelayed(new Runnable() {
                    public void run() {
                        if (view != null) {
                            view.setPressed(false);
                        }
                    }
                }, (long) b.this.longClickDelta);
            }
            b.this.mIsPrepressed = false;
            b.this.mPressedView = null;
        }
    }

    public abstract void onItemChildClick(T t, View view, int i);

    public abstract void onItemChildLongClick(T t, View view, int i);

    public abstract void onItemClick(T t, View view, int i);

    public abstract void onItemLongClick(T t, View view, int i);

    public boolean onInterceptTouchEvent(RecyclerView recyclerView2, MotionEvent motionEvent) {
        if (shouldDetectGesture()) {
            if (this.recyclerView == null) {
                this.recyclerView = recyclerView2;
                this.baseAdapter = (c) this.recyclerView.getAdapter();
                this.mGestureDetector = new GestureDetectorCompat(this.recyclerView.getContext(), new a(this.recyclerView));
            }
            if (!this.mGestureDetector.onTouchEvent(motionEvent) && motionEvent.getActionMasked() == 1 && this.mIsShowPress) {
                if (this.mPressedView != null) {
                    com.ifengyu.library.widget.recyclerview.d.a aVar = (com.ifengyu.library.widget.recyclerview.d.a) this.recyclerView.getChildViewHolder(this.mPressedView);
                    if (!(aVar != null && aVar.getItemViewType() == 4098 && aVar.getItemViewType() == 4096)) {
                        this.mPressedView.setPressed(false);
                    }
                    this.mPressedView = null;
                }
                this.mIsShowPress = false;
                this.mIsPrepressed = false;
            }
        }
        return false;
    }

    public void onTouchEvent(RecyclerView recyclerView2, MotionEvent motionEvent) {
        if (shouldDetectGesture()) {
            this.mGestureDetector.onTouchEvent(motionEvent);
        }
    }

    public void onRequestDisallowInterceptTouchEvent(boolean z) {
    }

    /* access modifiers changed from: private */
    public void setPressViewHotSpot(MotionEvent motionEvent, View view) {
        if (VERSION.SDK_INT >= 21 && view != null && view.getBackground() != null) {
            view.getBackground().setHotspot(motionEvent.getRawX(), motionEvent.getY() - view.getY());
        }
    }

    public boolean inRangeOfView(View view, MotionEvent motionEvent) {
        int[] iArr = new int[2];
        if (view.getVisibility() != 0) {
            return false;
        }
        view.getLocationOnScreen(iArr);
        int i = iArr[0];
        int i2 = iArr[1];
        if (motionEvent.getRawX() < ((float) i) || motionEvent.getRawX() > ((float) (i + view.getWidth())) || motionEvent.getRawY() < ((float) i2) || motionEvent.getRawY() > ((float) (i2 + view.getHeight()))) {
            return false;
        }
        return true;
    }

    /* access modifiers changed from: private */
    public boolean isHeaderOrFooterPosition(int i) {
        if (this.baseAdapter == null) {
            if (this.recyclerView == null) {
                return false;
            }
            this.baseAdapter = (c) this.recyclerView.getAdapter();
        }
        int itemViewType = this.baseAdapter.getItemViewType(i);
        return itemViewType == 4100 || itemViewType == 4097 || itemViewType == 4099 || itemViewType == 4098 || itemViewType == 4096;
    }

    public void setShouldDetectGesture(boolean z) {
        this.shouldDetectGesture = z;
    }

    /* access modifiers changed from: private */
    public boolean shouldDetectGesture() {
        if (!this.shouldDetectGesture) {
            this.mIsPrepressed = false;
            this.mPressedView = null;
        }
        return this.shouldDetectGesture;
    }

    public void setLongClickDelta(int i) {
        if (i <= 0 || i > 2000) {
            i = 200;
        }
        this.longClickDelta = i;
    }
}
