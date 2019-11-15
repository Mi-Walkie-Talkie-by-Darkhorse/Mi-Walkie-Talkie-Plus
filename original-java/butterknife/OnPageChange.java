package butterknife;

import android.support.annotation.IdRes;
import butterknife.internal.ListenerClass;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@ListenerClass(callbacks = Callback.class, remover = "removeOnPageChangeListener", setter = "addOnPageChangeListener", targetType = "android.support.v4.view.ViewPager", type = "android.support.v4.view.ViewPager.OnPageChangeListener")
@Target({ElementType.METHOD})
@Retention(RetentionPolicy.CLASS)
public @interface OnPageChange {

    public enum Callback {
        PAGE_SELECTED,
        PAGE_SCROLLED,
        PAGE_SCROLL_STATE_CHANGED
    }

    Callback callback() default Callback.PAGE_SELECTED;

    @IdRes
    int[] value() default {-1};
}
