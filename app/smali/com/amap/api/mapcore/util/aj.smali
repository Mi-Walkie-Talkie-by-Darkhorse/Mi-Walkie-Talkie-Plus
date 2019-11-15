.class public Lcom/amap/api/mapcore/util/aj;
.super Ljava/lang/Object;
.source "MultiPointOverlayDelegate.java"

# interfaces
.implements Lcom/autonavi/amap/mapcore/interfaces/IMultiPointOverlay;


# static fields
.field private static F:I


# instance fields
.field A:Ljava/lang/String;

.field B:I

.field private C:Ljava/lang/String;

.field private D:[F

.field private E:Z

.field private G:Ljava/util/concurrent/ExecutorService;

.field private H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private I:I

.field private J:[F

.field a:Lcom/amap/api/maps/model/BitmapDescriptor;

.field b:Lcom/amap/api/maps/model/BitmapDescriptor;

.field c:F

.field d:F

.field e:F

.field f:F

.field g:F

.field h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/MultiPointItem;",
            ">;"
        }
    .end annotation
.end field

.field i:Lcom/amap/api/mapcore/util/al;

.field j:Lcom/amap/api/mapcore/util/ai;

.field k:Lcom/amap/api/mapcore/util/ai;

.field l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/MultiPointItem;",
            ">;"
        }
    .end annotation
.end field

.field m:Lcom/autonavi/amap/mapcore/IPoint;

.field n:Lcom/amap/api/mapcore/util/ak;

.field o:[F

.field p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore/util/ah;",
            ">;"
        }
    .end annotation
.end field

