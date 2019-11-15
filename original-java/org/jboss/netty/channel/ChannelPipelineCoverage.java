package org.jboss.netty.channel;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Inherited
@Documented
@Target({ElementType.TYPE})
@Deprecated
@Retention(RetentionPolicy.RUNTIME)
public @interface ChannelPipelineCoverage {
    public static final String ALL = "all";
    public static final String ONE = "one";

    String value();
}
