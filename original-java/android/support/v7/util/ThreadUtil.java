package android.support.v7.util;

import android.support.v7.util.TileList.Tile;

interface ThreadUtil<T> {

    public interface BackgroundCallback<T> {
        void loadTile(int i, int i2);

        void recycleTile(Tile<T> tile);

        void refresh(int i);

        void updateRange(int i, int i2, int i3, int i4, int i5);
    }

    public interface MainThreadCallback<T> {
        void addTile(int i, Tile<T> tile);

        void removeTile(int i, int i2);

        void updateItemCount(int i, int i2);
    }

    BackgroundCallback<T> getBackgroundProxy(BackgroundCallback<T> backgroundCallback);

    MainThreadCallback<T> getMainThreadProxy(MainThreadCallback<T> mainThreadCallback);
}
