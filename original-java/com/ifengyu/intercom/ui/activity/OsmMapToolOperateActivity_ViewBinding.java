package com.ifengyu.intercom.ui.activity;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import org.osmdroid.views.MapView;

/* loaded from: classes2.dex */
public class OsmMapToolOperateActivity_ViewBinding implements Unbinder {

    /* renamed from: a  reason: collision with root package name */
    private OsmMapToolOperateActivity f6132a;

    @UiThread
    public OsmMapToolOperateActivity_ViewBinding(OsmMapToolOperateActivity osmMapToolOperateActivity, View view) {
        this.f6132a = osmMapToolOperateActivity;
        osmMapToolOperateActivity.titleBarLeft = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_bar_left, "field 'titleBarLeft'", ImageView.class);
        osmMapToolOperateActivity.titleBarTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.title_bar_title, "field 'titleBarTitle'", TextView.class);
        osmMapToolOperateActivity.mapView = (MapView) Utils.findRequiredViewAsType(view, R.id.mapView, "field 'mapView'", MapView.class);
        osmMapToolOperateActivity.zoomBigIV = (ImageView) Utils.findRequiredViewAsType(view, R.id.map_icon_zoom_big_iv, "field 'zoomBigIV'", ImageView.class);
        osmMapToolOperateActivity.zoomSmallIV = (ImageView) Utils.findRequiredViewAsType(view, R.id.map_icon_zoom_small_iv, "field 'zoomSmallIV'", ImageView.class);
        osmMapToolOperateActivity.myLocateIV = (ImageView) Utils.findRequiredViewAsType(view, R.id.map_icon_my_locate_iv, "field 'myLocateIV'", ImageView.class);
        osmMapToolOperateActivity.bottomMapKitBottomLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.map_tool_kit_bottom_layout, "field 'bottomMapKitBottomLayout'", LinearLayout.class);
        osmMapToolOperateActivity.popupBg = Utils.findRequiredView(view, R.id.popupBg, "field 'popupBg'");
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        OsmMapToolOperateActivity osmMapToolOperateActivity = this.f6132a;
        if (osmMapToolOperateActivity != null) {
            this.f6132a = null;
            osmMapToolOperateActivity.titleBarLeft = null;
            osmMapToolOperateActivity.titleBarTitle = null;
            osmMapToolOperateActivity.mapView = null;
            osmMapToolOperateActivity.zoomBigIV = null;
            osmMapToolOperateActivity.zoomSmallIV = null;
            osmMapToolOperateActivity.myLocateIV = null;
            osmMapToolOperateActivity.bottomMapKitBottomLayout = null;
            osmMapToolOperateActivity.popupBg = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
