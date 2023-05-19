package com.ifengyu.library.widget.view;

import android.content.Context;
import android.content.res.TypedArray;
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
public class ItemView extends RelativeLayout {

    /* renamed from: a */
    private ImageView f16454a;

    /* renamed from: b */
    private LinearLayout f16455b;

    /* renamed from: c */
    private TextView f16456c;

    /* renamed from: d */
    private TextView f16457d;

    /* renamed from: e */
    private TextView f16458e;

    /* renamed from: f */
    private SwitchButton f16459f;

    /* renamed from: g */
    private LayoutInflater f16460g;

    /* renamed from: h */
    private String f16461h;

    /* renamed from: i */
    private int f16462i;

    /* renamed from: j */
    private int f16463j;

    /* renamed from: k */
    private int f16464k;

    /* renamed from: l */
    private ImageView f16465l;

    /* renamed from: m */
    private ImageView f16466m;

    /* renamed from: n */
    private int f16467n;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface ItemAccessoryType {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface ItemTheme {
    }

    public ItemView(Context context) {
        this(context, null);
    }

    /* renamed from: a */
    private void m8577a(Context context, AttributeSet attributeSet, int i) {
        LayoutInflater from = LayoutInflater.from(context);
        this.f16460g = from;
        from.inflate(R$layout.item_view_layout, (ViewGroup) this, true);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ItemView, i, 0);
        int i2 = obtainStyledAttributes.getInt(R$styleable.ItemView_accessory_type, 1);
        Drawable drawable = obtainStyledAttributes.getDrawable(R$styleable.ItemView_icon);
        this.f16463j = obtainStyledAttributes.getColor(R$styleable.ItemView_titleTextColor, ContextCompat.m23929b(context, R$color.black));
        int i3 = R$styleable.ItemView_detailTextColor;
        int i4 = R$color.black50;
        this.f16464k = obtainStyledAttributes.getColor(i3, ContextCompat.m23929b(context, i4));
        this.f16462i = obtainStyledAttributes.getColor(R$styleable.ItemView_valueTextColor, ContextCompat.m23929b(context, i4));
        String string = obtainStyledAttributes.getString(R$styleable.ItemView_titleText);
        String string2 = obtainStyledAttributes.getString(R$styleable.ItemView_detailText);
        this.f16461h = obtainStyledAttributes.getString(R$styleable.ItemView_valueText);
        int i5 = obtainStyledAttributes.getInt(R$styleable.ItemView_item_theme, 0);
        obtainStyledAttributes.recycle();
        this.f16454a = (ImageView) findViewById(R$id.item_imageView);
        setImageDrawable(drawable);
        this.f16455b = (LinearLayout) findViewById(R$id.item_textContainer);
        TextView textView = (TextView) findViewById(R$id.item_textView);
        this.f16456c = textView;
        textView.setTextColor(this.f16463j);
        setTitleText(string);
        TextView textView2 = (TextView) findViewById(R$id.item_detailTextView);
        this.f16457d = textView2;
        textView2.setTextColor(this.f16464k);
        setDetailText(string2);
        setAccessoryType(i2, i5);
    }

    /* renamed from: b */
    private boolean m8576b(View view) {
        return view.getVisibility() == 0;
    }

    private ViewGroup.LayoutParams getAccessoryLayoutParams() {
        return new ViewGroup.LayoutParams(-2, -2);
    }

    /* renamed from: c */
    public void m8575c(boolean z) {
        if (z) {
            this.f16466m.setVisibility(0);
        } else {
            this.f16466m.setVisibility(8);
        }
    }

    public ImageView getAccessoryImageView() {
        if (this.f16465l == null) {
            ImageView imageView = new ImageView(getContext());
            this.f16465l = imageView;
            imageView.setLayoutParams(getAccessoryLayoutParams());
            this.f16465l.setScaleType(ImageView.ScaleType.CENTER);
            this.f16465l.setImageResource(R$drawable.arrow_icon_right_gray);
        }
        return this.f16465l;
    }

    public int getAccessoryType() {
        return this.f16467n;
    }

    public CharSequence getDetailText() {
        TextView textView = this.f16457d;
        if (textView == null) {
            return null;
        }
        return textView.getText();
    }

    public ImageView getDotImageView() {
        if (this.f16466m == null) {
            ImageView imageView = new ImageView(getContext());
            this.f16466m = imageView;
            imageView.setLayoutParams(getAccessoryLayoutParams());
            this.f16466m.setScaleType(ImageView.ScaleType.CENTER);
            this.f16466m.setImageResource(R$drawable.dot_red);
        }
        return this.f16466m;
    }

    public SwitchButton getSwitch() {
        return this.f16459f;
    }

    public CharSequence getTitleText() {
        return this.f16456c.getText();
    }

    public CharSequence getValueText() {
        TextView textView = this.f16458e;
        if (textView == null) {
            return null;
        }
        return textView.getText();
    }

