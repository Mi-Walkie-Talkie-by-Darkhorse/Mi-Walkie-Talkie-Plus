package org.osmdroid.tileprovider.tilesource;

import android.graphics.drawable.Drawable;
import java.io.InputStream;
import org.osmdroid.tileprovider.MapTile;
import org.osmdroid.tileprovider.tilesource.BitmapTileSourceBase.LowMemoryException;

public interface ITileSource {
    String getCopyrightNotice();

    Drawable getDrawable(InputStream inputStream) throws LowMemoryException;

    Drawable getDrawable(String str) throws LowMemoryException;

    int getMaximumZoomLevel();

    int getMinimumZoomLevel();

    String getTileRelativeFilenameString(MapTile mapTile);

    int getTileSizePixels();

    String name();

    @Deprecated
    int ordinal();
}
