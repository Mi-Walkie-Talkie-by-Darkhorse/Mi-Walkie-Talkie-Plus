package org.jboss.netty.util.internal;

import java.lang.reflect.Method;
import java.nio.ByteBuffer;

public final class ByteBufferUtil {
    private static final boolean CLEAN_SUPPORTED;
    private static final Method directBufferCleaner;
    private static final Method directBufferCleanerClean;

    static {
        Method method;
        Method method2;
        Method method3;
        Method method4 = null;
        boolean z = true;
        try {
            Method method5 = Class.forName("java.nio.DirectByteBuffer").getMethod("cleaner", new Class[0]);
            try {
                method5.setAccessible(true);
                method3 = Class.forName("sun.misc.Cleaner").getMethod("clean", new Class[0]);
            } catch (Exception e) {
                method = method4;
                method4 = method5;
                method2 = method;
                z = false;
                CLEAN_SUPPORTED = z;
                directBufferCleaner = method4;
                directBufferCleanerClean = method2;
            }
            try {
                method3.setAccessible(true);
                method2 = method3;
                method4 = method5;
            } catch (Exception e2) {
                method = method3;
                method4 = method5;
                method2 = method;
                z = false;
                CLEAN_SUPPORTED = z;
                directBufferCleaner = method4;
                directBufferCleanerClean = method2;
            }
        } catch (Exception e3) {
            method = method4;
            method2 = method;
            z = false;
            CLEAN_SUPPORTED = z;
            directBufferCleaner = method4;
            directBufferCleanerClean = method2;
        }
        CLEAN_SUPPORTED = z;
        directBufferCleaner = method4;
        directBufferCleanerClean = method2;
    }

    public static void destroy(ByteBuffer byteBuffer) {
        if (CLEAN_SUPPORTED && byteBuffer.isDirect()) {
            try {
                directBufferCleanerClean.invoke(directBufferCleaner.invoke(byteBuffer, new Object[0]), new Object[0]);
            } catch (Exception e) {
            }
        }
    }

    private ByteBufferUtil() {
    }
}
