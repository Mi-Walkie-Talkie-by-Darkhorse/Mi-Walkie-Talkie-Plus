package org.osmdroid.tileprovider.tilesource;

public interface IStyledTileSource<T> {
    T getStyle();

    void setStyle(T t);

    void setStyle(String str);
}
