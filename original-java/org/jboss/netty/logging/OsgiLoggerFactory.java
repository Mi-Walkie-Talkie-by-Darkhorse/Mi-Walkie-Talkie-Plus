package org.jboss.netty.logging;

import org.osgi.framework.BundleContext;
import org.osgi.framework.ServiceReference;
import org.osgi.service.log.LogService;
import org.osgi.util.tracker.ServiceTracker;

public class OsgiLoggerFactory extends InternalLoggerFactory {
    private final InternalLoggerFactory fallback;
    volatile LogService logService;
    private final ServiceTracker logServiceTracker;

    public OsgiLoggerFactory(BundleContext bundleContext) {
        this(bundleContext, null);
    }

    public OsgiLoggerFactory(BundleContext bundleContext, InternalLoggerFactory internalLoggerFactory) {
        if (bundleContext == null) {
            throw new NullPointerException("ctx");
        }
        if (internalLoggerFactory == null) {
            internalLoggerFactory = InternalLoggerFactory.getDefaultFactory();
            if (internalLoggerFactory instanceof OsgiLoggerFactory) {
                internalLoggerFactory = new JdkLoggerFactory();
            }
        }
        this.fallback = internalLoggerFactory;
        this.logServiceTracker = new ServiceTracker(bundleContext, "org.osgi.service.log.LogService", null) {
            public Object addingService(ServiceReference serviceReference) {
                LogService logService = (LogService) OsgiLoggerFactory.super.addingService(serviceReference);
                OsgiLoggerFactory.this.logService = logService;
                return logService;
            }

            public void removedService(ServiceReference serviceReference, Object obj) {
                OsgiLoggerFactory.this.logService = null;
            }
        };
        this.logServiceTracker.open();
    }

    public InternalLoggerFactory getFallback() {
        return this.fallback;
    }

    public LogService getLogService() {
        return this.logService;
    }

    public void destroy() {
        this.logService = null;
        this.logServiceTracker.close();
    }

    public InternalLogger newInstance(String str) {
        return new OsgiLogger(this, str, this.fallback.newInstance(str));
    }
}
