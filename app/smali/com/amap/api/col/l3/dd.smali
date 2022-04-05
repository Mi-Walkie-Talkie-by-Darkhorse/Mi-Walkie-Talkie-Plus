.class public final Lcom/amap/api/col/l3/dd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amap/api/col/l3/cv;


# static fields
.field private static b:I


# instance fields
.field private A:I

.field private B:I

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:[F

.field a:I

.field private c:F

.field private d:F

.field private e:I

.field private f:I

.field private g:Lcom/autonavi/amap/mapcore/FPoint;

.field private h:I

.field private i:Landroid/graphics/Bitmap;

.field private j:I

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Lcom/amap/api/maps/model/LatLng;

.field private n:F

.field private o:F

.field private p:Z

.field private q:Lcom/amap/api/col/l3/z;

.field private r:Ljava/lang/Object;

.field private s:Ljava/lang/String;

.field private t:I

.field private u:I

.field private v:I

.field private w:Landroid/graphics/Typeface;

.field private x:F

.field private y:Landroid/graphics/Rect;

.field private z:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/maps/model/TextOptions;Lcom/amap/api/col/l3/z;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/l3/dd;->c:F

    iput v0, p0, Lcom/amap/api/col/l3/dd;->d:F

    const/4 v0, 0x4

    iput v0, p0, Lcom/amap/api/col/l3/dd;->e:I

    const/16 v0, 0x20

    iput v0, p0, Lcom/amap/api/col/l3/dd;->f:I

    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/dd;->g:Lcom/autonavi/amap/mapcore/FPoint;

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/amap/api/col/l3/dd;->n:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/amap/api/col/l3/dd;->o:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3/dd;->p:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/dd;->y:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/dd;->z:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3/dd;->C:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3/dd;->D:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3/dd;->E:Z

    const/16 v0, 0x9

    iput v0, p0, Lcom/amap/api/col/l3/dd;->a:I

    const/16 v0, 0x24

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/amap/api/col/l3/dd;->F:[F

    iput-object p2, p0, Lcom/amap/api/col/l3/dd;->q:Lcom/amap/api/col/l3/z;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3/dd;->m:Lcom/amap/api/maps/model/LatLng;

    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getAlignX()I

    move-result p2

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getAlignY()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/amap/api/col/l3/dd;->setAlign(II)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->isVisible()Z

    move-result p2

    iput-boolean p2, p0, Lcom/amap/api/col/l3/dd;->p:Z

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getText()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3/dd;->s:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getBackgroundColor()I

    move-result p2

    iput p2, p0, Lcom/amap/api/col/l3/dd;->t:I

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getFontColor()I

    move-result p2

    iput p2, p0, Lcom/amap/api/col/l3/dd;->u:I

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getFontSize()I

    move-result p2

    iput p2, p0, Lcom/amap/api/col/l3/dd;->v:I

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getObject()Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3/dd;->r:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getZIndex()F

    move-result p2

    iput p2, p0, Lcom/amap/api/col/l3/dd;->x:F

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3/dd;->w:Landroid/graphics/Typeface;

    invoke-virtual {p0}, Lcom/amap/api/col/l3/dd;->getId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3/dd;->l:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getRotate()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3/dd;->setRotateAngle(F)V

    invoke-direct {p0}, Lcom/amap/api/col/l3/dd;->a()V

    invoke-direct {p0}, Lcom/amap/api/col/l3/dd;->c()Z

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a()V
    .locals 7

    iget-object v0, p0, Lcom/amap/api/col/l3/dd;->s:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/dd;->z:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/amap/api/col/l3/dd;->w:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/amap/api/col/l3/dd;->z:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    iget-object v0, p0, Lcom/amap/api/col/l3/dd;->z:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/amap/api/col/l3/dd;->z:Landroid/graphics/Paint;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/amap/api/col/l3/dd;->z:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/amap/api/col/l3/dd;->z:Landroid/graphics/Paint;

    iget v1, p0, Lcom/amap/api/col/l3/dd;->v:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/amap/api/col/l3/dd;->z:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/amap/api/col/l3/dd;->z:Landroid/graphics/Paint;

    iget v1, p0, Lcom/amap/api/col/l3/dd;->u:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/amap/api/col/l3/dd;->z:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v2, v1

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v2, v3

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v2, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v2, v0

    float-to-int v0, v2

    iget-object v2, p0, Lcom/amap/api/col/l3/dd;->z:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/amap/api/col/l3/dd;->s:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/amap/api/col/l3/dd;->s:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/amap/api/col/l3/dd;->y:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/amap/api/col/l3/dd;->y:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/lit8 v2, v2, 0x6

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v3, p0, Lcom/amap/api/col/l3/dd;->t:I

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v3, p0, Lcom/amap/api/col/l3/dd;->s:Ljava/lang/String;

    iget-object v4, p0, Lcom/amap/api/col/l3/dd;->y:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    int-to-float v0, v0

    iget-object v5, p0, Lcom/amap/api/col/l3/dd;->z:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/amap/api/col/l3/dd;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3/dd;->j:I

    iget-object v0, p0, Lcom/amap/api/col/l3/dd;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3/dd;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "TextDelegateImp"

    const-string v2, "initBitmap"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3/dd;->q:Lcom/amap/api/col/l3/z;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/z;->b()Lcom/amap/api/col/l3/u;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/dd;->q:Lcom/amap/api/col/l3/z;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/z;->b()Lcom/amap/api/col/l3/u;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    :cond_0
    return-void
.end method

.method private c()Z
    .locals 8

    iget-object v0, p0, Lcom/amap/api/col/l3/dd;->m:Lcom/amap/api/maps/model/LatLng;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/l3/dd;->m:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v4, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3, v4, v5, v0}, Lcom/autonavi/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/amap/api/col/l3/dd;->A:I

    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/amap/api/col/l3/dd;->B:I

    iget-object v1, p0, Lcom/amap/api/col/l3/dd;->q:Lcom/amap/api/col/l3/z;

    invoke-virtual {v1}, Lcom/amap/api/col/l3/z;->b()Lcom/amap/api/col/l3/u;

    move-result-object v2

    iget-object v1, p0, Lcom/amap/api/col/l3/dd;->m:Lcom/amap/api/maps/model/LatLng;

    iget-wide v3, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v5, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v7, p0, Lcom/amap/api/col/l3/dd;->g:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-interface/range {v2 .. v7}, Lcom/amap/api/col/l3/u;->a(DDLcom/autonavi/amap/mapcore/FPoint;)V

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    const/4 v0, 0x1

    return v0
.end method

.method private declared-synchronized d()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/l3/dd;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3/dd;->E:Z

    invoke-direct {p0}, Lcom/amap/api/col/l3/dd;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Lcom/amap/api/col/l3/u;)V
    .locals 3

    iget-boolean p1, p0, Lcom/amap/api/col/l3/dd;->E:Z

    if-nez p1, :cond_2

    :try_start_0
    iget-object p1, p0, Lcom/amap/api/col/l3/dd;->i:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amap/api/col/l3/dd;->i:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Lcom/amap/api/col/l3/dd;->h:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [I

    aput v1, p1, v1

    invoke-static {v0, p1, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget p1, p1, v1

    iput p1, p0, Lcom/amap/api/col/l3/dd;->h:I

    :cond_0
    iget p1, p0, Lcom/amap/api/col/l3/dd;->h:I

    iget-object v2, p0, Lcom/amap/api/col/l3/dd;->i:Landroid/graphics/Bitmap;

    invoke-static {p1, v2, v1}, Lcom/amap/api/col/l3/em;->a(ILandroid/graphics/Bitmap;Z)I

    iput-boolean v0, p0, Lcom/amap/api/col/l3/dd;->E:Z

    iget-object p1, p0, Lcom/amap/api/col/l3/dd;->i:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    const-string v0, "TextDelegateImp"

    const-string v1, "loadtexture"

    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return-void
.end method

.method public final a(Lcom/amap/api/col/l3/u;[FIF)V
    .locals 8

    iget-boolean v0, p0, Lcom/amap/api/col/l3/dd;->p:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/col/l3/dd;->D:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3/dd;->m:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3/dd;->i:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/dd;->g:Lcom/autonavi/amap/mapcore/FPoint;

    iget v1, p0, Lcom/amap/api/col/l3/dd;->A:I

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_x()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/amap/api/col/l3/dd;->g:Lcom/autonavi/amap/mapcore/FPoint;

    iget v1, p0, Lcom/amap/api/col/l3/dd;->B:I

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_y()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    :try_start_0
    iget v0, p0, Lcom/amap/api/col/l3/dd;->j:I

    int-to-float v0, v0

    mul-float v0, v0, p4

    iget v1, p0, Lcom/amap/api/col/l3/dd;->k:I

    int-to-float v1, v1

    mul-float p4, p4, v1

    iget-object v1, p0, Lcom/amap/api/col/l3/dd;->g:Lcom/autonavi/amap/mapcore/FPoint;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/amap/api/col/l3/dd;->g:Lcom/autonavi/amap/mapcore/FPoint;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_c()F

    move-result p1

    iget-object v3, p0, Lcom/amap/api/col/l3/dd;->F:[F

    iget v4, p0, Lcom/amap/api/col/l3/dd;->a:I

    const/4 v5, 0x0

    mul-int/lit8 v4, v4, 0x0

    add-int/2addr v4, v5

    iget v6, p0, Lcom/amap/api/col/l3/dd;->n:F

    mul-float v6, v6, v0

    sub-float v6, v1, v6

    aput v6, v3, v4

    iget-object v3, p0, Lcom/amap/api/col/l3/dd;->F:[F

    iget v4, p0, Lcom/amap/api/col/l3/dd;->a:I

    mul-int/lit8 v4, v4, 0x0

    add-int/lit8 v4, v4, 0x1

    iget v6, p0, Lcom/amap/api/col/l3/dd;->o:F

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v6, v7, v6

    mul-float v6, v6, p4

    add-float/2addr v6, v2

    aput v6, v3, v4

    iget-object v3, p0, Lcom/amap/api/col/l3/dd;->F:[F

    iget v4, p0, Lcom/amap/api/col/l3/dd;->a:I

    mul-int/lit8 v4, v4, 0x0

    add-int/lit8 v4, v4, 0x2

    aput v1, v3, v4

    iget-object v3, p0, Lcom/amap/api/col/l3/dd;->F:[F

    iget v4, p0, Lcom/amap/api/col/l3/dd;->a:I

    mul-int/lit8 v4, v4, 0x0

    add-int/lit8 v4, v4, 0x3

    aput v2, v3, v4

    iget-object v3, p0, Lcom/amap/api/col/l3/dd;->F:[F

    iget v4, p0, Lcom/amap/api/col/l3/dd;->a:I

    mul-int/lit8 v4, v4, 0x0

    add-int/lit8 v4, v4, 0x6

    iget v6, p0, Lcom/amap/api/col/l3/dd;->c:F

    aput v6, v3, v4

    iget-object v3, p0, Lcom/amap/api/col/l3/dd;->F:[F

    iget v4, p0, Lcom/amap/api/col/l3/dd;->a:I

    mul-int/lit8 v4, v4, 0x0

    add-int/lit8 v4, v4, 0x7

    aput p1, v3, v4

    iget-object v3, p0, Lcom/amap/api/col/l3/dd;->F:[F

    iget v4, p0, Lcom/amap/api/col/l3/dd;->a:I

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v5

    iget v6, p0, Lcom/amap/api/col/l3/dd;->n:F

    sub-float v6, v7, v6

    mul-float v6, v6, v0

    add-float/2addr v6, v1

    aput v6, v3, v4

    iget-object v3, p0, Lcom/amap/api/col/l3/dd;->F:[F

    iget v4, p0, Lcom/amap/api/col/l3/dd;->a:I

    mul-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, 0x1

    iget v6, p0, Lcom/amap/api/col/l3/dd;->o:F

    sub-float v6, v7, v6

    mul-float v6, v6, p4

    add-float/2addr v6, v2

    aput v6, v3, v4

    iget-object v3, p0, Lcom/amap/api/col/l3/dd;->F:[F

    iget v4, p0, Lcom/amap/api/col/l3/dd;->a:I

    mul-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, 0x2

    aput v1, v3, v4

    iget-object v3, p0, Lcom/amap/api/col/l3/dd;->F:[F

    iget v4, p0, Lcom/amap/api/col/l3/dd;->a:I

    mul-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, 0x3

    aput v2, v3, v4

    iget-object v3, p0, Lcom/amap/api/col/l3/dd;->F:[F

    iget v4, p0, Lcom/amap/api/col/l3/dd;->a:I

    mul-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, 0x6

    iget v6, p0, Lcom/amap/api/col/l3/dd;->c:F

    aput v6, v3, v4

    iget-object v3, p0, Lcom/amap/api/col/l3/dd;->F:[F

    iget v4, p0, Lcom/amap/api/col/l3/dd;->a:I

    mul-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, 0x7

    aput p1, v3, v4

    iget-object v3, p0, Lcom/amap/api/col/l3/dd;->F:[F

    iget v4, p0, Lcom/amap/api/col/l3/dd;->a:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v5

    iget v6, p0, Lcom/amap/api/col/l3/dd;->n:F

    sub-float/2addr v7, v6

    mul-float v7, v7, v0

    add-float/2addr v7, v1

    aput v7, v3, v4

    iget-object v3, p0, Lcom/amap/api/col/l3/dd;->F:[F

    iget v4, p0, Lcom/amap/api/col/l3/dd;->a:I

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    iget v6, p0, Lcom/amap/api/col/l3/dd;->o:F

    mul-float v6, v6, p4

    sub-float v6, v2, v6

    aput v6, v3, v4

    iget-object v3, p0, Lcom/amap/api/col/l3/dd;->F:[F

    iget v4, p0, Lcom/amap/api/col/l3/dd;->a:I

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x2

    aput v1, v3, v4

    iget-object v3, p0, Lcom/amap/api/col/l3/dd;->F:[F

    iget v4, p0, Lcom/amap/api/col/l3/dd;->a:I

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x3

    aput v2, v3, v4

    iget-object v3, p0, Lcom/amap/api/col/l3/dd;->F:[F

    iget v4, p0, Lcom/amap/api/col/l3/dd;->a:I

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x6

    iget v6, p0, Lcom/amap/api/col/l3/dd;->c:F

    aput v6, v3, v4

    iget-object v3, p0, Lcom/amap/api/col/l3/dd;->F:[F

    iget v4, p0, Lcom/amap/api/col/l3/dd;->a:I

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x7

    aput p1, v3, v4

    iget-object v3, p0, Lcom/amap/api/col/l3/dd;->F:[F

    iget v4, p0, Lcom/amap/api/col/l3/dd;->a:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v4, v5

    iget v6, p0, Lcom/amap/api/col/l3/dd;->n:F

    mul-float v0, v0, v6

    sub-float v0, v1, v0

    aput v0, v3, v4

    iget-object v0, p0, Lcom/amap/api/col/l3/dd;->F:[F

    iget v3, p0, Lcom/amap/api/col/l3/dd;->a:I

    mul-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/amap/api/col/l3/dd;->o:F

    mul-float p4, p4, v4

    sub-float p4, v2, p4

    aput p4, v0, v3

    iget-object p4, p0, Lcom/amap/api/col/l3/dd;->F:[F

    iget v0, p0, Lcom/amap/api/col/l3/dd;->a:I

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x2

    aput v1, p4, v0

    iget-object p4, p0, Lcom/amap/api/col/l3/dd;->F:[F

    iget v0, p0, Lcom/amap/api/col/l3/dd;->a:I

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x3

    aput v2, p4, v0

    iget-object p4, p0, Lcom/amap/api/col/l3/dd;->F:[F

    iget v0, p0, Lcom/amap/api/col/l3/dd;->a:I

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x6

    iget v1, p0, Lcom/amap/api/col/l3/dd;->c:F

    aput v1, p4, v0

    iget-object p4, p0, Lcom/amap/api/col/l3/dd;->F:[F

    iget v0, p0, Lcom/amap/api/col/l3/dd;->a:I

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x7

    aput p1, p4, v0

    iget-object p1, p0, Lcom/amap/api/col/l3/dd;->F:[F

    iget-object p4, p0, Lcom/amap/api/col/l3/dd;->F:[F

    array-length p4, p4

    invoke-static {p1, v5, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "TextDelegateImp"

    const-string p3, "drawMarker"

    invoke-static {p1, p2, p3}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3/dd;->C:Z

    return-void
.end method

.method public final destroy(Z)V
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/amap/api/col/l3/dd;->D:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/l3/dd;->remove()Z

    :cond_0
    iget-object p1, p0, Lcom/amap/api/col/l3/dd;->i:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amap/api/col/l3/dd;->i:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v0, p0, Lcom/amap/api/col/l3/dd;->i:Landroid/graphics/Bitmap;

    :cond_1
    iput-object v0, p0, Lcom/amap/api/col/l3/dd;->m:Lcom/amap/api/maps/model/LatLng;

    iput-object v0, p0, Lcom/amap/api/col/l3/dd;->r:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "TextDelegateImp"

    const-string v1, "destroy"

    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amap/api/col/l3/dd;->getId()Ljava/lang/String;

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

.method public final getAlignX()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/amap/api/col/l3/dd;->e:I

    return v0
.end method

.method public final getAlignY()I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/l3/dd;->f:I

    return v0
.end method

.method public final getAnchorU()F
    .locals 1

    iget v0, p0, Lcom/amap/api/col/l3/dd;->n:F

    return v0
.end method

.method public final getAnchorV()F
    .locals 1

    iget v0, p0, Lcom/amap/api/col/l3/dd;->o:F

    return v0
.end method

.method public final getBackgroundColor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/amap/api/col/l3/dd;->t:I

    return v0
.end method

.method public final getFontColor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/amap/api/col/l3/dd;->u:I

    return v0
.end method

.method public final getFontSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/amap/api/col/l3/dd;->v:I

    return v0
.end method

.method public final getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3/dd;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    sget v0, Lcom/amap/api/col/l3/dd;->b:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/amap/api/col/l3/dd;->b:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Text"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/amap/api/col/l3/dd;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/dd;->l:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/dd;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final getObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/dd;->r:Ljava/lang/Object;

    return-object v0
.end method

.method public final getPosition()Lcom/amap/api/maps/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/dd;->m:Lcom/amap/api/maps/model/LatLng;

    return-object v0
.end method

.method public final getRotateAngle()F
    .locals 1

    iget v0, p0, Lcom/amap/api/col/l3/dd;->d:F

    return v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/l3/dd;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final getTypeface()Landroid/graphics/Typeface;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/l3/dd;->w:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public final getZIndex()F
    .locals 1

    iget v0, p0, Lcom/amap/api/col/l3/dd;->x:F

    return v0
.end method

.method public final h()Landroid/graphics/Rect;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final hashCodeRemote()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final isInfoWindowShown()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3/dd;->p:Z

    return v0
.end method

.method public final j()Z
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3/dd;->q:Lcom/amap/api/col/l3/z;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/z;->b()Lcom/amap/api/col/l3/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/amap/mapcore/Rectangle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/amap/api/col/l3/dd;->A:I

    iget v2, p0, Lcom/amap/api/col/l3/dd;->B:I

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amap/mapcore/Rectangle;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final k()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/amap/api/col/l3/dd;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    const/4 v0, 0x0

    return v0
.end method

.method public final l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3/dd;->C:Z

    return v0
.end method

.method public final declared-synchronized remove()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/l3/dd;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3/dd;->p:Z

    iget-object v0, p0, Lcom/amap/api/col/l3/dd;->q:Lcom/amap/api/col/l3/z;

    invoke-virtual {v0, p0}, Lcom/amap/api/col/l3/z;->a(Lcom/amap/api/col/l3/cs;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setAlign(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput p1, p0, Lcom/amap/api/col/l3/dd;->e:I

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    iput v3, p0, Lcom/amap/api/col/l3/dd;->n:F

    goto :goto_0

    :cond_0
    iput v3, p0, Lcom/amap/api/col/l3/dd;->n:F

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/amap/api/col/l3/dd;->n:F

    goto :goto_0

    :cond_2
    iput v2, p0, Lcom/amap/api/col/l3/dd;->n:F

    :goto_0
    iput p2, p0, Lcom/amap/api/col/l3/dd;->f:I

    const/16 p1, 0x8

    if-eq p2, p1, :cond_5

    const/16 p1, 0x10

    if-eq p2, p1, :cond_4

    const/16 p1, 0x20

    if-eq p2, p1, :cond_3

    iput v3, p0, Lcom/amap/api/col/l3/dd;->o:F

    goto :goto_1

    :cond_3
    iput v3, p0, Lcom/amap/api/col/l3/dd;->o:F

    goto :goto_1

    :cond_4
    iput v1, p0, Lcom/amap/api/col/l3/dd;->o:F

    goto :goto_1

    :cond_5
    iput v2, p0, Lcom/amap/api/col/l3/dd;->o:F

    :goto_1
    invoke-direct {p0}, Lcom/amap/api/col/l3/dd;->b()V

    return-void
.end method

.method public final setAnchor(FF)V
    .locals 0

    return-void
.end method

.method public final setBackgroundColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput p1, p0, Lcom/amap/api/col/l3/dd;->t:I

    invoke-direct {p0}, Lcom/amap/api/col/l3/dd;->d()V

    return-void
.end method

.method public final setFontColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput p1, p0, Lcom/amap/api/col/l3/dd;->u:I

    invoke-direct {p0}, Lcom/amap/api/col/l3/dd;->d()V

    return-void
.end method

.method public final setFontSize(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput p1, p0, Lcom/amap/api/col/l3/dd;->v:I

    invoke-direct {p0}, Lcom/amap/api/col/l3/dd;->d()V

    return-void
.end method

.method public final setObject(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3/dd;->r:Ljava/lang/Object;

    return-void
.end method

.method public final setPosition(Lcom/amap/api/maps/model/LatLng;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3/dd;->m:Lcom/amap/api/maps/model/LatLng;

    invoke-direct {p0}, Lcom/amap/api/col/l3/dd;->c()Z

    invoke-direct {p0}, Lcom/amap/api/col/l3/dd;->b()V

    return-void
.end method

.method public final setRotateAngle(F)V
    .locals 1

    iput p1, p0, Lcom/amap/api/col/l3/dd;->d:F

    neg-float p1, p1

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p1, v0

    add-float/2addr p1, v0

    rem-float/2addr p1, v0

    iput p1, p0, Lcom/amap/api/col/l3/dd;->c:F

    invoke-direct {p0}, Lcom/amap/api/col/l3/dd;->b()V

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/col/l3/dd;->s:Ljava/lang/String;

    invoke-direct {p0}, Lcom/amap/api/col/l3/dd;->d()V

    return-void
.end method

.method public final setTypeface(Landroid/graphics/Typeface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/col/l3/dd;->w:Landroid/graphics/Typeface;

    invoke-direct {p0}, Lcom/amap/api/col/l3/dd;->d()V

    return-void
.end method

.method public final setVisible(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3/dd;->p:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/amap/api/col/l3/dd;->p:Z

    invoke-direct {p0}, Lcom/amap/api/col/l3/dd;->b()V

    return-void
.end method

.method public final setZIndex(F)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/l3/dd;->x:F

    iget-object p1, p0, Lcom/amap/api/col/l3/dd;->q:Lcom/amap/api/col/l3/z;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/z;->e()V

    return-void
.end method
