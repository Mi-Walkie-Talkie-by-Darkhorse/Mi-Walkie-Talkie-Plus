.class public Lcom/amap/api/mapcore/util/cu;
.super Ljava/lang/Object;
.source "TextDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore/util/cm;


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

.field private q:Lcom/amap/api/mapcore/util/q;

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
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/amap/api/mapcore/util/cu;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/maps/model/TextOptions;Lcom/amap/api/mapcore/util/q;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/amap/api/mapcore/util/cu;->c:F

    iput v0, p0, Lcom/amap/api/mapcore/util/cu;->d:F

    const/4 v0, 0x4

    iput v0, p0, Lcom/amap/api/mapcore/util/cu;->e:I

    const/16 v0, 0x20

    iput v0, p0, Lcom/amap/api/mapcore/util/cu;->f:I

    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cu;->g:Lcom/autonavi/amap/mapcore/FPoint;

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/amap/api/mapcore/util/cu;->n:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/amap/api/mapcore/util/cu;->o:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/cu;->p:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cu;->y:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cu;->z:Landroid/graphics/Paint;

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/cu;->C:Z

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/cu;->D:Z

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/cu;->E:Z

    const/16 v0, 0x9

    iput v0, p0, Lcom/amap/api/mapcore/util/cu;->a:I

    const/16 v0, 0x24

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cu;->F:[F

    iput-object p2, p0, Lcom/amap/api/mapcore/util/cu;->q:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cu;->m:Lcom/amap/api/maps/model/LatLng;

    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getAlignX()I

    move-result v0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getAlignY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/amap/api/mapcore/util/cu;->setAlign(II)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->isVisible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/cu;->p:Z

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cu;->s:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getBackgroundColor()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/cu;->t:I

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getFontColor()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/cu;->u:I

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getFontSize()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/cu;->v:I

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cu;->r:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getZIndex()F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/cu;->x:F

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cu;->w:Landroid/graphics/Typeface;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cu;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cu;->l:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getRotate()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/cu;->setRotateAngle(F)V

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cu;->b()V

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cu;->a()Z

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

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget v0, Lcom/amap/api/mapcore/util/cu;->b:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/amap/api/mapcore/util/cu;->b:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/amap/api/mapcore/util/cu;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 7

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cu;->s:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cu;->s:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cu;->z:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cu;->w:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cu;->z:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cu;->z:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cu;->z:Landroid/graphics/Paint;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cu;->z:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cu;->z:Landroid/graphics/Paint;

    iget v1, p0, Lcom/amap/api/mapcore/util/cu;->v:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cu;->z:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cu;->z:Landroid/graphics/Paint;

    iget v1, p0, Lcom/amap/api/mapcore/util/cu;->u:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cu;->z:Landroid/graphics/Paint;

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

    sub-float v0, v2, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cu;->z:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/cu;->s:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/amap/api/mapcore/util/cu;->s:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/amap/api/mapcore/util/cu;->y:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cu;->y:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/lit8 v2, v2, 0x6

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v3, p0, Lcom/amap/api/mapcore/util/cu;->t:I

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v3, p0, Lcom/amap/api/mapcore/util/cu;->s:Ljava/lang/String;

    iget-object v4, p0, Lcom/amap/api/mapcore/util/cu;->y:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    int-to-float v0, v0

    iget-object v5, p0, Lcom/amap/api/mapcore/util/cu;->z:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/cu;->i:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cu;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/cu;->j:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cu;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/cu;->k:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TextDelegateImp"

    const-string v2, "initBitmap"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private b(Lcom/amap/api/mapcore/util/l;[FIF)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    iget v0, p0, Lcom/amap/api/mapcore/util/cu;->j:I

    int-to-float v0, v0

    mul-float/2addr v0, p4

    iget v1, p0, Lcom/amap/api/mapcore/util/cu;->k:I

    int-to-float v1, v1

    mul-float/2addr v1, p4

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cu;->g:Lcom/autonavi/amap/mapcore/FPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget-object v3, p0, Lcom/amap/api/mapcore/util/cu;->g:Lcom/autonavi/amap/mapcore/FPoint;

    iget v3, v3, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-interface {p1}, Lcom/amap/api/mapcore/util/l;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_c()F

    move-result v4

    iget-object v5, p0, Lcom/amap/api/mapcore/util/cu;->F:[F

    iget v6, p0, Lcom/amap/api/mapcore/util/cu;->a:I

    mul-int/2addr v6, v9

    add-int/lit8 v6, v6, 0x0

    iget v7, p0, Lcom/amap/api/mapcore/util/cu;->n:F

    mul-float/2addr v7, v0

    sub-float v7, v2, v7

    aput v7, v5, v6

    iget-object v5, p0, Lcom/amap/api/mapcore/util/cu;->F:[F

    iget v6, p0, Lcom/amap/api/mapcore/util/cu;->a:I

    mul-int/2addr v6, v9

    add-int/lit8 v6, v6, 0x1

    iget v7, p0, Lcom/amap/api/mapcore/util/cu;->o:F

    sub-float v7, v8, v7

    mul-float/2addr v7, v1

    add-float/2addr v7, v3

    aput v7, v5, v6

    iget-object v5, p0, Lcom/amap/api/mapcore/util/cu;->F:[F

    iget v6, p0, Lcom/amap/api/mapcore/util/cu;->a:I

    mul-int/2addr v6, v9

    add-int/lit8 v6, v6, 0x2

    aput v2, v5, v6

    iget-object v5, p0, Lcom/amap/api/mapcore/util/cu;->F:[F

    iget v6, p0, Lcom/amap/api/mapcore/util/cu;->a:I

    mul-int/2addr v6, v9

    add-int/lit8 v6, v6, 0x3

    aput v3, v5, v6

    iget-object v5, p0, Lcom/amap/api/mapcore/util/cu;->F:[F

    iget v6, p0, Lcom/amap/api/mapcore/util/cu;->a:I

    mul-int/2addr v6, v9

    add-int/lit8 v6, v6, 0x6

    iget v7, p0, Lcom/amap/api/mapcore/util/cu;->c:F

    aput v7, v5, v6

    iget-object v5, p0, Lcom/amap/api/mapcore/util/cu;->F:[F

    iget v6, p0, Lcom/amap/api/mapcore/util/cu;->a:I

    mul-int/2addr v6, v9

    add-int/lit8 v6, v6, 0x7

    aput v4, v5, v6

    iget-object v5, p0, Lcom/amap/api/mapcore/util/cu;->F:[F

    iget v6, p0, Lcom/amap/api/mapcore/util/cu;->a:I

    mul-int/lit8 v6, v6, 0x1

    add-int/lit8 v6, v6, 0x0

    iget v7, p0, Lcom/amap/api/mapcore/util/cu;->n:F

    sub-float v7, v8, v7

    mul-float/2addr v7, v0

    add-float/2addr v7, v2

    aput v7, v5, v6

    iget-object v5, p0, Lcom/amap/api/mapcore/util/cu;->F:[F

    iget v6, p0, Lcom/amap/api/mapcore/util/cu;->a:I

    mul-int/lit8 v6, v6, 0x1

    add-int/lit8 v6, v6, 0x1

    iget v7, p0, Lcom/amap/api/mapcore/util/cu;->o:F

    sub-float v7, v8, v7

    mul-float/2addr v7, v1

    add-float/2addr v7, v3

    aput v7, v5, v6

    iget-object v5, p0, Lcom/amap/api/mapcore/util/cu;->F:[F

    iget v6, p0, Lcom/amap/api/mapcore/util/cu;->a:I

    mul-int/lit8 v6, v6, 0x1

    add-int/lit8 v6, v6, 0x2

    aput v2, v5, v6

    iget-object v5, p0, Lcom/amap/api/mapcore/util/cu;->F:[F

    iget v6, p0, Lcom/amap/api/mapcore/util/cu;->a:I

    mul-int/lit8 v6, v6, 0x1

    add-int/lit8 v6, v6, 0x3

    aput v3, v5, v6

    iget-object v5, p0, Lcom/amap/api/mapcore/util/cu;->F:[F

    iget v6, p0, Lcom/amap/api/mapcore/util/cu;->a:I

    mul-int/lit8 v6, v6, 0x1

    add-int/lit8 v6, v6, 0x6

    iget v7, p0, Lcom/amap/api/mapcore/util/cu;->c:F

    aput v7, v5, v6

    iget-object v5, p0, Lcom/amap/api/mapcore/util/cu;->F:[F

    iget v6, p0, Lcom/amap/api/mapcore/util/cu;->a:I

    mul-int/lit8 v6, v6, 0x1

    add-int/lit8 v6, v6, 0x7

    aput v4, v5, v6

    iget-object v5, p0, Lcom/amap/api/mapcore/util/cu;->F:[F

    iget v6, p0, Lcom/amap/api/mapcore/util/cu;->a:I

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x0

    iget v7, p0, Lcom/amap/api/mapcore/util/cu;->n:F

    sub-float v7, v8, v7

    mul-float/2addr v7, v0

    add-float/2addr v7, v2

    aput v7, v5, v6

    iget-object v5, p0, Lcom/amap/api/mapcore/util/cu;->F:[F

    iget v6, p0, Lcom/amap/api/mapcore/util/cu;->a:I

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    iget v7, p0, Lcom/amap/api/mapcore/util/cu;->o:F

    mul-float/2addr v7, v1

    sub-float v7, v3, v7

    aput v7, v5, v6

    iget-object v5, p0, Lcom/amap/api/mapcore/util/cu;->F:[F

    iget v6, p0, Lcom/amap/api/mapcore/util/cu;->a:I

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x2

    aput v2, v5, v6

    iget-object v5, p0, Lcom/amap/api/mapcore/util/cu;->F:[F

    iget v6, p0, Lcom/amap/api/mapcore/util/cu;->a:I

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x3

    aput v3, v5, v6

    iget-object v5, p0, Lcom/amap/api/mapcore/util/cu;->F:[F

    iget v6, p0, Lcom/amap/api/mapcore/util/cu;->a:I

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x6

    iget v7, p0, Lcom/amap/api/mapcore/util/cu;->c:F

    aput v7, v5, v6

    iget-object v5, p0, Lcom/amap/api/mapcore/util/cu;->F:[F

    iget v6, p0, Lcom/amap/api/mapcore/util/cu;->a:I

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x7

    aput v4, v5, v6

    iget-object v5, p0, Lcom/amap/api/mapcore/util/cu;->F:[F

    iget v6, p0, Lcom/amap/api/mapcore/util/cu;->a:I

    mul-int/lit8 v6, v6, 0x3

    add-int/lit8 v6, v6, 0x0

    iget v7, p0, Lcom/amap/api/mapcore/util/cu;->n:F

    mul-float/2addr v0, v7

    sub-float v0, v2, v0

    aput v0, v5, v6

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cu;->F:[F

    iget v5, p0, Lcom/amap/api/mapcore/util/cu;->a:I

    mul-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, 0x1

    iget v6, p0, Lcom/amap/api/mapcore/util/cu;->o:F

    mul-float/2addr v1, v6

    sub-float v1, v3, v1

    aput v1, v0, v5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cu;->F:[F

    iget v1, p0, Lcom/amap/api/mapcore/util/cu;->a:I

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cu;->F:[F

    iget v1, p0, Lcom/amap/api/mapcore/util/cu;->a:I

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x3

    aput v3, v0, v1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cu;->F:[F

    iget v1, p0, Lcom/amap/api/mapcore/util/cu;->a:I

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x6

    iget v2, p0, Lcom/amap/api/mapcore/util/cu;->c:F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cu;->F:[F

    iget v1, p0, Lcom/amap/api/mapcore/util/cu;->a:I

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x7

    aput v4, v0, v1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cu;->F:[F

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cu;->F:[F

    array-length v1, v1

    invoke-static {v0, v9, p2, p3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cu;->q:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/q;->c()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cu;->q:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/q;->c()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    :cond_0
    return-void
.end method

.method private d()I
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-array v0, v2, [I

    aput v1, v0, v1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v0, v0, v1

    return v0
.end method

.method private declared-synchronized e()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cu;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/cu;->E:Z

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cu;->c()V
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
.method public a(Lcom/amap/api/mapcore/util/l;)V
    .locals 3

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cu;->E:Z

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cu;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cu;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/amap/api/mapcore/util/cu;->h:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cu;->d()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/cu;->h:I

    :cond_0
    iget v0, p0, Lcom/amap/api/mapcore/util/cu;->h:I

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cu;->i:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ee;->b(ILandroid/graphics/Bitmap;Z)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/cu;->E:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cu;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "TextDelegateImp"

    const-string v2, "loadtexture"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/mapcore/util/l;[FIF)V
    .locals 3

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cu;->p:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cu;->D:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cu;->m:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cu;->i:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cu;->g:Lcom/autonavi/amap/mapcore/FPoint;

    iget v1, p0, Lcom/amap/api/mapcore/util/cu;->A:I

    invoke-interface {p1}, Lcom/amap/api/mapcore/util/l;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_x()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cu;->g:Lcom/autonavi/amap/mapcore/FPoint;

    iget v1, p0, Lcom/amap/api/mapcore/util/cu;->B:I

    invoke-interface {p1}, Lcom/amap/api/mapcore/util/l;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_y()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amap/api/mapcore/util/cu;->b(Lcom/amap/api/mapcore/util/l;[FIF)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TextDelegateImp"

    const-string v2, "drawMarker"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 7

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cu;->m:Lcom/amap/api/maps/model/LatLng;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cu;->m:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cu;->m:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3, v4, v5, v0}, Lcom/autonavi/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    iget v1, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iput v1, p0, Lcom/amap/api/mapcore/util/cu;->A:I

    iget v1, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iput v1, p0, Lcom/amap/api/mapcore/util/cu;->B:I

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cu;->q:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/q;->c()Lcom/amap/api/mapcore/util/l;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cu;->m:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-object v4, p0, Lcom/amap/api/mapcore/util/cu;->m:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v4, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v6, p0, Lcom/amap/api/mapcore/util/cu;->g:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-interface/range {v1 .. v6}, Lcom/amap/api/mapcore/util/l;->a(DDLcom/autonavi/amap/mapcore/FPoint;)V

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/cu;->C:Z

    return-void
.end method

.method public destroy(Z)V
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/cu;->D:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cu;->remove()Z

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cu;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cu;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cu;->i:Landroid/graphics/Bitmap;

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cu;->m:Lcom/amap/api/maps/model/LatLng;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cu;->r:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "TextDelegateImp"

    const-string v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const-string v0, "destroy erro"

    const-string v1, "TextDelegateImp destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cu;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlignX()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/amap/api/mapcore/util/cu;->e:I

    return v0
.end method

.method public getAlignY()I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/cu;->f:I

    return v0
.end method

.method public getAnchorU()F
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/cu;->n:F

    return v0
.end method

.method public getAnchorV()F
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/cu;->o:F

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/amap/api/mapcore/util/cu;->t:I

    return v0
.end method

.method public getFontColor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/amap/api/mapcore/util/cu;->u:I

    return v0
.end method

.method public getFontSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/amap/api/mapcore/util/cu;->v:I

    return v0
.end method

.method public getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cu;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Text"

    invoke-static {v0}, Lcom/amap/api/mapcore/util/cu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cu;->l:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cu;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cu;->r:Ljava/lang/Object;

    return-object v0
.end method

.method public getPosition()Lcom/amap/api/maps/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cu;->m:Lcom/amap/api/maps/model/LatLng;

    return-object v0
.end method

.method public getRotateAngle()F
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/cu;->d:F

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cu;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cu;->w:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getZIndex()F
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/cu;->x:F

    return v0
.end method

.method public h()Landroid/graphics/Rect;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCodeRemote()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isInfoWindowShown()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cu;->p:Z

    return v0
.end method

.method public j()Z
    .locals 3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cu;->q:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/q;->c()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/amap/mapcore/Rectangle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/amap/api/mapcore/util/cu;->A:I

    iget v2, p0, Lcom/amap/api/mapcore/util/cu;->B:I

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amap/mapcore/Rectangle;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/amap/api/mapcore/util/cu;->h:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cu;->C:Z

    return v0
.end method

.method public declared-synchronized remove()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cu;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/cu;->p:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cu;->q:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/util/q;->a(Lcom/amap/api/mapcore/util/cj;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAlign(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/high16 v0, 0x3f000000    # 0.5f

    iput p1, p0, Lcom/amap/api/mapcore/util/cu;->e:I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iput v0, p0, Lcom/amap/api/mapcore/util/cu;->n:F

    :goto_0
    iput p2, p0, Lcom/amap/api/mapcore/util/cu;->f:I

    sparse-switch p2, :sswitch_data_0

    iput v0, p0, Lcom/amap/api/mapcore/util/cu;->o:F

    :goto_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cu;->c()V

    return-void

    :pswitch_1
    iput v0, p0, Lcom/amap/api/mapcore/util/cu;->n:F

    goto :goto_0

    :pswitch_2
    iput v1, p0, Lcom/amap/api/mapcore/util/cu;->n:F

    goto :goto_0

    :pswitch_3
    iput v2, p0, Lcom/amap/api/mapcore/util/cu;->n:F

    goto :goto_0

    :sswitch_0
    iput v0, p0, Lcom/amap/api/mapcore/util/cu;->o:F

    goto :goto_1

    :sswitch_1
    iput v1, p0, Lcom/amap/api/mapcore/util/cu;->o:F

    goto :goto_1

    :sswitch_2
    iput v2, p0, Lcom/amap/api/mapcore/util/cu;->o:F

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public setAnchor(FF)V
    .locals 0

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput p1, p0, Lcom/amap/api/mapcore/util/cu;->t:I

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cu;->e()V

    return-void
.end method

.method public setFontColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput p1, p0, Lcom/amap/api/mapcore/util/cu;->u:I

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cu;->e()V

    return-void
.end method

.method public setFontSize(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput p1, p0, Lcom/amap/api/mapcore/util/cu;->v:I

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cu;->e()V

    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/cu;->r:Ljava/lang/Object;

    return-void
.end method

.method public setPosition(Lcom/amap/api/maps/model/LatLng;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/cu;->m:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cu;->a()Z

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cu;->c()V

    return-void
.end method

.method public setRotateAngle(F)V
    .locals 2

    const/high16 v1, 0x43b40000    # 360.0f

    iput p1, p0, Lcom/amap/api/mapcore/util/cu;->d:F

    neg-float v0, p1

    rem-float/2addr v0, v1

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/cu;->c:F

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cu;->c()V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/mapcore/util/cu;->s:Ljava/lang/String;

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cu;->e()V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/mapcore/util/cu;->w:Landroid/graphics/Typeface;

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cu;->e()V

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cu;->p:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/cu;->p:Z

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cu;->c()V

    goto :goto_0
.end method

.method public setZIndex(F)V
    .locals 1

    iput p1, p0, Lcom/amap/api/mapcore/util/cu;->x:F

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cu;->q:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/q;->f()V

    return-void
.end method
