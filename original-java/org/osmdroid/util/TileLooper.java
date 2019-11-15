package org.osmdroid.util;

import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.Rect;
import org.osmdroid.tileprovider.MapTile;

public abstract class TileLooper {
    protected final Point mLowerRight = new Point();
    protected final Point mUpperLeft = new Point();

    public abstract void finaliseLoop();

    public abstract void handleTile(Canvas canvas, int i, MapTile mapTile, int i2, int i3);

    public abstract void initialiseLoop(int i, int i2);

    public final void loop(Canvas canvas, int i, int i2, Rect rect) {
        TileSystem.PixelXYToTileXY(rect.left, rect.top, this.mUpperLeft);
        this.mUpperLeft.offset(-1, -1);
        TileSystem.PixelXYToTileXY(rect.right, rect.bottom, this.mLowerRight);
        int i3 = 1 << i;
        initialiseLoop(i, i2);
        for (int i4 = this.mUpperLeft.y; i4 <= this.mLowerRight.y; i4++) {
            for (int i5 = this.mUpperLeft.x; i5 <= this.mLowerRight.x; i5++) {
                handleTile(canvas, i2, new MapTile(i, MyMath.mod(i5, i3), MyMath.mod(i4, i3)), i5, i4);
            }
        }
        finaliseLoop();
    }
}
