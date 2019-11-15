package org.osmdroid.tileprovider;

import java.util.Collections;
import java.util.LinkedList;
import java.util.Queue;
import org.osmdroid.tileprovider.modules.MapTileModuleProviderBase;

public class MapTileRequestState {
    private final IMapTileProviderCallback mCallback;
    private MapTileModuleProviderBase mCurrentProvider;
    private final MapTile mMapTile;
    private final Queue<MapTileModuleProviderBase> mProviderQueue = new LinkedList();

    public MapTileRequestState(MapTile mapTile, MapTileModuleProviderBase[] mapTileModuleProviderBaseArr, IMapTileProviderCallback iMapTileProviderCallback) {
        Collections.addAll(this.mProviderQueue, mapTileModuleProviderBaseArr);
        this.mMapTile = mapTile;
        this.mCallback = iMapTileProviderCallback;
    }

    public MapTile getMapTile() {
        return this.mMapTile;
    }

    public IMapTileProviderCallback getCallback() {
        return this.mCallback;
    }

    public boolean isEmpty() {
        return this.mProviderQueue.isEmpty();
    }

    public MapTileModuleProviderBase getNextProvider() {
        this.mCurrentProvider = (MapTileModuleProviderBase) this.mProviderQueue.poll();
        return this.mCurrentProvider;
    }

    public MapTileModuleProviderBase getCurrentProvider() {
        return this.mCurrentProvider;
    }
}
