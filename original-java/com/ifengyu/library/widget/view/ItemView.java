package com.ifengyu.library.widget.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.v4.content.ContextCompat;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.ifengyu.library.R;
import com.ifengyu.library.util.i;
import com.ifengyu.library.util.l;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public class ItemView extends RelativeLayout {
    private ImageView a;
    private TextView b;
    private TextView c;
    private TextView d;
    private SwitchButton e;
    private LayoutInflater f;
    private String g;
    private int h;
    private int i;
    private int j;

    @Retention(RetentionPolicy.SOURCE)
    public @interface ItemAccessoryType {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ItemTheme {
    }

    public ItemView(Context context) {
        this(context, null);
    }

    public ItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ItemView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.j = 0;
        a(context, attributeSet, i2);
    }

    private void a(Context context, AttributeSet attributeSet, int i2) {
        this.f = LayoutInflater.from(context);
        this.f.inflate(R.layout.item_view_layout, this, true);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ItemView, i2, 0);
        int i3 = obtainStyledAttributes.getInt(R.styleable.ItemView_accessory_type, 1);
        Drawable drawable = obtainStyledAttributes.getDrawable(R.styleable.ItemView_icon);
        int color = obtainStyledAttributes.getColor(R.styleable.ItemView_titleTextColor, ContextCompat.getColor(context, R.color.black));
        int color2 = obtainStyledAttributes.getColor(R.styleable.ItemView_detailTextColor, ContextCompat.getColor(context, R.color.black50));
        this.h = obtainStyledAttributes.getColor(R.styleable.ItemView_valueTextColor, ContextCompat.getColor(context, R.color.black50));
        String string = obtainStyledAttributes.getString(R.styleable.ItemView_titleText);
        String string2 = obtainStyledAttributes.getString(R.styleable.ItemView_detailText);
        this.g = obtainStyledAttributes.getString(R.styleable.ItemView_valueText);
        int i4 = obtainStyledAttributes.getInt(R.styleable.ItemView_item_theme, 0);
        obtainStyledAttributes.recycle();
        this.a = (ImageView) findViewById(R.id.item_imageView);
        setImageDrawable(drawable);
        this.b = (TextView) findViewById(R.id.item_textView);
        this.b.setTextColor(color);
        setTitleText(string);
        this.c = (TextView) findViewById(R.id.item_detailTextView);
        this.c.setTextColor(color2);
        setDetailText(string2);
        setAccessoryType(i3, i4);
    }

    public void setImageDrawable(Drawable drawable) {
        if (drawable == null) {
            this.a.setVisibility(8);
            return;
        }
        this.a.setImageDrawable(drawable);
        this.a.setVisibility(0);
    }

    public CharSequence getTitleText() {
        return this.b.getText();
    }

    public void setTitleText(CharSequence charSequence) {
        this.b.setText(charSequence);
        if (i.a(charSequence)) {
            if (a((View) this.b)) {
                this.b.setVisibility(8);
            }
        } else if (!a((View) this.b)) {
            this.b.setVisibility(0);
        }
    }

    public CharSequence getDetailText() {
        if (this.c == null) {
            return null;
        }
        return this.c.getText();
    }

    public void setDetailText(CharSequence charSequence) {
        if (this.c == null) {
            return;
        }
        if (!i.a(charSequence)) {
            this.c.setText(charSequence);
            if (!a((View) this.c)) {
                this.c.setVisibility(0);
            }
        } else if (a((View) this.c)) {
            this.c.setVisibility(8);
        }
    }

    public void setValueText(CharSequence charSequence) {
        if (this.d == null) {
            return;
        }
        if (!i.a(charSequence)) {
            this.d.setText(charSequence);
            if (!a((View) this.d)) {
                this.d.setVisibility(0);
            }
        } else if (a((View) this.d)) {
            this.d.setVisibility(8);
        }
    }

    public CharSequence getValueText() {
        if (this.d == null) {
            return null;
        }
        return this.d.getText();
    }

    private boolean a(View view) {
        return view.getVisibility() == 0;
    }

    public SwitchButton getSwitch() {
        return this.e;
    }

    public int getAccessoryType() {
        return this.i;
    }

    public void setAccessoryType(int i2, int i3) {
        this.i = i2;
        switch (i2) {
            case 1:
                ImageView a2 = a(i3);
                a2.setId(l.g());
                LayoutParams layoutParams = new LayoutParams(-2, -2);
                layoutParams.addRule(15, -1);
                layoutParams.addRule(11, -1);
                layoutParams.leftMargin = l.a(12.0f);
                addView(a2, layoutParams);
                return;
            case 2:
                ImageView a3 = a(i3);
                a3.setId(l.g());
                LayoutParams layoutParams2 = new LayoutParams(-2, -2);
                layoutParams2.addRule(15, -1);
                layoutParams2.addRule(11, -1);
                layoutParams2.leftMargin = l.a(12.0f);
                addView(a3, layoutParams2);
                this.d = new TextView(getContext());
                this.d.setTextSize(0, (float) l.b(13.0f));
                this.d.setTextColor(this.h);
                this.d.setMaxLines(1);
                this.d.setEllipsize(TruncateAt.END);
                LayoutParams layoutParams3 = new LayoutParams(-1, -2);
                layoutParams3.addRule(15, -1);
                layoutParams3.addRule(1, R.id.item_textContainer);
                layoutParams3.addRule(0, a3.getId());
                this.d.setGravity(5);
                addView(this.d, layoutParams3);
                setValueText(this.g);
                return;
            case 3:
                if (this.e == null) {
                    this.f.inflate(R.layout.item_view_switch_button, this, true);
                    this.e = (SwitchButton) findViewById(R.id.item_switch);
                    this.e.setClickable(false);
                    return;
                }
                return;
            default:
                return;
        }
    }

    private ImageView a(int i2) {
        ImageView imageView = new ImageView(getContext());
        imageView.setLayoutParams(getAccessoryLayoutParams());
        imageView.setScaleType(ScaleType.CENTER);
        imageView.setImageResource(R.drawable.icon_more_black);
        return imageView;
    }

    private ViewGroup.LayoutParams getAccessoryLayoutParams() {
        return new ViewGroup.LayoutParams(-2, -2);
    }
}
