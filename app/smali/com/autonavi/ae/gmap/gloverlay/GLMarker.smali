.class public Lcom/autonavi/ae/gmap/gloverlay/GLMarker;
.super Ljava/lang/Object;


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
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    packed-switch p5, :pswitch_data_0

    :pswitch_0
    const/4 p2, 0x0

    :goto_0
    const/4 p3, 0x0

    goto :goto_5

    :pswitch_1
    int-to-float p0, p1

    mul-float p0, p0, p6

    float-to-int p0, p0

    int-to-float p1, p2

    mul-float p1, p1, p7

    float-to-int p1, p1

    int-to-float p2, p3

    mul-float p2, p2, p6

    float-to-int p2, p2

    int-to-float p3, p4

    mul-float p3, p3, p7

    float-to-int p3, p3

    sub-int/2addr p2, p0

    sub-int/2addr p3, p1

    goto :goto_5

    :pswitch_2
    sub-int p0, p3, p1

    sub-int/2addr p4, p2

    div-int/lit8 p3, p4, 0x2

    goto :goto_2

    :pswitch_3
    sub-int/2addr p4, p2

    div-int/lit8 p3, p4, 0x2

    goto :goto_3

    :pswitch_4
    sub-int/2addr p3, p1

    div-int/lit8 p2, p3, 0x2

    goto :goto_0

    :pswitch_5
    sub-int/2addr p3, p1

    div-int/lit8 p0, p3, 0x2

    goto :goto_1

    :pswitch_6
    sub-int/2addr p3, p1

    div-int/lit8 p0, p3, 0x2

    sub-int/2addr p4, p2

    div-int/lit8 p3, p4, 0x2

    goto :goto_2

    :pswitch_7
    sub-int p0, p3, p1

    :goto_1
    sub-int p3, p4, p2

    :goto_2
    move p2, p0

    goto :goto_5

    :pswitch_8
    sub-int p3, p4, p2

    :goto_3
    const/4 p2, 0x0

    goto :goto_5

    :pswitch_9
    sub-int p2, p3, p1

    goto :goto_0

    :pswitch_a
    const/16 p5, 0x3e8

    if-lt p0, p5, :cond_1

    const/16 p5, 0x2710

    if-le p0, p5, :cond_0

    goto :goto_4

    :cond_0
    sub-int/2addr p3, p1

    div-int/lit8 p0, p3, 0x2

    sub-int/2addr p4, p2

    div-int/lit8 p3, p4, 0x2

    goto :goto_2

    :cond_1
    :goto_4
    sub-int/2addr p3, p1

    div-int/lit8 p0, p3, 0x2

    goto :goto_1

    :goto_5
    new-array p0, v1, [I

    aput p3, p0, v0

    const/4 p1, 0x1

    aput p2, p0, p1

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
