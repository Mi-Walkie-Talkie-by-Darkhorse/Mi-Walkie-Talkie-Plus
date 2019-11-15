package android.support.v4.content.res;

import android.annotation.TargetApi;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.graphics.drawable.Drawable;
import android.support.annotation.RequiresApi;

@TargetApi(15)
@RequiresApi(15)
class ResourcesCompatIcsMr1 {
    ResourcesCompatIcsMr1() {
    }

    public static Drawable getDrawableForDensity(Resources resources, int i, int i2) throws NotFoundException {
        return resources.getDrawableForDensity(i, i2);
    }
}
