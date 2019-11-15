package com.autonavi.ae.gmap.gloverlay;

public class GLMarker {
    public static final int AG_ANCHOR_CENTER = 4;
    public static final int AG_ANCHOR_CENTER_BOTTOM = 5;
    public static final int AG_ANCHOR_CENTER_LEFT = 7;
    public static final int AG_ANCHOR_CENTER_RIGHT = 8;
    public static final int AG_ANCHOR_CENTER_TOP = 6;
    public static final int AG_ANCHOR_LEFT_BOTTOM = 2;
    public static final int AG_ANCHOR_LEFT_TOP = 0;
    public static final int AG_ANCHOR_RANDOM_POSITION = 9;
    public static final int AG_ANCHOR_RIGHT_BOTTOM = 3;
    public static final int AG_ANCHOR_RIGHT_TOP = 1;
    public static final int ANIMATOR_BOUNCE = 3;
    public static final int ANIMATOR_DOUBLE_RAISE = 5;
    public static final int ANIMATOR_FADE = 6;
    public static final int ANIMATOR_FALL = 1;
    public static final int ANIMATOR_FALL_AND_OVERSHOOT = 4;
    public static final int ANIMATOR_NONE = 0;
    public static final int ANIMATOR_OVERSHOOT = 2;
    public static final int GL_MARKER_LINE_ARROW_DOT = 3003;
    public static final int GL_MARKER_LINE_ARROW_DOT_COLOR = 3010;
    public static final int GL_MARKER_LINE_START = 0;
    public static final int GL_MARKER_LINE_USE_COLOR = 3000;
    public static final int GL_MARKER_LINE_USE_COLOR_FRONT = 3050;
    public static final int GL_MARKER_NOT_SHOW = -999;
    public static final int GL_MARKER_POINT_START = 10000;

    public static int[] getAnchorPosition(int i, int i2, int i3, int i4, int i5, int i6, float f, float f2) {
        int i7;
        int i8;
        switch (i6) {
            case -1:
                if (i >= 1000 && i <= 10000) {
                    i7 = (i4 - i2) / 2;
                    i8 = (i5 - i3) / 2;
                    break;
                } else {
                    i7 = (i4 - i2) / 2;
                    i8 = i5 - i3;
                    break;
                }
                break;
            case 0:
                i7 = 0;
                i8 = 0;
                break;
            case 1:
                i7 = i4 - i2;
                i8 = 0;
                break;
            case 2:
                i8 = i5 - i3;
                i7 = 0;
                break;
            case 3:
                i7 = i4 - i2;
                i8 = i5 - i3;
                break;
            case 4:
                i7 = (i4 - i2) / 2;
                i8 = (i5 - i3) / 2;
                break;
            case 5:
                i7 = (i4 - i2) / 2;
                i8 = i5 - i3;
                break;
            case 6:
                i7 = (i4 - i2) / 2;
                i8 = 0;
                break;
            case 7:
                i8 = (i5 - i3) / 2;
                i7 = 0;
                break;
            case 8:
                i7 = i4 - i2;
                i8 = (i5 - i3) / 2;
                break;
            case 9:
                i7 = ((int) (((float) i4) * f)) - ((int) (((float) i2) * f));
                i8 = ((int) (((float) i5) * f2)) - ((int) (((float) i3) * f2));
                break;
            default:
                i7 = 0;
                i8 = 0;
                break;
        }
        return new int[]{i8, i7};
    }
}
