package com.mi.milinkforgame.sdk.util;

import java.security.SecureRandom;

public final class SecureRandomUtils {
    static {
        try {
            PRNGFixes.apply();
        } catch (Throwable th) {
        }
    }

    public static final SecureRandom createSecureRandom() {
        return new SecureRandom();
    }
}
