package butterknife.internal;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.ANNOTATION_TYPE})
@Retention(RetentionPolicy.RUNTIME)
public @interface ListenerClass {

    public enum NONE {
    }

    Class<? extends Enum<?>> callbacks() default NONE.class;

    ListenerMethod[] method() default {};

    String remover() default "";

    String setter();

    String targetType();

    String type();
}
