package org.jboss.netty.container.spring;

import org.jboss.netty.logging.CommonsLoggerFactory;
import org.jboss.netty.logging.InternalLoggerFactory;

public class NettyLoggerConfigurator {
    public NettyLoggerConfigurator() {
        InternalLoggerFactory.setDefaultFactory(new CommonsLoggerFactory());
    }
}
