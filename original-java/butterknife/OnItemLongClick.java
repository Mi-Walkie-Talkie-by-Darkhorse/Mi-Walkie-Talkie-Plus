package butterknife;

import android.support.annotation.IdRes;
import butterknife.internal.ListenerClass;
import butterknife.internal.ListenerMethod;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@ListenerClass(method = {@ListenerMethod(defaultReturn = "false", name = "onItemLongClick", parameters = {"android.widget.AdapterView<?>", "android.view.View", "int", "long"}, returnType = "boolean")}, setter = "setOnItemLongClickListener", targetType = "android.widget.AdapterView<?>", type = "android.widget.AdapterView.OnItemLongClickListener")
@Target({ElementType.METHOD})
@Retention(RetentionPolicy.CLASS)
public @interface OnItemLongClick {
    @IdRes
    int[] value() default {-1};
}
