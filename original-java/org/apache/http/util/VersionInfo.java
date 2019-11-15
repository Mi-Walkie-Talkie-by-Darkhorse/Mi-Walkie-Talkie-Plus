package org.apache.http.util;

import java.util.Map;

@Deprecated
public class VersionInfo {
    public static final String PROPERTY_MODULE = "info.module";
    public static final String PROPERTY_RELEASE = "info.release";
    public static final String PROPERTY_TIMESTAMP = "info.timestamp";
    public static final String UNAVAILABLE = "UNAVAILABLE";
    public static final String VERSION_PROPERTY_FILE = "version.properties";

    protected VersionInfo(String str, String str2, String str3, String str4, String str5) {
        throw new RuntimeException("Stub!");
    }

    public final String getPackage() {
        throw new RuntimeException("Stub!");
    }

    public final String getModule() {
        throw new RuntimeException("Stub!");
    }

    public final String getRelease() {
        throw new RuntimeException("Stub!");
    }

    public final String getTimestamp() {
        throw new RuntimeException("Stub!");
    }

    public final String getClassloader() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    public static final VersionInfo[] loadVersionInfo(String[] strArr, ClassLoader classLoader) {
        throw new RuntimeException("Stub!");
    }

    public static final VersionInfo loadVersionInfo(String str, ClassLoader classLoader) {
        throw new RuntimeException("Stub!");
    }

    protected static final VersionInfo fromMap(String str, Map map, ClassLoader classLoader) {
        throw new RuntimeException("Stub!");
    }
}
