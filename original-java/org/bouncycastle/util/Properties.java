package org.bouncycastle.util;

import java.security.AccessControlException;
import java.security.AccessController;
import java.security.PrivilegedAction;

public class Properties {
    public static boolean isOverrideSet(final String str) {
        try {
            return "true".equals(AccessController.doPrivileged(new PrivilegedAction() {
                public Object run() {
                    String property = System.getProperty(str);
                    if (property == null) {
                        return null;
                    }
                    return Strings.toLowerCase(property);
                }
            }));
        } catch (AccessControlException e) {
            return false;
        }
    }
}
