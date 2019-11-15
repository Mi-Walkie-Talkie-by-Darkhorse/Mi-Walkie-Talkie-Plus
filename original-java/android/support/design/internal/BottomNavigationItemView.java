package android.support.design.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo.Scope;
import android.support.design.R;
import android.support.v4.content.ContextCompat;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.view.PointerIconCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.view.menu.MenuItemImpl;
import android.support.v7.view.menu.MenuView.ItemView;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.TextView;

@RestrictTo({Scope.LIBRARY_GROUP})
public class BottomNavigationItemView extends FrameLayout implements ItemView {
    private static final int[] a = {16842912};
    private final int b;
    private final int c;
    private final float d;
    private final float e;
    private boolean f;
    private ImageView g;
    private final TextView h;
    private final TextView i;
    private int j;
    private MenuItemImpl k;
    private ColorStateList l;

    public BottomNavigationItemView(@NonNull Context context) {
        this(context, null);
    }

    public BottomNavigationItemView(@NonNull Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BottomNavigationItemView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.j = -1;
        Resources resources = getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.design_bottom_navigation_text_size);
        int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.design_bottom_navigation_active_text_size);
        this.b = resources.getDimensionPixelSize(R.dimen.design_bottom_navigation_margin);
        this.c = dimensionPixelSize - dimensionPixelSize2;
        this.d = (((float) dimensionPixelSize2) * 1.0f) / ((float) dimensionPixelSize);
        this.e = (((float) dimensionPixelSize) * 1.0f) / ((float) dimensionPixelSize2);
        LayoutInflater.from(context).inflate(R.layout.design_bottom_navigation_item, this, true);
        setBackgroundResource(R.drawable.design_bottom_navigation_item_background);
        this.g = (ImageView) findViewById(R.id.icon);
        this.h = (TextView) findViewById(R.id.smallLabel);
        this.i = (TextView) findViewById(R.id.largeLabel);
    }

    public void initialize(MenuItemImpl menuItemImpl, int i2) {
        this.k = menuItemImpl;
        setCheckable(menuItemImpl.isCheckable());
        setChecked(menuItemImpl.isChecked());
        setEnabled(menuItemImpl.isEnabled());
        setIcon(menuItemImpl.getIcon());
        setTitle(menuItemImpl.getTitle());
        setId(menuItemImpl.getItemId());
    }

    public void setItemPosition(int i2) {
        this.j = i2;
    }

    public int getItemPosition() {
        return this.j;
    }

    public void setShiftingMode(boolean z) {
        this.f = z;
    }

    public MenuItemImpl getItemData() {
        return this.k;
    }

    public void setTitle(CharSequence charSequence) {
        this.h.setText(charSequence);
        this.i.setText(charSequence);
        setContentDescription(charSequence);
    }

    public void setCheckable(boolean z) {
        refreshDrawableState();
    }

    public void setChecked(boolean z) {
        ViewCompat.setPivotX(this.i, (float) (this.i.getWidth() / 2));
        ViewCompat.setPivotY(this.i, (float) this.i.getBaseline());
        ViewCompat.setPivotX(this.h, (float) (this.h.getWidth() / 2));
        ViewCompat.setPivotY(this.h, (float) this.h.getBaseline());
        if (this.f) {
            if (z) {
                LayoutParams layoutParams = (LayoutParams) this.g.getLayoutParams();
                layoutParams.gravity = 49;
                layoutParams.topMargin = this.b;
                this.g.setLayoutParams(layoutParams);
                this.i.setVisibility(0);
                ViewCompat.setScaleX(this.i, 1.0f);
                ViewCompat.setScaleY(this.i, 1.0f);
            } else {
                LayoutParams layoutParams2 = (LayoutParams) this.g.getLayoutParams();
                layoutParams2.gravity = 17;
                layoutParams2.topMargin = this.b;
                this.g.setLayoutParams(layoutParams2);
                this.i.setVisibility(4);
                ViewCompat.setScaleX(this.i, 0.5f);
                ViewCompat.setScaleY(this.i, 0.5f);
            }
            this.h.setVisibility(4);
        } else if (z) {
            LayoutParams layoutParams3 = (LayoutParams) this.g.getLayoutParams();
            layoutParams3.gravity = 49;
            layoutParams3.topMargin = this.b + this.c;
            this.g.setLayoutParams(layoutParams3);
            this.i.setVisibility(0);
            this.h.setVisibility(4);
            ViewCompat.setScaleX(this.i, 1.0f);
            ViewCompat.setScaleY(this.i, 1.0f);
            ViewCompat.setScaleX(this.h, this.d);
            ViewCompat.setScaleY(this.h, this.d);
        } else {
            LayoutParams layoutParams4 = (LayoutParams) this.g.getLayoutParams();
            layoutParams4.gravity = 49;
            layoutParams4.topMargin = this.b;
            this.g.setLayoutParams(layoutParams4);
            this.i.setVisibility(4);
            this.h.setVisibility(0);
            ViewCompat.setScaleX(this.i, this.e);
            ViewCompat.setScaleY(this.i, this.e);
            ViewCompat.setScaleX(this.h, 1.0f);
            ViewCompat.setScaleY(this.h, 1.0f);
        }
        refreshDrawableState();
    }

    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.h.setEnabled(z);
        this.i.setEnabled(z);
        this.g.setEnabled(z);
        if (z) {
            ViewCompat.setPointerIcon(this, PointerIconCompat.getSystemIcon(getContext(), 1002));
        } else {
            ViewCompat.setPointerIcon(this, null);
        }
    }

    public int[] onCreateDrawableState(int i2) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i2 + 1);
        if (this.k != null && this.k.isCheckable() && this.k.isChecked()) {
            mergeDrawableStates(onCreateDrawableState, a);
        }
        return onCreateDrawableState;
    }

    public void setShortcut(boolean z, char c2) {
    }

    public void setIcon(Drawable drawable) {
        if (drawable != null) {
            ConstantState constantState = drawable.getConstantState();
            if (constantState != null) {
                drawable = constantState.newDrawable();
            }
            drawable = DrawableCompat.wrap(drawable).mutate();
            DrawableCompat.setTintList(drawable, this.l);
        }
        this.g.setImageDrawable(drawable);
    }

    public boolean prefersCondensedTitle() {
        return false;
    }

    public boolean showsIcon() {
        return true;
    }

    public void setIconTintList(ColorStateList colorStateList) {
        this.l = colorStateList;
        if (this.k != null) {
            setIcon(this.k.getIcon());
        }
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.h.setTextColor(colorStateList);
        this.i.setTextColor(colorStateList);
    }

    public void setItemBackground(int i2) {
        Drawable drawable;
        if (i2 == 0) {
            drawable = null;
        } else {
            drawable = ContextCompat.getDrawable(getContext(), i2);
        }
        ViewCompat.setBackground(this, drawable);
    }
}
