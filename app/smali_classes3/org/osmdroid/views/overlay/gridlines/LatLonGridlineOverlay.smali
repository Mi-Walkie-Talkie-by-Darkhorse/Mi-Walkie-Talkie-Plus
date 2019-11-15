.class public Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;
.super Ljava/lang/Object;
.source "LatLonGridlineOverlay.java"


# static fields
.field public static DEBUG:Z

.field public static DEBUG2:Z

.field public static backgroundColor:I

.field static final df:Ljava/text/DecimalFormat;

.field public static fontColor:I

.field public static fontSizeDp:S

.field public static lineColor:I

.field public static lineWidth:F

.field private static multiplier:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    const/high16 v3, -0x1000000

    const/high16 v2, 0x3f800000    # 1.0f

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.#####"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->df:Ljava/text/DecimalFormat;

    sput v3, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->lineColor:I

    const/4 v0, -0x1

    sput v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->fontColor:I

    const/16 v0, 0x18

    sput-short v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->fontSizeDp:S

    sput v3, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->backgroundColor:I

    sput v2, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->lineWidth:F

    sput-boolean v4, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG:Z

    sput-boolean v4, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG2:Z

    sput v2, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyMarkerAttributes(Lorg/osmdroid/views/overlay/Marker;)V
    .locals 1

    sget v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->backgroundColor:I

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/Marker;->setTextLabelBackgroundColor(I)V

    sget-short v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->fontSizeDp:S

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/Marker;->setTextLabelFontSize(I)V

    sget v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->fontColor:I

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/Marker;->setTextLabelForegroundColor(I)V

    return-void
.end method

.method private static getIncrementor(I)D
    .locals 4

    packed-switch p0, :pswitch_data_0

    const-wide v0, 0x3ef999999999999aL    # 2.44140625E-5

    sget v2, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    :goto_0
    return-wide v0

    :pswitch_0
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    sget v2, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    goto :goto_0

    :pswitch_1
    const-wide/high16 v0, 0x402e000000000000L    # 15.0

    sget v2, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    goto :goto_0

    :pswitch_2
    const-wide/high16 v0, 0x4022000000000000L    # 9.0

    sget v2, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    goto :goto_0

    :pswitch_3
    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    sget v2, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    goto :goto_0

    :pswitch_4
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    sget v2, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    goto :goto_0

    :pswitch_5
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    sget v2, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    goto :goto_0

    :pswitch_6
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sget v2, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    goto :goto_0

    :pswitch_7
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    sget v2, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    goto :goto_0

    :pswitch_8
    const-wide/high16 v0, 0x3fd0000000000000L    # 0.25

    sget v2, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    goto :goto_0

    :pswitch_9
    const-wide v0, 0x3fb999999999999aL    # 0.1

    sget v2, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    goto :goto_0

    :pswitch_a
    const-wide v0, 0x3fa999999999999aL    # 0.05

    sget v2, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    goto :goto_0

    :pswitch_b
    const-wide v0, 0x3f9999999999999aL    # 0.025

    sget v2, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    goto :goto_0

    :pswitch_c
    const-wide v0, 0x3f8999999999999aL    # 0.0125

    sget v2, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    goto :goto_0

    :pswitch_d
    const-wide v0, 0x3f7999999999999aL    # 0.00625

    sget v2, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    goto :goto_0

    :pswitch_e
    const-wide v0, 0x3f6999999999999aL    # 0.003125

    sget v2, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    goto :goto_0

    :pswitch_f
    const-wide v0, 0x3f5999999999999aL    # 0.0015625

    sget v2, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    goto/16 :goto_0

    :pswitch_10
    const-wide v0, 0x3f4999999999999aL    # 7.8125E-4

    sget v2, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    goto/16 :goto_0

    :pswitch_11
    const-wide v0, 0x3f3999999999999aL    # 3.90625E-4

    sget v2, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    goto/16 :goto_0

    :pswitch_12
    const-wide v0, 0x3f2999999999999aL    # 1.953125E-4

    sget v2, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    goto/16 :goto_0

    :pswitch_13
    const-wide v0, 0x3f1999999999999aL    # 9.765625E-5

    sget v2, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    goto/16 :goto_0

    :pswitch_14
    const-wide v0, 0x3f0999999999999aL    # 4.8828125E-5

    sget v2, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
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
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

