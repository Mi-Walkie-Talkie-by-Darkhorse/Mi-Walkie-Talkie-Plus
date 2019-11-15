package com.amap.api.col.sl;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
/* compiled from: EntityClass */
public @interface cr {
    String a();

    boolean b() default false;
}
