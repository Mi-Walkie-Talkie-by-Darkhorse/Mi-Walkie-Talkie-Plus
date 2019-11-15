package com.autonavi.ae.gmap.style;

public abstract class MapTilsCacheAndResManager {
    public static final int ICONS_BIG_DATA = 3;
    public static final int ICONS_DATA = 2;
    public static final int ICONS_INDOOR_DATA = 5;
    public static final int ICONS_OPENLAYER_DATA = 8;
    public static final int ICONS_POLYGON_DATA = 6;
    public static final String MAP_MAP_ASSETS_NAME = "map_assets";
    public static final String MAP_RES_EXT_PATH_NAME = "vmap4res";
    public static final int STYLE_DATA = 1;
    public static final int STYLE_INDOOR_DATA = 4;
    public static final int STYLE_OPENLAYER_DATA = 7;

    public static class RetStyleIconsFile {
        public int clientVersion;
        public String fullName;
        public String name;
        public int serverVersion;
        public int type;
    }

    public abstract void addUdateRecorder(String str);

    public abstract boolean canUpate(String str);

    public abstract void checkDir();

    public abstract byte[] getIconsData(String str, RetStyleIconsFile retStyleIconsFile);

    public abstract String getMapCachePath();

    public abstract byte[] getOtherResData(String str);

    public abstract byte[] getOtherResDataFromDisk(String str);

    public abstract byte[] getPolyIconFilePath(String str, RetStyleIconsFile retStyleIconsFile);

    public abstract byte[] getStyleData(String str, RetStyleIconsFile retStyleIconsFile);

    public abstract void saveFile(String str, int i, int i2, byte[] bArr);

    public abstract void setMapCachePath(String str);
}