.method public static getLatLonGrid(Landroid/content/Context;Lorg/osmdroid/views/MapView;)Lorg/osmdroid/views/overlay/FolderOverlay;
    .locals 26

    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/MapView;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/MapView;->getZoomLevel()I

    move-result v10

    const/4 v5, 0x1

    sput-boolean v5, Lorg/osmdroid/views/overlay/Marker;->ENABLE_TEXT_LABELS_WHEN_NO_IMAGE:Z

    sget-boolean v5, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG:Z

    if-eqz v5, :cond_0

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "######### getLatLonGrid "

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    new-instance v5, Lorg/osmdroid/views/overlay/FolderOverlay;

    invoke-direct {v5}, Lorg/osmdroid/views/overlay/FolderOverlay;-><init>()V

    const/4 v6, 0x2

    if-ge v10, v6, :cond_2

    :cond_1
    move-object v4, v5

    :goto_0
    return-object v4

    :cond_2
    invoke-virtual {v4}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v12

    invoke-virtual {v4}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v14

    invoke-virtual {v4}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v8

    invoke-virtual {v4}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v16

    const-wide/16 v6, 0x0

    cmpg-double v4, v12, v14

    if-gez v4, :cond_3

    move-object v4, v5

    goto :goto_0

    :cond_3
    sget-boolean v4, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG:Z

    if-eqz v4, :cond_4

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "N "

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v18, " S "

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v18, ", "

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    const/4 v4, 0x0

    const-wide/16 v18, 0x0

    cmpg-double v11, v8, v18

    if-gez v11, :cond_5

    const-wide/16 v18, 0x0

    cmpl-double v11, v16, v18

    if-lez v11, :cond_5

    const/4 v4, 0x1

    :cond_5
    sget-boolean v11, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG:Z

    if-eqz v11, :cond_6

    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "delta "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6
    invoke-static {v10}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->getIncrementor(I)D

    move-result-wide v18

    invoke-static {v12, v13, v14, v15, v10}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->getStartEndPointsNS(DDI)[D

    move-result-object v11

    const/4 v6, 0x0

    aget-wide v6, v11, v6

    const/16 v20, 0x1

    aget-wide v20, v11, v20

    :goto_1
    cmpg-double v11, v6, v20

    if-gtz v11, :cond_9

    new-instance v11, Lorg/osmdroid/views/overlay/Polyline;

    invoke-direct {v11}, Lorg/osmdroid/views/overlay/Polyline;-><init>()V

    sget v22, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->lineWidth:F

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/osmdroid/views/overlay/Polyline;->setWidth(F)V

    sget v22, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->lineColor:I

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/osmdroid/views/overlay/Polyline;->setColor(I)V

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    new-instance v23, Lorg/osmdroid/util/GeoPoint;

    move-object/from16 v0, v23

    invoke-direct {v0, v6, v7, v8, v9}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v23, Lorg/osmdroid/util/GeoPoint;

    move-object/from16 v0, v23

    move-wide/from16 v1, v16

    invoke-direct {v0, v6, v7, v1, v2}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v23, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG:Z

    if-eqz v23, :cond_7

    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "drawing NS "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " to "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", zoom "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_7
    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/osmdroid/views/overlay/Polyline;->setPoints(Ljava/util/List;)V

    invoke-virtual {v5, v11}, Lorg/osmdroid/views/overlay/FolderOverlay;->add(Lorg/osmdroid/views/overlay/Overlay;)Z

    new-instance v11, Lorg/osmdroid/views/overlay/Marker;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lorg/osmdroid/views/overlay/Marker;-><init>(Lorg/osmdroid/views/MapView;)V

    invoke-static {v11}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->applyMarkerAttributes(Lorg/osmdroid/views/overlay/Marker;)V

    const-wide/16 v22, 0x0

    cmpl-double v22, v6, v22

    if-lez v22, :cond_8

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v23, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->df:Ljava/text/DecimalFormat;

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "N"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/osmdroid/views/overlay/Marker;->setTitle(Ljava/lang/String;)V

    :goto_2
    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/osmdroid/views/overlay/Marker;->setIcon(Landroid/graphics/drawable/Drawable;)V

    new-instance v22, Lorg/osmdroid/util/GeoPoint;

    add-double v24, v16, v18

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-direct {v0, v6, v7, v1, v2}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/osmdroid/views/overlay/Marker;->setPosition(Lorg/osmdroid/util/GeoPoint;)V

    invoke-virtual {v5, v11}, Lorg/osmdroid/views/overlay/FolderOverlay;->add(Lorg/osmdroid/views/overlay/Overlay;)Z

    add-double v6, v6, v18

    goto/16 :goto_1

    :cond_8
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v23, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->df:Ljava/text/DecimalFormat;

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "S"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/osmdroid/views/overlay/Marker;->setTitle(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    move-wide/from16 v0, v16

    invoke-static {v0, v1, v8, v9, v10}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->getStartEndPointsWE(DDI)[D

    move-result-object v8

    const/4 v6, 0x1

    aget-wide v6, v8, v6

    const/4 v9, 0x0

    aget-wide v16, v8, v9

    move-wide v8, v6

    :goto_3
    cmpg-double v11, v8, v16

    if-gtz v11, :cond_c

    new-instance v11, Lorg/osmdroid/views/overlay/Polyline;

    invoke-direct {v11}, Lorg/osmdroid/views/overlay/Polyline;-><init>()V

    sget v20, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->lineWidth:F

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/osmdroid/views/overlay/Polyline;->setWidth(F)V

    sget v20, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->lineColor:I

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/osmdroid/views/overlay/Polyline;->setColor(I)V

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    new-instance v21, Lorg/osmdroid/util/GeoPoint;

    move-object/from16 v0, v21

    invoke-direct {v0, v12, v13, v8, v9}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v21, Lorg/osmdroid/util/GeoPoint;

    move-object/from16 v0, v21

    invoke-direct {v0, v14, v15, v8, v9}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/osmdroid/views/overlay/Polyline;->setPoints(Ljava/util/List;)V

    sget-boolean v20, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG:Z

    if-eqz v20, :cond_a

    sget-object v20, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "drawing EW "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " to "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", zoom "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v5, v11}, Lorg/osmdroid/views/overlay/FolderOverlay;->add(Lorg/osmdroid/views/overlay/Overlay;)Z

    new-instance v11, Lorg/osmdroid/views/overlay/Marker;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lorg/osmdroid/views/overlay/Marker;-><init>(Lorg/osmdroid/views/MapView;)V

    invoke-static {v11}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->applyMarkerAttributes(Lorg/osmdroid/views/overlay/Marker;)V

    const/high16 v20, -0x3d4c0000    # -90.0f

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/osmdroid/views/overlay/Marker;->setRotation(F)V

    const-wide/16 v20, 0x0

    cmpl-double v20, v8, v20

    if-lez v20, :cond_b

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v21, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->df:Ljava/text/DecimalFormat;

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "E"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/osmdroid/views/overlay/Marker;->setTitle(Ljava/lang/String;)V

    :goto_4
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/osmdroid/views/overlay/Marker;->setIcon(Landroid/graphics/drawable/Drawable;)V

    new-instance v20, Lorg/osmdroid/util/GeoPoint;

    add-double v22, v14, v18

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2, v8, v9}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/osmdroid/views/overlay/Marker;->setPosition(Lorg/osmdroid/util/GeoPoint;)V

    invoke-virtual {v5, v11}, Lorg/osmdroid/views/overlay/FolderOverlay;->add(Lorg/osmdroid/views/overlay/Overlay;)Z

    add-double v8, v8, v18

    goto/16 :goto_3

    :cond_b
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v21, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->df:Ljava/text/DecimalFormat;

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "W"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/osmdroid/views/overlay/Marker;->setTitle(Ljava/lang/String;)V

    goto :goto_4

    :cond_c
    if-eqz v4, :cond_1

    sget-boolean v4, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG:Z

    if-eqz v4, :cond_d

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DATELINE zoom "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_d
    move-wide v8, v6

    :goto_5
    const-wide v20, 0x4066800000000000L    # 180.0

    cmpg-double v4, v8, v20

    if-gtz v4, :cond_f

    new-instance v4, Lorg/osmdroid/views/overlay/Polyline;

    invoke-direct {v4}, Lorg/osmdroid/views/overlay/Polyline;-><init>()V

    sget v11, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->lineWidth:F

    invoke-virtual {v4, v11}, Lorg/osmdroid/views/overlay/Polyline;->setWidth(F)V

    sget v11, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->lineColor:I

    invoke-virtual {v4, v11}, Lorg/osmdroid/views/overlay/Polyline;->setColor(I)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v20, Lorg/osmdroid/util/GeoPoint;

    move-object/from16 v0, v20

    invoke-direct {v0, v12, v13, v8, v9}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    move-object/from16 v0, v20

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v20, Lorg/osmdroid/util/GeoPoint;

    move-object/from16 v0, v20

    invoke-direct {v0, v14, v15, v8, v9}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    move-object/from16 v0, v20

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v11}, Lorg/osmdroid/views/overlay/Polyline;->setPoints(Ljava/util/List;)V

    sget-boolean v11, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG2:Z

    if-eqz v11, :cond_e

    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "DATELINE drawing NS"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " to "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", zoom "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {v5, v4}, Lorg/osmdroid/views/overlay/FolderOverlay;->add(Lorg/osmdroid/views/overlay/Overlay;)Z

    add-double v8, v8, v18

    goto/16 :goto_5

    :cond_f
    const-wide v8, -0x3f99800000000000L    # -180.0

    :goto_6
    cmpg-double v4, v8, v16

    if-gtz v4, :cond_12

    new-instance v4, Lorg/osmdroid/views/overlay/Polyline;

    invoke-direct {v4}, Lorg/osmdroid/views/overlay/Polyline;-><init>()V

    sget v11, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->lineWidth:F

    invoke-virtual {v4, v11}, Lorg/osmdroid/views/overlay/Polyline;->setWidth(F)V

    sget v11, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->lineColor:I

    invoke-virtual {v4, v11}, Lorg/osmdroid/views/overlay/Polyline;->setColor(I)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v20, Lorg/osmdroid/util/GeoPoint;

    move-object/from16 v0, v20

    invoke-direct {v0, v12, v13, v8, v9}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    move-object/from16 v0, v20

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v20, Lorg/osmdroid/util/GeoPoint;

    move-object/from16 v0, v20

    invoke-direct {v0, v14, v15, v8, v9}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    move-object/from16 v0, v20

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v11}, Lorg/osmdroid/views/overlay/Polyline;->setPoints(Ljava/util/List;)V

    sget-boolean v11, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG2:Z

    if-eqz v11, :cond_10

    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "DATELINE drawing EW"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " to "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", zoom "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_10
    invoke-virtual {v5, v4}, Lorg/osmdroid/views/overlay/FolderOverlay;->add(Lorg/osmdroid/views/overlay/Overlay;)Z

    new-instance v4, Lorg/osmdroid/views/overlay/Marker;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/osmdroid/views/overlay/Marker;-><init>(Lorg/osmdroid/views/MapView;)V

    invoke-static {v4}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->applyMarkerAttributes(Lorg/osmdroid/views/overlay/Marker;)V

    const/high16 v11, -0x3d4c0000    # -90.0f

    invoke-virtual {v4, v11}, Lorg/osmdroid/views/overlay/Marker;->setRotation(F)V

    const-wide/16 v20, 0x0

    cmpl-double v11, v8, v20

    if-lez v11, :cond_11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v20, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->df:Ljava/text/DecimalFormat;

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v20, "E"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lorg/osmdroid/views/overlay/Marker;->setTitle(Ljava/lang/String;)V

    :goto_7
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Lorg/osmdroid/views/overlay/Marker;->setIcon(Landroid/graphics/drawable/Drawable;)V

    new-instance v11, Lorg/osmdroid/util/GeoPoint;

    add-double v20, v14, v18

    move-wide/from16 v0, v20

    invoke-direct {v11, v0, v1, v8, v9}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v4, v11}, Lorg/osmdroid/views/overlay/Marker;->setPosition(Lorg/osmdroid/util/GeoPoint;)V

    invoke-virtual {v5, v4}, Lorg/osmdroid/views/overlay/FolderOverlay;->add(Lorg/osmdroid/views/overlay/Overlay;)Z

    add-double v8, v8, v18

    goto/16 :goto_6

    :cond_11
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v20, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->df:Ljava/text/DecimalFormat;

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v20, "W"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lorg/osmdroid/views/overlay/Marker;->setTitle(Ljava/lang/String;)V

    goto :goto_7

    :cond_12
    :goto_8
    const-wide v8, 0x4066800000000000L    # 180.0

    cmpg-double v4, v6, v8

    if-gez v4, :cond_1

    new-instance v4, Lorg/osmdroid/views/overlay/Marker;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/osmdroid/views/overlay/Marker;-><init>(Lorg/osmdroid/views/MapView;)V

    invoke-static {v4}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->applyMarkerAttributes(Lorg/osmdroid/views/overlay/Marker;)V

    const/high16 v8, -0x3d4c0000    # -90.0f

    invoke-virtual {v4, v8}, Lorg/osmdroid/views/overlay/Marker;->setRotation(F)V

    const-wide/16 v8, 0x0

    cmpl-double v8, v6, v8

    if-lez v8, :cond_13

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->df:Ljava/text/DecimalFormat;

    invoke-virtual {v9, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "E"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/osmdroid/views/overlay/Marker;->setTitle(Ljava/lang/String;)V

    :goto_9
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lorg/osmdroid/views/overlay/Marker;->setIcon(Landroid/graphics/drawable/Drawable;)V

    new-instance v8, Lorg/osmdroid/util/GeoPoint;

    add-double v10, v14, v18

    invoke-direct {v8, v10, v11, v6, v7}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v4, v8}, Lorg/osmdroid/views/overlay/Marker;->setPosition(Lorg/osmdroid/util/GeoPoint;)V

    invoke-virtual {v5, v4}, Lorg/osmdroid/views/overlay/FolderOverlay;->add(Lorg/osmdroid/views/overlay/Overlay;)Z

    add-double v6, v6, v18

    goto :goto_8

    :cond_13
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->df:Ljava/text/DecimalFormat;

    invoke-virtual {v9, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "W"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/osmdroid/views/overlay/Marker;->setTitle(Ljava/lang/String;)V

    goto :goto_9
.end method

.method private static getStartEndPointsNS(DDI)[D
    .locals 10

    const/16 v0, 0xa

    if-ge p4, v0, :cond_3

    invoke-static {p2, p3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    invoke-static {p4}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->getIncrementor(I)D

    move-result-wide v4

    const-wide v0, -0x3fa9800000000000L    # -90.0

    :goto_0
    cmpg-double v6, v0, v2

    if-gez v6, :cond_0

    add-double/2addr v0, v4

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    const-wide v2, 0x4056800000000000L    # 90.0

    :goto_1
    cmpl-double v8, v2, v6

    if-lez v8, :cond_1

    sub-double/2addr v2, v4

    goto :goto_1

    :cond_1
    const-wide v4, 0x4056800000000000L    # 90.0

    cmpl-double v4, v2, v4

    if-lez v4, :cond_b

    const-wide v2, 0x4056800000000000L    # 90.0

    move-wide v4, v2

    :goto_2
    const-wide v2, -0x3fa9800000000000L    # -90.0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_2

    const-wide v0, -0x3fa9800000000000L    # -90.0

    :cond_2
    const/4 v2, 0x2

    new-array v2, v2, [D

    const/4 v3, 0x0

    aput-wide v0, v2, v3

    const/4 v0, 0x1

    aput-wide v4, v2, v0

    move-object v0, v2

    :goto_3
    return-object v0

    :cond_3
    const-wide v4, -0x3fa9800000000000L    # -90.0

    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-lez v0, :cond_4

    const-wide/16 v4, 0x0

    :cond_4
    const-wide v0, 0x4056800000000000L    # 90.0

    const-wide/16 v2, 0x0

    cmpg-double v2, p0, v2

    if-gez v2, :cond_5

    const-wide/16 v0, 0x0

    :cond_5
    const/4 v2, 0x2

    move v6, v2

    move-wide v2, v0

    :goto_4
    if-gt v6, p4, :cond_8

    invoke-static {v6}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->getIncrementor(I)D

    move-result-wide v8

    :goto_5
    sub-double v0, p2, v8

    cmpg-double v0, v4, v0

    if-gez v0, :cond_a

    add-double v0, v4, v8

    sget-boolean v4, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG:Z

    if-eqz v4, :cond_9

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "south "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-wide v4, v0

    goto :goto_5

    :cond_6
    :goto_6
    add-double v2, p0, v8

    cmpl-double v2, v0, v2

    if-lez v2, :cond_7

    sub-double/2addr v0, v8

    sget-boolean v2, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG:Z

    if-eqz v2, :cond_6

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "north "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_6

    :cond_7
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move-wide v2, v0

    goto :goto_4

    :cond_8
    const/4 v0, 0x2

    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide v4, v0, v1

    const/4 v1, 0x1

    aput-wide v2, v0, v1

    goto :goto_3

    :cond_9
    move-wide v4, v0

    goto :goto_5

    :cond_a
    move-wide v0, v2

    goto :goto_6

    :cond_b
    move-wide v4, v2

    goto/16 :goto_2
.end method

.method private static getStartEndPointsWE(DDI)[D
    .locals 10

    invoke-static {p4}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->getIncrementor(I)D

    move-result-wide v6

    const/16 v0, 0xa

    if-ge p4, v0, :cond_3

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    :goto_0
    cmpl-double v4, v2, v0

    if-lez v4, :cond_0

    sub-double/2addr v2, v6

    goto :goto_0

    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    const-wide v4, -0x3f99800000000000L    # -180.0

    :goto_1
    cmpg-double v8, v4, v0

    if-gez v8, :cond_1

    add-double/2addr v4, v6

    goto :goto_1

    :cond_1
    const-wide v4, -0x3f99800000000000L    # -180.0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_b

    const-wide v2, -0x3f99800000000000L    # -180.0

    move-wide v4, v2

    :goto_2
    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_2

    const-wide v0, 0x4066800000000000L    # 180.0

    :cond_2
    const/4 v2, 0x2

    new-array v2, v2, [D

    const/4 v3, 0x0

    aput-wide v0, v2, v3

    const/4 v0, 0x1

    aput-wide v4, v2, v0

    move-object v0, v2

    :goto_3
    return-object v0

    :cond_3
    const-wide v4, -0x3f99800000000000L    # -180.0

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-lez v0, :cond_4

    const-wide/16 v4, 0x0

    :cond_4
    const-wide v0, 0x4066800000000000L    # 180.0

    const-wide/16 v2, 0x0

    cmpg-double v2, p2, v2

    if-gez v2, :cond_5

    const-wide/16 v0, 0x0

    :cond_5
    const/4 v2, 0x2

    move v6, v2

    move-wide v2, v4

    move-wide v4, v0

    :goto_4
    if-gt v6, p4, :cond_8

    invoke-static {v6}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->getIncrementor(I)D

    move-result-wide v8

    :goto_5
    add-double v0, p2, v8

    cmpl-double v0, v4, v0

    if-lez v0, :cond_a

    sub-double v0, v4, v8

    move-wide v4, v0

    goto :goto_5

    :cond_6
    :goto_6
    sub-double v2, p0, v8

    cmpg-double v2, v0, v2

    if-gez v2, :cond_7

    add-double/2addr v0, v8

    sget-boolean v2, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG:Z

    if-eqz v2, :cond_6

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "west "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_6

    :cond_7
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move-wide v2, v0

    goto :goto_4

    :cond_8
    sget-boolean v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG:Z

    if-eqz v0, :cond_9

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "return EW set as "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_9
    const/4 v0, 0x2

    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide v4, v0, v1

    const/4 v1, 0x1

    aput-wide v2, v0, v1

    goto/16 :goto_3

    :cond_a
    move-wide v0, v2

    goto :goto_6

    :cond_b
    move-wide v4, v2

    goto/16 :goto_2
.end method

.method public static setDefaults()V
    .locals 3

    const/4 v2, 0x0

    const/high16 v1, -0x1000000

    sput v1, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->lineColor:I

    const/4 v0, -0x1

    sput v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->fontColor:I

    sput v1, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->backgroundColor:I

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->lineWidth:F

    const/16 v0, 0x20

    sput-short v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->fontSizeDp:S

    sput-boolean v2, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG:Z

    sput-boolean v2, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG2:Z

    return-void
.end method
