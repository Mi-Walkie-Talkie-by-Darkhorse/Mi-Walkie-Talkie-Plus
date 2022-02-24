package com.ifengyu.intercom.ui.activity;

import android.view.View;
import android.widget.ExpandableListView;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;

/* loaded from: classes2.dex */
public class GaoDeOfflineMapCityActivity_ViewBinding implements Unbinder {

    /* renamed from: a  reason: collision with root package name */
    private GaoDeOfflineMapCityActivity f6066a;

    @UiThread
    public GaoDeOfflineMapCityActivity_ViewBinding(GaoDeOfflineMapCityActivity gaoDeOfflineMapCityActivity, View view) {
        this.f6066a = gaoDeOfflineMapCityActivity;
        gaoDeOfflineMapCityActivity.leftBackIv = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_bar_left, "field 'leftBackIv'", ImageView.class);
        gaoDeOfflineMapCityActivity.titleText = (TextView) Utils.findRequiredViewAsType(view, R.id.title_bar_title, "field 'titleText'", TextView.class);
        gaoDeOfflineMapCityActivity.cityExpandableListView = (ExpandableListView) Utils.findRequiredViewAsType(view, R.id.city_expandable_list_view, "field 'cityExpandableListView'", ExpandableListView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        GaoDeOfflineMapCityActivity gaoDeOfflineMapCityActivity = this.f6066a;
        if (gaoDeOfflineMapCityActivity != null) {
            this.f6066a = null;
            gaoDeOfflineMapCityActivity.leftBackIv = null;
            gaoDeOfflineMapCityActivity.titleText = null;
            gaoDeOfflineMapCityActivity.cityExpandableListView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
