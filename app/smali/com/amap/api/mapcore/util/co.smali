.class public Lcom/amap/api/mapcore/util/co;
.super Ljava/lang/Object;
.source "MarkerDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore/util/cg;
.implements Lcom/autonavi/amap/mapcore/interfaces/IAnimation;
.implements Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;


# static fields
.field private static h:I


# instance fields
.field private A:Lcom/amap/api/maps/model/MarkerOptions;

.field private B:Z

.field private C:Z

.field private D:I

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Lcom/autonavi/amap/mapcore/FPoint;

.field private L:Landroid/graphics/Point;

.field private M:F

.field private N:F

.field private O:I

.field private P:I

.field private Q:Lcom/amap/api/mapcore/util/s;

.field private R:[Lcom/amap/api/mapcore/util/s;

.field private S:Z

.field private T:Ljava/lang/String;

.field private U:Lcom/amap/api/maps/model/LatLng;

.field private V:Lcom/amap/api/maps/model/LatLng;

.field private W:Ljava/lang/String;

.field private X:Ljava/lang/String;

.field private Y:F

.field private Z:F

.field a:[F

.field private aa:Z

.field private ab:Z

.field private ac:Lcom/amap/api/mapcore/util/q;

.field private ad:Ljava/lang/Object;

.field private ae:Z

.field private af:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private ag:Z

.field private ah:Z

.field private ai:Z

.field private aj:I

.field private ak:I

.field private al:Z

.field private am:I

.field private an:I

.field private ao:J

.field private ap:F

.field private aq:F

.field private ar:F

.field private as:F

.field b:[F

.field c:Landroid/graphics/Rect;

.field d:I

.field e:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

.field f:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

.field g:Ljava/lang/Object;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:F

.field private m:F

.field private n:Z

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:Lcom/autonavi/amap/mapcore/FPoint;

.field private v:[F

.field private w:F

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/amap/api/mapcore/util/co;->h:I

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/maps/model/MarkerOptions;Lcom/amap/api/mapcore/util/q;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/co;->i:Z

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/co;->j:Z

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/co;->k:Z

    iput v4, p0, Lcom/amap/api/mapcore/util/co;->l:F

    iput v4, p0, Lcom/amap/api/mapcore/util/co;->m:F

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/co;->n:Z

    iput v1, p0, Lcom/amap/api/mapcore/util/co;->o:I

    iput v1, p0, Lcom/amap/api/mapcore/util/co;->p:I

    iput v1, p0, Lcom/amap/api/mapcore/util/co;->q:I

    iput v1, p0, Lcom/amap/api/mapcore/util/co;->r:I

    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/co;->u:Lcom/autonavi/amap/mapcore/FPoint;

    const/16 v0, 0x24

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/co;->v:[F

    iput v4, p0, Lcom/amap/api/mapcore/util/co;->w:F

    iput v3, p0, Lcom/amap/api/mapcore/util/co;->x:F

    iput v3, p0, Lcom/amap/api/mapcore/util/co;->y:F

    iput v3, p0, Lcom/amap/api/mapcore/util/co;->z:F

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/co;->B:Z

    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/co;->C:Z

    const/4 v0, 0x5

    iput v0, p0, Lcom/amap/api/mapcore/util/co;->D:I

    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/co;->E:Z

    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/co;->F:Z

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/co;->G:Z

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/co;->H:Z

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/co;->I:Z

    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/co;->J:Z

    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/co;->K:Lcom/autonavi/amap/mapcore/FPoint;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/co;->L:Landroid/graphics/Point;

    iput v1, p0, Lcom/amap/api/mapcore/util/co;->O:I

    iput v1, p0, Lcom/amap/api/mapcore/util/co;->P:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/co;->R:[Lcom/amap/api/mapcore/util/s;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/co;->c:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/co;->S:Z

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/amap/api/mapcore/util/co;->Y:F

    iput v3, p0, Lcom/amap/api/mapcore/util/co;->Z:F

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/co;->aa:Z

    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/co;->ab:Z

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/co;->ae:Z

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/co;->af:Ljava/util/List;

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/co;->ag:Z

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/co;->ah:Z

    const/16 v0, 0x9

    iput v0, p0, Lcom/amap/api/mapcore/util/co;->d:I

    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/co;->ai:Z

    iput v1, p0, Lcom/amap/api/mapcore/util/co;->aj:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/amap/api/mapcore/util/co;->ak:I

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/co;->al:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/co;->ao:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/co;->g:Ljava/lang/Object;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/amap/api/mapcore/util/co;->ap:F

    iput v5, p0, Lcom/amap/api/mapcore/util/co;->aq:F

    iput v5, p0, Lcom/amap/api/mapcore/util/co;->ar:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/amap/api/mapcore/util/co;->as:F

    iput-object p2, p0, Lcom/amap/api/mapcore/util/co;->ac:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/co;->setMarkerOptions(Lcom/amap/api/maps/model/MarkerOptions;)V

    return-void

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

    sget v0, Lcom/amap/api/mapcore/util/co;->h:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/amap/api/mapcore/util/co;->h:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/amap/api/mapcore/util/co;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(II)V
    .locals 7

    iput p1, p0, Lcom/amap/api/mapcore/util/co;->s:I

    iput p2, p0, Lcom/amap/api/mapcore/util/co;->t:I

    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/mapcore/util/co;->s:I

    iget v2, p0, Lcom/amap/api/mapcore/util/co;->t:I

    invoke-static {v1, v2, v0}, Lcom/autonavi/ae/gmap/GLMapState;->geo2LonLat(IILcom/autonavi/amap/mapcore/DPoint;)V

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/co;->U:Lcom/amap/api/maps/model/LatLng;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->ac:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/q;->c()Lcom/amap/api/mapcore/util/l;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/l;->c()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/mapcore/util/co;->s:I

    iget v3, p0, Lcom/amap/api/mapcore/util/co;->t:I

    iget-object v4, p0, Lcom/amap/api/mapcore/util/co;->u:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-virtual {v1, v2, v3, v4}, Lcom/autonavi/ae/gmap/GLMapState;->geo2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/co;->r()V

    return-void
.end method

.method private a(Lcom/amap/api/mapcore/util/l;F)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    iget v0, p0, Lcom/amap/api/mapcore/util/co;->x:F

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/co;->n()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/amap/api/mapcore/util/co;->y:F

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/co;->o()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v0, v0

    mul-float v5, v0, p2

    int-to-float v0, v1

    mul-float v6, v0, p2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->u:Lcom/autonavi/amap/mapcore/FPoint;

    iget v7, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->u:Lcom/autonavi/amap/mapcore/FPoint;

    iget v8, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-interface {p1}, Lcom/amap/api/mapcore/util/l;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_c()F

    move-result v1

    iget v0, p0, Lcom/amap/api/mapcore/util/co;->l:F

    iget-boolean v4, p0, Lcom/amap/api/mapcore/util/co;->n:Z

    if-eqz v4, :cond_0

    invoke-interface {p1}, Lcom/amap/api/mapcore/util/l;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_r()F

    move-result v1

    sub-float/2addr v0, v1

    move v1, v2

    :cond_0
    iget v4, p0, Lcom/amap/api/mapcore/util/co;->z:F

    cmpg-float v9, v4, v2

    if-gez v9, :cond_5

    :goto_0
    cmpl-float v4, v2, v3

    if-lez v4, :cond_1

    move v2, v3

    :cond_1
    iget-object v4, p0, Lcom/amap/api/mapcore/util/co;->v:[F

    iget v9, p0, Lcom/amap/api/mapcore/util/co;->d:I

    mul-int/2addr v9, v11

    add-int/lit8 v9, v9, 0x0

    iget v10, p0, Lcom/amap/api/mapcore/util/co;->Y:F

    mul-float/2addr v10, v5

    sub-float v10, v7, v10

    aput v10, v4, v9

    iget-object v4, p0, Lcom/amap/api/mapcore/util/co;->v:[F

    iget v9, p0, Lcom/amap/api/mapcore/util/co;->d:I

    mul-int/2addr v9, v11

    add-int/lit8 v9, v9, 0x1

    iget v10, p0, Lcom/amap/api/mapcore/util/co;->Z:F

    sub-float v10, v3, v10

    mul-float/2addr v10, v6

    add-float/2addr v10, v8

    aput v10, v4, v9

    iget-object v4, p0, Lcom/amap/api/mapcore/util/co;->v:[F

    iget v9, p0, Lcom/amap/api/mapcore/util/co;->d:I

    mul-int/2addr v9, v11

    add-int/lit8 v9, v9, 0x2

    aput v7, v4, v9

    iget-object v4, p0, Lcom/amap/api/mapcore/util/co;->v:[F

    iget v9, p0, Lcom/amap/api/mapcore/util/co;->d:I

    mul-int/2addr v9, v11

    add-int/lit8 v9, v9, 0x3

    aput v8, v4, v9

    iget-object v4, p0, Lcom/amap/api/mapcore/util/co;->v:[F

    iget v9, p0, Lcom/amap/api/mapcore/util/co;->d:I

    mul-int/2addr v9, v11

    add-int/lit8 v9, v9, 0x6

    aput v0, v4, v9

    iget-object v4, p0, Lcom/amap/api/mapcore/util/co;->v:[F

    iget v9, p0, Lcom/amap/api/mapcore/util/co;->d:I

    mul-int/2addr v9, v11

    add-int/lit8 v9, v9, 0x7

    aput v1, v4, v9

    iget-object v4, p0, Lcom/amap/api/mapcore/util/co;->v:[F

    iget v9, p0, Lcom/amap/api/mapcore/util/co;->d:I

    mul-int/2addr v9, v11

    add-int/lit8 v9, v9, 0x8

    aput v2, v4, v9

    iget-object v4, p0, Lcom/amap/api/mapcore/util/co;->v:[F

    iget v9, p0, Lcom/amap/api/mapcore/util/co;->d:I

    mul-int/lit8 v9, v9, 0x1

    add-int/lit8 v9, v9, 0x0

    iget v10, p0, Lcom/amap/api/mapcore/util/co;->Y:F

    sub-float v10, v3, v10

    mul-float/2addr v10, v5

    add-float/2addr v10, v7

    aput v10, v4, v9

    iget-object v4, p0, Lcom/amap/api/mapcore/util/co;->v:[F

    iget v9, p0, Lcom/amap/api/mapcore/util/co;->d:I

    mul-int/lit8 v9, v9, 0x1

    add-int/lit8 v9, v9, 0x1

    iget v10, p0, Lcom/amap/api/mapcore/util/co;->Z:F

    sub-float v10, v3, v10

    mul-float/2addr v10, v6

    add-float/2addr v10, v8

    aput v10, v4, v9

    iget-object v4, p0, Lcom/amap/api/mapcore/util/co;->v:[F

    iget v9, p0, Lcom/amap/api/mapcore/util/co;->d:I

    mul-int/lit8 v9, v9, 0x1

    add-int/lit8 v9, v9, 0x2

    aput v7, v4, v9

    iget-object v4, p0, Lcom/amap/api/mapcore/util/co;->v:[F

    iget v9, p0, Lcom/amap/api/mapcore/util/co;->d:I

    mul-int/lit8 v9, v9, 0x1

    add-int/lit8 v9, v9, 0x3

    aput v8, v4, v9

    iget-object v4, p0, Lcom/amap/api/mapcore/util/co;->v:[F

    iget v9, p0, Lcom/amap/api/mapcore/util/co;->d:I

    mul-int/lit8 v9, v9, 0x1

    add-int/lit8 v9, v9, 0x6

    aput v0, v4, v9

    iget-object v4, p0, Lcom/amap/api/mapcore/util/co;->v:[F

    iget v9, p0, Lcom/amap/api/mapcore/util/co;->d:I

    mul-int/lit8 v9, v9, 0x1

    add-int/lit8 v9, v9, 0x7

    aput v1, v4, v9

    iget-object v4, p0, Lcom/amap/api/mapcore/util/co;->v:[F

    iget v9, p0, Lcom/amap/api/mapcore/util/co;->d:I

    mul-int/lit8 v9, v9, 0x1

    add-int/lit8 v9, v9, 0x8

    aput v2, v4, v9

    iget-object v4, p0, Lcom/amap/api/mapcore/util/co;->v:[F

    iget v9, p0, Lcom/amap/api/mapcore/util/co;->d:I

    mul-int/lit8 v9, v9, 0x2

    add-int/lit8 v9, v9, 0x0

    iget v10, p0, Lcom/amap/api/mapcore/util/co;->Y:F

    sub-float/2addr v3, v10

    mul-float/2addr v3, v5

    add-float/2addr v3, v7

    aput v3, v4, v9

    iget-object v3, p0, Lcom/amap/api/mapcore/util/co;->v:[F

    iget v4, p0, Lcom/amap/api/mapcore/util/co;->d:I

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    iget v9, p0, Lcom/amap/api/mapcore/util/co;->Z:F

    mul-float/2addr v9, v6

    sub-float v9, v8, v9

    aput v9, v3, v4

    iget-object v3, p0, Lcom/amap/api/mapcore/util/co;->v:[F

    iget v4, p0, Lcom/amap/api/mapcore/util/co;->d:I

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x2

    aput v7, v3, v4

    iget-object v3, p0, Lcom/amap/api/mapcore/util/co;->v:[F

    iget v4, p0, Lcom/amap/api/mapcore/util/co;->d:I

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x3

    aput v8, v3, v4

    iget-object v3, p0, Lcom/amap/api/mapcore/util/co;->v:[F

    iget v4, p0, Lcom/amap/api/mapcore/util/co;->d:I

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x6

    aput v0, v3, v4

    iget-object v3, p0, Lcom/amap/api/mapcore/util/co;->v:[F

    iget v4, p0, Lcom/amap/api/mapcore/util/co;->d:I

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x7

    aput v1, v3, v4

    iget-object v3, p0, Lcom/amap/api/mapcore/util/co;->v:[F

    iget v4, p0, Lcom/amap/api/mapcore/util/co;->d:I

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x8

    aput v2, v3, v4

    iget-object v3, p0, Lcom/amap/api/mapcore/util/co;->v:[F

    iget v4, p0, Lcom/amap/api/mapcore/util/co;->d:I

    mul-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, 0x0

    iget v9, p0, Lcom/amap/api/mapcore/util/co;->Y:F

    mul-float/2addr v5, v9

    sub-float v5, v7, v5

    aput v5, v3, v4

    iget-object v3, p0, Lcom/amap/api/mapcore/util/co;->v:[F

    iget v4, p0, Lcom/amap/api/mapcore/util/co;->d:I

    mul-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lcom/amap/api/mapcore/util/co;->Z:F

    mul-float/2addr v5, v6

    sub-float v5, v8, v5

    aput v5, v3, v4

    iget-object v3, p0, Lcom/amap/api/mapcore/util/co;->v:[F

    iget v4, p0, Lcom/amap/api/mapcore/util/co;->d:I

    mul-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, 0x2

    aput v7, v3, v4

    iget-object v3, p0, Lcom/amap/api/mapcore/util/co;->v:[F

    iget v4, p0, Lcom/amap/api/mapcore/util/co;->d:I

    mul-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, 0x3

    aput v8, v3, v4

    iget-object v3, p0, Lcom/amap/api/mapcore/util/co;->v:[F

    iget v4, p0, Lcom/amap/api/mapcore/util/co;->d:I

    mul-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, 0x6

    aput v0, v3, v4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->v:[F

    iget v3, p0, Lcom/amap/api/mapcore/util/co;->d:I

    mul-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x7

    aput v1, v0, v3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->v:[F

    iget v1, p0, Lcom/amap/api/mapcore/util/co;->d:I

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x8

    aput v2, v0, v1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->af:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->af:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget v0, p0, Lcom/amap/api/mapcore/util/co;->aj:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/co;->aj:I

    iget v0, p0, Lcom/amap/api/mapcore/util/co;->ak:I

    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->af:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/amap/api/mapcore/util/co;->aj:I

    if-lt v1, v0, :cond_2

    iput v11, p0, Lcom/amap/api/mapcore/util/co;->aj:I

    :cond_2
    iget v0, p0, Lcom/amap/api/mapcore/util/co;->ak:I

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/co;->ak:I

    :cond_3
    iget v0, p0, Lcom/amap/api/mapcore/util/co;->aj:I

    iget v1, p0, Lcom/amap/api/mapcore/util/co;->ak:I

    div-int/2addr v0, v1

    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->R:[Lcom/amap/api/mapcore/util/s;

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/co;->Q:Lcom/amap/api/mapcore/util/s;

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->ai:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/co;->r()V

    :cond_4
    return-void

    :cond_5
    move v2, v4

    goto/16 :goto_0
.end method

.method private a(Lcom/autonavi/amap/mapcore/animation/GLAnimation;)V
    .locals 7

    instance-of v0, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->al:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/co;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/co;->U:Lcom/amap/api/maps/model/LatLng;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->U:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/co;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->al:Z

    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->al:Z

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;

    iget v1, p0, Lcom/amap/api/mapcore/util/co;->am:I

    int-to-double v2, v1

    iput-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mFromXDelta:D

    move-object v0, p1

    check-cast v0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;

    iget v1, p0, Lcom/amap/api/mapcore/util/co;->an:I

    int-to-double v2, v1

    iput-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mFromYDelta:D

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v6

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->ac:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/q;->c()Lcom/amap/api/mapcore/util/l;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mToYDelta:D

    move-object v0, p1

    check-cast v0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mToXDelta:D

    invoke-interface/range {v1 .. v6}, Lcom/amap/api/mapcore/util/l;->b(DDLcom/autonavi/amap/mapcore/IPoint;)V

    move-object v0, p1

    check-cast v0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;

    iget v1, v6, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-double v2, v1

    iput-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mToXDelta:D

    check-cast p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;

    iget v0, v6, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-double v0, v0

    iput-wide v0, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mToYDelta:D

    invoke-virtual {v6}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;

    iget v1, p0, Lcom/amap/api/mapcore/util/co;->s:I

    int-to-double v2, v1

    iput-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mFromXDelta:D

    move-object v0, p1

    check-cast v0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;

    iget v1, p0, Lcom/amap/api/mapcore/util/co;->t:I

    int-to-double v2, v1

    iput-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mFromYDelta:D

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mToXDelta:D

    move-object v0, p1

    check-cast v0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mToYDelta:D

    invoke-static {v2, v3, v4, v5, v1}, Lcom/autonavi/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    move-object v0, p1

    check-cast v0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;

    iget v2, v1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-double v2, v2

    iput-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mToXDelta:D

    check-cast p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;

    iget v0, v1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-double v2, v0

    iput-wide v2, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mToYDelta:D

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    goto :goto_0
.end method

.method private a([FI)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->R:[Lcom/amap/api/mapcore/util/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->R:[Lcom/amap/api/mapcore/util/s;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->v:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/co;->v:[F

    array-length v2, v2

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method private a([Lcom/autonavi/amap/mapcore/FPoint;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/co;->v()V

    iget v0, p0, Lcom/amap/api/mapcore/util/co;->M:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/amap/api/mapcore/util/co;->N:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    aget-object v0, p1, v2

    iget v0, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    aget-object v1, p1, v4

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/co;->ap:F

    iget v0, p0, Lcom/amap/api/mapcore/util/co;->ap:F

    aget-object v1, p1, v5

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/co;->ap:F

    iget v0, p0, Lcom/amap/api/mapcore/util/co;->ap:F

    aget-object v1, p1, v6

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/co;->ap:F

    aget-object v0, p1, v2

    iget v0, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    aget-object v1, p1, v4

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/co;->aq:F

    iget v0, p0, Lcom/amap/api/mapcore/util/co;->aq:F

    aget-object v1, p1, v5

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/co;->aq:F

    iget v0, p0, Lcom/amap/api/mapcore/util/co;->aq:F

    aget-object v1, p1, v6

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/co;->aq:F

    aget-object v0, p1, v2

    iget v0, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    aget-object v1, p1, v4

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/co;->as:F

    iget v0, p0, Lcom/amap/api/mapcore/util/co;->as:F

    aget-object v1, p1, v5

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/co;->as:F

    iget v0, p0, Lcom/amap/api/mapcore/util/co;->as:F

    aget-object v1, p1, v6

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/co;->as:F

    aget-object v0, p1, v2

    iget v0, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    aget-object v1, p1, v4

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/co;->ar:F

    iget v0, p0, Lcom/amap/api/mapcore/util/co;->ar:F

    aget-object v1, p1, v5

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/co;->ar:F

    iget v0, p0, Lcom/amap/api/mapcore/util/co;->ar:F

    aget-object v1, p1, v6

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/co;->ar:F

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->u:Lcom/autonavi/amap/mapcore/FPoint;

    iget v0, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v1, p0, Lcom/amap/api/mapcore/util/co;->ap:F

    iget v2, p0, Lcom/amap/api/mapcore/util/co;->aq:F

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->K:Lcom/autonavi/amap/mapcore/FPoint;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->u:Lcom/autonavi/amap/mapcore/FPoint;

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v2, p0, Lcom/amap/api/mapcore/util/co;->M:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->u:Lcom/autonavi/amap/mapcore/FPoint;

    iget v0, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    iget v1, p0, Lcom/amap/api/mapcore/util/co;->as:F

    iget v2, p0, Lcom/amap/api/mapcore/util/co;->ar:F

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->K:Lcom/autonavi/amap/mapcore/FPoint;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->u:Lcom/autonavi/amap/mapcore/FPoint;

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    iput v1, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->K:Lcom/autonavi/amap/mapcore/FPoint;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->u:Lcom/autonavi/amap/mapcore/FPoint;

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v2, p0, Lcom/amap/api/mapcore/util/co;->M:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->K:Lcom/autonavi/amap/mapcore/FPoint;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->u:Lcom/autonavi/amap/mapcore/FPoint;

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    iget v2, p0, Lcom/amap/api/mapcore/util/co;->N:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    goto/16 :goto_0
.end method

.method private r()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->ac:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/q;->c()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->ac:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/q;->c()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    :cond_0
    return-void
.end method

.method private s()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->v:[F

    iget v2, p0, Lcom/amap/api/mapcore/util/co;->d:I

    mul-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x4

    iget-object v3, p0, Lcom/amap/api/mapcore/util/co;->Q:Lcom/amap/api/mapcore/util/s;

    invoke-virtual {v3}, Lcom/amap/api/mapcore/util/s;->b()F

    move-result v3

    aput v3, v1, v2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->v:[F

    iget v2, p0, Lcom/amap/api/mapcore/util/co;->d:I

    mul-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x5

    iget-object v2, p0, Lcom/amap/api/mapcore/util/co;->Q:Lcom/amap/api/mapcore/util/s;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/s;->d()F

    move-result v2

    aput v2, v1, v0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->v:[F

    iget v1, p0, Lcom/amap/api/mapcore/util/co;->d:I

    mul-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcom/amap/api/mapcore/util/co;->Q:Lcom/amap/api/mapcore/util/s;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/s;->c()F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->v:[F

    iget v1, p0, Lcom/amap/api/mapcore/util/co;->d:I

    mul-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x5

    iget-object v2, p0, Lcom/amap/api/mapcore/util/co;->Q:Lcom/amap/api/mapcore/util/s;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/s;->d()F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->v:[F

    iget v1, p0, Lcom/amap/api/mapcore/util/co;->d:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcom/amap/api/mapcore/util/co;->Q:Lcom/amap/api/mapcore/util/s;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/s;->c()F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->v:[F

    iget v1, p0, Lcom/amap/api/mapcore/util/co;->d:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x5

    iget-object v2, p0, Lcom/amap/api/mapcore/util/co;->Q:Lcom/amap/api/mapcore/util/s;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/s;->a()F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->v:[F

    iget v1, p0, Lcom/amap/api/mapcore/util/co;->d:I

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcom/amap/api/mapcore/util/co;->Q:Lcom/amap/api/mapcore/util/s;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/s;->b()F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->v:[F

    iget v1, p0, Lcom/amap/api/mapcore/util/co;->d:I

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x5

    iget-object v2, p0, Lcom/amap/api/mapcore/util/co;->Q:Lcom/amap/api/mapcore/util/s;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/s;->a()F

    move-result v2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private t()V
    .locals 9

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->J:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->e:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->e:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/co;->r()V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/animation/GLTransformation;-><init>()V

    iget-object v2, p0, Lcom/amap/api/mapcore/util/co;->e:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->getTransformation(JLcom/autonavi/amap/mapcore/animation/GLTransformation;)Z

    if-eqz v0, :cond_3

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scale_x:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_0

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scale_y:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_0

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scale_x:D

    double-to-float v2, v2

    iput v2, p0, Lcom/amap/api/mapcore/util/co;->x:F

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scale_y:D

    double-to-float v2, v2

    iput v2, p0, Lcom/amap/api/mapcore/util/co;->y:F

    :cond_0
    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->rotate:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->rotate:D

    double-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/amap/api/mapcore/util/co;->setRotateAngle(F)V

    :cond_1
    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->x:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_2

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->y:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_2

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->x:D

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->y:D

    iget-boolean v6, p0, Lcom/amap/api/mapcore/util/co;->al:Z

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v6

    iget-object v7, p0, Lcom/amap/api/mapcore/util/co;->ac:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v7}, Lcom/amap/api/mapcore/util/q;->c()Lcom/amap/api/mapcore/util/l;

    move-result-object v7

    invoke-interface {v7}, Lcom/amap/api/mapcore/util/l;->c()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v7

    double-to-int v2, v2

    double-to-int v3, v4

    invoke-virtual {v7, v2, v3, v6}, Lcom/autonavi/ae/gmap/GLMapState;->win2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/mapcore/util/co;->ac:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v3}, Lcom/amap/api/mapcore/util/q;->c()Lcom/amap/api/mapcore/util/l;

    move-result-object v3

    invoke-interface {v3}, Lcom/amap/api/mapcore/util/l;->c()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v3

    iget v4, v6, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v5, v6, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-virtual {v3, v4, v5, v2}, Lcom/autonavi/ae/gmap/GLMapState;->map2Geo(FFLcom/autonavi/amap/mapcore/IPoint;)V

    iget v3, v2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v4, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-direct {p0, v3, v4}, Lcom/amap/api/mapcore/util/co;->a(II)V

    invoke-virtual {v6}, Lcom/autonavi/amap/mapcore/FPoint;->recycle()V

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/co;->al:Z

    :cond_2
    :goto_0
    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->alpha:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_3

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->alpha:D

    double-to-float v0, v2

    iput v0, p0, Lcom/amap/api/mapcore/util/co;->z:F

    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v8, p0, Lcom/amap/api/mapcore/util/co;->k:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->ai:Z

    :goto_1
    return-void

    :cond_4
    double-to-int v2, v2

    double-to-int v3, v4

    :try_start_1
    invoke-direct {p0, v2, v3}, Lcom/amap/api/mapcore/util/co;->a(II)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    iput v1, p0, Lcom/amap/api/mapcore/util/co;->x:F

    iput v1, p0, Lcom/amap/api/mapcore/util/co;->y:F

    iput-boolean v8, p0, Lcom/amap/api/mapcore/util/co;->J:Z

    goto :goto_1
.end method

.method private u()I
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-array v0, v2, [I

    aput v1, v0, v1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v0, v0, v1

    return v0
.end method

.method private v()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->ac:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/q;->c()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->ac:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/q;->c()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->ac:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/q;->c()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapPerPixelUnitLength()F

    move-result v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/co;->n()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/co;->M:F

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->ac:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/q;->c()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapPerPixelUnitLength()F

    move-result v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/co;->o()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/co;->N:F

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/autonavi/amap/mapcore/FPoint;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->u:Lcom/autonavi/amap/mapcore/FPoint;

    return-object v0
.end method

.method public a(Lcom/amap/api/mapcore/util/l;)V
    .locals 11

    const/4 v6, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->ah:Z

    if-nez v0, :cond_5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->af:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->af:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/amap/api/mapcore/util/s;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/co;->R:[Lcom/amap/api/mapcore/util/s;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_3

    move v5, v6

    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->af:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v4, v3

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/BitmapDescriptor;

    const/4 v1, 0x0

    if-eqz v5, :cond_a

    invoke-interface {p1, v0}, Lcom/amap/api/mapcore/util/l;->a(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/mapcore/util/s;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/s;->f()I

    move-result v2

    :goto_2
    if-nez v1, :cond_0

    new-instance v1, Lcom/amap/api/mapcore/util/s;

    invoke-direct {v1, v0, v2}, Lcom/amap/api/mapcore/util/s;-><init>(Lcom/amap/api/maps/model/BitmapDescriptor;I)V

    :cond_0
    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/amap/api/mapcore/util/co;->O:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/amap/api/mapcore/util/co;->P:I

    iget-object v2, p0, Lcom/amap/api/mapcore/util/co;->ac:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/q;->c()Lcom/amap/api/mapcore/util/l;

    move-result-object v2

    invoke-interface {v2}, Lcom/amap/api/mapcore/util/l;->e()I

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/co;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore/util/s;->a(I)V

    if-eqz v5, :cond_1

    invoke-interface {p1, v1}, Lcom/amap/api/mapcore/util/l;->a(Lcom/amap/api/mapcore/util/s;)V

    :cond_1
    const/4 v8, 0x0

    invoke-static {v2, v0, v8}, Lcom/amap/api/mapcore/util/ee;->b(ILandroid/graphics/Bitmap;Z)I

    :cond_2
    :goto_3
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/s;->g()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->R:[Lcom/amap/api/mapcore/util/s;

    aput-object v1, v0, v4

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_3
    move v5, v3

    goto :goto_0

    :cond_4
    iget-object v8, p0, Lcom/amap/api/mapcore/util/co;->ac:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v8, v0, v1}, Lcom/amap/api/mapcore/util/q;->a(Landroid/graphics/Bitmap;Lcom/amap/api/mapcore/util/s;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/s;->b()F

    move-result v8

    const/high16 v9, 0x44000000    # 512.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/s;->a()F

    move-result v9

    const/high16 v10, 0x44800000    # 1024.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-static {v2, v0, v8, v9}, Lcom/amap/api/mapcore/util/ee;->a(ILandroid/graphics/Bitmap;II)I

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore/util/s;->a(I)V

    :goto_4
    if-eqz v5, :cond_2

    invoke-interface {p1, v1}, Lcom/amap/api/mapcore/util/l;->a(Lcom/amap/api/mapcore/util/s;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "MarkerDelegateImp"

    const-string v2, "loadtexture"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_5
    return-void

    :cond_6
    :try_start_2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/co;->u()I

    move-result v2

    const/4 v8, 0x0

    invoke-static {v2, v0, v8}, Lcom/amap/api/mapcore/util/ee;->b(ILandroid/graphics/Bitmap;Z)I

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore/util/s;->a(I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_7
    :try_start_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->af:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v6, :cond_9

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->ai:Z

    :goto_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->G:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->ah:Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_8
    :try_start_5
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/co;->p()Z

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    :cond_9
    const/4 v0, 0x0

    :try_start_6
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->ai:Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    :cond_a
    move v2, v3

    goto/16 :goto_2
.end method

.method public a(Lcom/amap/api/mapcore/util/l;[FIF)V
    .locals 4

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->S:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->U:Lcom/amap/api/maps/model/LatLng;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->al:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->af:Ljava/util/List;

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->u:Lcom/autonavi/amap/mapcore/FPoint;

    iget v1, p0, Lcom/amap/api/mapcore/util/co;->s:I

    invoke-interface {p1}, Lcom/amap/api/mapcore/util/l;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_x()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->u:Lcom/autonavi/amap/mapcore/FPoint;

    iget v1, p0, Lcom/amap/api/mapcore/util/co;->t:I

    invoke-interface {p1}, Lcom/amap/api/mapcore/util/l;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_y()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->i:Z

    if-nez v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/co;->ao:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->i:Z

    :cond_3
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->al:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->F:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/amap/api/mapcore/util/co;->am:I

    iget v1, p0, Lcom/amap/api/mapcore/util/co;->an:I

    iget-object v2, p0, Lcom/amap/api/mapcore/util/co;->u:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-interface {p1, v0, v1, v2}, Lcom/amap/api/mapcore/util/l;->b(IILandroid/graphics/PointF;)V

    :cond_4
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/co;->t()V

    invoke-direct {p0, p1, p4}, Lcom/amap/api/mapcore/util/co;->a(Lcom/amap/api/mapcore/util/l;F)V

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->G:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->ai:Z

    if-nez v0, :cond_6

    :cond_5
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/co;->s()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->G:Z

    :cond_6
    invoke-direct {p0, p2, p3}, Lcom/amap/api/mapcore/util/co;->a([FI)V

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->k:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/co;->isInfoWindowShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->ac:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/q;->c()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->j()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amap/api/mapcore/util/co;->ao:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->k:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MarkerDelegateImp"

    const-string v2, "drawMarker"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public declared-synchronized a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/co;->m()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/co;->af:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->af:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->af:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/co;->O:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->af:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/co;->P:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->af:Ljava/util/List;

    invoke-static {}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->defaultMarker()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->af:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/co;->O:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->af:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/co;->P:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public a(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/co;->j:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->k:Z

    return-void
.end method

.method public b()Lcom/amap/api/maps/model/LatLng;
    .locals 6

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->al:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->ac:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/q;->c()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->c()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/mapcore/util/co;->am:I

    iget v2, p0, Lcom/amap/api/mapcore/util/co;->an:I

    iget-object v3, p0, Lcom/amap/api/mapcore/util/co;->u:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-virtual {v0, v1, v2, v3}, Lcom/autonavi/ae/gmap/GLMapState;->win2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->ac:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/q;->c()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    iget v2, p0, Lcom/amap/api/mapcore/util/co;->am:I

    iget v3, p0, Lcom/amap/api/mapcore/util/co;->an:I

    invoke-interface {v0, v2, v3, v1}, Lcom/amap/api/mapcore/util/l;->b(IILcom/autonavi/amap/mapcore/DPoint;)V

    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, v1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->ag:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->V:Lcom/amap/api/maps/model/LatLng;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->U:Lcom/amap/api/maps/model/LatLng;

    goto :goto_0
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/co;->I:Z

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/co;->o:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/co;->p:I

    return v0
.end method

.method public destroy(Z)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/co;->S:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/co;->remove()Z

    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->ac:Lcom/amap/api/mapcore/util/q;

    if-eqz v1, :cond_2

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/co;->R:[Lcom/amap/api/mapcore/util/s;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amap/api/mapcore/util/co;->R:[Lcom/amap/api/mapcore/util/s;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/amap/api/mapcore/util/co;->R:[Lcom/amap/api/mapcore/util/s;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/amap/api/mapcore/util/co;->ac:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v3, v2}, Lcom/amap/api/mapcore/util/q;->a(Lcom/amap/api/mapcore/util/s;)V

    iget-object v3, p0, Lcom/amap/api/mapcore/util/co;->ac:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v3}, Lcom/amap/api/mapcore/util/q;->c()Lcom/amap/api/mapcore/util/l;

    move-result-object v3

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/s;->j()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/amap/api/mapcore/util/l;->b(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->af:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->af:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->af:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/co;->U:Lcom/amap/api/maps/model/LatLng;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/co;->ad:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/co;->R:[Lcom/amap/api/mapcore/util/s;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MarkerDelegateImp"

    const-string v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const-string v0, "destroy erro"

    const-string v1, "MarkerDelegateImp destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/co;->q:I

    return v0
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

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/co;->getId()Ljava/lang/String;

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

.method public f()I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/co;->r:I

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->al:Z

    return v0
.end method

.method public getAlpha()F
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/co;->z:F

    return v0
.end method

.method public getAnchorU()F
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/co;->Y:F

    return v0
.end method

.method public getAnchorV()F
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/co;->Z:F

    return v0
.end method

.method public getDisplayLevel()I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/co;->D:I

    return v0
.end method

.method public getGeoPoint()Lcom/autonavi/amap/mapcore/IPoint;
    .locals 4

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/co;->al:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->ac:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/q;->c()Lcom/amap/api/mapcore/util/l;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/mapcore/util/co;->am:I

    iget v3, p0, Lcom/amap/api/mapcore/util/co;->an:I

    invoke-interface {v1, v2, v3, v0}, Lcom/amap/api/mapcore/util/l;->a(IILcom/autonavi/amap/mapcore/IPoint;)V

    :goto_0
    return-object v0

    :cond_0
    iget v1, p0, Lcom/amap/api/mapcore/util/co;->s:I

    iget v2, p0, Lcom/amap/api/mapcore/util/co;->t:I

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amap/mapcore/IPoint;->set(II)V

    goto :goto_0
.end method

.method public getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;
    .locals 0

    return-object p0
.end method

.method public declared-synchronized getIcons()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->af:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->af:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->af:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    move-object v0, v1

    :goto_1
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->T:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Marker"

    invoke-static {v0}, Lcom/amap/api/mapcore/util/co;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/co;->T:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->T:Ljava/lang/String;

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->ad:Ljava/lang/Object;

    return-object v0
.end method

.method public getOptions()Lcom/amap/api/maps/model/MarkerOptions;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->A:Lcom/amap/api/maps/model/MarkerOptions;

    return-object v0
.end method

.method public getPeriod()I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/co;->ak:I

    return v0
.end method

.method public getPosition()Lcom/amap/api/maps/model/LatLng;
    .locals 8

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->al:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->u:Lcom/autonavi/amap/mapcore/FPoint;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v1

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/co;->p()Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->ac:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/q;->c()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    iget-object v3, p0, Lcom/amap/api/mapcore/util/co;->u:Lcom/autonavi/amap/mapcore/FPoint;

    iget v3, v3, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget-object v4, p0, Lcom/amap/api/mapcore/util/co;->u:Lcom/autonavi/amap/mapcore/FPoint;

    iget v4, v4, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-interface {v0, v3, v4, v2}, Lcom/amap/api/mapcore/util/l;->a(FFLcom/autonavi/amap/mapcore/IPoint;)V

    iget v0, v2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v3, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-static {v0, v3, v1}, Lcom/autonavi/ae/gmap/GLMapState;->geo2LonLat(IILcom/autonavi/amap/mapcore/DPoint;)V

    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v6, v1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->U:Lcom/amap/api/maps/model/LatLng;

    goto :goto_0
.end method

.method public getRotateAngle()F
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/co;->r()V

    iget v0, p0, Lcom/amap/api/mapcore/util/co;->m:F

    return v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->X:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->W:Ljava/lang/String;

    return-object v0
.end method

.method public getZIndex()F
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/co;->w:F

    return v0
.end method

.method public h()Landroid/graphics/Rect;
    .locals 12

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->v:[F

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, v10, v10, v10, v10}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->c:Landroid/graphics/Rect;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->ac:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/q;->c()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->c()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/co;->n()I

    move-result v6

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/co;->o()I

    move-result v7

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v8

    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->u:Lcom/autonavi/amap/mapcore/FPoint;

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget-object v2, p0, Lcom/amap/api/mapcore/util/co;->u:Lcom/autonavi/amap/mapcore/FPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-virtual {v0, v1, v2, v8}, Lcom/autonavi/ae/gmap/GLMapState;->map2Win(FFLcom/autonavi/amap/mapcore/IPoint;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->a:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->a:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/amap/api/mapcore/util/co;->l:F

    neg-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->n:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->a:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/co;->ac:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/q;->c()Lcom/amap/api/mapcore/util/l;

    move-result-object v2

    invoke-interface {v2}, Lcom/amap/api/mapcore/util/l;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_c()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->a:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/co;->ac:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/q;->c()Lcom/amap/api/mapcore/util/l;

    move-result-object v2

    invoke-interface {v2}, Lcom/amap/api/mapcore/util/l;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_r()F

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    :cond_1
    const/4 v0, 0x4

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->b:[F

    const/4 v2, 0x0

    neg-int v3, v6

    int-to-float v3, v3

    iget v4, p0, Lcom/amap/api/mapcore/util/co;->Y:F

    mul-float/2addr v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->b:[F

    const/4 v2, 0x1

    int-to-float v3, v7

    iget v4, p0, Lcom/amap/api/mapcore/util/co;->Z:F

    mul-float/2addr v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->b:[F

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v1, v2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->b:[F

    const/4 v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/co;->a:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/amap/api/mapcore/util/co;->b:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->c:Landroid/graphics/Rect;

    iget v2, v8, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-float v2, v2

    const/4 v3, 0x0

    aget v3, v0, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, v8, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-float v3, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, v8, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-float v4, v4

    const/4 v5, 0x0

    aget v5, v0, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, v8, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-float v5, v5

    const/4 v9, 0x1

    aget v9, v0, v9

    sub-float/2addr v5, v9

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->b:[F

    const/4 v2, 0x0

    int-to-float v3, v6

    iget v4, p0, Lcom/amap/api/mapcore/util/co;->Y:F

    sub-float v4, v11, v4

    mul-float/2addr v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->b:[F

    const/4 v2, 0x1

    int-to-float v3, v7

    iget v4, p0, Lcom/amap/api/mapcore/util/co;->Z:F

    mul-float/2addr v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->b:[F

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v1, v2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->b:[F

    const/4 v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/co;->a:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/amap/api/mapcore/util/co;->b:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->c:Landroid/graphics/Rect;

    iget v2, v8, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-float v2, v2

    const/4 v3, 0x0

    aget v3, v0, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, v8, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-float v3, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->union(II)V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->b:[F

    const/4 v2, 0x0

    int-to-float v3, v6

    iget v4, p0, Lcom/amap/api/mapcore/util/co;->Y:F

    sub-float v4, v11, v4

    mul-float/2addr v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->b:[F

    const/4 v2, 0x1

    neg-int v3, v7

    int-to-float v3, v3

    iget v4, p0, Lcom/amap/api/mapcore/util/co;->Z:F

    sub-float v4, v11, v4

    mul-float/2addr v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->b:[F

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v1, v2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->b:[F

    const/4 v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/co;->a:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/amap/api/mapcore/util/co;->b:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->c:Landroid/graphics/Rect;

    iget v2, v8, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-float v2, v2

    const/4 v3, 0x0

    aget v3, v0, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, v8, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-float v3, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->union(II)V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->b:[F

    const/4 v2, 0x0

    neg-int v3, v6

    int-to-float v3, v3

    iget v4, p0, Lcom/amap/api/mapcore/util/co;->Y:F

    mul-float/2addr v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->b:[F

    const/4 v2, 0x1

    neg-int v3, v7

    int-to-float v3, v3

    iget v4, p0, Lcom/amap/api/mapcore/util/co;->Z:F

    sub-float v4, v11, v4

    mul-float/2addr v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->b:[F

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v1, v2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->b:[F

    const/4 v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/co;->a:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/amap/api/mapcore/util/co;->b:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->c:Landroid/graphics/Rect;

    iget v2, v8, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-float v2, v2

    const/4 v3, 0x0

    aget v3, v0, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, v8, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-float v3, v3

    const/4 v4, 0x1

    aget v0, v0, v4

    sub-float v0, v3, v0

    float-to-int v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Rect;->union(II)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget v1, v8, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/co;->q:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, v8, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/co;->r:I

    invoke-virtual {v8}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->c:Landroid/graphics/Rect;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MarkerDelegateImp"

    const-string v2, "getRect"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v10, v10, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/16 :goto_0
.end method

.method public hashCodeRemote()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public hideInfoWindow()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/co;->isInfoWindowShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->ac:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/util/q;->b(Lcom/amap/api/mapcore/util/cj;)V

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/co;->r()V

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/co;->j:Z

    :cond_0
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/co;->k:Z

    return-void
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->ai:Z

    return v0
.end method

.method public isClickable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->E:Z

    return v0
.end method

.method public isDraggable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->aa:Z

    return v0
.end method

.method public isFlat()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->n:Z

    return v0
.end method

.method public isInfoWindowAutoOverturn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->B:Z

    return v0
.end method

.method public isInfoWindowEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->C:Z

    return v0
.end method

.method public isInfoWindowShown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->j:Z

    return v0
.end method

.method public isPerspective()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->ae:Z

    return v0
.end method

.method public isRemoved()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->ac:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v1, p0}, Lcom/amap/api/mapcore/util/q;->c(Lcom/amap/api/mapcore/util/cj;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->ab:Z

    return v0
.end method

.method public j()Z
    .locals 4

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/co;->al:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->u:Lcom/autonavi/amap/mapcore/FPoint;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/co;->J:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->L:Landroid/graphics/Point;

    iget v2, p0, Lcom/amap/api/mapcore/util/co;->s:I

    iput v2, v1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->L:Landroid/graphics/Point;

    iget v2, p0, Lcom/amap/api/mapcore/util/co;->t:I

    iput v2, v1, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->ac:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/q;->c()Lcom/amap/api/mapcore/util/l;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/l;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/amap/mapcore/Rectangle;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/mapcore/util/co;->s:I

    iget v3, p0, Lcom/amap/api/mapcore/util/co;->t:I

    invoke-virtual {v1, v2, v3}, Lcom/autonavi/amap/mapcore/Rectangle;->contains(II)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/co;->v()V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->K:Lcom/autonavi/amap/mapcore/FPoint;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/co;->u:Lcom/autonavi/amap/mapcore/FPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iput v2, v1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->K:Lcom/autonavi/amap/mapcore/FPoint;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/co;->u:Lcom/autonavi/amap/mapcore/FPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    iput v2, v1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->ac:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/q;->c()Lcom/amap/api/mapcore/util/l;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/l;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapRect()[Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/co;->a([Lcom/autonavi/amap/mapcore/FPoint;)V

    iget-object v2, p0, Lcom/amap/api/mapcore/util/co;->K:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-static {v2, v1}, Lcom/amap/api/mapcore/util/ee;->a(Lcom/autonavi/amap/mapcore/FPoint;[Lcom/autonavi/amap/mapcore/FPoint;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->af:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->af:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->Q:Lcom/amap/api/mapcore/util/s;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/s;->f()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->I:Z

    return v0
.end method

.method declared-synchronized m()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->af:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->af:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public n()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/amap/api/mapcore/util/co;->O:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/amap/api/mapcore/util/co;->P:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->ac:Lcom/amap/api/mapcore/util/q;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->ac:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/q;->c()Lcom/amap/api/mapcore/util/l;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->ac:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/q;->c()Lcom/amap/api/mapcore/util/l;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/l;->c()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->u:Lcom/autonavi/amap/mapcore/FPoint;

    if-nez v1, :cond_2

    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/mapcore/util/co;->u:Lcom/autonavi/amap/mapcore/FPoint;

    :cond_2
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/co;->al:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->ac:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/q;->c()Lcom/amap/api/mapcore/util/l;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/mapcore/util/co;->am:I

    iget v3, p0, Lcom/amap/api/mapcore/util/co;->an:I

    iget-object v4, p0, Lcom/amap/api/mapcore/util/co;->u:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-interface {v1, v2, v3, v4}, Lcom/amap/api/mapcore/util/l;->b(IILandroid/graphics/PointF;)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->ac:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/q;->c()Lcom/amap/api/mapcore/util/l;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/mapcore/util/co;->t:I

    iget v3, p0, Lcom/amap/api/mapcore/util/co;->s:I

    iget-object v4, p0, Lcom/amap/api/mapcore/util/co;->u:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-interface {v1, v2, v3, v4}, Lcom/amap/api/mapcore/util/l;->a(IILcom/autonavi/amap/mapcore/FPoint;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public q()Lcom/autonavi/amap/mapcore/interfaces/IAnimation;
    .locals 0

    return-object p0
.end method

.method public remove()Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/co;->r()V

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->ab:Z

    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->ac:Lcom/amap/api/mapcore/util/q;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->ac:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/util/q;->a(Lcom/amap/api/mapcore/util/cj;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public set2Top()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->ac:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/util/q;->a(Lcom/amap/api/mapcore/util/cg;)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    iput p1, p0, Lcom/amap/api/mapcore/util/co;->z:F

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->alpha(F)Lcom/amap/api/maps/model/MarkerOptions;

    return-void
.end method

.method public setAnchor(FF)V
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/co;->Y:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/amap/api/mapcore/util/co;->Z:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/maps/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps/model/MarkerOptions;

    iput p1, p0, Lcom/amap/api/mapcore/util/co;->Y:F

    iput p2, p0, Lcom/amap/api/mapcore/util/co;->Z:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->k:Z

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/co;->r()V

    goto :goto_0
.end method

.method public setAnimation(Lcom/amap/api/maps/model/animation/Animation;)V
    .locals 2

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/co;->q()Lcom/autonavi/amap/mapcore/interfaces/IAnimation;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAnimation;->setAnimation(Lcom/autonavi/amap/mapcore/animation/GLAnimation;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    goto :goto_0
.end method

.method public setAnimation(Lcom/autonavi/amap/mapcore/animation/GLAnimation;)V
    .locals 0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/amap/api/mapcore/util/co;->f:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    goto :goto_0
.end method

.method public setAnimationListener(Lcom/amap/api/maps/model/animation/Animation$AnimationListener;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->e:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->e:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->setAnimationListener(Lcom/amap/api/maps/model/animation/Animation$AnimationListener;)V

    :cond_0
    return-void
.end method

.method public setAutoOverturnInfoWindow(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/co;->B:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->autoOverturnInfoWindow(Z)Lcom/amap/api/maps/model/MarkerOptions;

    return-void
.end method

.method public setBelowMaskLayer(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/co;->H:Z

    return-void
.end method

.method public setClickable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/co;->E:Z

    return-void
.end method

.method public setDisplayLevel(I)V
    .locals 1

    iput p1, p0, Lcom/amap/api/mapcore/util/co;->D:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->displayLevel(I)Lcom/amap/api/maps/model/MarkerOptions;

    return-void
.end method

.method public setDraggable(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/co;->aa:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->draggable(Z)Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/co;->r()V

    return-void
.end method

.method public setFixingPointEnable(Z)V
    .locals 4

    const/4 v1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/co;->F:Z

    if-nez p1, :cond_2

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/amap/api/mapcore/util/co;->al:Z

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/co;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/mapcore/util/co;->U:Lcom/amap/api/maps/model/LatLng;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/co;->U:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p0, v2}, Lcom/amap/api/mapcore/util/co;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/co;->al:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->al:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->U:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->ac:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/q;->c()Lcom/amap/api/mapcore/util/l;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/l;->c()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/co;->u:Lcom/autonavi/amap/mapcore/FPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget-object v3, p0, Lcom/amap/api/mapcore/util/co;->u:Lcom/autonavi/amap/mapcore/FPoint;

    iget v3, v3, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-virtual {v1, v2, v3, v0}, Lcom/autonavi/ae/gmap/GLMapState;->map2Win(FFLcom/autonavi/amap/mapcore/IPoint;)V

    iget v1, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iput v1, p0, Lcom/amap/api/mapcore/util/co;->am:I

    iget v1, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iput v1, p0, Lcom/amap/api/mapcore/util/co;->an:I

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    goto :goto_0
.end method

.method public setFlat(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/co;->n:Z

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/co;->r()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->setFlat(Z)Lcom/amap/api/maps/model/MarkerOptions;

    return-void
.end method

.method public setGeoPoint(Lcom/autonavi/amap/mapcore/IPoint;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->al:Z

    iget v0, p1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v1, p1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-direct {p0, v0, v1}, Lcom/amap/api/mapcore/util/co;->a(II)V

    return-void
.end method

.method public setIcon(Lcom/amap/api/maps/model/BitmapDescriptor;)V
    .locals 3

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->af:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->af:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->af:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->G:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->ah:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->i:Z

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/co;->r()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->k:Z

    invoke-virtual {p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/co;->O:I

    invoke-virtual {p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/co;->P:I

    monitor-exit p0

    goto :goto_0

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

    const-string v1, "MarkerDelegateImp"

    const-string v2, "setIcon"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public declared-synchronized setIcons(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->af:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/co;->a(Ljava/util/ArrayList;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->ah:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->i:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->G:Z

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/co;->r()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->k:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "MarkerDelegateImp"

    const-string v2, "setIcons"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setInfoWindowEnable(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/co;->C:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/co;->hideInfoWindow()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->infoWindowEnable(Z)Lcom/amap/api/maps/model/MarkerOptions;

    return-void
.end method

.method public setMarkerOptions(Lcom/amap/api/maps/model/MarkerOptions;)V
    .locals 8

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/amap/api/mapcore/util/co;->A:Lcom/amap/api/maps/model/MarkerOptions;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/co;->U:Lcom/amap/api/maps/model/LatLng;

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->isGps()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->ag:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->ag:Z

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    iget-wide v2, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3, v4, v5}, Lcom/amap/api/mapcore/util/ig;->a(DD)[D

    move-result-object v0

    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    const/4 v3, 0x1

    aget-wide v4, v0, v3

    const/4 v3, 0x0

    aget-wide v6, v0, v3

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    iput-object v2, p0, Lcom/amap/api/mapcore/util/co;->V:Lcom/amap/api/maps/model/LatLng;

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    const/4 v4, 0x1

    aget-wide v4, v0, v4

    invoke-static {v2, v3, v4, v5, v1}, Lcom/autonavi/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget v0, v1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iput v0, p0, Lcom/amap/api/mapcore/util/co;->s:I

    iget v0, v1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iput v0, p0, Lcom/amap/api/mapcore/util/co;->t:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getAnchorU()F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/co;->Y:F

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getAnchorV()F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/co;->Z:F

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getInfoWindowOffsetX()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/co;->o:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getInfoWindowOffsetY()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/co;->p:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getPeriod()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/co;->ak:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getZIndex()F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/co;->w:F

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->isBelowMaskLayer()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->H:Z

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/co;->p()Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getIcons()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/co;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->isVisible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->ab:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getSnippet()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/co;->X:Ljava/lang/String;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/co;->W:Ljava/lang/String;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->isDraggable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->aa:Z

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/co;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/co;->T:Ljava/lang/String;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->isPerspective()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->ae:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->isFlat()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->n:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->isBelowMaskLayer()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->H:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getAlpha()F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/co;->z:F

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getRotateAngle()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/co;->setRotateAngle(F)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getDisplayLevel()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/co;->D:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->isInfoWindowAutoOverturn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->B:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->isInfoWindowEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->C:Z

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/amap/api/mapcore/util/co;->a:[F

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:[F

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v2, "MarkerDelegateImp"

    const-string v3, "create"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/co;->V:Lcom/amap/api/maps/model/LatLng;

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->U:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->U:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3, v4, v5, v1}, Lcom/autonavi/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    goto/16 :goto_1
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/co;->ad:Ljava/lang/Object;

    return-void
.end method

.method public setPeriod(I)V
    .locals 1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    iput v0, p0, Lcom/amap/api/mapcore/util/co;->ak:I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/amap/api/mapcore/util/co;->ak:I

    goto :goto_0
.end method

.method public setPerspective(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/co;->ae:Z

    return-void
.end method

.method public setPosition(Lcom/amap/api/maps/model/LatLng;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-nez p1, :cond_0

    new-instance v0, Lcom/amap/api/maps/AMapException;

    const-string v1, "\u975e\u6cd5\u5750\u6807\u503c latlng is null"

    invoke-direct {v0, v1}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    const-string v1, "setPosition"

    const-string v2, "Marker"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/amap/api/mapcore/util/co;->U:Lcom/amap/api/maps/model/LatLng;

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/co;->ag:Z

    if-eqz v1, :cond_1

    :try_start_0
    iget-wide v2, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v4, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3, v4, v5}, Lcom/amap/api/mapcore/util/ig;->a(DD)[D

    move-result-object v1

    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    const/4 v3, 0x1

    aget-wide v4, v1, v3

    const/4 v3, 0x0

    aget-wide v6, v1, v3

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    iput-object v2, p0, Lcom/amap/api/mapcore/util/co;->V:Lcom/amap/api/maps/model/LatLng;

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    const/4 v4, 0x1

    aget-wide v4, v1, v4

    invoke-static {v2, v3, v4, v5, v0}, Lcom/autonavi/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget v1, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iput v1, p0, Lcom/amap/api/mapcore/util/co;->s:I

    iget v1, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iput v1, p0, Lcom/amap/api/mapcore/util/co;->t:I

    iput-boolean v8, p0, Lcom/amap/api/mapcore/util/co;->al:Z

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/co;->p()Z

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/co;->r()V

    iput-boolean v9, p0, Lcom/amap/api/mapcore/util/co;->k:Z

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    goto :goto_0

    :catch_0
    move-exception v1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/co;->V:Lcom/amap/api/maps/model/LatLng;

    goto :goto_1

    :cond_1
    iget-wide v2, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v4, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3, v4, v5, v0}, Lcom/autonavi/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    goto :goto_1
.end method

.method public setPositionByPixels(II)V
    .locals 1

    const/4 v0, 0x1

    iput p1, p0, Lcom/amap/api/mapcore/util/co;->am:I

    iput p2, p0, Lcom/amap/api/mapcore/util/co;->an:I

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->al:Z

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/co;->p()Z

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/co;->r()V

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->k:Z

    return-void
.end method

.method public setPositionNotUpdate(Lcom/amap/api/maps/model/LatLng;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/co;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    return-void
.end method

.method public setRotateAngle(F)V
    .locals 2

    const/high16 v1, 0x43b40000    # 360.0f

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->rotateAngle(F)Lcom/amap/api/maps/model/MarkerOptions;

    iput p1, p0, Lcom/amap/api/mapcore/util/co;->m:F

    neg-float v0, p1

    rem-float/2addr v0, v1

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/co;->l:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->k:Z

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/co;->r()V

    return-void
.end method

.method public setRotateAngleNotUpdate(F)V
    .locals 0

    return-void
.end method

.method public setSnippet(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/co;->X:Ljava/lang/String;

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/co;->r()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/amap/api/maps/model/MarkerOptions;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/co;->W:Ljava/lang/String;

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/co;->r()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/amap/api/maps/model/MarkerOptions;

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->ab:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->visible(Z)Lcom/amap/api/maps/model/MarkerOptions;

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/co;->ab:Z

    if-nez p1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->I:Z

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/co;->isInfoWindowShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->ac:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/util/q;->b(Lcom/amap/api/mapcore/util/cj;)V

    :cond_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/co;->r()V

    goto :goto_0
.end method

.method public setZIndex(F)V
    .locals 1

    iput p1, p0, Lcom/amap/api/mapcore/util/co;->w:F

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->zIndex(F)Lcom/amap/api/maps/model/MarkerOptions;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->ac:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/q;->f()V

    return-void
.end method

.method public showInfoWindow()V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->ab:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/co;->isInfoWindowEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->ac:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/util/q;->b(Lcom/amap/api/mapcore/util/cg;)V

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/co;->r()V

    goto :goto_0
.end method

.method public startAnimation()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->f:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/amap/api/mapcore/util/co;->g:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->f:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    instance-of v0, v0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->f:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    check-cast v0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/co;->a(Lcom/autonavi/amap/mapcore/animation/GLAnimation;)V

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->getDuration()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->setDuration(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->f:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/co;->a(Lcom/autonavi/amap/mapcore/animation/GLAnimation;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/co;->J:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->f:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/co;->e:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->e:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->start()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/co;->r()V

    :cond_2
    return v6
.end method
