package android.support.design.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.design.R;
import android.support.v7.widget.TintTypedArray;
import android.util.AttributeSet;
import android.view.View;

public final class TabItem extends View {
    final int mCustomLayout;
    final Drawable mIcon;
    final CharSequence mText;

    public TabItem(Context context) {
        this(context, null);
    }

    public TabItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, R.styleable.TabItem);
        this.mText = obtainStyledAttributes.getText(R.styleable.TabItem_android_text);
        this.mIcon = obtainStyledAttributes.getDrawable(R.styleable.TabItem_android_icon);
        this.mCustomLayout = obtainStyledAttributes.getResourceId(R.styleable.TabItem_android_layout, 0);
        obtainStyledAttributes.recycle();
    }
}
