package com.ifengyu.library.widget.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.ifengyu.library.R$color;
import com.ifengyu.library.R$drawable;
import com.ifengyu.library.R$id;
import com.ifengyu.library.R$layout;
import com.ifengyu.library.R$styleable;
import com.ifengyu.library.utils.C4975r;
import com.ifengyu.library.utils.UIUtils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes2.dex */
public class ItemTextView extends RelativeLayout {

    /* renamed from: a */
    private ImageView f16440a;

    /* renamed from: b */
    private LinearLayout f16441b;

    /* renamed from: c */
    private TextView f16442c;

    /* renamed from: d */
    private TextView f16443d;

    /* renamed from: e */
    private TextView f16444e;

    /* renamed from: f */
    private SwitchButton f16445f;

    /* renamed from: g */
    private LayoutInflater f16446g;

    /* renamed from: h */
    private String f16447h;

    /* renamed from: i */
    private int f16448i;

    /* renamed from: j */
    private int f16449j;

    /* renamed from: k */
    private int f16450k;

    /* renamed from: l */
    private ImageView f16451l;

    /* renamed from: m */
    private ImageView f16452m;

    /* renamed from: n */
    private int f16453n;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface ItemAccessoryType {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface ItemTheme {
    }

    public ItemTextView(Context context) {
        this(context, null);
    }

    /* renamed from: a */
    private void m8580a(Context context, AttributeSet attributeSet, int i) {
        LayoutInflater from = LayoutInflater.from(context);
        this.f16446g = from;
        from.inflate(R$layout.item_view_layout, (ViewGroup) this, true);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ItemView, i, 0);
        int i2 = obtainStyledAttributes.getInt(R$styleable.ItemView_accessory_type, 1);
        Drawable drawable = obtainStyledAttributes.getDrawable(R$styleable.ItemView_icon);
        this.f16449j = obtainStyledAttributes.getColor(R$styleable.ItemView_titleTextColor, ContextCompat.m23929b(context, R$color.black));
        int i3 = R$styleable.ItemView_detailTextColor;
        int i4 = R$color.black50;
        this.f16450k = obtainStyledAttributes.getColor(i3, ContextCompat.m23929b(context, i4));
        this.f16448i = obtainStyledAttributes.getColor(R$styleable.ItemView_valueTextColor, ContextCompat.m23929b(context, i4));
        String string = obtainStyledAttributes.getString(R$styleable.ItemView_titleText);
        String string2 = obtainStyledAttributes.getString(R$styleable.ItemView_detailText);
        this.f16447h = obtainStyledAttributes.getString(R$styleable.ItemView_valueText);
        int i5 = obtainStyledAttributes.getInt(R$styleable.ItemView_item_theme, 0);
        obtainStyledAttributes.recycle();
        this.f16440a = (ImageView) findViewById(R$id.item_imageView);
        setImageDrawable(drawable);
        this.f16441b = (LinearLayout) findViewById(R$id.item_textContainer);
        TextView textView = (TextView) findViewById(R$id.item_textView);
        this.f16442c = textView;
        textView.setTextColor(this.f16449j);
        UIUtils.m8595w(Typeface.create(Typeface.createFromAsset(UIUtils.m8613e().getAssets(), "fonts/Kmedium.ttf"), 1), this.f16442c);
        setTitleText(string);
        TextView textView2 = (TextView) findViewById(R$id.item_detailTextView);
        this.f16443d = textView2;
        textView2.setTextColor(this.f16450k);
        setDetailText(string2);
        setAccessoryType(i2, i5);
    }

    /* renamed from: b */
    private boolean m8579b(View view) {
        return view.getVisibility() == 0;
    }

    private ViewGroup.LayoutParams getAccessoryLayoutParams() {
        return new ViewGroup.LayoutParams(-2, -2);
    }

    /* renamed from: c */
    public void m8578c(boolean z) {
        if (z) {
            this.f16452m.setVisibility(0);
        } else {
            this.f16452m.setVisibility(8);
        }
    }

    public ImageView getAccessoryImageView() {
        if (this.f16451l == null) {
            ImageView imageView = new ImageView(getContext());
            this.f16451l = imageView;
            imageView.setLayoutParams(getAccessoryLayoutParams());
            this.f16451l.setScaleType(ImageView.ScaleType.CENTER);
            this.f16451l.setImageResource(R$drawable.arrow_icon_right_gray);
        }
        return this.f16451l;
    }

    public int getAccessoryType() {
        return this.f16453n;
    }

    public CharSequence getDetailText() {
        TextView textView = this.f16443d;
        if (textView == null) {
            return null;
        }
        return textView.getText();
    }

    public ImageView getDotImageView() {
        if (this.f16452m == null) {
            ImageView imageView = new ImageView(getContext());
            this.f16452m = imageView;
            imageView.setLayoutParams(getAccessoryLayoutParams());
            this.f16452m.setScaleType(ImageView.ScaleType.CENTER);
            this.f16452m.setImageResource(R$drawable.dot_red);
        }
        return this.f16452m;
    }

    public SwitchButton getSwitch() {
        return this.f16445f;
    }

    public CharSequence getTitleText() {
        return this.f16442c.getText();
    }

    public CharSequence getValueText() {
        TextView textView = this.f16444e;
        if (textView == null) {
            return null;
        }
        return textView.getText();
    }

