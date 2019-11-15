package org.osmdroid.tileprovider.tilesource;

import com.mi.milinkforgame.sdk.base.os.Http;
import org.osmdroid.tileprovider.MapTile;

public abstract class TMSOnlineTileSourceBase extends OnlineTileSourceBase {
    public TMSOnlineTileSourceBase(String str, int i, int i2, int i3, String str2, String[] strArr) {
        super(str, i, i2, i3, str2, strArr);
    }

    public String getTileRelativeFilenameString(MapTile mapTile) {
        int zoomLevel = ((1 << mapTile.getZoomLevel()) - mapTile.getY()) - 1;
        StringBuilder sb = new StringBuilder();
        sb.append(pathBase());
        sb.append(Http.PROTOCOL_HOST_SPLITTER);
        sb.append(mapTile.getZoomLevel());
        sb.append(Http.PROTOCOL_HOST_SPLITTER);
        sb.append(mapTile.getX());
        sb.append(Http.PROTOCOL_HOST_SPLITTER);
        sb.append(zoomLevel);
        sb.append(imageFilenameEnding());
        return sb.toString();
    }
}
