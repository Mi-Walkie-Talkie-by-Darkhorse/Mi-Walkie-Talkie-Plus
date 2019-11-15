package com.ifengyu.intercom.ui.activity;

import android.support.annotation.CallSuper;
import android.support.annotation.UiThread;
import android.view.View;
import android.widget.ExpandableListView;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.activity.GaoDeOfflineMapCityActivity;

public class GaoDeOfflineMapCityActivity_ViewBinding<T extends GaoDeOfflineMapCityActivity> implements Unbinder {
    protected T a;

    @UiThread
    public GaoDeOfflineMapCityActivity_ViewBinding(T t, View view) {
        this.a = t;
        t.leftBackIv = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_bar_left, "field 'leftBackIv'", ImageView.class);
        t.titleText = (TextView) Utils.findRequiredViewAsType(view, R.id.title_bar_title, "field 'titleText'", TextView.class);
        t.cityExpandableListView = (ExpandableListView) Utils.findRequiredViewAsType(view, R.id.city_expandable_list_view, "field 'cityExpandableListView'", ExpandableListView.class);
    }

    @CallSuper
    public void unbind() {
        T t = this.a;
        if (t == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        t.leftBackIv = null;
        t.titleText = null;
        t.cityExpandableListView = null;
        this.a = null;
    }
}
