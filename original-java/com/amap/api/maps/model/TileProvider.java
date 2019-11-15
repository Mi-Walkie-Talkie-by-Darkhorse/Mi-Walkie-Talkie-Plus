package com.amap.api.maps.model;

public interface TileProvider {
    public static final Tile NO_TILE = Tile.obtain(-1, -1, null);

    Tile getTile(int i, int i2, int i3);

    int getTileHeight();

    int getTileWidth();
}
