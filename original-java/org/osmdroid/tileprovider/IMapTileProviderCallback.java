package org.osmdroid.tileprovider;

import android.graphics.drawable.Drawable;

public interface IMapTileProviderCallback {
    void mapTileRequestCompleted(MapTileRequestState mapTileRequestState, Drawable drawable);

    void mapTileRequestExpiredTile(MapTileRequestState mapTileRequestState, Drawable drawable);

    void mapTileRequestFailed(MapTileRequestState mapTileRequestState);

    boolean useDataConnection();
}
