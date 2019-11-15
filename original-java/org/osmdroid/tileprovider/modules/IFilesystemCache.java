package org.osmdroid.tileprovider.modules;

import java.io.InputStream;
import org.osmdroid.tileprovider.MapTile;
import org.osmdroid.tileprovider.tilesource.ITileSource;

public interface IFilesystemCache {
    boolean exists(ITileSource iTileSource, MapTile mapTile);

    void onDetach();

    boolean remove(ITileSource iTileSource, MapTile mapTile);

    boolean saveFile(ITileSource iTileSource, MapTile mapTile, InputStream inputStream);
}
