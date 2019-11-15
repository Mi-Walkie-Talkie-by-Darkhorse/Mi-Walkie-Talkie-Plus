package butterknife;

import android.support.annotation.IdRes;
import butterknife.internal.ListenerClass;
import butterknife.internal.ListenerMethod;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@ListenerClass(method = {@ListenerMethod(name = "onFocusChange", parameters = {"android.view.View", "boolean"})}, setter = "setOnFocusChangeListener", targetType = "android.view.View", type = "android.view.View.OnFocusChangeListener")
@Target({ElementType.METHOD})
@Retention(RetentionPolicy.CLASS)
public @interface OnFocusChange {
    @IdRes
    int[] value() default {-1};
}
