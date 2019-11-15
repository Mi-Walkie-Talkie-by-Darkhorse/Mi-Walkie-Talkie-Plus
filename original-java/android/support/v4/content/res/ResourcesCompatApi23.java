package android.support.v4.content.res;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.content.res.Resources.Theme;
import android.support.annotation.RequiresApi;

@TargetApi(23)
@RequiresApi(23)
class ResourcesCompatApi23 {
    ResourcesCompatApi23() {
    }

    public static int getColor(Resources resources, int i, Theme theme) throws NotFoundException {
        return resources.getColor(i, theme);
    }

    public static ColorStateList getColorStateList(Resources resources, int i, Theme theme) throws NotFoundException {
        return resources.getColorStateList(i, theme);
    }
}
