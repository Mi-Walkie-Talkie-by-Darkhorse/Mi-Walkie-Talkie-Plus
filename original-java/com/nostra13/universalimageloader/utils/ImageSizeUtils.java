package com.nostra13.universalimageloader.utils;

import android.opengl.GLES10;
import com.nostra13.universalimageloader.core.assist.ImageSize;
import com.nostra13.universalimageloader.core.assist.ViewScaleType;
import com.nostra13.universalimageloader.core.imageaware.ImageAware;

public final class ImageSizeUtils {
    private static final int DEFAULT_MAX_BITMAP_DIMENSION = 2048;
    private static ImageSize maxBitmapSize;

    static {
        int[] iArr = new int[1];
        GLES10.glGetIntegerv(3379, iArr, 0);
        int max = Math.max(iArr[0], 2048);
        maxBitmapSize = new ImageSize(max, max);
    }

    private ImageSizeUtils() {
    }

    public static ImageSize defineTargetSizeForView(ImageAware imageAware, ImageSize imageSize) {
        int width = imageAware.getWidth();
        if (width <= 0) {
            width = imageSize.getWidth();
        }
        int height = imageAware.getHeight();
        if (height <= 0) {
            height = imageSize.getHeight();
        }
        return new ImageSize(width, height);
    }

    public static int computeImageSampleSize(ImageSize imageSize, ImageSize imageSize2, ViewScaleType viewScaleType, boolean z) {
        int min;
        int i = 1;
        int width = imageSize.getWidth();
        int height = imageSize.getHeight();
        int width2 = imageSize2.getWidth();
        int height2 = imageSize2.getHeight();
        switch (viewScaleType) {
            case FIT_INSIDE:
                if (!z) {
                    min = Math.max(width / width2, height / height2);
                    break;
                } else {
                    int i2 = width / 2;
                    int i3 = height / 2;
                    min = 1;
                    while (true) {
                        if (i2 / min <= width2 && i3 / min <= height2) {
                            break;
                        } else {
                            min *= 2;
                        }
                    }
                }
                break;
            case CROP:
                if (!z) {
                    min = Math.min(width / width2, height / height2);
                    break;
                } else {
                    int i4 = width / 2;
                    int i5 = height / 2;
                    int i6 = 1;
                    while (i4 / min > width2 && i5 / min > height2) {
                        i6 = min * 2;
                    }
                }
                break;
            default:
                min = 1;
                break;
        }
        if (min >= 1) {
            i = min;
        }
        return considerMaxTextureSize(width, height, i, z);
    }

    private static int considerMaxTextureSize(int i, int i2, int i3, boolean z) {
        int width = maxBitmapSize.getWidth();
        int height = maxBitmapSize.getHeight();
        while (true) {
            if (i / i3 <= width && i2 / i3 <= height) {
                return i3;
            }
            if (z) {
                i3 *= 2;
            } else {
                i3++;
            }
        }
    }

    public static int computeMinImageSampleSize(ImageSize imageSize) {
        int width = imageSize.getWidth();
        int height = imageSize.getHeight();
        return Math.max((int) Math.ceil((double) (((float) width) / ((float) maxBitmapSize.getWidth()))), (int) Math.ceil((double) (((float) height) / ((float) maxBitmapSize.getHeight()))));
    }

    public static float computeImageScale(ImageSize imageSize, ImageSize imageSize2, ViewScaleType viewScaleType, boolean z) {
        int i;
        int i2;
        int width = imageSize.getWidth();
        int height = imageSize.getHeight();
        int width2 = imageSize2.getWidth();
        int height2 = imageSize2.getHeight();
        float f = ((float) width) / ((float) width2);
        float f2 = ((float) height) / ((float) height2);
        if ((viewScaleType != ViewScaleType.FIT_INSIDE || f < f2) && (viewScaleType != ViewScaleType.CROP || f >= f2)) {
            i = (int) (((float) width) / f2);
            i2 = height2;
        } else {
            i = width2;
            i2 = (int) (((float) height) / f);
        }
        if ((z || i >= width || i2 >= height) && (!z || i == width || i2 == height)) {
            return 1.0f;
        }
        return ((float) i) / ((float) width);
    }
}
