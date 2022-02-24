.class public final Lcom/amap/api/col/l3/de;
.super Ljava/lang/Object;
.source "TileOverlayDelegateImp.java"

# interfaces
.implements Lcom/amap/api/col/l3/cw;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3/de$a;,
        Lcom/amap/api/col/l3/de$b;
    }
.end annotation


# static fields
.field private static h:I


# instance fields
.field a:Lcom/amap/api/col/l3/dg$e;

.field private b:Lcom/amap/api/col/l3/ae;

.field private c:Lcom/amap/api/maps/model/TileProvider;

.field private d:Ljava/lang/Float;

.field private e:Z

.field private f:Z

.field private g:Lcom/amap/api/col/l3/u;

.field private i:I

.field private j:I

.field private k:I

.field private l:Lcom/amap/api/col/l3/eo;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/col/l3/de$a;",
            ">;"
        }
    .end annotation
.end field

.field private n:Z

.field private o:Lcom/amap/api/col/l3/de$b;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/maps/model/TileOverlayOptions;Lcom/amap/api/col/l3/ae;Z)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/amap/api/col/l3/de;->f:Z

    const/16 v1, 0x100

    .line 3
    iput v1, p0, Lcom/amap/api/col/l3/de;->i:I

    .line 4
    iput v1, p0, Lcom/amap/api/col/l3/de;->j:I

    const/4 v1, -0x1

    .line 5
    iput v1, p0, Lcom/amap/api/col/l3/de;->k:I

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/amap/api/col/l3/de;->m:Ljava/util/List;

    .line 7
    iput-boolean v0, p0, Lcom/amap/api/col/l3/de;->n:Z

    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/amap/api/col/l3/de;->o:Lcom/amap/api/col/l3/de$b;

    .line 9
    iput-object v1, p0, Lcom/amap/api/col/l3/de;->q:Ljava/lang/String;

    .line 10
    iput-object v1, p0, Lcom/amap/api/col/l3/de;->r:Ljava/nio/FloatBuffer;

    .line 11
    iput-object p2, p0, Lcom/amap/api/col/l3/de;->b:Lcom/amap/api/col/l3/ae;

    .line 12
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->getTileProvider()Lcom/amap/api/maps/model/TileProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/col/l3/de;->c:Lcom/amap/api/maps/model/TileProvider;

    .line 13
    invoke-interface {v1}, Lcom/amap/api/maps/model/TileProvider;->getTileWidth()I

    move-result v1

    iput v1, p0, Lcom/amap/api/col/l3/de;->i:I

    .line 14
    iget-object v1, p0, Lcom/amap/api/col/l3/de;->c:Lcom/amap/api/maps/model/TileProvider;

    invoke-interface {v1}, Lcom/amap/api/maps/model/TileProvider;->getTileHeight()I

    move-result v1

    iput v1, p0, Lcom/amap/api/col/l3/de;->j:I

    const/16 v1, 0x8

    new-array v1, v1, [F

    .line 15
    fill-array-data v1, :array_0

    invoke-static {v1}, Lcom/amap/api/col/l3/em;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/col/l3/de;->r:Ljava/nio/FloatBuffer;

    .line 16
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->getZIndex()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/col/l3/de;->d:Ljava/lang/Float;

    .line 17
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->isVisible()Z

    move-result v1

    iput-boolean v1, p0, Lcom/amap/api/col/l3/de;->e:Z

    .line 18
    iput-boolean p3, p0, Lcom/amap/api/col/l3/de;->f:Z

    if-eqz p3, :cond_0

    const-string v1, "TileOverlay0"

    .line 19
    iput-object v1, p0, Lcom/amap/api/col/l3/de;->q:Ljava/lang/String;

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3/de;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/col/l3/de;->q:Ljava/lang/String;

    .line 21
    :goto_0
    iget-object v1, p0, Lcom/amap/api/col/l3/de;->b:Lcom/amap/api/col/l3/ae;

    invoke-virtual {v1}, Lcom/amap/api/col/l3/ae;->a()Lcom/amap/api/col/l3/u;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/col/l3/de;->g:Lcom/amap/api/col/l3/u;

    .line 22
    iget-object v1, p0, Lcom/amap/api/col/l3/de;->q:Ljava/lang/String;

    const/16 v2, 0xb

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/amap/api/col/l3/de;->k:I

    if-eqz p3, :cond_1

    .line 25
    :try_start_0
    new-instance p3, Lcom/amap/api/col/l3/en$a;

    iget-object v1, p0, Lcom/amap/api/col/l3/de;->b:Lcom/amap/api/col/l3/ae;

    .line 26
    invoke-virtual {v1}, Lcom/amap/api/col/l3/ae;->e()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/l3/de;->q:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/amap/api/col/l3/ae;->a()Lcom/amap/api/col/l3/u;

    move-result-object p2

    invoke-interface {p2}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapLanguage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, v1, v2, p2}, Lcom/amap/api/col/l3/en$a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 27
    :cond_1
    new-instance p3, Lcom/amap/api/col/l3/en$a;

    iget-object p2, p0, Lcom/amap/api/col/l3/de;->b:Lcom/amap/api/col/l3/ae;

    .line 28
    invoke-virtual {p2}, Lcom/amap/api/col/l3/ae;->e()Landroid/content/Context;

    move-result-object p2

    iget-object v1, p0, Lcom/amap/api/col/l3/de;->q:Ljava/lang/String;

    invoke-direct {p3, p2, v1}, Lcom/amap/api/col/l3/en$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 29
    :goto_1
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->getMemoryCacheEnabled()Z

    move-result p2

    .line 30
    iput-boolean p2, p3, Lcom/amap/api/col/l3/en$a;->f:Z

    .line 31
    iget-boolean p2, p0, Lcom/amap/api/col/l3/de;->f:Z

    if-eqz p2, :cond_2

    .line 32
    iput-boolean v0, p3, Lcom/amap/api/col/l3/en$a;->i:Z

    .line 33
    :cond_2
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->getDiskCacheEnabled()Z

    move-result p2

    iput-boolean p2, p3, Lcom/amap/api/col/l3/en$a;->g:Z

    .line 34
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->getMemCacheSize()I

    move-result p2

    iput p2, p3, Lcom/amap/api/col/l3/en$a;->a:I

    .line 35
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->getDiskCacheSize()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-gtz p2, :cond_3

    iput-boolean v0, p3, Lcom/amap/api/col/l3/en$a;->g:Z

    :cond_3
    iput-wide v1, p3, Lcom/amap/api/col/l3/en$a;->b:J

    .line 36
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->getDiskCacheDir()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string p2, ""

    .line 37
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 38
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p2, p3, Lcom/amap/api/col/l3/en$a;->c:Ljava/io/File;

    .line 39
    :cond_4
    new-instance p1, Lcom/amap/api/col/l3/eo;

    iget-object p2, p0, Lcom/amap/api/col/l3/de;->b:Lcom/amap/api/col/l3/ae;

    invoke-virtual {p2}, Lcom/amap/api/col/l3/ae;->e()Landroid/content/Context;

    move-result-object p2

    iget v0, p0, Lcom/amap/api/col/l3/de;->i:I

    iget v1, p0, Lcom/amap/api/col/l3/de;->j:I

    invoke-direct {p1, p2, v0, v1}, Lcom/amap/api/col/l3/eo;-><init>(Landroid/content/Context;II)V

    iput-object p1, p0, Lcom/amap/api/col/l3/de;->l:Lcom/amap/api/col/l3/eo;

    .line 40
    iget-object p2, p0, Lcom/amap/api/col/l3/de;->c:Lcom/amap/api/maps/model/TileProvider;

    invoke-virtual {p1, p2}, Lcom/amap/api/col/l3/eo;->a(Lcom/amap/api/maps/model/TileProvider;)V

    .line 41
    iget-object p1, p0, Lcom/amap/api/col/l3/de;->l:Lcom/amap/api/col/l3/eo;

    invoke-virtual {p1, p3}, Lcom/amap/api/col/l3/eq;->a(Lcom/amap/api/col/l3/en$a;)V

    .line 42
    iget-object p1, p0, Lcom/amap/api/col/l3/de;->l:Lcom/amap/api/col/l3/eo;

    new-instance p2, Lcom/amap/api/col/l3/de$1;

    invoke-direct {p2, p0}, Lcom/amap/api/col/l3/de$1;-><init>(Lcom/amap/api/col/l3/de;)V

    invoke-virtual {p1, p2}, Lcom/amap/api/col/l3/eq;->a(Lcom/amap/api/col/l3/eq$c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic a(Lcom/amap/api/col/l3/de;)Lcom/amap/api/col/l3/u;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/de;->g:Lcom/amap/api/col/l3/u;

    return-object p0
.end method

.method static synthetic a(Lcom/amap/api/col/l3/u;IIIILcom/amap/api/col/l3/ae;Lcom/amap/api/col/l3/eo;)Ljava/util/ArrayList;
    .locals 26

    .line 2
    invoke-interface/range {p0 .. p0}, Lcom/amap/api/col/l3/u;->d()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    invoke-interface/range {p0 .. p0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/amap/mapcore/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/Rectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v2

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iput v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iput v5, v2, Landroid/graphics/Point;->y:I

    const v5, 0x7fffffff

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v6, v2, Landroid/graphics/Point;->x:I

    const/4 v7, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v8, v2, Landroid/graphics/Point;->y:I

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v8, v2, Landroid/graphics/Point;->y:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget v9, v1, Landroid/graphics/Rect;->right:I

    iput v9, v2, Landroid/graphics/Point;->x:I

    iget v10, v1, Landroid/graphics/Rect;->top:I

    iput v10, v2, Landroid/graphics/Point;->y:I

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v9, v2, Landroid/graphics/Point;->x:I

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v9, v2, Landroid/graphics/Point;->y:I

    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v9, v2, Landroid/graphics/Point;->y:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget v9, v1, Landroid/graphics/Rect;->left:I

    iput v9, v2, Landroid/graphics/Point;->x:I

    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    iput v10, v2, Landroid/graphics/Point;->y:I

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v9, v2, Landroid/graphics/Point;->x:I

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v9, v2, Landroid/graphics/Point;->y:I

    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v9, v2, Landroid/graphics/Point;->y:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget v9, v1, Landroid/graphics/Rect;->right:I

    iput v9, v2, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v2, Landroid/graphics/Point;->y:I

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v4, v2, Landroid/graphics/Point;->x:I

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v6, v2, Landroid/graphics/Point;->y:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v6, v2, Landroid/graphics/Point;->y:I

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    rsub-int/lit8 v16, p1, 0x14

    const/16 v17, 0x1

    shl-int v8, v17, v16

    mul-int v9, v8, p2

    sub-int/2addr v1, v9

    mul-int v8, v8, p3

    sub-int/2addr v5, v8

    invoke-virtual {v0, v3}, Lcom/autonavi/ae/gmap/GLMapState;->getGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    iget v0, v3, Landroid/graphics/Point;->x:I

    shr-int v0, v0, v16

    div-int v0, v0, p2

    iget v8, v3, Landroid/graphics/Point;->y:I

    shr-int v8, v8, v16

    div-int v18, v8, p3

    shl-int v8, v0, v16

    mul-int v15, v8, p2

    shl-int v8, v18, v16

    mul-int v14, v8, p3

    new-instance v13, Lcom/amap/api/col/l3/de$a;

    move-object v8, v13

    move v9, v0

    move/from16 v10, v18

    move/from16 v11, p1

    move/from16 v12, p4

    move-object v7, v13

    move-object/from16 v13, p0

    move/from16 v19, v5

    move v5, v14

    move-object/from16 v14, p5

    move/from16 v20, v6

    move v6, v15

    move-object/from16 v15, p6

    invoke-direct/range {v8 .. v15}, Lcom/amap/api/col/l3/de$a;-><init>(IIIILcom/amap/api/col/l3/u;Lcom/amap/api/col/l3/ae;Lcom/amap/api/col/l3/eo;)V

    invoke-static {v6, v5}, Lcom/autonavi/amap/mapcore/IPoint;->obtain(II)Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v5

    iput-object v5, v7, Lcom/amap/api/col/l3/de$a;->e:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    :goto_0
    sub-int v5, v0, v3

    move v6, v5

    const/4 v7, 0x0

    :goto_1
    add-int v15, v0, v3

    if-gt v6, v15, :cond_7

    add-int v10, v18, v3

    new-instance v15, Lcom/autonavi/amap/mapcore/IPoint;

    shl-int v8, v6, v16

    mul-int v14, v8, p2

    shl-int v8, v10, v16

    mul-int v8, v8, p3

    invoke-direct {v15, v14, v8}, Lcom/autonavi/amap/mapcore/IPoint;-><init>(II)V

    iget v8, v15, Landroid/graphics/Point;->x:I

    if-ge v8, v4, :cond_3

    if-le v8, v1, :cond_3

    iget v8, v15, Landroid/graphics/Point;->y:I

    move/from16 v13, v20

    if-ge v8, v13, :cond_2

    move/from16 v12, v19

    if-le v8, v12, :cond_1

    if-nez v7, :cond_0

    const/4 v7, 0x1

    :cond_0
    new-instance v11, Lcom/amap/api/col/l3/de$a;

    move-object v8, v11

    move v9, v6

    move/from16 v19, v0

    move-object v0, v11

    move/from16 v11, p1

    move/from16 v20, v7

    move v7, v12

    move/from16 v12, p4

    move/from16 v21, v5

    move v5, v13

    move-object/from16 v13, p0

    move/from16 v22, v6

    move v6, v14

    move-object/from16 v14, p5

    move/from16 v23, v7

    move-object v7, v15

    move-object/from16 v15, p6

    invoke-direct/range {v8 .. v15}, Lcom/amap/api/col/l3/de$a;-><init>(IIIILcom/amap/api/col/l3/u;Lcom/amap/api/col/l3/ae;Lcom/amap/api/col/l3/eo;)V

    iput-object v7, v0, Lcom/amap/api/col/l3/de$a;->e:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v7, v20

    goto :goto_4

    :cond_1
    move/from16 v19, v0

    move/from16 v21, v5

    move/from16 v22, v6

    move v0, v7

    move/from16 v23, v12

    move v5, v13

    move v6, v14

    goto :goto_3

    :cond_2
    move/from16 v21, v5

    move/from16 v22, v6

    move v5, v13

    move v6, v14

    move/from16 v23, v19

    goto :goto_2

    :cond_3
    move/from16 v21, v5

    move/from16 v22, v6

    move v6, v14

    move/from16 v23, v19

    move/from16 v5, v20

    :goto_2
    move/from16 v19, v0

    move v0, v7

    :goto_3
    move v7, v0

    :goto_4
    sub-int v10, v18, v3

    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    shl-int v8, v10, v16

    mul-int v8, v8, p3

    invoke-direct {v0, v6, v8}, Lcom/autonavi/amap/mapcore/IPoint;-><init>(II)V

    iget v6, v0, Landroid/graphics/Point;->x:I

    if-ge v6, v4, :cond_6

    if-le v6, v1, :cond_6

    iget v6, v0, Landroid/graphics/Point;->y:I

    if-ge v6, v5, :cond_6

    move/from16 v15, v23

    if-le v6, v15, :cond_5

    if-nez v7, :cond_4

    const/4 v7, 0x1

    :cond_4
    new-instance v6, Lcom/amap/api/col/l3/de$a;

    move-object v8, v6

    move/from16 v9, v22

    move/from16 v11, p1

    move/from16 v12, p4

    move-object/from16 v13, p0

    move-object/from16 v14, p5

    move/from16 v20, v7

    move v7, v15

    move-object/from16 v15, p6

    invoke-direct/range {v8 .. v15}, Lcom/amap/api/col/l3/de$a;-><init>(IIIILcom/amap/api/col/l3/u;Lcom/amap/api/col/l3/ae;Lcom/amap/api/col/l3/eo;)V

    iput-object v0, v6, Lcom/amap/api/col/l3/de$a;->e:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v0, v20

    goto :goto_5

    :cond_5
    move v0, v7

    move v7, v15

    goto :goto_5

    :cond_6
    move v0, v7

    move/from16 v7, v23

    :goto_5
    add-int/lit8 v6, v22, 0x1

    move/from16 v20, v5

    move/from16 v5, v21

    move/from16 v25, v7

    move v7, v0

    move/from16 v0, v19

    move/from16 v19, v25

    goto/16 :goto_1

    :cond_7
    move/from16 v21, v5

    move/from16 v5, v20

    move/from16 v25, v19

    move/from16 v19, v0

    move v0, v7

    move/from16 v7, v25

    add-int v6, v18, v3

    add-int/lit8 v6, v6, -0x1

    :goto_6
    sub-int v8, v18, v3

    if-le v6, v8, :cond_c

    new-instance v14, Lcom/autonavi/amap/mapcore/IPoint;

    shl-int v8, v15, v16

    mul-int v8, v8, p2

    shl-int v9, v6, v16

    mul-int v13, v9, p3

    invoke-direct {v14, v8, v13}, Lcom/autonavi/amap/mapcore/IPoint;-><init>(II)V

    iget v8, v14, Landroid/graphics/Point;->x:I

    if-ge v8, v4, :cond_9

    if-le v8, v1, :cond_9

    iget v8, v14, Landroid/graphics/Point;->y:I

    if-ge v8, v5, :cond_9

    if-le v8, v7, :cond_9

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :cond_8
    new-instance v12, Lcom/amap/api/col/l3/de$a;

    move-object v8, v12

    move v9, v15

    move v10, v6

    move/from16 v11, p1

    move/from16 v20, v0

    move-object v0, v12

    move/from16 v12, p4

    move/from16 v22, v3

    move v3, v13

    move-object/from16 v13, p0

    move/from16 v23, v6

    move-object v6, v14

    move-object/from16 v14, p5

    move/from16 v24, v15

    move-object/from16 v15, p6

    invoke-direct/range {v8 .. v15}, Lcom/amap/api/col/l3/de$a;-><init>(IIIILcom/amap/api/col/l3/u;Lcom/amap/api/col/l3/ae;Lcom/amap/api/col/l3/eo;)V

    iput-object v6, v0, Lcom/amap/api/col/l3/de$a;->e:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v0, v20

    goto :goto_7

    :cond_9
    move/from16 v22, v3

    move/from16 v23, v6

    move v3, v13

    move/from16 v24, v15

    :goto_7
    new-instance v6, Lcom/autonavi/amap/mapcore/IPoint;

    shl-int v8, v21, v16

    mul-int v8, v8, p2

    invoke-direct {v6, v8, v3}, Lcom/autonavi/amap/mapcore/IPoint;-><init>(II)V

    iget v3, v6, Landroid/graphics/Point;->x:I

    if-ge v3, v4, :cond_b

    if-le v3, v1, :cond_b

    iget v3, v6, Landroid/graphics/Point;->y:I

    if-ge v3, v5, :cond_b

    if-le v3, v7, :cond_b

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :cond_a
    new-instance v3, Lcom/amap/api/col/l3/de$a;

    move-object v8, v3

    move/from16 v9, v21

    move/from16 v10, v23

    move/from16 v11, p1

    move/from16 v12, p4

    move-object/from16 v13, p0

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    invoke-direct/range {v8 .. v15}, Lcom/amap/api/col/l3/de$a;-><init>(IIIILcom/amap/api/col/l3/u;Lcom/amap/api/col/l3/ae;Lcom/amap/api/col/l3/eo;)V

    iput-object v6, v3, Lcom/amap/api/col/l3/de$a;->e:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v6, v23, -0x1

    move/from16 v3, v22

    move/from16 v15, v24

    goto/16 :goto_6

    :cond_c
    move/from16 v22, v3

    if-eqz v0, :cond_d

    add-int/lit8 v3, v22, 0x1

    move/from16 v20, v5

    move/from16 v0, v19

    move/from16 v19, v7

    goto/16 :goto_0

    :cond_d
    return-object v2
.end method

.method static synthetic a(Lcom/amap/api/col/l3/u;Ljava/util/List;IZLjava/util/List;ZLcom/amap/api/col/l3/ae;Lcom/amap/api/col/l3/eo;)Z
    .locals 0

    .line 3
    invoke-static/range {p0 .. p7}, Lcom/amap/api/col/l3/de;->b(Lcom/amap/api/col/l3/u;Ljava/util/List;IZLjava/util/List;ZLcom/amap/api/col/l3/ae;Lcom/amap/api/col/l3/eo;)Z

    move-result p0

    return p0
.end method

.method private static b(Lcom/amap/api/col/l3/u;Ljava/util/List;IZLjava/util/List;ZLcom/amap/api/col/l3/ae;Lcom/amap/api/col/l3/eo;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/col/l3/u;",
            "Ljava/util/List<",
            "Lcom/amap/api/col/l3/de$a;",
            ">;IZ",
            "Ljava/util/List<",
            "Lcom/amap/api/col/l3/de$a;",
            ">;Z",
            "Lcom/amap/api/col/l3/ae;",
            "Lcom/amap/api/col/l3/eo;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-nez p4, :cond_1

    return v0

    .line 5
    :cond_1
    monitor-enter p4

    .line 6
    :try_start_0
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/col/l3/de$a;

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amap/api/col/l3/de$a;

    .line 8
    invoke-virtual {v2, v5}, Lcom/amap/api/col/l3/de$a;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-boolean v6, v2, Lcom/amap/api/col/l3/de$a;->g:Z

    if-eqz v6, :cond_3

    .line 9
    iget-boolean v4, v2, Lcom/amap/api/col/l3/de$a;->g:Z

    iput-boolean v4, v5, Lcom/amap/api/col/l3/de$a;->g:Z

    .line 10
    iget v4, v2, Lcom/amap/api/col/l3/de$a;->f:I

    iput v4, v5, Lcom/amap/api/col/l3/de$a;->f:I

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    .line 11
    invoke-virtual {v2}, Lcom/amap/api/col/l3/de$a;->a()V

    goto :goto_0

    .line 12
    :cond_5
    invoke-interface {p4}, Ljava/util/List;->clear()V

    .line 13
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMaxZoomLevel()F

    move-result v1

    float-to-int v1, v1

    if-gt p2, v1, :cond_c

    .line 15
    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMinZoomLevel()F

    move-result p0

    float-to-int p0, p0

    if-ge p2, p0, :cond_6

    goto :goto_4

    .line 16
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-gtz p0, :cond_7

    return v0

    :cond_7
    :goto_2
    if-ge v0, p0, :cond_b

    .line 17
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amap/api/col/l3/de$a;

    if-eqz p2, :cond_a

    if-eqz p5, :cond_9

    .line 18
    invoke-virtual {p6}, Lcom/amap/api/col/l3/ae;->a()Lcom/amap/api/col/l3/u;

    move-result-object v1

    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "zh_cn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x7

    if-eqz v1, :cond_8

    .line 19
    invoke-static {}, Lcom/amap/api/maps/MapsInitializer;->isLoadWorldGridMap()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 20
    iget v1, p2, Lcom/amap/api/col/l3/de$a;->c:I

    if-lt v1, v2, :cond_a

    iget v2, p2, Lcom/amap/api/col/l3/de$a;->a:I

    iget v4, p2, Lcom/amap/api/col/l3/de$a;->b:I

    .line 21
    invoke-static {v2, v4, v1}, Lcom/amap/api/col/l3/eg;->a(III)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_3

    .line 22
    :cond_8
    invoke-static {}, Lcom/amap/api/maps/MapsInitializer;->isLoadWorldGridMap()Z

    move-result v1

    if-nez v1, :cond_9

    .line 23
    iget v1, p2, Lcom/amap/api/col/l3/de$a;->c:I

    if-lt v1, v2, :cond_9

    iget v2, p2, Lcom/amap/api/col/l3/de$a;->a:I

    iget v4, p2, Lcom/amap/api/col/l3/de$a;->b:I

    .line 24
    invoke-static {v2, v4, v1}, Lcom/amap/api/col/l3/eg;->a(III)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 25
    :cond_9
    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    iget-boolean v1, p2, Lcom/amap/api/col/l3/de$a;->g:Z

    if-nez v1, :cond_a

    if-eqz p7, :cond_a

    .line 27
    invoke-virtual {p7, p3, p2}, Lcom/amap/api/col/l3/eq;->a(ZLcom/amap/api/col/l3/de$a;)V

    :cond_a
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_b
    return v3

    :cond_c
    :goto_4
    return v0

    :catchall_0
    move-exception p0

    .line 28
    monitor-exit p4

    throw p0
.end method

.method private c(Z)V
    .locals 11

    .line 1
    new-instance v10, Lcom/amap/api/col/l3/de$b;

    iget-object v2, p0, Lcom/amap/api/col/l3/de;->g:Lcom/amap/api/col/l3/u;

    iget v3, p0, Lcom/amap/api/col/l3/de;->i:I

    iget v4, p0, Lcom/amap/api/col/l3/de;->j:I

    iget v5, p0, Lcom/amap/api/col/l3/de;->k:I

    iget-object v6, p0, Lcom/amap/api/col/l3/de;->m:Ljava/util/List;

    iget-boolean v7, p0, Lcom/amap/api/col/l3/de;->f:Z

    iget-object v8, p0, Lcom/amap/api/col/l3/de;->b:Lcom/amap/api/col/l3/ae;

    iget-object v9, p0, Lcom/amap/api/col/l3/de;->l:Lcom/amap/api/col/l3/eo;

    move-object v0, v10

    move v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/amap/api/col/l3/de$b;-><init>(ZLcom/amap/api/col/l3/u;IIILjava/util/List;ZLcom/amap/api/col/l3/ae;Lcom/amap/api/col/l3/eo;)V

    iput-object v10, p0, Lcom/amap/api/col/l3/de;->o:Lcom/amap/api/col/l3/de$b;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 2
    invoke-virtual {v10, p1}, Lcom/amap/api/col/l3/ds;->b([Ljava/lang/Object;)Lcom/amap/api/col/l3/ds;

    return-void
.end method

.method private d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/de;->o:Lcom/amap/api/col/l3/de$b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/amap/api/col/l3/ds;->a()Lcom/amap/api/col/l3/ds$d;

    move-result-object v0

    sget-object v1, Lcom/amap/api/col/l3/ds$d;->b:Lcom/amap/api/col/l3/ds$d;

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/amap/api/col/l3/de;->o:Lcom/amap/api/col/l3/de$b;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/ds;->d()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 22

    move-object/from16 v1, p0

    .line 4
    iget-object v2, v1, Lcom/amap/api/col/l3/de;->m:Ljava/util/List;

    if-eqz v2, :cond_9

    .line 5
    monitor-enter v2

    .line 6
    :try_start_0
    iget-object v0, v1, Lcom/amap/api/col/l3/de;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 7
    monitor-exit v2

    return-void

    .line 8
    :cond_0
    iget-object v0, v1, Lcom/amap/api/col/l3/de;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_8

    .line 9
    iget-object v0, v1, Lcom/amap/api/col/l3/de;->m:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/amap/api/col/l3/de$a;

    .line 10
    iget-boolean v0, v6, Lcom/amap/api/col/l3/de$a;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v7, 0x1

    if-nez v0, :cond_2

    .line 11
    :try_start_1
    iget-object v0, v6, Lcom/amap/api/col/l3/de$a;->e:Lcom/autonavi/amap/mapcore/IPoint;

    .line 12
    iget-object v8, v6, Lcom/amap/api/col/l3/de$a;->i:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_2

    iget-object v8, v6, Lcom/amap/api/col/l3/de$a;->i:Landroid/graphics/Bitmap;

    .line 13
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_2

    if-eqz v0, :cond_2

    .line 14
    iget-object v0, v6, Lcom/amap/api/col/l3/de$a;->i:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/amap/api/col/l3/em;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    iput v0, v6, Lcom/amap/api/col/l3/de$a;->f:I

    if-eqz v0, :cond_1

    .line 15
    iput-boolean v7, v6, Lcom/amap/api/col/l3/de$a;->g:Z

    :cond_1
    const/4 v0, 0x0

    .line 16
    iput-object v0, v6, Lcom/amap/api/col/l3/de$a;->i:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    const-string v8, "TileOverlayDelegateImp"

    const-string v9, "drawTiles"

    .line 17
    invoke-static {v0, v8, v9}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_2
    :goto_1
    iget-boolean v0, v6, Lcom/amap/api/col/l3/de$a;->g:Z

    if-eqz v0, :cond_7

    .line 19
    iget-object v0, v1, Lcom/amap/api/col/l3/de;->g:Lcom/amap/api/col/l3/u;

    invoke-interface {v0}, Lcom/amap/api/col/l3/u;->d()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    iget v8, v6, Lcom/amap/api/col/l3/de$a;->c:I

    int-to-float v8, v8

    iget v9, v1, Lcom/amap/api/col/l3/de;->i:I

    iget v10, v1, Lcom/amap/api/col/l3/de;->j:I

    iget-object v11, v6, Lcom/amap/api/col/l3/de$a;->e:Lcom/autonavi/amap/mapcore/IPoint;

    iget v11, v11, Landroid/graphics/Point;->x:I

    iget-object v12, v6, Lcom/amap/api/col/l3/de$a;->e:Lcom/autonavi/amap/mapcore/IPoint;

    iget v12, v12, Landroid/graphics/Point;->y:I

    float-to-int v8, v8

    rsub-int/lit8 v8, v8, 0x14

    shl-int v8, v7, v8

    mul-int v10, v10, v8

    add-int/2addr v12, v10

    const/16 v13, 0xc

    new-array v13, v13, [F

    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v14

    invoke-virtual {v0, v11, v12, v14}, Lcom/autonavi/ae/gmap/GLMapState;->geo2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v15

    mul-int v8, v8, v9

    add-int/2addr v8, v11

    invoke-virtual {v0, v8, v12, v15}, Lcom/autonavi/ae/gmap/GLMapState;->geo2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v9

    sub-int/2addr v12, v10

    invoke-virtual {v0, v8, v12, v9}, Lcom/autonavi/ae/gmap/GLMapState;->geo2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v8

    invoke-virtual {v0, v11, v12, v8}, Lcom/autonavi/ae/gmap/GLMapState;->geo2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    iget v0, v14, Landroid/graphics/PointF;->x:F

    aput v0, v13, v4

    iget v0, v14, Landroid/graphics/PointF;->y:F

    aput v0, v13, v7

    const/4 v0, 0x2

    const/4 v10, 0x0

    aput v10, v13, v0

    const/4 v0, 0x3

    iget v11, v15, Landroid/graphics/PointF;->x:F

    aput v11, v13, v0

    iget v0, v15, Landroid/graphics/PointF;->y:F

    const/4 v11, 0x4

    aput v0, v13, v11

    const/4 v0, 0x5

    aput v10, v13, v0

    iget v0, v9, Landroid/graphics/PointF;->x:F

    const/4 v12, 0x6

    aput v0, v13, v12

    const/4 v0, 0x7

    iget v11, v9, Landroid/graphics/PointF;->y:F

    aput v11, v13, v0

    const/16 v0, 0x8

    aput v10, v13, v0

    const/16 v0, 0x9

    iget v11, v8, Landroid/graphics/PointF;->x:F

    aput v11, v13, v0

    const/16 v0, 0xa

    iget v11, v8, Landroid/graphics/PointF;->y:F

    aput v11, v13, v0

    const/16 v0, 0xb

    aput v10, v13, v0

    iget-object v0, v6, Lcom/amap/api/col/l3/de$a;->h:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_3

    invoke-static {v13}, Lcom/amap/api/col/l3/em;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    :goto_2
    iput-object v0, v6, Lcom/amap/api/col/l3/de$a;->h:Ljava/nio/FloatBuffer;

    goto :goto_3

    :cond_3
    iget-object v0, v6, Lcom/amap/api/col/l3/de$a;->h:Ljava/nio/FloatBuffer;

    invoke-static {v13, v0}, Lcom/amap/api/col/l3/em;->a([FLjava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v0

    goto :goto_2

    :goto_3
    invoke-virtual {v14}, Lcom/autonavi/amap/mapcore/FPoint;->recycle()V

    invoke-virtual {v8}, Lcom/autonavi/amap/mapcore/FPoint;->recycle()V

    invoke-virtual {v15}, Lcom/autonavi/amap/mapcore/FPoint;->recycle()V

    invoke-virtual {v9}, Lcom/autonavi/amap/mapcore/FPoint;->recycle()V

    .line 20
    iget v0, v6, Lcom/amap/api/col/l3/de$a;->f:I

    iget-object v6, v6, Lcom/amap/api/col/l3/de$a;->h:Ljava/nio/FloatBuffer;

    iget-object v8, v1, Lcom/amap/api/col/l3/de;->r:Ljava/nio/FloatBuffer;

    if-eqz v6, :cond_7

    if-eqz v8, :cond_7

    if-nez v0, :cond_4

    goto/16 :goto_4

    :cond_4
    iget-object v9, v1, Lcom/amap/api/col/l3/de;->a:Lcom/amap/api/col/l3/dg$e;

    if-eqz v9, :cond_5

    iget-object v9, v1, Lcom/amap/api/col/l3/de;->a:Lcom/amap/api/col/l3/dg$e;

    invoke-virtual {v9}, Lcom/amap/api/col/l3/df;->b()Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_5
    iget-object v9, v1, Lcom/amap/api/col/l3/de;->b:Lcom/amap/api/col/l3/ae;

    if-eqz v9, :cond_6

    iget-object v9, v1, Lcom/amap/api/col/l3/de;->b:Lcom/amap/api/col/l3/ae;

    invoke-virtual {v9}, Lcom/amap/api/col/l3/ae;->a()Lcom/amap/api/col/l3/u;

    move-result-object v9

    if-eqz v9, :cond_6

    iget-object v9, v1, Lcom/amap/api/col/l3/de;->b:Lcom/amap/api/col/l3/ae;

    invoke-virtual {v9}, Lcom/amap/api/col/l3/ae;->a()Lcom/amap/api/col/l3/u;

    move-result-object v9

    invoke-interface {v9, v4}, Lcom/amap/api/col/l3/u;->m(I)Lcom/amap/api/col/l3/df;

    move-result-object v9

    check-cast v9, Lcom/amap/api/col/l3/dg$e;

    iput-object v9, v1, Lcom/amap/api/col/l3/de;->a:Lcom/amap/api/col/l3/dg$e;

    :cond_6
    iget-object v9, v1, Lcom/amap/api/col/l3/de;->a:Lcom/amap/api/col/l3/dg$e;

    iget v9, v9, Lcom/amap/api/col/l3/df;->d:I

    invoke-static {v9}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const/16 v9, 0xbe2

    invoke-static {v9}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v10, 0x303

    invoke-static {v7, v10}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v10, v10, v10, v10}, Landroid/opengl/GLES20;->glBlendColor(FFFF)V

    const/16 v10, 0xde1

    invoke-static {v10, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v0, v1, Lcom/amap/api/col/l3/de;->a:Lcom/amap/api/col/l3/dg$e;

    iget v0, v0, Lcom/amap/api/col/l3/dg$e;->b:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v0, v1, Lcom/amap/api/col/l3/de;->a:Lcom/amap/api/col/l3/dg$e;

    iget v0, v0, Lcom/amap/api/col/l3/dg$e;->b:I

    const/16 v17, 0x3

    const/16 v18, 0x1406

    const/16 v19, 0x0

    const/16 v20, 0xc

    move/from16 v16, v0

    move-object/from16 v21, v6

    invoke-static/range {v16 .. v21}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-object v0, v1, Lcom/amap/api/col/l3/de;->a:Lcom/amap/api/col/l3/dg$e;

    iget v0, v0, Lcom/amap/api/col/l3/dg$e;->c:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v0, v1, Lcom/amap/api/col/l3/de;->a:Lcom/amap/api/col/l3/dg$e;

    iget v0, v0, Lcom/amap/api/col/l3/dg$e;->c:I

    const/16 v17, 0x2

    const/16 v18, 0x1406

    const/16 v19, 0x0

    const/16 v20, 0x8

    move/from16 v16, v0

    move-object/from16 v21, v8

    invoke-static/range {v16 .. v21}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-object v0, v1, Lcom/amap/api/col/l3/de;->a:Lcom/amap/api/col/l3/dg$e;

    iget v0, v0, Lcom/amap/api/col/l3/dg$e;->a:I

    iget-object v6, v1, Lcom/amap/api/col/l3/de;->b:Lcom/amap/api/col/l3/ae;

    invoke-virtual {v6}, Lcom/amap/api/col/l3/ae;->f()[F

    move-result-object v6

    invoke-static {v0, v7, v4, v6, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 v0, 0x4

    invoke-static {v12, v4, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget-object v0, v1, Lcom/amap/api/col/l3/de;->a:Lcom/amap/api/col/l3/dg$e;

    iget v0, v0, Lcom/amap/api/col/l3/dg$e;->b:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget-object v0, v1, Lcom/amap/api/col/l3/de;->a:Lcom/amap/api/col/l3/dg$e;

    iget v0, v0, Lcom/amap/api/col/l3/dg$e;->c:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {v10, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    invoke-static {v9}, Landroid/opengl/GLES20;->glDisable(I)V

    :cond_7
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 21
    :cond_8
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_9
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 25
    iput-object p1, p0, Lcom/amap/api/col/l3/de;->p:Ljava/lang/String;

    .line 26
    invoke-direct {p0}, Lcom/amap/api/col/l3/de;->d()V

    .line 27
    invoke-virtual {p0}, Lcom/amap/api/col/l3/de;->b()V

    .line 28
    iget-object v0, p0, Lcom/amap/api/col/l3/de;->l:Lcom/amap/api/col/l3/eo;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/eq;->a(Z)V

    .line 30
    iget-object v0, p0, Lcom/amap/api/col/l3/de;->l:Lcom/amap/api/col/l3/eo;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/eq;->a(Ljava/lang/String;)V

    .line 31
    iget-object p1, p0, Lcom/amap/api/col/l3/de;->l:Lcom/amap/api/col/l3/eo;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amap/api/col/l3/eq;->a(Z)V

    .line 32
    :cond_0
    invoke-direct {p0, v1}, Lcom/amap/api/col/l3/de;->c(Z)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/amap/api/col/l3/de;->n:Z

    if-eqz v0, :cond_0

    return-void

    .line 23
    :cond_0
    invoke-direct {p0}, Lcom/amap/api/col/l3/de;->d()V

    .line 24
    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/de;->c(Z)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/de;->m:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/de;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_0
    return-void
.end method

.method public final b(Z)V
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/amap/api/col/l3/de;->n:Z

    if-eq v0, p1, :cond_0

    .line 30
    iput-boolean p1, p0, Lcom/amap/api/col/l3/de;->n:Z

    .line 31
    iget-object v0, p0, Lcom/amap/api/col/l3/de;->l:Lcom/amap/api/col/l3/eo;

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/eq;->a(Z)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 4

    .line 3
    invoke-direct {p0}, Lcom/amap/api/col/l3/de;->d()V

    .line 4
    iget-object v0, p0, Lcom/amap/api/col/l3/de;->m:Ljava/util/List;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/de;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    iget-object v3, p0, Lcom/amap/api/col/l3/de;->m:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/col/l3/de$a;

    .line 7
    invoke-virtual {v3}, Lcom/amap/api/col/l3/de$a;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/l3/de;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final clearTileCache()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/de;->l:Lcom/amap/api/col/l3/eo;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/amap/api/col/l3/eq;->g()V

    :cond_0
    return-void
.end method

.method public final destroy(Z)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/amap/api/col/l3/de;->d()V

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/de;->m:Ljava/util/List;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/de;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 4
    iget-object v3, p0, Lcom/amap/api/col/l3/de;->m:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/col/l3/de$a;

    .line 5
    invoke-virtual {v3}, Lcom/amap/api/col/l3/de$a;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/l3/de;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object v0, p0, Lcom/amap/api/col/l3/de;->l:Lcom/amap/api/col/l3/eo;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Lcom/amap/api/col/l3/eq;->h()V

    .line 10
    iget-object v0, p0, Lcom/amap/api/col/l3/de;->l:Lcom/amap/api/col/l3/eo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/eq;->a(Z)V

    .line 11
    iget-object v0, p0, Lcom/amap/api/col/l3/de;->l:Lcom/amap/api/col/l3/eo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/eo;->a(Lcom/amap/api/maps/model/TileProvider;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 12
    invoke-virtual {p0}, Lcom/amap/api/col/l3/de;->remove()V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 13
    monitor-exit v0

    throw p1
.end method

.method public final equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amap/api/col/l3/de;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/de;->q:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    sget v0, Lcom/amap/api/col/l3/de;->h:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/amap/api/col/l3/de;->h:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TileOverlay"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/amap/api/col/l3/de;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/de;->q:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/de;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final getZIndex()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/de;->d:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public final hashCodeRemote()I
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/col/l3/de;->e:Z

    return v0
.end method

.method public final remove()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/de;->b:Lcom/amap/api/col/l3/ae;

    invoke-virtual {v0, p0}, Lcom/amap/api/col/l3/ae;->a(Lcom/amap/api/col/l3/cw;)Z

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/de;->g:Lcom/amap/api/col/l3/u;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public final setVisible(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/col/l3/de;->e:Z

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/de;->g:Lcom/amap/api/col/l3/u;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3/de;->a(Z)V

    :cond_0
    return-void
.end method

.method public final setZIndex(F)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/de;->d:Ljava/lang/Float;

    .line 2
    iget-object p1, p0, Lcom/amap/api/col/l3/de;->b:Lcom/amap/api/col/l3/ae;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/ae;->d()V

    return-void
.end method
