package org.osmdroid.tileprovider.tilesource;

import org.osmdroid.tileprovider.MapTile;

public abstract class OnlineTileSourceBase extends BitmapTileSourceBase {
    private final String[] mBaseUrls;

    public abstract String getTileURLString(MapTile mapTile);

    public OnlineTileSourceBase(String str, int i, int i2, int i3, String str2, String[] strArr) {
        this(str, i, i2, i3, str2, strArr, null);
    }

    public OnlineTileSourceBase(String str, int i, int i2, int i3, String str2, String[] strArr, String str3) {
        super(str, i, i2, i3, str2, str3);
        this.mBaseUrls = strArr;
    }

    public String getBaseUrl() {
        return this.mBaseUrls[this.random.nextInt(this.mBaseUrls.length)];
    }
}
