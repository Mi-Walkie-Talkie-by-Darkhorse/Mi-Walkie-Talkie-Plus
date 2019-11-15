package com.autonavi.amap.mapcore.animation;

public class GLTransformation {
    public double alpha = Double.NaN;
    public double rotate = Double.NaN;
    public double scale_x = Double.NaN;
    public double scale_y = Double.NaN;
    public double x = Double.NaN;
    public double y = Double.NaN;

    public void clear() {
        this.x = Double.NaN;
        this.y = Double.NaN;
        this.alpha = Double.NaN;
        this.scale_x = Double.NaN;
        this.scale_y = Double.NaN;
        this.rotate = Double.NaN;
    }
}
