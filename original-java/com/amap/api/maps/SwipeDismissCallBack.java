package com.amap.api.maps;

import android.view.View;
import com.amap.api.maps.SwipeDismissTouchListener.DismissCallbacks;

public class SwipeDismissCallBack implements DismissCallbacks {
    SwipeDismissView a;

    public SwipeDismissCallBack(SwipeDismissView swipeDismissView) {
        this.a = swipeDismissView;
    }

    public boolean canDismiss(Object obj) {
        return true;
    }

    public void onDismiss(View view, Object obj) {
        if (this.a.onDismissCallback != null) {
            this.a.onDismissCallback.onDismiss();
        }
    }

    public void onNotifySwipe() {
        if (this.a.onDismissCallback != null) {
            this.a.onDismissCallback.onNotifySwipe();
        }
    }
}
