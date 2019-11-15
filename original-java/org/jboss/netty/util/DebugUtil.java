package org.jboss.netty.util;

import org.jboss.netty.util.internal.SystemPropertyUtil;

public final class DebugUtil {
    private static final boolean DEBUG_ENABLED = SystemPropertyUtil.getBoolean("org.jboss.netty.debug", false);

    public static boolean isDebugEnabled() {
        return DEBUG_ENABLED;
    }

    private DebugUtil() {
    }
}