.field q:[F

.field r:[F

.field s:[F

.field t:Landroid/graphics/Rect;

.field u:Lcom/amap/api/mapcore/util/ai;

.field v:Lcom/amap/api/mapcore/util/ai;

.field w:I

.field x:I

.field y:[F

.field z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/amap/api/mapcore/util/aj;->F:I

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/maps/model/MultiPointOverlayOptions;Lcom/amap/api/mapcore/util/ak;)V
    .locals 6

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->defaultMarker()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/aj;->a:Lcom/amap/api/maps/model/BitmapDescriptor;

    iput-object v2, p0, Lcom/amap/api/mapcore/util/aj;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    iput v1, p0, Lcom/amap/api/mapcore/util/aj;->c:F

    iput v1, p0, Lcom/amap/api/mapcore/util/aj;->d:F

    iput v1, p0, Lcom/amap/api/mapcore/util/aj;->e:F

    iput v5, p0, Lcom/amap/api/mapcore/util/aj;->f:F

    iput v5, p0, Lcom/amap/api/mapcore/util/aj;->g:F

    iput-object v2, p0, Lcom/amap/api/mapcore/util/aj;->i:Lcom/amap/api/mapcore/util/al;

    iput-object v2, p0, Lcom/amap/api/mapcore/util/aj;->j:Lcom/amap/api/mapcore/util/ai;

    new-instance v0, Lcom/amap/api/mapcore/util/ai;

    invoke-direct {v0, v3, v4, v3, v4}, Lcom/amap/api/mapcore/util/ai;-><init>(IIII)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/aj;->k:Lcom/amap/api/mapcore/util/ai;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/aj;->l:Ljava/util/List;

    const/16 v0, 0x18

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/aj;->D:[F

    iput-boolean v4, p0, Lcom/amap/api/mapcore/util/aj;->E:Z

    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/amap/api/mapcore/util/aj;->o:[F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/aj;->p:Ljava/util/List;

    iput-object v2, p0, Lcom/amap/api/mapcore/util/aj;->G:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/aj;->H:Ljava/util/List;

    const/4 v0, 0x3

    iput v0, p0, Lcom/amap/api/mapcore/util/aj;->I:I

    sget v0, Lcom/amap/api/mapcore/util/ah;->a:I

    iget v1, p0, Lcom/amap/api/mapcore/util/aj;->I:I

    mul-int/2addr v0, v1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/amap/api/mapcore/util/aj;->J:[F

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/amap/api/mapcore/util/aj;->q:[F

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/amap/api/mapcore/util/aj;->r:[F

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/amap/api/mapcore/util/aj;->s:[F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/aj;->t:Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/amap/api/mapcore/util/aj;->u:Lcom/amap/api/mapcore/util/ai;

    iput-object v2, p0, Lcom/amap/api/mapcore/util/aj;->v:Lcom/amap/api/mapcore/util/ai;

    iput v3, p0, Lcom/amap/api/mapcore/util/aj;->w:I

    iput v3, p0, Lcom/amap/api/mapcore/util/aj;->x:I

    const/16 v0, 0xc

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/amap/api/mapcore/util/aj;->y:[F

    const-string v0, "precision highp float;\nattribute vec3 aVertex;//\u9876\u70b9\u6570\u7ec4,\u4e09\u7ef4\u5750\u6807\nuniform mat4 aMVPMatrix;//mvp\u77e9\u9635\nvoid main(){\n  gl_Position = aMVPMatrix * vec4(aVertex, 1.0);\n}"

    iput-object v0, p0, Lcom/amap/api/mapcore/util/aj;->z:Ljava/lang/String;

    const-string v0, "//\u6709\u989c\u8272 \u6ca1\u6709\u7eb9\u7406\nprecision highp float;\nvoid main(){\n  gl_FragColor = vec4(0,0,1,1.0);\n}"

    iput-object v0, p0, Lcom/amap/api/mapcore/util/aj;->A:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/aj;->B:I

    iput-object p2, p0, Lcom/amap/api/mapcore/util/aj;->n:Lcom/amap/api/mapcore/util/ak;

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/aj;->a(Lcom/amap/api/maps/model/MultiPointOverlayOptions;)V

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/aj;->a()[F

    move-result-object v0

    new-instance v1, Lcom/amap/api/mapcore/util/ah;

    invoke-direct {v1, v0, p0}, Lcom/amap/api/mapcore/util/ah;-><init>([FLcom/amap/api/mapcore/util/aj;)V

    invoke-virtual {p2}, Lcom/amap/api/mapcore/util/ak;->a()Lcom/amap/api/mapcore/util/cx;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/ah;->a(Lcom/amap/api/mapcore/util/cx;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/ah;->a(Lcom/amap/api/maps/model/BitmapDescriptor;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->p:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :array_0
    .array-data 4
        -0x41000000    # -0.5f
        -0x41000000    # -0.5f
        0x0
        0x0
        0x0
        0x0
        -0x41000000    # -0.5f
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        -0x41000000    # -0.5f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget v0, Lcom/amap/api/mapcore/util/aj;->F:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/amap/api/mapcore/util/aj;->F:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/amap/api/mapcore/util/aj;->F:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/aj;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->H:Ljava/util/List;

    return-object v0
.end method

.method private a(FFFF)V
    .locals 10

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->k:Lcom/amap/api/mapcore/util/ai;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/mapcore/util/ai;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/api/mapcore/util/ai;-><init>(IIII)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/aj;->k:Lcom/amap/api/mapcore/util/ai;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->t:Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v6, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v6}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    iget v7, p0, Lcom/amap/api/mapcore/util/aj;->f:F

    iget v8, p0, Lcom/amap/api/mapcore/util/aj;->g:F

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->q:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->q:[F

    const/4 v1, 0x0

    neg-float v2, p3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->s:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->s:[F

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->s:[F

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, v0, v1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->s:[F

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput v2, v0, v1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->r:[F

    const/4 v1, 0x0

    neg-float v2, p1

    mul-float/2addr v2, v7

    aput v2, v0, v1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->r:[F

    const/4 v1, 0x1

    mul-float v2, p2, v8

    aput v2, v0, v1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->r:[F

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, v0, v1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->r:[F

    const/4 v1, 0x3

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->s:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/aj;->q:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/amap/api/mapcore/util/aj;->r:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->t:Landroid/graphics/Rect;

    iget v1, v6, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/aj;->s:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, v6, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/amap/api/mapcore/util/aj;->s:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, v6, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/amap/api/mapcore/util/aj;->s:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, v6, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/amap/api/mapcore/util/aj;->s:[F

    const/4 v9, 0x1

    aget v5, v5, v9

    sub-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->r:[F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v7

    mul-float/2addr v2, p1

    aput v2, v0, v1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->r:[F

    const/4 v1, 0x1

    mul-float v2, p2, v8

    aput v2, v0, v1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->r:[F

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, v0, v1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->r:[F

    const/4 v1, 0x3

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->s:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/aj;->q:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/amap/api/mapcore/util/aj;->r:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->t:Landroid/graphics/Rect;

    iget v1, v6, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/aj;->s:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, v6, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/amap/api/mapcore/util/aj;->s:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->union(II)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->r:[F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v7

    mul-float/2addr v2, p1

    aput v2, v0, v1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->r:[F

    const/4 v1, 0x1

    neg-float v2, p2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v8

    mul-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->r:[F

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, v0, v1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->r:[F

    const/4 v1, 0x3

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->s:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/aj;->q:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/amap/api/mapcore/util/aj;->r:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->t:Landroid/graphics/Rect;

    iget v1, v6, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/aj;->s:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, v6, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/amap/api/mapcore/util/aj;->s:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->union(II)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->r:[F

    const/4 v1, 0x0

    neg-float v2, p1

    mul-float/2addr v2, v7

    aput v2, v0, v1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->r:[F

    const/4 v1, 0x1

    neg-float v2, p2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v8

    mul-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->r:[F

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, v0, v1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->r:[F

    const/4 v1, 0x3

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->s:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/aj;->q:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/amap/api/mapcore/util/aj;->r:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->t:Landroid/graphics/Rect;

    iget v1, v6, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/aj;->s:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, v6, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/amap/api/mapcore/util/aj;->s:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->union(II)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->k:Lcom/amap/api/mapcore/util/ai;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/aj;->t:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/amap/api/mapcore/util/aj;->t:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/amap/api/mapcore/util/aj;->t:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/amap/api/mapcore/util/aj;->t:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amap/api/mapcore/util/ai;->a(IIII)V

    return-void
.end method

.method private a(Lcom/amap/api/maps/model/MultiPointOverlayOptions;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/MultiPointOverlayOptions;->getIcon()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/maps/model/MultiPointOverlayOptions;->getIcon()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/maps/model/MultiPointOverlayOptions;->getIcon()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/maps/model/MultiPointOverlayOptions;->getIcon()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/aj;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    :goto_0
    invoke-virtual {p1}, Lcom/amap/api/maps/model/MultiPointOverlayOptions;->getAnchorU()F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/aj;->f:F

    invoke-virtual {p1}, Lcom/amap/api/maps/model/MultiPointOverlayOptions;->getAnchorV()F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/aj;->g:F

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->a:Lcom/amap/api/maps/model/BitmapDescriptor;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/aj;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    goto :goto_0
.end method

.method private a(Lcom/autonavi/amap/mapcore/MapConfig;)V
    .locals 5

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/amap/mapcore/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/Rectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/aj;->j:Lcom/amap/api/mapcore/util/ai;

    if-nez v1, :cond_1

    new-instance v1, Lcom/amap/api/mapcore/util/ai;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/amap/api/mapcore/util/ai;-><init>(IIII)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/aj;->j:Lcom/amap/api/mapcore/util/ai;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/aj;->j:Lcom/amap/api/mapcore/util/ai;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/amap/api/mapcore/util/ai;->a(IIII)V

    goto :goto_0
.end method

.method private a()[F
    .locals 5

    const/high16 v3, 0x3f000000    # 0.5f

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->D:[F

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->D:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iget v1, p0, Lcom/amap/api/mapcore/util/aj;->f:F

    sub-float/2addr v1, v3

    iget v2, p0, Lcom/amap/api/mapcore/util/aj;->g:F

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    aget v4, v0, v3

    add-float/2addr v4, v1

    aput v4, v0, v3

    const/4 v3, 0x1

    aget v4, v0, v3

    sub-float/2addr v4, v2

    aput v4, v0, v3

    const/4 v3, 0x6

    aget v4, v0, v3

    add-float/2addr v4, v1

    aput v4, v0, v3

    const/4 v3, 0x7

    aget v4, v0, v3

    sub-float/2addr v4, v2

    aput v4, v0, v3

    const/16 v3, 0xc

    aget v4, v0, v3

    add-float/2addr v4, v1

    aput v4, v0, v3

    const/16 v3, 0xd

    aget v4, v0, v3

    sub-float/2addr v4, v2

    aput v4, v0, v3

    const/16 v3, 0x12

    aget v4, v0, v3

    add-float/2addr v1, v4

    aput v1, v0, v3

    const/16 v1, 0x13

    aget v3, v0, v1

    sub-float v2, v3, v2

    aput v2, v0, v1

    goto :goto_0
.end method

.method private b()Lcom/amap/api/mapcore/util/ai;
    .locals 7

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/MultiPointItem;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MultiPointItem;->getIPoint()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v1

    iget v3, v1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MultiPointItem;->getIPoint()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v1

    iget v2, v1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MultiPointItem;->getIPoint()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v1

    iget v1, v1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MultiPointItem;->getIPoint()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v0

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/MultiPointItem;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MultiPointItem;->getIPoint()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v5

    iget v5, v5, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MultiPointItem;->getIPoint()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    if-ge v5, v4, :cond_2

    move v4, v5

    :cond_2
    if-le v5, v3, :cond_3

    move v3, v5

    :cond_3
    if-ge v0, v2, :cond_4

    move v2, v0

    :cond_4
    if-le v0, v1, :cond_6

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_5
    new-instance v0, Lcom/amap/api/mapcore/util/ai;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/amap/api/mapcore/util/ai;-><init>(IIII)V

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method private c()V
    .locals 5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->G:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/aj;->G:Ljava/util/concurrent/ExecutorService;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/ah;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ah;->b()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/mapcore/util/aj;->H:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/amap/api/mapcore/util/aj;->H:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/amap/api/mapcore/util/aj;->G:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/amap/api/mapcore/util/aj$1;

    invoke-direct {v4, p0, v0, v2}, Lcom/amap/api/mapcore/util/aj$1;-><init>(Lcom/amap/api/mapcore/util/aj;Lcom/amap/api/mapcore/util/ah;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->n:Lcom/amap/api/mapcore/util/ak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->n:Lcom/amap/api/mapcore/util/ak;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ak;->d()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addItem(Lcom/amap/api/maps/model/MultiPointItem;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/aj;->d()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public addItems(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/MultiPointItem;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->h:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/aj;->h:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->h:Ljava/util/List;

    if-nez v0, :cond_1

    monitor-exit p0

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->h:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/MultiPointItem;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MultiPointItem;->getLatLng()Lcom/amap/api/maps/model/LatLng;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MultiPointItem;->getIPoint()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v4

    if-nez v4, :cond_2

    new-instance v4, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v4}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MultiPointItem;->getLatLng()Lcom/amap/api/maps/model/LatLng;

    move-result-object v5

    iget-wide v6, v5, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MultiPointItem;->getLatLng()Lcom/amap/api/maps/model/LatLng;

    move-result-object v5

    iget-wide v8, v5, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v6, v7, v8, v9, v4}, Lcom/autonavi/amap/mapcore/MapProjection;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    invoke-virtual {v0, v4}, Lcom/amap/api/maps/model/MultiPointItem;->setIPoint(Lcom/autonavi/amap/mapcore/IPoint;)V

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->i:Lcom/amap/api/mapcore/util/al;

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/aj;->b()Lcom/amap/api/mapcore/util/ai;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v2, Lcom/amap/api/mapcore/util/al;

    invoke-direct {v2, v0}, Lcom/amap/api/mapcore/util/al;-><init>(Lcom/amap/api/mapcore/util/ai;)V

    iput-object v2, p0, Lcom/amap/api/mapcore/util/aj;->i:Lcom/amap/api/mapcore/util/al;

    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_7

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->h:Ljava/util/List;

    if-nez v0, :cond_5

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "MultiPointOverlayDelegate"

    const-string v2, "addItems"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    :try_start_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/MultiPointItem;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MultiPointItem;->getIPoint()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/amap/api/mapcore/util/aj;->i:Lcom/amap/api/mapcore/util/al;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/amap/api/mapcore/util/aj;->i:Lcom/amap/api/mapcore/util/al;

    invoke-virtual {v3, v0}, Lcom/amap/api/mapcore/util/al;->a(Lcom/amap/api/maps/model/MultiPointItem;)V

    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_7
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/aj;->d()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1
.end method

.method public destroy(Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/aj;->remove(Z)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V

    :cond_0
    return-void
.end method

.method public draw(Lcom/autonavi/amap/mapcore/MapConfig;[F[F)V
    .locals 12

    const/4 v9, 0x0

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/aj;->E:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/aj;->c()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->i:Lcom/amap/api/mapcore/util/al;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_r()F

    move-result v6

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_c()F

    move-result v7

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/MapConfig;->getChangeRatio()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/aj;->l:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/aj;->a(Lcom/autonavi/amap/mapcore/MapConfig;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapPerPixelUnitLength()F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/aj;->c:F

    iget v0, p0, Lcom/amap/api/mapcore/util/aj;->c:F

    iget-object v2, p0, Lcom/amap/api/mapcore/util/aj;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v2}, Lcom/amap/api/maps/model/BitmapDescriptor;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/amap/api/mapcore/util/aj;->d:F

    iget v0, p0, Lcom/amap/api/mapcore/util/aj;->c:F

    iget-object v2, p0, Lcom/amap/api/mapcore/util/aj;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v2}, Lcom/amap/api/maps/model/BitmapDescriptor;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/amap/api/mapcore/util/aj;->e:F

    iget v0, p0, Lcom/amap/api/mapcore/util/aj;->d:F

    iget v2, p0, Lcom/amap/api/mapcore/util/aj;->e:F

    mul-float/2addr v0, v2

    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v0, v2

    float-to-double v2, v0

    iget v0, p0, Lcom/amap/api/mapcore/util/aj;->d:F

    iget v4, p0, Lcom/amap/api/mapcore/util/aj;->e:F

    invoke-direct {p0, v0, v4, v6, v7}, Lcom/amap/api/mapcore/util/aj;->a(FFFF)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->i:Lcom/amap/api/mapcore/util/al;

    iget-object v4, p0, Lcom/amap/api/mapcore/util/aj;->j:Lcom/amap/api/mapcore/util/ai;

    iget-object v5, p0, Lcom/amap/api/mapcore/util/aj;->l:Ljava/util/List;

    invoke-virtual {v0, v4, v5, v2, v3}, Lcom/amap/api/mapcore/util/al;->a(Lcom/amap/api/mapcore/util/ai;Ljava/util/Collection;D)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->m:Lcom/autonavi/amap/mapcore/IPoint;

    if-nez v0, :cond_4

    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/aj;->m:Lcom/autonavi/amap/mapcore/IPoint;

    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->m:Lcom/autonavi/amap/mapcore/IPoint;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->m:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_x()I

    move-result v1

    iput v1, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->m:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_y()I

    move-result v1

    iput v1, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->p:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/ah;

    iget-object v10, p0, Lcom/amap/api/mapcore/util/aj;->l:Ljava/util/List;

    monitor-enter v10
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v1, p0, Lcom/amap/api/mapcore/util/aj;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v8, v9

    :cond_6
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/model/MultiPointItem;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/MultiPointItem;->getIPoint()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v1

    if-eqz v1, :cond_6

    iget v2, v1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget-object v3, p0, Lcom/amap/api/mapcore/util/aj;->m:Lcom/autonavi/amap/mapcore/IPoint;

    iget v3, v3, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int/2addr v2, v3

    iget v1, v1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget-object v3, p0, Lcom/amap/api/mapcore/util/aj;->m:Lcom/autonavi/amap/mapcore/IPoint;

    iget v3, v3, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int/2addr v1, v3

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ah;->b()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/amap/api/mapcore/util/aj;->J:[F

    iget v4, p0, Lcom/amap/api/mapcore/util/aj;->I:I

    mul-int/2addr v4, v8

    add-int/lit8 v4, v4, 0x0

    int-to-float v2, v2

    aput v2, v3, v4

    iget-object v2, p0, Lcom/amap/api/mapcore/util/aj;->J:[F

    iget v3, p0, Lcom/amap/api/mapcore/util/aj;->I:I

    mul-int/2addr v3, v8

    add-int/lit8 v3, v3, 0x1

    int-to-float v1, v1

    aput v1, v2, v3

    iget-object v1, p0, Lcom/amap/api/mapcore/util/aj;->J:[F

    iget v2, p0, Lcom/amap/api/mapcore/util/aj;->I:I

    mul-int/2addr v2, v8

    add-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    aput v3, v1, v2

    add-int/lit8 v8, v8, 0x1

    sget v1, Lcom/amap/api/mapcore/util/ah;->a:I

    if-lt v8, v1, :cond_6

    iget-object v3, p0, Lcom/amap/api/mapcore/util/aj;->J:[F

    iget v4, p0, Lcom/amap/api/mapcore/util/aj;->d:F

    iget v5, p0, Lcom/amap/api/mapcore/util/aj;->e:F

    move-object v1, p2

    move-object v2, p3

    invoke-virtual/range {v0 .. v8}, Lcom/amap/api/mapcore/util/ah;->a([F[F[FFFFFI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v8, v9

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "MultiPointOverlayDelegate"

    const-string v2, "draw"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    :try_start_6
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-lez v8, :cond_0

    :try_start_7
    iget-object v3, p0, Lcom/amap/api/mapcore/util/aj;->J:[F

    iget v4, p0, Lcom/amap/api/mapcore/util/aj;->d:F

    iget v5, p0, Lcom/amap/api/mapcore/util/aj;->e:F

    move-object v1, p2

    move-object v2, p3

    invoke-virtual/range {v0 .. v8}, Lcom/amap/api/mapcore/util/ah;->a([F[F[FFFFFI)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->C:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "MultiPointOverlay"

    invoke-static {v0}, Lcom/amap/api/mapcore/util/aj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/aj;->C:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->C:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Lcom/autonavi/amap/mapcore/IPoint;)Lcom/amap/api/maps/model/MultiPointItem;
    .locals 10

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/aj;->E:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->i:Lcom/amap/api/mapcore/util/al;

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->u:Lcom/amap/api/mapcore/util/ai;

    if-nez v0, :cond_2

    new-instance v0, Lcom/amap/api/mapcore/util/ai;

    invoke-direct {v0, v2, v3, v2, v3}, Lcom/amap/api/mapcore/util/ai;-><init>(IIII)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/aj;->u:Lcom/amap/api/mapcore/util/ai;

    :cond_2
    iget v0, p0, Lcom/amap/api/mapcore/util/aj;->c:F

    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/aj;->u:Lcom/amap/api/mapcore/util/ai;

    iget v3, p1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int/2addr v3, v0

    iget v4, p1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    add-int/2addr v4, v0

    iget v5, p1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int/2addr v5, v0

    iget v6, p1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    add-int/2addr v0, v6

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/amap/api/mapcore/util/ai;->a(IIII)V

    iget-object v3, p0, Lcom/amap/api/mapcore/util/aj;->l:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_7

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->l:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/MultiPointItem;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MultiPointItem;->getIPoint()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v4

    if-nez v4, :cond_4

    :cond_3
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/amap/api/mapcore/util/aj;->k:Lcom/amap/api/mapcore/util/ai;

    if-nez v5, :cond_5

    monitor-exit v3

    move-object v0, v1

    goto :goto_0

    :cond_5
    iget-object v5, p0, Lcom/amap/api/mapcore/util/aj;->v:Lcom/amap/api/mapcore/util/ai;

    if-nez v5, :cond_6

    new-instance v5, Lcom/amap/api/mapcore/util/ai;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/amap/api/mapcore/util/ai;-><init>(IIII)V

    iput-object v5, p0, Lcom/amap/api/mapcore/util/aj;->v:Lcom/amap/api/mapcore/util/ai;

    :cond_6
    iget-object v5, p0, Lcom/amap/api/mapcore/util/aj;->v:Lcom/amap/api/mapcore/util/ai;

    iget v6, v4, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget-object v7, p0, Lcom/amap/api/mapcore/util/aj;->k:Lcom/amap/api/mapcore/util/ai;

    iget v7, v7, Lcom/amap/api/mapcore/util/ai;->a:I

    add-int/2addr v6, v7

    iget v7, v4, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget-object v8, p0, Lcom/amap/api/mapcore/util/aj;->k:Lcom/amap/api/mapcore/util/ai;

    iget v8, v8, Lcom/amap/api/mapcore/util/ai;->c:I

    add-int/2addr v7, v8

    iget v8, v4, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget-object v9, p0, Lcom/amap/api/mapcore/util/aj;->k:Lcom/amap/api/mapcore/util/ai;

    iget v9, v9, Lcom/amap/api/mapcore/util/ai;->b:I

    add-int/2addr v8, v9

    iget v4, v4, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget-object v9, p0, Lcom/amap/api/mapcore/util/aj;->k:Lcom/amap/api/mapcore/util/ai;

    iget v9, v9, Lcom/amap/api/mapcore/util/ai;->d:I

    add-int/2addr v4, v9

    invoke-virtual {v5, v6, v7, v8, v4}, Lcom/amap/api/mapcore/util/ai;->a(IIII)V

    iget-object v4, p0, Lcom/amap/api/mapcore/util/aj;->v:Lcom/amap/api/mapcore/util/ai;

    iget-object v5, p0, Lcom/amap/api/mapcore/util/aj;->u:Lcom/amap/api/mapcore/util/ai;

    invoke-virtual {v4, v5}, Lcom/amap/api/mapcore/util/ai;->a(Lcom/amap/api/mapcore/util/ai;)Z

    move-result v4

    if-eqz v4, :cond_3

    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_7
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto/16 :goto_0
.end method

.method public remove(Z)V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/aj;->E:Z

    iput v0, p0, Lcom/amap/api/mapcore/util/aj;->w:I

    iput v0, p0, Lcom/amap/api/mapcore/util/aj;->x:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->a:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->a:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->h:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v2, p0, Lcom/amap/api/mapcore/util/aj;->h:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->i:Lcom/amap/api/mapcore/util/al;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->i:Lcom/amap/api/mapcore/util/al;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/al;->a()V

    iput-object v2, p0, Lcom/amap/api/mapcore/util/aj;->i:Lcom/amap/api/mapcore/util/al;

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->l:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->G:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->G:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iput-object v2, p0, Lcom/amap/api/mapcore/util/aj;->G:Ljava/util/concurrent/ExecutorService;

    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->H:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->H:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->p:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/ah;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ah;->c()V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_8
    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->n:Lcom/amap/api/mapcore/util/ak;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->n:Lcom/amap/api/mapcore/util/ak;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/util/ak;->a(Lcom/amap/api/mapcore/util/aj;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aj;->n:Lcom/amap/api/mapcore/util/ak;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ak;->d()V

    :cond_9
    iput-object v2, p0, Lcom/amap/api/mapcore/util/aj;->n:Lcom/amap/api/mapcore/util/ak;

    iput-object v2, p0, Lcom/amap/api/mapcore/util/aj;->D:[F

    return-void
.end method

.method public setAnchor(FF)V
    .locals 0

    iput p1, p0, Lcom/amap/api/mapcore/util/aj;->f:F

    iput p2, p0, Lcom/amap/api/mapcore/util/aj;->g:F

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/aj;->d()V

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/aj;->E:Z

    if-eq v0, p1, :cond_0

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/aj;->d()V

    :cond_0
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/aj;->E:Z

    return-void
.end method
