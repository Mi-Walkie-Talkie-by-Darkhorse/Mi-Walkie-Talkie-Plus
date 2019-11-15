package com.sina.weibo.sdk.register.mobile;

import android.content.Context;
import android.widget.AbsListView.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.sina.weibo.sdk.utils.f;

public class SelectCountryTitleView extends RelativeLayout {
    private TextView a;

    public SelectCountryTitleView(Context context) {
        super(context);
        a();
    }

    private void a() {
        setLayoutParams(new LayoutParams(-1, f.a(getContext(), 24)));
        setBackgroundDrawable(f.a(getContext(), "tableview_sectionheader_background.png"));
        this.a = new TextView(getContext());
        this.a.setTextSize(14.0f);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(15);
        layoutParams.leftMargin = f.a(getContext(), 10);
        this.a.setLayoutParams(layoutParams);
        this.a.setGravity(3);
        this.a.setTextColor(-7171438);
        this.a.setGravity(16);
        addView(this.a);
    }

    public void setTitle(String str) {
        this.a.setText(str);
    }

    public void a(String str) {
        setTitle(str);
    }
}
