.class public Lcom/autonavi/ae/gmap/gloverlay/GLMarker;
.super Ljava/lang/Object;
.source "GLMarker.java"


# static fields
.field public static final AG_ANCHOR_CENTER:I = 0x4

.field public static final AG_ANCHOR_CENTER_BOTTOM:I = 0x5

.field public static final AG_ANCHOR_CENTER_LEFT:I = 0x7

.field public static final AG_ANCHOR_CENTER_RIGHT:I = 0x8

.field public static final AG_ANCHOR_CENTER_TOP:I = 0x6

.field public static final AG_ANCHOR_LEFT_BOTTOM:I = 0x2

.field public static final AG_ANCHOR_LEFT_TOP:I = 0x0

.field public static final AG_ANCHOR_RANDOM_POSITION:I = 0x9

.field public static final AG_ANCHOR_RIGHT_BOTTOM:I = 0x3

.field public static final AG_ANCHOR_RIGHT_TOP:I = 0x1

.field public static final ANIMATOR_BOUNCE:I = 0x3

.field public static final ANIMATOR_DOUBLE_RAISE:I = 0x5

.field public static final ANIMATOR_FADE:I = 0x6

.field public static final ANIMATOR_FALL:I = 0x1

.field public static final ANIMATOR_FALL_AND_OVERSHOOT:I = 0x4

.field public static final ANIMATOR_NONE:I = 0x0

.field public static final ANIMATOR_OVERSHOOT:I = 0x2

.field public static final GL_MARKER_LINE_ARROW_DOT:I = 0xbbb

.field public static final GL_MARKER_LINE_ARROW_DOT_COLOR:I = 0xbc2

.field public static final GL_MARKER_LINE_START:I = 0x0

.field public static final GL_MARKER_LINE_USE_COLOR:I = 0xbb8

.field public static final GL_MARKER_LINE_USE_COLOR_FRONT:I = 0xbea

.field public static final GL_MARKER_NOT_SHOW:I = -0x3e7

.field public static final GL_MARKER_POINT_START:I = 0x2710


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnchorPosition(IIIIIIFF)[I
    .locals 5

    const/4 v1, 0x0

    packed-switch p5, :pswitch_data_0

    move v0, v1

    move v2, v1

    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v2, v3, v1

    const/4 v1, 0x1

    aput v0, v3, v1

    return-object v3

    :pswitch_0
    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2710

    if-le p0, v0, :cond_1

    :cond_0
    sub-int v0, p3, p1

    div-int/lit8 v0, v0, 0x2

    sub-int v2, p4, p2

    goto :goto_0

    :cond_1
    sub-int v0, p3, p1

    div-int/lit8 v0, v0, 0x2

    sub-int v2, p4, p2

    div-int/lit8 v2, v2, 0x2

    goto :goto_0

    :pswitch_1
    move v0, v1

    move v2, v1

    goto :goto_0

    :pswitch_2
    sub-int v0, p3, p1

    move v2, v1

    goto :goto_0

    :pswitch_3
    sub-int v0, p4, p2

    move v2, v0

    move v0, v1

    goto :goto_0

    :pswitch_4
    sub-int v0, p3, p1

    sub-int v2, p4, p2

    goto :goto_0

    :pswitch_5
    sub-int v0, p3, p1

    div-int/lit8 v0, v0, 0x2

    sub-int v2, p4, p2

    div-int/lit8 v2, v2, 0x2

    goto :goto_0

    :pswitch_6
    sub-int v0, p3, p1

    div-int/lit8 v0, v0, 0x2

    sub-int v2, p4, p2

    goto :goto_0

    :pswitch_7
    sub-int v0, p3, p1

    div-int/lit8 v0, v0, 0x2

    move v2, v1

    goto :goto_0

    :pswitch_8
    sub-int v0, p4, p2

    div-int/lit8 v0, v0, 0x2

    move v2, v0

    move v0, v1

    goto :goto_0

    :pswitch_9
    sub-int v0, p3, p1

    sub-int v2, p4, p2

    div-int/lit8 v2, v2, 0x2

    goto :goto_0

    :pswitch_a
    int-to-float v0, p1

    mul-float/2addr v0, p6

    float-to-int v0, v0

    int-to-float v2, p2

    mul-float/2addr v2, p7

    float-to-int v2, v2

    int-to-float v3, p3

    mul-float/2addr v3, p6

    float-to-int v3, v3

    int-to-float v4, p4

    mul-float/2addr v4, p7

    float-to-int v4, v4

    sub-int v0, v3, v0

    sub-int v2, v4, v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
