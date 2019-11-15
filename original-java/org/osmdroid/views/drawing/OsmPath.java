package org.osmdroid.views.drawing;

import android.graphics.Path;
import android.graphics.Point;
import org.osmdroid.util.GeoPoint;
import org.osmdroid.views.Projection;

public class OsmPath extends Path {
    private static final GeoPoint sReferenceGeoPoint = new GeoPoint(0, 0);
    private int mLastZoomLevel = -1;
    protected final Point mReferencePoint = new Point();

    public OsmPath() {
    }

    public OsmPath(Path path) {
        super(path);
    }

    public void onDrawCycle(Projection projection) {
        if (this.mLastZoomLevel != projection.getZoomLevel()) {
            projection.toPixels(sReferenceGeoPoint, this.mReferencePoint);
            this.mLastZoomLevel = projection.getZoomLevel();
        }
        int i = this.mReferencePoint.x;
        int i2 = this.mReferencePoint.y;
        projection.toPixels(sReferenceGeoPoint, this.mReferencePoint);
        offset((float) (this.mReferencePoint.x - i), (float) (this.mReferencePoint.y - i2));
    }
}
