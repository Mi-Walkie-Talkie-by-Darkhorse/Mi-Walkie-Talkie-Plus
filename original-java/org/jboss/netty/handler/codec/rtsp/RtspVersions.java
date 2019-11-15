package org.jboss.netty.handler.codec.rtsp;

import org.bouncycastle.i18n.TextBundle;
import org.jboss.netty.handler.codec.http.HttpVersion;

public final class RtspVersions {
    public static final HttpVersion RTSP_1_0 = new HttpVersion("RTSP", 1, 0, true);

    public static HttpVersion valueOf(String str) {
        if (str == null) {
            throw new NullPointerException(TextBundle.TEXT_ENTRY);
        }
        String upperCase = str.trim().toUpperCase();
        if ("RTSP/1.0".equals(upperCase)) {
            return RTSP_1_0;
        }
        return new HttpVersion(upperCase, true);
    }

    private RtspVersions() {
    }
}
