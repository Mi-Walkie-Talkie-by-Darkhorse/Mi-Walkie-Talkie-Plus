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
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.content.b;
import com.ifengyu.library.R$color;
import com.ifengyu.library.R$drawable;
import com.ifengyu.library.R$id;
import com.ifengyu.library.R$layout;
import com.ifengyu.library.R$styleable;
import com.ifengyu.library.a.l;
import com.ifengyu.library.a.m;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes2.dex */
public class ItemView extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    private ImageView f7202a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f7203b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f7204c;
    private TextView d;
    private SwitchButton e;
    private LayoutInflater f;
    private String g;
    private int h;
    private int i;

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

    private void a(Context context, AttributeSet attributeSet, int i) {
        LayoutInflater from = LayoutInflater.from(context);
        this.f = from;
        from.inflate(R$layout.item_view_layout, (ViewGroup) this, true);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ItemView, i, 0);
        int i2 = obtainStyledAttributes.getInt(R$styleable.ItemView_accessory_type, 1);
        Drawable drawable = obtainStyledAttributes.getDrawable(R$styleable.ItemView_icon);
        int color = obtainStyledAttributes.getColor(R$styleable.ItemView_titleTextColor, b.a(context, R$color.black));
        int color2 = obtainStyledAttributes.getColor(R$styleable.ItemView_detailTextColor, b.a(context, R$color.black50));
        this.h = obtainStyledAttributes.getColor(R$styleable.ItemView_valueTextColor, b.a(context, R$color.black50));
        String string = obtainStyledAttributes.getString(R$styleable.ItemView_titleText);
        String string2 = obtainStyledAttributes.getString(R$styleable.ItemView_detailText);
        this.g = obtainStyledAttributes.getString(R$styleable.ItemView_valueText);
        int i3 = obtainStyledAttributes.getInt(R$styleable.ItemView_item_theme, 0);
        obtainStyledAttributes.recycle();
        this.f7202a = (ImageView) findViewById(R$id.item_imageView);
        setImageDrawable(drawable);
        TextView textView = (TextView) findViewById(R$id.item_textView);
        this.f7203b = textView;
        textView.setTextColor(color);
        setTitleText(string);
        TextView textView2 = (TextView) findViewById(R$id.item_detailTextView);
        this.f7204c = textView2;
        textView2.setTextColor(color2);
        setDetailText(string2);
        setAccessoryType(i2, i3);
    }

    private ViewGroup.LayoutParams getAccessoryLayoutParams() {
        return new ViewGroup.LayoutParams(-2, -2);
    }

    public int getAccessoryType() {
        return this.i;
    }

    public CharSequence getDetailText() {
        TextView textView = this.f7204c;
        if (textView == null) {
            return null;
        }
        return textView.getText();
    }

    public SwitchButton getSwitch() {
        return this.e;
    }

    public CharSequence getTitleText() {
        return this.f7203b.getText();
    }

    public CharSequence getValueText() {
        TextView textView = this.d;
        if (textView == null) {
            return null;
        }
        return textView.getText();
    }

    public void setAccessoryType(int i, int i2) {
        this.i = i;
        if (i == 1) {
            ImageView a2 = a(i2);
            a2.setId(m.b());
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(15, -1);
            layoutParams.addRule(11, -1);
            layoutParams.leftMargin = m.a(12.0f);
            addView(a2, layoutParams);
        } else if (i == 2) {
            ImageView a3 = a(i2);
            a3.setId(m.b());
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams2.addRule(15, -1);
            layoutParams2.addRule(11, -1);
            layoutParams2.leftMargin = m.a(12.0f);
            addView(a3, layoutParams2);
            TextView textView = new TextView(getContext());
            this.d = textView;
            textView.setTextSize(0, m.b(14.0f));
            this.d.setTextColor(this.h);
            this.d.setMaxLines(1);
            this.d.setEllipsize(TextUtils.TruncateAt.END);
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams3.addRule(15, -1);
            layoutParams3.addRule(1, R$id.item_textContainer);
            layoutParams3.addRule(0, a3.getId());
            this.d.setGravity(5);
            addView(this.d, layoutParams3);
            setValueText(this.g);
        } else if (i != 3) {
            if (i == 4) {
                TextView textView2 = new TextView(getContext());
                this.d = textView2;
                textView2.setTextSize(0, m.b(14.0f));
                this.d.setTextColor(this.h);
                this.d.setMaxLines(1);
                this.d.setEllipsize(TextUtils.TruncateAt.END);
                RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
                layoutParams4.addRule(15, -1);
                layoutParams4.addRule(11, -1);
                layoutParams4.leftMargin = m.a(12.0f);
                this.d.setGravity(5);
                addView(this.d, layoutParams4);
                setValueText(this.g);
            }
        } else if (this.e == null) {
            this.f.inflate(R$layout.item_view_switch_button, (ViewGroup) this, true);
            SwitchButton switchButton = (SwitchButton) findViewById(R$id.item_switch);
            this.e = switchButton;
            switchButton.setClickable(false);
            ((RelativeLayout.LayoutParams) findViewById(R$id.item_textContainer).getLayoutParams()).addRule(0, R$id.item_switch);
        }
    }

    public void setDetailText(CharSequence charSequence) {
        if (this.f7204c == null) {
            return;
        }
        if (!l.a(charSequence)) {
            this.f7204c.setText(charSequence);
            if (!a(this.f7204c)) {
                this.f7204c.setVisibility(0);
            }
        } else if (a(this.f7204c)) {
            this.f7204c.setVisibility(8);
        }
    }

    public void setImageDrawable(Drawable drawable) {
        if (drawable == null) {
            this.f7202a.setVisibility(8);
            return;
        }
        this.f7202a.setImageDrawable(drawable);
        this.f7202a.setVisibility(0);
    }

    public void setTitleText(CharSequence charSequence) {
        this.f7203b.setText(charSequence);
        if (l.a(charSequence)) {
            if (a(this.f7203b)) {
                this.f7203b.setVisibility(8);
            }
        } else if (!a(this.f7203b)) {
            this.f7203b.setVisibility(0);
        }
    }

    public void setValueText(CharSequence charSequence) {
        if (this.d == null) {
            return;
        }
        if (!l.a(charSequence)) {
            this.d.setText(charSequence);
            if (!a(this.d)) {
                this.d.setVisibility(0);
            }
        } else if (a(this.d)) {
            this.d.setVisibility(8);
        }
    }

    public ItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, attributeSet, i);
    }

    private boolean a(View view) {
        return view.getVisibility() == 0;
    }

    private ImageView a(int i) {
        ImageView imageView = new ImageView(getContext());
        imageView.setLayoutParams(getAccessoryLayoutParams());
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        imageView.setImageResource(R$drawable.icon_arrow_right);
        return imageView;
    }
}