    public void setAccessoryType(int i, int i2) {
        this.f16453n = i;
        if (i == 1) {
            ImageView accessoryImageView = getAccessoryImageView();
            accessoryImageView.setId(UIUtils.m8615c());
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(15, -1);
            layoutParams.addRule(11, -1);
            layoutParams.leftMargin = UIUtils.m8616b(12.0f);
            addView(accessoryImageView, layoutParams);
            this.f16452m = getDotImageView();
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams2.addRule(15, -1);
            layoutParams2.addRule(16, accessoryImageView.getId());
            addView(this.f16452m, layoutParams2);
            this.f16452m.setVisibility(8);
            return;
        }
        if (i == 2 || i == 3) {
            ImageView accessoryImageView2 = getAccessoryImageView();
            accessoryImageView2.setId(UIUtils.m8615c());
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams3.addRule(15, -1);
            layoutParams3.addRule(11, -1);
            layoutParams3.leftMargin = UIUtils.m8616b(12.0f);
            accessoryImageView2.setVisibility(i != 3 ? 0 : 4);
            addView(accessoryImageView2, layoutParams3);
            TextView textView = new TextView(getContext());
            this.f16444e = textView;
            textView.setTextSize(0, UIUtils.m8594x(14.0f));
            this.f16444e.setTextColor(this.f16448i);
            this.f16444e.setMaxLines(1);
            this.f16444e.setEllipsize(TextUtils.TruncateAt.END);
            RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams4.addRule(15, -1);
            layoutParams4.addRule(17, this.f16441b.getId());
            if (i == 3) {
                layoutParams4.addRule(11);
            } else {
                layoutParams4.addRule(16, accessoryImageView2.getId());
            }
            this.f16444e.setGravity(5);
            addView(this.f16444e, layoutParams4);
            setValueText(this.f16447h);
        } else if (i == 4) {
            if (this.f16445f == null) {
                this.f16446g.inflate(R$layout.item_view_switch_button, (ViewGroup) this, true);
                int i3 = R$id.item_switch;
                SwitchButton switchButton = (SwitchButton) findViewById(i3);
                this.f16445f = switchButton;
                switchButton.setClickable(false);
                ((RelativeLayout.LayoutParams) findViewById(R$id.item_textContainer).getLayoutParams()).addRule(0, i3);
            }
        } else if (i != 5) {
        } else {
            TextView textView2 = new TextView(getContext());
            this.f16444e = textView2;
            textView2.setTextSize(0, UIUtils.m8594x(14.0f));
            this.f16444e.setTextColor(this.f16448i);
            this.f16444e.setMaxLines(1);
            this.f16444e.setEllipsize(TextUtils.TruncateAt.END);
            RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams5.addRule(15, -1);
            layoutParams5.addRule(11, -1);
            layoutParams5.leftMargin = UIUtils.m8616b(12.0f);
            this.f16444e.setGravity(5);
            addView(this.f16444e, layoutParams5);
            setValueText(this.f16447h);
        }
    }

    public void setActive(boolean z) {
        if (z) {
            TextView textView = this.f16442c;
            if (textView != null) {
                textView.setTextColor(this.f16449j);
            }
            TextView textView2 = this.f16443d;
            if (textView2 != null) {
                textView2.setTextColor(this.f16450k);
            }
            TextView textView3 = this.f16444e;
            if (textView3 != null) {
                textView3.setTextColor(this.f16448i);
            }
            ImageView imageView = this.f16451l;
            if (imageView != null) {
                imageView.setImageResource(R$drawable.arrow_icon_right_gray);
            }
        } else {
            TextView textView4 = this.f16442c;
            if (textView4 != null) {
                textView4.setTextColor(UIUtils.m8614d(R$color.black20));
            }
            TextView textView5 = this.f16443d;
            if (textView5 != null) {
                textView5.setTextColor(UIUtils.m8614d(R$color.black20));
            }
            TextView textView6 = this.f16444e;
            if (textView6 != null) {
                textView6.setTextColor(UIUtils.m8614d(R$color.black20));
            }
            ImageView imageView2 = this.f16451l;
            if (imageView2 != null) {
                imageView2.setImageResource(R$drawable.arrow_icon_right_gray);
            }
        }
        setClickable(z);
    }

    public void setDetailText(CharSequence charSequence) {
        if (this.f16443d != null) {
            if (C4975r.m8621a(charSequence)) {
                if (m8579b(this.f16443d)) {
                    this.f16443d.setVisibility(8);
                    return;
                }
                return;
            }
            this.f16443d.setText(charSequence);
            if (m8579b(this.f16443d)) {
                return;
            }
            this.f16443d.setVisibility(0);
        }
    }

    public void setImageDrawable(Drawable drawable) {
        if (drawable == null) {
            this.f16440a.setVisibility(8);
            return;
        }
        this.f16440a.setImageDrawable(drawable);
        this.f16440a.setVisibility(0);
    }

    public void setTitleText(CharSequence charSequence) {
        this.f16442c.setText(charSequence);
        if (C4975r.m8621a(charSequence)) {
            if (m8579b(this.f16442c)) {
                this.f16442c.setVisibility(8);
            }
        } else if (m8579b(this.f16442c)) {
        } else {
            this.f16442c.setVisibility(0);
        }
    }

    public void setValueText(CharSequence charSequence) {
        if (this.f16444e != null) {
            if (C4975r.m8621a(charSequence)) {
                if (m8579b(this.f16444e)) {
                    this.f16444e.setVisibility(8);
                    return;
                }
                return;
            }
            this.f16444e.setText(charSequence);
            if (m8579b(this.f16444e)) {
                return;
            }
            this.f16444e.setVisibility(0);
        }
    }

    public ItemTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ItemTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m8580a(context, attributeSet, i);
    }
}
