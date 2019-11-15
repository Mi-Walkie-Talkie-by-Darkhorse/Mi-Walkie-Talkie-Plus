package org.jboss.netty.handler.codec.spdy;

import java.util.Set;

public interface SpdySettingsFrame {
    public static final int SETTINGS_CLIENT_CERTIFICATE_VECTOR_SIZE = 8;
    public static final int SETTINGS_CURRENT_CWND = 5;
    public static final int SETTINGS_DOWNLOAD_BANDWIDTH = 2;
    public static final int SETTINGS_DOWNLOAD_RETRANS_RATE = 6;
    public static final int SETTINGS_INITIAL_WINDOW_SIZE = 7;
    public static final int SETTINGS_MAX_CONCURRENT_STREAMS = 4;
    public static final int SETTINGS_ROUND_TRIP_TIME = 3;
    public static final int SETTINGS_UPLOAD_BANDWIDTH = 1;

    boolean clearPreviouslyPersistedSettings();

    @Deprecated
    Set<Integer> getIDs();

    Set<Integer> getIds();

    int getValue(int i);

    boolean isPersistValue(int i);

    boolean isPersisted(int i);

    boolean isSet(int i);

    @Deprecated
    boolean persistValue(int i);

    void removeValue(int i);

    void setClearPreviouslyPersistedSettings(boolean z);

    void setPersistValue(int i, boolean z);

    void setPersisted(int i, boolean z);

    void setValue(int i, int i2);

    void setValue(int i, int i2, boolean z, boolean z2);
}