    public void setAccessoryType(int i, int i2) {
        this.f16467n = i;
        if (i == 1) {
            ImageView accessoryImageView = getAccessoryImageView();
            accessoryImageView.setId(UIUtils.m8615c());
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(15, -1);
            layoutParams.addRule(11, -1);
            layoutParams.leftMargin = UIUtils.m8616b(12.0f);
            addView(accessoryImageView, layoutParams);
            this.f16466m = getDotImageView();
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams2.addRule(15, -1);
            layoutParams2.addRule(16, accessoryImageView.getId());
            addView(this.f16466m, layoutParams2);
            this.f16466m.setVisibility(8);
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
            this.f16458e = textView;
            textView.setTextSize(0, UIUtils.m8594x(14.0f));
            this.f16458e.setTextColor(this.f16462i);
            this.f16458e.setMaxLines(1);
            this.f16458e.setEllipsize(TextUtils.TruncateAt.END);
            RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams4.addRule(15, -1);
            layoutParams4.addRule(17, this.f16455b.getId());
            if (i == 3) {
                layoutParams4.addRule(11);
            } else {
                layoutParams4.addRule(16, accessoryImageView2.getId());
            }
            this.f16458e.setGravity(5);
            addView(this.f16458e, layoutParams4);
            setValueText(this.f16461h);
        } else if (i == 4) {
            if (this.f16459f == null) {
                this.f16460g.inflate(R$layout.item_view_switch_button, (ViewGroup) this, true);
                int i3 = R$id.item_switch;
                SwitchButton switchButton = (SwitchButton) findViewById(i3);
                this.f16459f = switchButton;
                switchButton.setClickable(false);
                ((RelativeLayout.LayoutParams) findViewById(R$id.item_textContainer).getLayoutParams()).addRule(0, i3);
            }
        } else if (i != 5) {
        } else {
            TextView textView2 = new TextView(getContext());
            this.f16458e = textView2;
            textView2.setTextSize(0, UIUtils.m8594x(14.0f));
            this.f16458e.setTextColor(this.f16462i);
            this.f16458e.setMaxLines(1);
            this.f16458e.setEllipsize(TextUtils.TruncateAt.END);
            RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams5.addRule(15, -1);
            layoutParams5.addRule(11, -1);
            layoutParams5.leftMargin = UIUtils.m8616b(12.0f);
            this.f16458e.setGravity(5);
            addView(this.f16458e, layoutParams5);
            setValueText(this.f16461h);
        }
    }

    public void setActive(boolean z) {
        if (z) {
            TextView textView = this.f16456c;
            if (textView != null) {
                textView.setTextColor(this.f16463j);
            }
            TextView textView2 = this.f16457d;
            if (textView2 != null) {
                textView2.setTextColor(this.f16464k);
            }
            TextView textView3 = this.f16458e;
            if (textView3 != null) {
                textView3.setTextColor(this.f16462i);
            }
            ImageView imageView = this.f16465l;
            if (imageView != null) {
                imageView.setImageResource(R$drawable.arrow_icon_right_gray);
            }
        } else {
            TextView textView4 = this.f16456c;
            if (textView4 != null) {
                textView4.setTextColor(UIUtils.m8614d(R$color.black20));
            }
            TextView textView5 = this.f16457d;
            if (textView5 != null) {
                textView5.setTextColor(UIUtils.m8614d(R$color.black20));
            }
            TextView textView6 = this.f16458e;
            if (textView6 != null) {
                textView6.setTextColor(UIUtils.m8614d(R$color.black20));
            }
            ImageView imageView2 = this.f16465l;
            if (imageView2 != null) {
                imageView2.setImageResource(R$drawable.arrow_icon_right_gray);
            }
        }
        setClickable(z);
    }

    public void setDetailText(CharSequence charSequence) {
        if (this.f16457d != null) {
            if (C4975r.m8621a(charSequence)) {
                if (m8576b(this.f16457d)) {
                    this.f16457d.setVisibility(8);
                    return;
                }
                return;
            }
            this.f16457d.setText(charSequence);
            if (m8576b(this.f16457d)) {
                return;
            }
            this.f16457d.setVisibility(0);
        }
    }

    public void setImageDrawable(Drawable drawable) {
        if (drawable == null) {
            this.f16454a.setVisibility(8);
            return;
        }
        this.f16454a.setImageDrawable(drawable);
        this.f16454a.setVisibility(0);
    }

    public void setTitleText(CharSequence charSequence) {
        this.f16456c.setText(charSequence);
        if (C4975r.m8621a(charSequence)) {
            if (m8576b(this.f16456c)) {
                this.f16456c.setVisibility(8);
            }
        } else if (m8576b(this.f16456c)) {
        } else {
            this.f16456c.setVisibility(0);
        }
    }

    public void setValueText(CharSequence charSequence) {
        if (this.f16458e != null) {
            if (C4975r.m8621a(charSequence)) {
                if (m8576b(this.f16458e)) {
                    this.f16458e.setVisibility(8);
                    return;
                }
                return;
            }
            this.f16458e.setText(charSequence);
            if (m8576b(this.f16458e)) {
                return;
            }
            this.f16458e.setVisibility(0);
        }
    }

    public ItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m8577a(context, attributeSet, i);
    }
}
