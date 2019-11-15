package com.ifengyu.intercom.ui.activity;

import android.support.annotation.CallSuper;
import android.support.annotation.UiThread;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.activity.OsmMapToolOperateActivity;
import org.osmdroid.views.MapView;

public class OsmMapToolOperateActivity_ViewBinding<T extends OsmMapToolOperateActivity> implements Unbinder {
    protected T a;

    @UiThread
    public OsmMapToolOperateActivity_ViewBinding(T t, View view) {
        this.a = t;
        t.titleBarLeft = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_bar_left, "field 'titleBarLeft'", ImageView.class);
        t.titleBarTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.title_bar_title, "field 'titleBarTitle'", TextView.class);
        t.mapView = (MapView) Utils.findRequiredViewAsType(view, R.id.mapView, "field 'mapView'", MapView.class);
        t.zoomBigIV = (ImageView) Utils.findRequiredViewAsType(view, R.id.map_icon_zoom_big_iv, "field 'zoomBigIV'", ImageView.class);
        t.zoomSmallIV = (ImageView) Utils.findRequiredViewAsType(view, R.id.map_icon_zoom_small_iv, "field 'zoomSmallIV'", ImageView.class);
        t.myLocateIV = (ImageView) Utils.findRequiredViewAsType(view, R.id.map_icon_my_locate_iv, "field 'myLocateIV'", ImageView.class);
        t.bottomMapKitBottomLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.map_tool_kit_bottom_layout, "field 'bottomMapKitBottomLayout'", LinearLayout.class);
        t.popupBg = Utils.findRequiredView(view, R.id.popupBg, "field 'popupBg'");
    }

    @CallSuper
    public void unbind() {
        T t = this.a;
        if (t == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        t.titleBarLeft = null;
        t.titleBarTitle = null;
        t.mapView = null;
        t.zoomBigIV = null;
        t.zoomSmallIV = null;
        t.myLocateIV = null;
        t.bottomMapKitBottomLayout = null;
        t.popupBg = null;
        this.a = null;
    }
}
