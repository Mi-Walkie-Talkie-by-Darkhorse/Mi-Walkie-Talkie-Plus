package org.osmdroid.tileprovider.tilesource;

import org.osmdroid.tileprovider.MapTile;

public class QuadTreeTileSource extends OnlineTileSourceBase {
    public QuadTreeTileSource(String str, int i, int i2, int i3, String str2, String[] strArr) {
        super(str, i, i2, i3, str2, strArr);
    }

    public String getTileURLString(MapTile mapTile) {
        return getBaseUrl() + quadTree(mapTile) + this.mImageFilenameEnding;
    }

    /* access modifiers changed from: protected */
    public String quadTree(MapTile mapTile) {
        StringBuilder sb = new StringBuilder();
        for (int zoomLevel = mapTile.getZoomLevel(); zoomLevel > 0; zoomLevel--) {
            int i = 0;
            int i2 = 1 << (zoomLevel - 1);
            if ((mapTile.getX() & i2) != 0) {
                i = 1;
            }
            if ((i2 & mapTile.getY()) != 0) {
                i += 2;
            }
            sb.append("" + i);
        }
        return sb.toString();
    }
}
