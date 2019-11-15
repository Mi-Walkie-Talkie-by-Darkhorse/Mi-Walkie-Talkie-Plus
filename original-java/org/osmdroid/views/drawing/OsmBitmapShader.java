package org.osmdroid.views.drawing;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.Shader.TileMode;
import org.osmdroid.views.Projection;

public class OsmBitmapShader extends BitmapShader {
    private static final Point sPoint = new Point();
    private int mBitmapHeight;
    private int mBitmapWidth;
    private final Matrix mMatrix = new Matrix();

    public OsmBitmapShader(Bitmap bitmap, TileMode tileMode, TileMode tileMode2) {
        super(bitmap, tileMode, tileMode2);
        this.mBitmapWidth = bitmap.getWidth();
        this.mBitmapHeight = bitmap.getHeight();
    }

    public void onDrawCycle(Projection projection) {
        projection.toMercatorPixels(0, 0, sPoint);
        this.mMatrix.setTranslate((float) ((-sPoint.x) % this.mBitmapWidth), (float) ((-sPoint.y) % this.mBitmapHeight));
        setLocalMatrix(this.mMatrix);
    }
}
