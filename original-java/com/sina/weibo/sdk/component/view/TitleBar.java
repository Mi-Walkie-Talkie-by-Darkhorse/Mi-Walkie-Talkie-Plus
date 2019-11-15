package com.sina.weibo.sdk.component.view;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.sina.weibo.sdk.utils.f;

public class TitleBar extends RelativeLayout {
    private TextView a;
    private TextView b;
    /* access modifiers changed from: private */
    public a c;

    public interface a {
        void a();
    }

    public TitleBar(Context context) {
        super(context);
        a();
    }

    public TitleBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a();
    }

    public TitleBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    private void a() {
        this.a = new TextView(getContext());
        this.a.setClickable(true);
        this.a.setTextSize(2, 17.0f);
        this.a.setTextColor(f.a(-32256, 1728020992));
        LayoutParams layoutParams = new LayoutParams(-2, -2);
        layoutParams.addRule(5);
        layoutParams.addRule(15);
        layoutParams.leftMargin = f.a(getContext(), 10);
        layoutParams.rightMargin = f.a(getContext(), 10);
        this.a.setLayoutParams(layoutParams);
        this.a.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                if (TitleBar.this.c != null) {
                    TitleBar.this.c.a();
                }
            }
        });
        addView(this.a);
        this.b = new TextView(getContext());
        this.b.setTextSize(2, 18.0f);
        this.b.setTextColor(-11382190);
        this.b.setEllipsize(TruncateAt.END);
        this.b.setSingleLine(true);
        this.b.setGravity(17);
        this.b.setMaxWidth(f.a(getContext(), 160));
        LayoutParams layoutParams2 = new LayoutParams(-2, -2);
        layoutParams2.addRule(13);
        this.b.setLayoutParams(layoutParams2);
        addView(this.b);
        setLayoutParams(new ViewGroup.LayoutParams(-1, f.a(getContext(), 45)));
        setBackgroundDrawable(f.b(getContext(), "weibosdk_navigationbar_background.9.png"));
    }

    public void setTitleBarText(String str) {
        this.b.setText(str);
    }

    public void setLeftBtnText(String str) {
        this.a.setText(str);
    }

    public void setLeftBtnBg(Drawable drawable) {
        this.a.setBackgroundDrawable(drawable);
    }

    public void setTitleBarClickListener(a aVar) {
        this.c = aVar;
    }
}
