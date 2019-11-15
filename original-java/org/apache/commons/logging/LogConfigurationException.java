package org.apache.commons.logging;

@Deprecated
public class LogConfigurationException extends RuntimeException {
    public Throwable getCause() {
        throw new RuntimeException("Stub!");
    }
}
