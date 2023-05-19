package com.ifengyu.intercom.p216ui.activity;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.amap.api.maps.MapView;
import com.ifengyu.intercom.R;

/* renamed from: com.ifengyu.intercom.ui.activity.GaoDeMapToolOperateActivity_ViewBinding */
/* loaded from: classes2.dex */
public class GaoDeMapToolOperateActivity_ViewBinding implements Unbinder {

    /* renamed from: a */
    private GaoDeMapToolOperateActivity f14805a;

    @UiThread
    public GaoDeMapToolOperateActivity_ViewBinding(GaoDeMapToolOperateActivity gaoDeMapToolOperateActivity, View view) {
        this.f14805a = gaoDeMapToolOperateActivity;
        gaoDeMapToolOperateActivity.titleBarLeft = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_bar_left, "field 'titleBarLeft'", ImageView.class);
        gaoDeMapToolOperateActivity.titleBarTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.title_bar_title, "field 'titleBarTitle'", TextView.class);
        gaoDeMapToolOperateActivity.mapView = (MapView) Utils.findRequiredViewAsType(view, R.id.mapView, "field 'mapView'", MapView.class);
        gaoDeMapToolOperateActivity.zoomBigIV = (ImageView) Utils.findRequiredViewAsType(view, R.id.map_icon_zoom_big_iv, "field 'zoomBigIV'", ImageView.class);
        gaoDeMapToolOperateActivity.zoomSmallIV = (ImageView) Utils.findRequiredViewAsType(view, R.id.map_icon_zoom_small_iv, "field 'zoomSmallIV'", ImageView.class);
        gaoDeMapToolOperateActivity.myLocateIV = (ImageView) Utils.findRequiredViewAsType(view, R.id.map_icon_my_locate_iv, "field 'myLocateIV'", ImageView.class);
        gaoDeMapToolOperateActivity.bottomMapKitBottomLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.map_tool_kit_bottom_layout, "field 'bottomMapKitBottomLayout'", LinearLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        GaoDeMapToolOperateActivity gaoDeMapToolOperateActivity = this.f14805a;
        if (gaoDeMapToolOperateActivity != null) {
            this.f14805a = null;
            gaoDeMapToolOperateActivity.titleBarLeft = null;
            gaoDeMapToolOperateActivity.titleBarTitle = null;
            gaoDeMapToolOperateActivity.mapView = null;
            gaoDeMapToolOperateActivity.zoomBigIV = null;
            gaoDeMapToolOperateActivity.zoomSmallIV = null;
            gaoDeMapToolOperateActivity.myLocateIV = null;
            gaoDeMapToolOperateActivity.bottomMapKitBottomLayout = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
