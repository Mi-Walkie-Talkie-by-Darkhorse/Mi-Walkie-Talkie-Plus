package com.amap.api.maps.offlinemap;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListView;

public class DownLoadListView extends ListView {
    public DownLoadListView(Context context) {
        super(context);
    }

    public DownLoadListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setLayoutParams(new LayoutParams(-1, -1));
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, MeasureSpec.makeMeasureSpec(536870911, Integer.MIN_VALUE));
    }
}
