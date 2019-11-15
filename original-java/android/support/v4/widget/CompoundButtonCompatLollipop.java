package android.support.v4.widget;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.support.annotation.RequiresApi;
import android.widget.CompoundButton;

@TargetApi(21)
@RequiresApi(21)
class CompoundButtonCompatLollipop {
    CompoundButtonCompatLollipop() {
    }

    static void setButtonTintList(CompoundButton compoundButton, ColorStateList colorStateList) {
        compoundButton.setButtonTintList(colorStateList);
    }

    static ColorStateList getButtonTintList(CompoundButton compoundButton) {
        return compoundButton.getButtonTintList();
    }

    static void setButtonTintMode(CompoundButton compoundButton, Mode mode) {
        compoundButton.setButtonTintMode(mode);
    }

    static Mode getButtonTintMode(CompoundButton compoundButton) {
        return compoundButton.getButtonTintMode();
    }
}
