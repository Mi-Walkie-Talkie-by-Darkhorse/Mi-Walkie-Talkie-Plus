package org.osmdroid.tileprovider.tilesource;

import org.osmdroid.tileprovider.MapTile;

public class XYTileSource extends OnlineTileSourceBase {
    public XYTileSource(String str, int i, int i2, int i3, String str2, String[] strArr) {
        this(str, i, i2, i3, str2, strArr, null);
    }

    public XYTileSource(String str, int i, int i2, int i3, String str2, String[] strArr, String str3) {
        super(str, i, i2, i3, str2, strArr, str3);
    }

    public String getTileURLString(MapTile mapTile) {
        return getBaseUrl() + mapTile.getZoomLevel() + "/" + mapTile.getX() + "/" + mapTile.getY() + this.mImageFilenameEnding;
    }
}
