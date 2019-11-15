package org.osmdroid.views.overlay.simplefastpoint;

import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.Style;

public class SimpleFastPointOverlayOptions {
    protected RenderingAlgorithm mAlgorithm = RenderingAlgorithm.MAXIMUM_OPTIMIZATION;
    protected int mCellSize = 10;
    protected float mCircleRadius = 5.0f;
    protected boolean mClickable = true;
    protected LabelPolicy mLabelPolicy = LabelPolicy.ZOOM_THRESHOLD;
    protected int mMaxNShownLabels = 250;
    protected int mMinZoomShowLabels = 11;
    protected Paint mPointStyle = new Paint();
    protected float mSelectedCircleRadius = 13.0f;
    protected Paint mSelectedPointStyle;
    protected Shape mSymbol = Shape.CIRCLE;
    protected Paint mTextStyle;

    public enum LabelPolicy {
        ZOOM_THRESHOLD,
        DENSITY_THRESHOLD
    }

    public enum RenderingAlgorithm {
        NO_OPTIMIZATION,
        MEDIUM_OPTIMIZATION,
        MAXIMUM_OPTIMIZATION
    }

    public enum Shape {
        CIRCLE,
        SQUARE
    }

    public SimpleFastPointOverlayOptions() {
        this.mPointStyle.setStyle(Style.FILL);
        this.mPointStyle.setColor(Color.parseColor("#ff7700"));
        this.mSelectedPointStyle = new Paint();
        this.mSelectedPointStyle.setStrokeWidth(5.0f);
        this.mSelectedPointStyle.setStyle(Style.STROKE);
        this.mSelectedPointStyle.setColor(Color.parseColor("#ffff00"));
        this.mTextStyle = new Paint();
        this.mTextStyle.setStyle(Style.FILL);
        this.mTextStyle.setColor(Color.parseColor("#ffff00"));
        this.mTextStyle.setTextAlign(Align.CENTER);
        this.mTextStyle.setTextSize(24.0f);
    }

    public static SimpleFastPointOverlayOptions getDefaultStyle() {
        return new SimpleFastPointOverlayOptions();
    }

    public SimpleFastPointOverlayOptions setPointStyle(Paint paint) {
        this.mPointStyle = paint;
        return this;
    }

    public SimpleFastPointOverlayOptions setSelectedPointStyle(Paint paint) {
        this.mSelectedPointStyle = paint;
        return this;
    }

    public SimpleFastPointOverlayOptions setRadius(float f) {
        this.mCircleRadius = f;
        return this;
    }

    public SimpleFastPointOverlayOptions setSelectedRadius(float f) {
        this.mSelectedCircleRadius = f;
        return this;
    }

    public SimpleFastPointOverlayOptions setIsClickable(boolean z) {
        this.mClickable = z;
        return this;
    }

    public SimpleFastPointOverlayOptions setCellSize(int i) {
        this.mCellSize = i;
        return this;
    }

    public SimpleFastPointOverlayOptions setAlgorithm(RenderingAlgorithm renderingAlgorithm) {
        this.mAlgorithm = renderingAlgorithm;
        return this;
    }

    public SimpleFastPointOverlayOptions setSymbol(Shape shape) {
        this.mSymbol = shape;
        return this;
    }

    public SimpleFastPointOverlayOptions setTextStyle(Paint paint) {
        this.mTextStyle = paint;
        return this;
    }

    public SimpleFastPointOverlayOptions setMinZoomShowLabels(int i) {
        this.mMinZoomShowLabels = i;
        return this;
    }

    public SimpleFastPointOverlayOptions setMaxNShownLabels(int i) {
        this.mMaxNShownLabels = i;
        return this;
    }

    public SimpleFastPointOverlayOptions setLabelPolicy(LabelPolicy labelPolicy) {
        this.mLabelPolicy = labelPolicy;
        return this;
    }
}
