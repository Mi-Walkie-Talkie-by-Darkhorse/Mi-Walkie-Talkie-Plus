package org.osmdroid.tileprovider.constants;

import java.io.File;
import org.osmdroid.config.Configuration;
import org.osmdroid.tileprovider.util.StorageUtils;

public class OpenStreetMapTileProviderConstants {
    public static final long DEFAULT_MAXIMUM_CACHED_FILE_AGE = 604800000;
    public static final String HTTP_EXPIRES_HEADER = "Expires";
    public static final String HTTP_EXPIRES_HEADER_FORMAT = "EEE, dd MMM yyyy HH:mm:ss z";
    public static final int MINIMUM_ZOOMLEVEL = 0;
    public static final long ONE_DAY = 86400000;
    public static final long ONE_HOUR = 3600000;
    public static final long ONE_MINUTE = 60000;
    public static final long ONE_SECOND = 1000;
    public static final long ONE_WEEK = 604800000;
    public static final long ONE_YEAR = 31536000000L;
    private static File OSMDROID_PATH = new File(StorageUtils.getStorage().getAbsolutePath(), "osmdroid");
    public static final long TILE_EXPIRY_TIME_MILLISECONDS = 2592000000L;
    public static final String TILE_PATH_EXTENSION = ".tile";

    @Deprecated
    public static File getBasePath() {
        return Configuration.getInstance().getOsmdroidBasePath();
    }

    @Deprecated
    public static String getUserAgentValue() {
        return Configuration.getInstance().getUserAgentValue();
    }

    @Deprecated
    public static void setUserAgentValue(String str) {
        Configuration.getInstance().setUserAgentValue(str);
    }
}
