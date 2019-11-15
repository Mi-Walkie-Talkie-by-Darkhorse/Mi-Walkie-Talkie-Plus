package org.apache.http;

import java.io.Serializable;

@Deprecated
public class ProtocolVersion implements Serializable {
    protected final int major;
    protected final int minor;
    protected final String protocol;

    public ProtocolVersion(String str, int i, int i2) {
        throw new RuntimeException("Stub!");
    }

    public final String getProtocol() {
        throw new RuntimeException("Stub!");
    }

    public final int getMajor() {
        throw new RuntimeException("Stub!");
    }

    public final int getMinor() {
        throw new RuntimeException("Stub!");
    }

    public ProtocolVersion forVersion(int i, int i2) {
        throw new RuntimeException("Stub!");
    }

    public final int hashCode() {
        throw new RuntimeException("Stub!");
    }

    public final boolean equals(Object obj) {
        throw new RuntimeException("Stub!");
    }

    public boolean isComparable(ProtocolVersion protocolVersion) {
        throw new RuntimeException("Stub!");
    }

    public int compareToVersion(ProtocolVersion protocolVersion) {
        throw new RuntimeException("Stub!");
    }

    public final boolean greaterEquals(ProtocolVersion protocolVersion) {
        throw new RuntimeException("Stub!");
    }

    public final boolean lessEquals(ProtocolVersion protocolVersion) {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    public Object clone() throws CloneNotSupportedException {
        throw new RuntimeException("Stub!");
    }
}
