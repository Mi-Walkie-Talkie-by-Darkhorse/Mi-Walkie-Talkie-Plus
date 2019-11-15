.class public Lcom/amap/api/mapcore/util/cs;
.super Ljava/lang/Object;
.source "PolylineDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore/util/cl;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:F

.field private K:F

.field private L:F

.field private M:F

.field private N:F

.field private O:F

.field private P:F

.field private Q:F

.field private R:F

.field private S:[F

.field private T:[I

.field private U:[I

.field private V:D

.field private W:Z

.field private final X:I

.field private Y:Lcom/autonavi/amap/mapcore/FPointBounds;

.field private Z:Lcom/amap/api/maps/model/PolylineOptions;

.field a:Landroid/graphics/Rect;

.field private aa:I

.field private ab:I

.field private ac:Lcom/amap/api/mapcore/util/cx$d;

.field b:I

.field c:I

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/FPoint;",
            ">;"
        }
    .end annotation
.end field

.field e:J

.field private f:Lcom/amap/api/mapcore/util/i;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/amap/mapcore/IPoint;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/amap/mapcore/FPoint;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore/util/s;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/nio/FloatBuffer;

.field private r:Lcom/amap/api/maps/model/BitmapDescriptor;

.field private s:Lcom/amap/api/maps/model/LatLngBounds;

.field private t:Ljava/lang/Object;

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/util/i;Lcom/amap/api/maps/model/PolylineOptions;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cs;->h:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cs;->i:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cs;->j:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cs;->k:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cs;->l:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cs;->m:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cs;->n:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cs;->o:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cs;->p:Ljava/util/List;

    iput-object v3, p0, Lcom/amap/api/mapcore/util/cs;->r:Lcom/amap/api/maps/model/BitmapDescriptor;

    iput-object v3, p0, Lcom/amap/api/mapcore/util/cs;->s:Lcom/amap/api/maps/model/LatLngBounds;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cs;->t:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/cs;->u:Z

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/cs;->v:Z

    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/cs;->w:Z

    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/cs;->x:Z

    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/cs;->y:Z

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/cs;->z:Z

    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/cs;->A:Z

    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/cs;->B:Z

    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/cs;->C:Z

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/cs;->D:Z

    iput v2, p0, Lcom/amap/api/mapcore/util/cs;->E:I

    iput v2, p0, Lcom/amap/api/mapcore/util/cs;->F:I

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/amap/api/mapcore/util/cs;->G:I

    iput v2, p0, Lcom/amap/api/mapcore/util/cs;->H:I

    iput v2, p0, Lcom/amap/api/mapcore/util/cs;->I:I

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/amap/api/mapcore/util/cs;->J:F

    iput v4, p0, Lcom/amap/api/mapcore/util/cs;->K:F

    iput v4, p0, Lcom/amap/api/mapcore/util/cs;->L:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/amap/api/mapcore/util/cs;->Q:F

    iput v4, p0, Lcom/amap/api/mapcore/util/cs;->R:F

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/cs;->V:D

    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/cs;->W:Z

    iput v5, p0, Lcom/amap/api/mapcore/util/cs;->X:I

    iput-object v3, p0, Lcom/amap/api/mapcore/util/cs;->Y:Lcom/autonavi/amap/mapcore/FPointBounds;

    iput-object v3, p0, Lcom/amap/api/mapcore/util/cs;->a:Landroid/graphics/Rect;

    iput v2, p0, Lcom/amap/api/mapcore/util/cs;->aa:I

    iput v5, p0, Lcom/amap/api/mapcore/util/cs;->ab:I

    iput v2, p0, Lcom/amap/api/mapcore/util/cs;->b:I

    iput v2, p0, Lcom/amap/api/mapcore/util/cs;->c:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cs;->d:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/cs;->e:J

    iput-object p1, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {p0, p2}, Lcom/amap/api/mapcore/util/cs;->setOptions(Lcom/amap/api/maps/model/PolylineOptions;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cs;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cs;->g:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "PolylineDelegateImp"

    const-string v2, "create"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(DDDDDD)D
    .locals 9

    sub-double v0, p9, p5

    sub-double v2, p1, p5

    mul-double/2addr v0, v2

    sub-double v2, p11, p7

    sub-double v4, p3, p7

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_0

    sub-double v0, p1, p5

    sub-double v2, p1, p5

    mul-double/2addr v0, v2

    sub-double v2, p3, p7

    sub-double v4, p3, p7

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    sub-double v2, p9, p5

    sub-double v4, p9, p5

    mul-double/2addr v2, v4

    sub-double v4, p11, p7

    sub-double v6, p11, p7

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_1

    sub-double v0, p1, p9

    sub-double v2, p1, p9

    mul-double/2addr v0, v2

    sub-double v2, p3, p11

    sub-double v4, p3, p11

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    goto :goto_0

    :cond_1
    div-double/2addr v0, v2

    sub-double v2, p9, p5

    mul-double/2addr v2, v0

    add-double/2addr v2, p5

    sub-double v4, p11, p7

    mul-double/2addr v0, v4

    add-double v0, v0, p7

    sub-double v4, p1, v2

    sub-double v2, p1, v2

    mul-double/2addr v2, v4

    sub-double v4, v0, p3

    sub-double/2addr v0, p3

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    goto :goto_0
.end method

.method private a(Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;)D
    .locals 16

    move-object/from16 v0, p1

    iget v2, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    float-to-double v4, v2

    move-object/from16 v0, p1

    iget v2, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    float-to-double v6, v2

    move-object/from16 v0, p2

    iget v2, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    float-to-double v8, v2

    move-object/from16 v0, p2

    iget v2, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    float-to-double v10, v2

    move-object/from16 v0, p3

    iget v2, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    float-to-double v12, v2

    move-object/from16 v0, p3

    iget v2, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    float-to-double v14, v2

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v15}, Lcom/amap/api/mapcore/util/cs;->a(DDDDDD)D

    move-result-wide v2

    return-wide v2
.end method

.method private a(ZLcom/amap/api/maps/model/BitmapDescriptor;)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/i;->d()Lcom/amap/api/mapcore/util/l;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/amap/api/mapcore/util/l;->a(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/mapcore/util/s;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/s;->f()I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez v1, :cond_2

    new-instance v1, Lcom/amap/api/mapcore/util/s;

    invoke-direct {v1, p2, v0}, Lcom/amap/api/mapcore/util/s;-><init>(Lcom/amap/api/maps/model/BitmapDescriptor;I)V

    :cond_2
    invoke-virtual {p2}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cs;->h()I

    move-result v0

    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v3}, Lcom/amap/api/mapcore/util/i;->d()Lcom/amap/api/mapcore/util/l;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/amap/api/mapcore/util/l;->a(Lcom/amap/api/mapcore/util/s;)V

    :cond_3
    iget-object v3, p0, Lcom/amap/api/mapcore/util/cs;->l:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore/util/ee;->b(ILandroid/graphics/Bitmap;Z)I

    goto :goto_0
.end method

.method private a(FLcom/autonavi/amap/mapcore/MapConfig;)V
    .locals 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cs;->y:Z

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->k:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cs;->U:[I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xc

    if-lt v0, v3, :cond_0

    move v4, v1

    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-direct {p0, v4, v0}, Lcom/amap/api/mapcore/util/cs;->a(ZLcom/amap/api/maps/model/BitmapDescriptor;)I

    move-result v0

    iget-object v6, p0, Lcom/amap/api/mapcore/util/cs;->U:[I

    aput v0, v6, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_0
    move v4, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/cs;->y:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    invoke-virtual {p2}, Lcom/autonavi/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/amap/mapcore/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/Rectangle;->getClipMapRect()[Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v3

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->i:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/amap/api/mapcore/util/cs;->a([Lcom/autonavi/amap/mapcore/FPoint;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/amap/api/mapcore/util/cs;->t:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->i:Ljava/util/List;

    const/4 v5, 0x0

    invoke-static {v3, v0, v5}, Lcom/amap/api/mapcore/util/ee;->b([Lcom/autonavi/amap/mapcore/FPoint;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    :try_start_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_5

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/cs;->d(Ljava/util/List;)V

    iget-object v5, p0, Lcom/amap/api/mapcore/util/cs;->o:Ljava/util/List;

    monitor-enter v5
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [I

    move v4, v2

    :goto_2
    array-length v0, v3

    if-ge v4, v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->o:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_4

    move v0, v2

    :cond_4
    iget-object v6, p0, Lcom/amap/api/mapcore/util/cs;->U:[I

    aget v0, v6, v0

    aput v0, v3, v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "MarkerDelegateImp"

    const-string v2, "loadtexture"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_3
    return-void

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v3, :cond_7

    move v4, v1

    :goto_4
    :try_start_8
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->T:[I

    if-eqz v0, :cond_8

    move v0, v1

    :goto_5
    and-int/2addr v0, v4

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->S:[F

    iget v1, p0, Lcom/amap/api/mapcore/util/cs;->b:I

    array-length v4, v3

    iget-object v5, p0, Lcom/amap/api/mapcore/util/cs;->T:[I

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cs;->T:[I

    array-length v6, v2

    const/high16 v2, 0x3f800000    # 1.0f

    iget v7, p0, Lcom/amap/api/mapcore/util/cs;->Q:F

    sub-float v7, v2, v7

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/i;->e()[F

    move-result-object v8

    move v2, p1

    invoke-static/range {v0 .. v8}, Lcom/autonavi/amap/mapcore/AMapNativeRenderer;->nativeDrawLineByMultiTextureID([FIF[II[IIF[F)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_9
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    :cond_7
    move v4, v2

    goto :goto_4

    :cond_8
    move v0, v2

    goto :goto_5
.end method

.method private a(Lcom/autonavi/amap/mapcore/MapConfig;)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/i;->d()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->c()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/mapcore/util/cs;->J:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->getMapLenWithWin(I)F

    move-result v0

    iget v1, p0, Lcom/amap/api/mapcore/util/cs;->E:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, v0, p1}, Lcom/amap/api/mapcore/util/cs;->f(FLcom/autonavi/amap/mapcore/MapConfig;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v0, p1}, Lcom/amap/api/mapcore/util/cs;->e(FLcom/autonavi/amap/mapcore/MapConfig;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v0, p1}, Lcom/amap/api/mapcore/util/cs;->d(FLcom/autonavi/amap/mapcore/MapConfig;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, v0, p1}, Lcom/amap/api/mapcore/util/cs;->c(FLcom/autonavi/amap/mapcore/MapConfig;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, v0, p1}, Lcom/amap/api/mapcore/util/cs;->b(FLcom/autonavi/amap/mapcore/MapConfig;)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, v0, p1}, Lcom/amap/api/mapcore/util/cs;->a(FLcom/autonavi/amap/mapcore/MapConfig;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private a(Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;)Z
    .locals 2

    iget v0, p2, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v1, p1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/amap/api/mapcore/util/cs;->R:F

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p2, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    iget v1, p1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/amap/api/mapcore/util/cs;->R:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a([Lcom/autonavi/amap/mapcore/FPoint;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/i;->d()Lcom/amap/api/mapcore/util/l;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/l;->g()F

    move-result v1

    iput v1, p0, Lcom/amap/api/mapcore/util/cs;->L:F

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cs;->f()V

    iget v1, p0, Lcom/amap/api/mapcore/util/cs;->L:F

    const/high16 v2, 0x41200000    # 10.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/i;->d()Lcom/amap/api/mapcore/util/l;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cs;->Y:Lcom/autonavi/amap/mapcore/FPointBounds;

    iget-object v1, v1, Lcom/autonavi/amap/mapcore/FPointBounds;->northeast:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-static {v1, p1}, Lcom/amap/api/mapcore/util/ee;->a(Lcom/autonavi/amap/mapcore/FPoint;[Lcom/autonavi/amap/mapcore/FPoint;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cs;->Y:Lcom/autonavi/amap/mapcore/FPointBounds;

    iget-object v1, v1, Lcom/autonavi/amap/mapcore/FPointBounds;->southwest:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-static {v1, p1}, Lcom/amap/api/mapcore/util/ee;->a(Lcom/autonavi/amap/mapcore/FPoint;[Lcom/autonavi/amap/mapcore/FPoint;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private b(Lcom/amap/api/maps/model/LatLng;)Lcom/autonavi/amap/mapcore/FPoint;
    .locals 7

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v6

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/i;->d()Lcom/amap/api/mapcore/util/l;

    move-result-object v1

    iget-wide v2, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v4, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v1 .. v6}, Lcom/amap/api/mapcore/util/l;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/i;->d()Lcom/amap/api/mapcore/util/l;

    move-result-object v1

    iget v2, v6, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v3, v6, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    invoke-interface {v1, v2, v3, v0}, Lcom/amap/api/mapcore/util/l;->a(IILcom/autonavi/amap/mapcore/FPoint;)V

    invoke-virtual {v6}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    return-object v0
.end method

.method private b(FLcom/autonavi/amap/mapcore/MapConfig;)V
    .locals 9

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->n:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cs;->b()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->S:[F

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cs;->S:[F

    array-length v1, v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cs;->n:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lcom/amap/api/mapcore/util/cs;->T:[I

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cs;->T:[I

    array-length v6, v2

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/i;->d()Lcom/amap/api/mapcore/util/l;

    move-result-object v2

    invoke-interface {v2}, Lcom/amap/api/mapcore/util/l;->d()I

    move-result v7

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/i;->e()[F

    move-result-object v8

    move v2, p1

    invoke-static/range {v0 .. v8}, Lcom/autonavi/amap/mapcore/AMapNativeRenderer;->nativeDrawGradientColorLine([FIF[II[III[F)V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private c(FLcom/autonavi/amap/mapcore/MapConfig;)V
    .locals 9

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [I

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->n:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/autonavi/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/amap/mapcore/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/Rectangle;->getClipMapRect()[Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->i:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/cs;->a([Lcom/autonavi/amap/mapcore/FPoint;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/amap/api/mapcore/util/cs;->t:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->i:Ljava/util/List;

    const/4 v5, 0x0

    invoke-static {v1, v0, v5}, Lcom/amap/api/mapcore/util/ee;->b([Lcom/autonavi/amap/mapcore/FPoint;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x2

    if-lt v1, v4, :cond_2

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/cs;->d(Ljava/util/List;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [I

    move v1, v2

    :goto_1
    array-length v0, v4

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->p:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v4, v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    if-eqz v4, :cond_5

    move v0, v3

    :goto_3
    :try_start_5
    iget-object v1, p0, Lcom/amap/api/mapcore/util/cs;->T:[I

    if-eqz v1, :cond_4

    move v2, v3

    :cond_4
    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->S:[F

    iget v1, p0, Lcom/amap/api/mapcore/util/cs;->b:I

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/i;->d()Lcom/amap/api/mapcore/util/l;

    move-result-object v2

    invoke-interface {v2}, Lcom/amap/api/mapcore/util/l;->d()I

    move-result v3

    array-length v5, v4

    iget-object v6, p0, Lcom/amap/api/mapcore/util/cs;->T:[I

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cs;->T:[I

    array-length v7, v2

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/i;->e()[F

    move-result-object v8

    move v2, p1

    invoke-static/range {v0 .. v8}, Lcom/autonavi/amap/mapcore/AMapNativeRenderer;->nativeDrawLineByMultiColor([FIFI[II[II[F)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3
.end method

.method private d(FLcom/autonavi/amap/mapcore/MapConfig;)V
    .locals 13

    const/4 v0, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/amap/api/mapcore/util/cs;->y:Z

    if-nez v2, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/cs;->r:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v2, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xc

    if-lt v2, v3, :cond_3

    :goto_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/cs;->r:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-direct {p0, v0, v1}, Lcom/amap/api/mapcore/util/cs;->a(ZLcom/amap/api/maps/model/BitmapDescriptor;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/cs;->F:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/cs;->y:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    invoke-virtual {p2}, Lcom/autonavi/amap/mapcore/MapConfig;->getChangeRatio()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->S:[F

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/amap/api/mapcore/util/cs;->aa:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/cs;->aa:I

    iget v0, p0, Lcom/amap/api/mapcore/util/cs;->aa:I

    iget v1, p0, Lcom/amap/api/mapcore/util/cs;->ab:I

    if-le v0, v1, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->S:[F

    iget v1, p0, Lcom/amap/api/mapcore/util/cs;->b:I

    iget v3, p0, Lcom/amap/api/mapcore/util/cs;->F:I

    iget v4, p0, Lcom/amap/api/mapcore/util/cs;->N:F

    iget v5, p0, Lcom/amap/api/mapcore/util/cs;->O:F

    iget v6, p0, Lcom/amap/api/mapcore/util/cs;->P:F

    iget v7, p0, Lcom/amap/api/mapcore/util/cs;->M:F

    iget v2, p0, Lcom/amap/api/mapcore/util/cs;->Q:F

    sub-float/2addr v8, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/i;->e()[F

    move-result-object v12

    move v2, p1

    invoke-static/range {v0 .. v12}, Lcom/autonavi/amap/mapcore/AMapNativeRenderer;->nativeDrawLineByTextureID([FIFIFFFFFZZZ[F)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "MarkerDelegateImp"

    const-string v2, "loadtexture"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_4
    const/4 v0, 0x0

    :try_start_4
    iput v0, p0, Lcom/amap/api/mapcore/util/cs;->aa:I

    invoke-virtual {p2}, Lcom/autonavi/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/amap/mapcore/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/Rectangle;->getClipMapRect()[Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->i:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/cs;->a([Lcom/autonavi/amap/mapcore/FPoint;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cs;->t:Ljava/lang/Object;

    monitor-enter v2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->i:Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {v1, v0, v3}, Lcom/amap/api/mapcore/util/ee;->a([Lcom/autonavi/amap/mapcore/FPoint;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_5
    :try_start_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/cs;->d(Ljava/util/List;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->S:[F

    iget v1, p0, Lcom/amap/api/mapcore/util/cs;->b:I

    iget v3, p0, Lcom/amap/api/mapcore/util/cs;->F:I

    iget v4, p0, Lcom/amap/api/mapcore/util/cs;->N:F

    iget v5, p0, Lcom/amap/api/mapcore/util/cs;->O:F

    iget v6, p0, Lcom/amap/api/mapcore/util/cs;->P:F

    iget v7, p0, Lcom/amap/api/mapcore/util/cs;->M:F

    iget v2, p0, Lcom/amap/api/mapcore/util/cs;->Q:F

    sub-float/2addr v8, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/i;->e()[F

    move-result-object v12

    move v2, p1

    invoke-static/range {v0 .. v12}, Lcom/autonavi/amap/mapcore/AMapNativeRenderer;->nativeDrawLineByTextureID([FIFIFFFFFZZZ[F)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
.end method

.method private d(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/amap/mapcore/FPoint;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v11, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v0, 0x2

    if-ge v5, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/FPoint;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cs;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v4

    move-object v1, v0

    :goto_1
    add-int/lit8 v0, v5, -0x1

    if-ge v3, v0, :cond_4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/FPoint;

    if-eq v3, v4, :cond_2

    invoke-direct {p0, v1, v0}, Lcom/amap/api/mapcore/util/cs;->a(Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/cs;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v1, v0

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/amap/api/mapcore/util/cs;->d:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/amap/api/mapcore/util/cs;->d:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->d:Ljava/util/ArrayList;

    add-int/lit8 v1, v5, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v5, v0, 0x3

    iput v5, p0, Lcom/amap/api/mapcore/util/cs;->b:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->S:[F

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->S:[F

    array-length v0, v0

    iget v1, p0, Lcom/amap/api/mapcore/util/cs;->b:I

    if-lt v0, v1, :cond_7

    :goto_3
    iget v0, p0, Lcom/amap/api/mapcore/util/cs;->E:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/amap/api/mapcore/util/cs;->E:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v6, v0, [I

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    move v3, v2

    move v4, v2

    :goto_4
    div-int/lit8 v0, v5, 0x3

    if-ge v1, v0, :cond_9

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/FPoint3;

    iget-object v8, p0, Lcom/amap/api/mapcore/util/cs;->S:[F

    mul-int/lit8 v9, v1, 0x3

    iget v10, v0, Lcom/autonavi/amap/mapcore/FPoint3;->x:F

    aput v10, v8, v9

    iget-object v8, p0, Lcom/amap/api/mapcore/util/cs;->S:[F

    mul-int/lit8 v9, v1, 0x3

    add-int/lit8 v9, v9, 0x1

    iget v10, v0, Lcom/autonavi/amap/mapcore/FPoint3;->y:F

    aput v10, v8, v9

    iget-object v8, p0, Lcom/amap/api/mapcore/util/cs;->S:[F

    mul-int/lit8 v9, v1, 0x3

    add-int/lit8 v9, v9, 0x2

    aput v11, v8, v9

    iget v0, v0, Lcom/autonavi/amap/mapcore/FPoint3;->colorIndex:I

    if-nez v1, :cond_8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    aput v1, v6, v3

    add-int/lit8 v3, v3, 0x1

    move v4, v0

    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_7
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cs;->S:[F

    goto :goto_3

    :cond_8
    if-eq v0, v4, :cond_6

    const/4 v8, -0x1

    if-ne v0, v8, :cond_b

    :goto_6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v4

    goto :goto_5

    :cond_9
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cs;->T:[I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->T:[I

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cs;->T:[I

    array-length v1, v1

    invoke-static {v6, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cs;->o:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iput-object v7, p0, Lcom/amap/api/mapcore/util/cs;->o:Ljava/util/List;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v7, p0, Lcom/amap/api/mapcore/util/cs;->p:Ljava/util/List;

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/FPoint;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/cs;->S:[F

    mul-int/lit8 v4, v2, 0x3

    iget v5, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    aput v5, v3, v4

    iget-object v3, p0, Lcom/amap/api/mapcore/util/cs;->S:[F

    mul-int/lit8 v4, v2, 0x3

    add-int/lit8 v4, v4, 0x1

    iget v0, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    aput v0, v3, v4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->S:[F

    mul-int/lit8 v3, v2, 0x3

    add-int/lit8 v3, v3, 0x2

    aput v11, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_b
    move v4, v0

    goto :goto_6
.end method

.method private e(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v5, v0, [I

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    move v3, v2

    move v4, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    aput v1, v5, v3

    add-int/lit8 v3, v3, 0x1

    move v4, v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    if-eq v0, v4, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cs;->T:[I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->T:[I

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cs;->T:[I

    array-length v1, v1

    invoke-static {v5, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v6
.end method

.method private e(FLcom/autonavi/amap/mapcore/MapConfig;)V
    .locals 13

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-boolean v2, p0, Lcom/amap/api/mapcore/util/cs;->y:Z

    if-nez v2, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/cs;->r:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v2, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xc

    if-lt v2, v3, :cond_3

    :goto_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/cs;->r:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-direct {p0, v0, v1}, Lcom/amap/api/mapcore/util/cs;->a(ZLcom/amap/api/maps/model/BitmapDescriptor;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/cs;->F:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/cs;->y:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->i:Ljava/util/List;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/i;->d()Lcom/amap/api/mapcore/util/l;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    if-nez v1, :cond_4

    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "MarkerDelegateImp"

    const-string v2, "loadtexture"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_4
    :try_start_4
    invoke-virtual {p2}, Lcom/autonavi/amap/mapcore/MapConfig;->getChangeRatio()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v2, v4

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cs;->S:[F

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/amap/api/mapcore/util/cs;->aa:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/amap/api/mapcore/util/cs;->aa:I

    iget v1, p0, Lcom/amap/api/mapcore/util/cs;->aa:I

    iget v2, p0, Lcom/amap/api/mapcore/util/cs;->ab:I

    if-le v1, v2, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->S:[F

    iget v1, p0, Lcom/amap/api/mapcore/util/cs;->b:I

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/i;->d()Lcom/amap/api/mapcore/util/l;

    move-result-object v2

    iget v3, p0, Lcom/amap/api/mapcore/util/cs;->I:I

    invoke-interface {v2, v3}, Lcom/amap/api/mapcore/util/l;->f(I)I

    move-result v3

    iget v4, p0, Lcom/amap/api/mapcore/util/cs;->N:F

    iget v5, p0, Lcom/amap/api/mapcore/util/cs;->O:F

    iget v6, p0, Lcom/amap/api/mapcore/util/cs;->P:F

    iget v7, p0, Lcom/amap/api/mapcore/util/cs;->M:F

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/i;->e()[F

    move-result-object v12

    move v2, p1

    invoke-static/range {v0 .. v12}, Lcom/autonavi/amap/mapcore/AMapNativeRenderer;->nativeDrawLineByTextureID([FIFIFFFFFZZZ[F)V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    iput v1, p0, Lcom/amap/api/mapcore/util/cs;->aa:I

    invoke-virtual {p2}, Lcom/autonavi/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/amap/mapcore/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/Rectangle;->getClipMapRect()[Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/cs;->a([Lcom/autonavi/amap/mapcore/FPoint;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cs;->t:Ljava/lang/Object;

    monitor-enter v2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->i:Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {v1, v0, v3}, Lcom/amap/api/mapcore/util/ee;->a([Lcom/autonavi/amap/mapcore/FPoint;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_6
    :try_start_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/cs;->d(Ljava/util/List;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->S:[F

    iget v1, p0, Lcom/amap/api/mapcore/util/cs;->b:I

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/i;->d()Lcom/amap/api/mapcore/util/l;

    move-result-object v2

    iget v3, p0, Lcom/amap/api/mapcore/util/cs;->I:I

    invoke-interface {v2, v3}, Lcom/amap/api/mapcore/util/l;->f(I)I

    move-result v3

    iget v4, p0, Lcom/amap/api/mapcore/util/cs;->N:F

    iget v5, p0, Lcom/amap/api/mapcore/util/cs;->O:F

    iget v6, p0, Lcom/amap/api/mapcore/util/cs;->P:F

    iget v7, p0, Lcom/amap/api/mapcore/util/cs;->M:F

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/i;->e()[F

    move-result-object v12

    move v2, p1

    invoke-static/range {v0 .. v12}, Lcom/autonavi/amap/mapcore/AMapNativeRenderer;->nativeDrawLineByTextureID([FIFIFFFFFZZZ[F)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
.end method

.method private f()V
    .locals 4

    const/high16 v1, 0x43480000    # 200.0f

    const/high16 v3, 0x40000000    # 2.0f

    iget v0, p0, Lcom/amap/api/mapcore/util/cs;->H:I

    const/16 v2, 0x1388

    if-le v0, v2, :cond_2

    iget v0, p0, Lcom/amap/api/mapcore/util/cs;->L:F

    const/high16 v2, 0x41400000    # 12.0f

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/amap/api/mapcore/util/cs;->J:F

    div-float/2addr v0, v3

    iget v2, p0, Lcom/amap/api/mapcore/util/cs;->L:F

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/i;->d()Lcom/amap/api/mapcore/util/l;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/l;->c()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v1

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lcom/autonavi/ae/gmap/GLMapState;->getMapLenWithWin(I)F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/cs;->R:F

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/i;->d()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->c()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->getMapLenWithWin(I)F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/cs;->R:F

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/i;->d()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->c()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->getMapLenWithWin(I)F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/cs;->R:F

    goto :goto_1
.end method

.method private f(FLcom/autonavi/amap/mapcore/MapConfig;)V
    .locals 13

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->i:Ljava/util/List;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/i;->d()Lcom/amap/api/mapcore/util/l;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/autonavi/amap/mapcore/MapConfig;->getChangeRatio()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v2, v4

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cs;->S:[F

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/amap/api/mapcore/util/cs;->aa:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/amap/api/mapcore/util/cs;->aa:I

    iget v1, p0, Lcom/amap/api/mapcore/util/cs;->aa:I

    iget v2, p0, Lcom/amap/api/mapcore/util/cs;->ab:I

    if-le v1, v2, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->S:[F

    iget v1, p0, Lcom/amap/api/mapcore/util/cs;->b:I

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/i;->d()Lcom/amap/api/mapcore/util/l;

    move-result-object v2

    invoke-interface {v2}, Lcom/amap/api/mapcore/util/l;->d()I

    move-result v3

    iget v4, p0, Lcom/amap/api/mapcore/util/cs;->N:F

    iget v5, p0, Lcom/amap/api/mapcore/util/cs;->O:F

    iget v6, p0, Lcom/amap/api/mapcore/util/cs;->P:F

    iget v7, p0, Lcom/amap/api/mapcore/util/cs;->M:F

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/i;->e()[F

    move-result-object v12

    move v2, p1

    invoke-static/range {v0 .. v12}, Lcom/autonavi/amap/mapcore/AMapNativeRenderer;->nativeDrawLineByTextureID([FIFIFFFFFZZZ[F)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lcom/amap/api/mapcore/util/cs;->aa:I

    invoke-virtual {p2}, Lcom/autonavi/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/amap/mapcore/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/Rectangle;->getClipMapRect()[Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/cs;->a([Lcom/autonavi/amap/mapcore/FPoint;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cs;->t:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->i:Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {v1, v0, v3}, Lcom/amap/api/mapcore/util/ee;->a([Lcom/autonavi/amap/mapcore/FPoint;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/cs;->d(Ljava/util/List;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->S:[F

    iget v1, p0, Lcom/amap/api/mapcore/util/cs;->b:I

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/i;->d()Lcom/amap/api/mapcore/util/l;

    move-result-object v2

    invoke-interface {v2}, Lcom/amap/api/mapcore/util/l;->d()I

    move-result v3

    iget v4, p0, Lcom/amap/api/mapcore/util/cs;->N:F

    iget v5, p0, Lcom/amap/api/mapcore/util/cs;->O:F

    iget v6, p0, Lcom/amap/api/mapcore/util/cs;->P:F

    iget v7, p0, Lcom/amap/api/mapcore/util/cs;->M:F

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/i;->e()[F

    move-result-object v12

    move v2, p1

    invoke-static/range {v0 .. v12}, Lcom/autonavi/amap/mapcore/AMapNativeRenderer;->nativeDrawLineByTextureID([FIFIFFFFFZZZ[F)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/i;->d()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->t(I)Lcom/amap/api/mapcore/util/cw;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/cx$d;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cs;->ac:Lcom/amap/api/mapcore/util/cx$d;

    :cond_0
    return-void
.end method

.method private h()I
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-array v0, v2, [I

    aput v1, v0, v1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v0, v0, v1

    return v0
.end method

.method private i()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/FPoint;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/cs;->S:[F

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cs;->S:[F

    aget v2, v2, v0

    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lcom/amap/api/mapcore/util/cs;->S:[F

    aget v3, v3, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2, v3}, Lcom/autonavi/amap/mapcore/FPoint;->obtain(FF)Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method a(Lcom/autonavi/amap/mapcore/IPoint;Lcom/autonavi/amap/mapcore/IPoint;Lcom/autonavi/amap/mapcore/IPoint;DI)Lcom/autonavi/amap/mapcore/IPoint;
    .locals 12

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v2

    iget v3, p2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v4, p1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int/2addr v3, v4

    int-to-double v4, v3

    iget v3, p2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v6, p1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int/2addr v3, v6

    int-to-double v6, v3

    mul-double v8, v6, v6

    mul-double v10, v4, v4

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v10

    move/from16 v0, p6

    int-to-double v10, v0

    mul-double v10, v10, p4

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    div-double v8, v10, v8

    iget v3, p3, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-double v10, v3

    add-double/2addr v8, v10

    double-to-int v3, v8

    iput v3, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v3, p3, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v8, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int/2addr v3, v8

    int-to-double v8, v3

    mul-double/2addr v6, v8

    div-double v4, v6, v4

    iget v3, p3, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-double v6, v3

    add-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, v2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    return-object v2
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/mapcore/util/cs;->I:I

    return-void
.end method

.method a(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Ljava/util/List;Lcom/amap/api/maps/model/LatLngBounds$Builder;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/maps/model/LatLng;",
            "Lcom/amap/api/maps/model/LatLng;",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/amap/mapcore/IPoint;",
            ">;",
            "Lcom/amap/api/maps/model/LatLngBounds$Builder;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double v18, v2, v4

    new-instance v3, Lcom/amap/api/maps/model/LatLng;

    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    iget-wide v4, v3, Lcom/amap/api/maps/model/LatLng;->latitude:D

    const-wide/16 v6, 0x0

    cmpl-double v2, v4, v6

    if-lez v2, :cond_0

    const/16 v20, -0x1

    :goto_0
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/i;->d()Lcom/amap/api/mapcore/util/l;

    move-result-object v5

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v5 .. v10}, Lcom/amap/api/mapcore/util/l;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/i;->d()Lcom/amap/api/mapcore/util/l;

    move-result-object v11

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v11 .. v16}, Lcom/amap/api/mapcore/util/l;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/i;->d()Lcom/amap/api/mapcore/util/l;

    move-result-object v2

    iget-wide v4, v3, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v6, v3, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object v3, v2

    invoke-interface/range {v3 .. v8}, Lcom/amap/api/mapcore/util/l;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double v2, v2, v18

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    iget v4, v10, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    move-object/from16 v0, v16

    iget v5, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    iget v6, v10, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    move-object/from16 v0, v16

    iget v7, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double v6, v6, v18

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    mul-double v18, v4, v6

    move-object/from16 v14, p0

    move-object v15, v10

    move-object/from16 v17, v8

    invoke-virtual/range {v14 .. v20}, Lcom/amap/api/mapcore/util/cs;->a(Lcom/autonavi/amap/mapcore/IPoint;Lcom/autonavi/amap/mapcore/IPoint;Lcom/autonavi/amap/mapcore/IPoint;DI)Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/amap/api/mapcore/util/cs;->a(Ljava/util/List;Ljava/util/List;D)V

    invoke-virtual {v10}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    invoke-virtual {v4}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    invoke-virtual/range {v16 .. v16}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    return-void

    :cond_0
    const/16 v20, 0x1

    goto/16 :goto_0
.end method

.method a(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v11, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/amap/api/maps/model/LatLngBounds;->builder()Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v9

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v7, v0

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/LatLng;

    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/cs;->w:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v6

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/i;->d()Lcom/amap/api/mapcore/util/l;

    move-result-object v1

    iget-wide v2, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v1 .. v6}, Lcom/amap/api/mapcore/util/l;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9, v0}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    :cond_0
    :goto_1
    move-object v7, v0

    goto :goto_0

    :cond_1
    if-eqz v7, :cond_0

    iget-wide v2, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v4, v7, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v1, v2, v4

    if-gez v1, :cond_2

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v6

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/i;->d()Lcom/amap/api/mapcore/util/l;

    move-result-object v1

    iget-wide v2, v7, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v4, v7, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v1 .. v6}, Lcom/amap/api/mapcore/util/l;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9, v7}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v6

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/i;->d()Lcom/amap/api/mapcore/util/l;

    move-result-object v1

    iget-wide v2, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v1 .. v6}, Lcom/amap/api/mapcore/util/l;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9, v0}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v7, v0, v8, v9}, Lcom/amap/api/mapcore/util/cs;->a(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Ljava/util/List;Lcom/amap/api/maps/model/LatLngBounds$Builder;)V

    goto :goto_1

    :cond_3
    iput-object v8, p0, Lcom/amap/api/mapcore/util/cs;->h:Ljava/util/List;

    iput v11, p0, Lcom/amap/api/mapcore/util/cs;->H:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {v9}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cs;->s:Lcom/amap/api/maps/model/LatLngBounds;

    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->a:Landroid/graphics/Rect;

    if-nez v0, :cond_5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cs;->a:Landroid/graphics/Rect;

    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->a:Landroid/graphics/Rect;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ee;->a(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/IPoint;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cs;->a:Landroid/graphics/Rect;

    iget v3, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-static {v2, v3, v0}, Lcom/amap/api/mapcore/util/ee;->b(Landroid/graphics/Rect;II)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->sort()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/i;->d()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    invoke-interface {v0, v11}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    return-void
.end method

.method a(Ljava/util/List;Ljava/util/List;D)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/amap/mapcore/IPoint;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/amap/mapcore/IPoint;",
            ">;D)V"
        }
    .end annotation

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    :cond_0
    return-void

    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v2, 0xa

    if-gt v3, v2, :cond_0

    int-to-float v2, v3

    const/high16 v5, 0x41200000    # 10.0f

    div-float v5, v2, v5

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    float-to-double v10, v5

    sub-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    float-to-double v12, v5

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autonavi/amap/mapcore/IPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-double v10, v2

    mul-double/2addr v8, v10

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v5

    float-to-double v10, v2

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    float-to-double v14, v5

    sub-double/2addr v12, v14

    mul-double/2addr v10, v12

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autonavi/amap/mapcore/IPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-double v12, v2

    mul-double/2addr v10, v12

    mul-double v10, v10, p3

    add-double/2addr v8, v10

    mul-float v7, v5, v5

    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autonavi/amap/mapcore/IPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-float v2, v2

    mul-float/2addr v2, v7

    float-to-double v10, v2

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    float-to-double v12, v5

    sub-double/2addr v10, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    float-to-double v14, v5

    sub-double/2addr v12, v14

    mul-double/2addr v10, v12

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autonavi/amap/mapcore/IPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-double v12, v2

    mul-double/2addr v10, v12

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v5

    float-to-double v12, v2

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    float-to-double v0, v5

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    mul-double/2addr v12, v14

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autonavi/amap/mapcore/IPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-double v14, v2

    mul-double/2addr v12, v14

    mul-double v12, v12, p3

    add-double/2addr v10, v12

    mul-float v7, v5, v5

    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autonavi/amap/mapcore/IPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-float v2, v2

    mul-float/2addr v2, v7

    float-to-double v12, v2

    add-double/2addr v10, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    float-to-double v14, v5

    sub-double/2addr v12, v14

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    float-to-double v0, v5

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    mul-double/2addr v12, v14

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v5

    float-to-double v14, v2

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    float-to-double v0, v5

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    mul-double v14, v14, v16

    mul-double v14, v14, p3

    add-double/2addr v12, v14

    mul-float v2, v5, v5

    float-to-double v14, v2

    add-double/2addr v12, v14

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    float-to-double v0, v5

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    float-to-double v0, v5

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    mul-double v14, v14, v16

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v5

    float-to-double v0, v2

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    float-to-double v0, v5

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    mul-double v16, v16, v18

    mul-double v16, v16, p3

    add-double v14, v14, v16

    mul-float v2, v5, v5

    float-to-double v0, v2

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    div-double/2addr v8, v12

    double-to-int v2, v8

    iput v2, v6, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    div-double v8, v10, v14

    double-to-int v2, v8

    iput v2, v6, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    int-to-float v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    move v3, v2

    goto/16 :goto_0
.end method

.method public a(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/cs;->D:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/i;->d()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    return-void
.end method

.method public a()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/i;->d()Lcom/amap/api/mapcore/util/l;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/l;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/amap/mapcore/Rectangle;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cs;->a:Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cs;->a:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/autonavi/amap/mapcore/Rectangle;->isOverlap(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/amap/api/maps/model/LatLng;)Z
    .locals 15

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->S:[F

    array-length v0, v0

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cs;->S:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/amap/api/mapcore/util/cs;->S:[F

    array-length v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cs;->i()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/i;->d()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->c()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/mapcore/util/cs;->J:F

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->getMapLenWithWin(I)F

    move-result v0

    float-to-double v4, v0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/i;->d()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->c()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    iget-wide v6, p0, Lcom/amap/api/mapcore/util/cs;->V:D

    double-to-int v1, v6

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->getMapLenWithWin(I)F

    move-result v0

    float-to-double v6, v0

    invoke-direct/range {p0 .. p1}, Lcom/amap/api/mapcore/util/cs;->b(Lcom/amap/api/maps/model/LatLng;)Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v8

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v14, v0

    move-object v0, v1

    move v1, v14

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_5

    if-nez v1, :cond_3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/FPoint;

    move-object v2, v0

    :goto_2
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {p0, v8, v2, v0}, Lcom/amap/api/mapcore/util/cs;->a(Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;)D

    move-result-wide v10

    add-double v12, v6, v4

    sub-double v10, v12, v10

    const-wide/16 v12, 0x0

    cmpl-double v2, v10, v12

    if-ltz v2, :cond_4

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move-object v2, v0

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/cs;->v:Z

    const/4 v0, 0x5

    iput v0, p0, Lcom/amap/api/mapcore/util/cs;->E:I

    iput-object p1, p0, Lcom/amap/api/mapcore/util/cs;->k:Ljava/util/List;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/i;->d()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    goto :goto_0

    :cond_2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/cs;->setCustomTexture(Lcom/amap/api/maps/model/BitmapDescriptor;)V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->n:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/cs;->B:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/amap/api/mapcore/util/cs;->E:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/i;->d()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cs;->t:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v3, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;

    invoke-direct {v3}, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;-><init>()V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cs;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/cs;->C:Z

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cs;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/amap/api/mapcore/util/cs;->S:[F

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cs;->S:[F

    array-length v1, v1

    iput v1, p0, Lcom/amap/api/mapcore/util/cs;->b:I

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cs;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/IPoint;

    new-instance v5, Lcom/autonavi/amap/mapcore/FPoint3;

    invoke-direct {v5}, Lcom/autonavi/amap/mapcore/FPoint3;-><init>()V

    iget-object v6, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v6}, Lcom/amap/api/mapcore/util/i;->d()Lcom/amap/api/mapcore/util/l;

    move-result-object v6

    iget v7, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    invoke-interface {v6, v7, v0, v5}, Lcom/amap/api/mapcore/util/l;->a(IILcom/autonavi/amap/mapcore/FPoint;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->S:[F

    mul-int/lit8 v6, v1, 0x3

    iget v7, v5, Lcom/autonavi/amap/mapcore/FPoint3;->x:F

    aput v7, v0, v6

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->S:[F

    mul-int/lit8 v6, v1, 0x3

    add-int/lit8 v6, v6, 0x1

    iget v7, v5, Lcom/autonavi/amap/mapcore/FPoint3;->y:F

    aput v7, v0, v6

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->S:[F

    mul-int/lit8 v6, v1, 0x3

    add-int/lit8 v6, v6, 0x2

    const/4 v7, 0x0

    aput v7, v0, v6

    iget-object v6, p0, Lcom/amap/api/mapcore/util/cs;->m:Ljava/util/List;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->m:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->m:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/autonavi/amap/mapcore/FPoint3;->setColorIndex(I)V

    :cond_0
    :goto_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->i:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v5}, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;->include(Lcom/autonavi/amap/mapcore/FPoint;)Lcom/autonavi/amap/mapcore/FPointBounds$Builder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->n:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->n:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/autonavi/amap/mapcore/FPoint3;->setColorIndex(I)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_2
    :try_start_5
    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;->build()Lcom/autonavi/amap/mapcore/FPointBounds;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cs;->Y:Lcom/autonavi/amap/mapcore/FPointBounds;

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cs;->D:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->S:[F

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ee;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cs;->q:Ljava/nio/FloatBuffer;

    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/cs;->H:I

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cs;->f()V

    const/4 v0, 0x1

    return v0
.end method

.method public c()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amap/api/mapcore/util/cs;->J:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/i;->d()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/amap/api/mapcore/util/cs;->t:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/i;->d()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_x()I

    move-result v6

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/i;->d()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_y()I

    move-result v7

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cs;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ne v0, v8, :cond_2

    move v3, v2

    :goto_1
    if-ge v3, v8, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->h:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/IPoint;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cs;->i:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/amap/mapcore/FPoint;

    iget v4, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    iput v4, v1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int/2addr v0, v7

    int-to-float v0, v0

    iput v0, v1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v3, v2

    move v4, v2

    :goto_2
    if-ge v3, v8, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->h:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/IPoint;

    new-instance v9, Lcom/autonavi/amap/mapcore/FPoint3;

    invoke-direct {v9}, Lcom/autonavi/amap/mapcore/FPoint3;-><init>()V

    iget-object v10, p0, Lcom/amap/api/mapcore/util/cs;->m:Ljava/util/List;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/cs;->m:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cs;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_3

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cs;->m:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/autonavi/amap/mapcore/FPoint3;->setColorIndex(I)V

    :cond_3
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget v1, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int/2addr v1, v6

    int-to-float v1, v1

    iput v1, v9, Lcom/autonavi/amap/mapcore/FPoint3;->x:F

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int/2addr v0, v7

    int-to-float v0, v0

    iput v0, v9, Lcom/autonavi/amap/mapcore/FPoint3;->y:F

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->i:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 v1, v4, 0x1

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v4, v1

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_4
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cs;->z:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cs;->b()Z

    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/cs;->z:Z

    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->S:[F

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/amap/api/mapcore/util/cs;->H:I

    if-lez v0, :cond_6

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cs;->D:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/i;->d()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/cs;->a(Lcom/autonavi/amap/mapcore/MapConfig;)V

    :cond_6
    :goto_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/cs;->C:Z

    goto/16 :goto_0

    :cond_7
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cs;->A:Z

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/amap/api/mapcore/util/cs;->t:Ljava/lang/Object;

    monitor-enter v3

    :try_start_6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lcom/amap/api/mapcore/util/cs;->m:Ljava/util/List;

    monitor-enter v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    :goto_5
    if-ge v2, v4, :cond_9

    if-le v6, v2, :cond_8

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->i:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/FPoint3;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cs;->m:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/FPoint3;->setColorIndex(I)V

    :cond_8
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    :cond_9
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    monitor-exit v3

    goto :goto_3

    :catchall_2
    move-exception v0

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    :try_start_9
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :cond_a
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->q:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->S:[F

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ee;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cs;->q:Ljava/nio/FloatBuffer;

    :cond_b
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->ac:Lcom/amap/api/mapcore/util/cx$d;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->ac:Lcom/amap/api/mapcore/util/cx$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/cx$d;->c()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cs;->g()V

    :cond_d
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->ac:Lcom/amap/api/mapcore/util/cx$d;

    iget v1, p0, Lcom/amap/api/mapcore/util/cs;->G:I

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cs;->q:Ljava/nio/FloatBuffer;

    iget v3, p0, Lcom/amap/api/mapcore/util/cs;->J:F

    iget v4, p0, Lcom/amap/api/mapcore/util/cs;->H:I

    iget-object v5, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v5}, Lcom/amap/api/mapcore/util/i;->e()[F

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/amap/api/mapcore/util/do;->a(Lcom/amap/api/mapcore/util/cx$d;ILjava/nio/FloatBuffer;FI[F)V

    goto :goto_4
.end method

.method public c(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/cs;->n:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/cs;->v:Z

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/cs;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cs;->p:Ljava/util/List;

    const/4 v0, 0x3

    iput v0, p0, Lcom/amap/api/mapcore/util/cs;->E:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/i;->d()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    goto :goto_0

    :cond_2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/cs;->setColor(I)V

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cs;->C:Z

    return v0
.end method

.method public destroy()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cs;->remove()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->l:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->l:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/s;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/s;->f()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore/util/i;->a(Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/i;->d()Lcom/amap/api/mapcore/util/l;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/s;->j()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/amap/api/mapcore/util/l;->b(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->S:[F

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cs;->S:[F

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->q:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->q:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cs;->q:Ljava/nio/FloatBuffer;

    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->k:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "PolylineDelegateImp"

    const-string v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const-string v0, "destroy erro"

    const-string v1, "PolylineDelegateImp destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->r:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->r:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V

    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->n:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cs;->n:Ljava/util/List;

    :cond_6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->m:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cs;->m:Ljava/util/List;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cs;->m:Ljava/util/List;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    :try_start_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->j:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cs;->j:Ljava/util/List;

    :cond_8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cs;->Z:Lcom/amap/api/maps/model/PolylineOptions;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

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
.end method

.method public e()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/cs;->y:Z

    iput v1, p0, Lcom/amap/api/mapcore/util/cs;->F:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->U:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->U:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    return-void
.end method

.method public equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlay;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cs;->getId()Ljava/lang/String;

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

.method public getColor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/amap/api/mapcore/util/cs;->G:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    const-string v1, "Polyline"

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cs;->g:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getNearestLatLng(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez p1, :cond_0

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->j:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v4

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    move v2, v3

    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    if-nez v3, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->j:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/LatLng;

    invoke-static {p1, v0}, Lcom/amap/api/maps/AMapUtils;->calculateLineDistance(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F

    move-result v0

    move v1, v2

    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->j:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/LatLng;

    invoke-static {p1, v0}, Lcom/amap/api/maps/AMapUtils;->calculateLineDistance(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F

    move-result v0

    cmpl-float v5, v1, v0

    if-lez v5, :cond_5

    move v1, v3

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->j:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/LatLng;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PolylineDelegateImp"

    const-string v2, "getNearestLatLng"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    move-object v0, v4

    goto :goto_0

    :cond_5
    move v0, v1

    move v1, v2

    goto :goto_2
.end method

.method public getOptions()Lcom/amap/api/maps/model/PolylineOptions;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->Z:Lcom/amap/api/maps/model/PolylineOptions;

    return-object v0
.end method

.method public getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->j:Ljava/util/List;

    return-object v0
.end method

.method public getWidth()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/amap/api/mapcore/util/cs;->J:F

    return v0
.end method

.method public getZIndex()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/amap/api/mapcore/util/cs;->K:F

    return v0
.end method

.method public hashCodeRemote()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAboveMaskLayer()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cs;->W:Z

    return v0
.end method

.method public isDottedLine()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cs;->x:Z

    return v0
.end method

.method public isGeodesic()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cs;->w:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cs;->u:Z

    return v0
.end method

.method public remove()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cs;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/i;->d(Ljava/lang/String;)Z

    invoke-virtual {p0, v2}, Lcom/amap/api/mapcore/util/cs;->setVisible(Z)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/i;->d()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    return-void
.end method

.method public setAboveMaskLayer(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/cs;->W:Z

    return-void
.end method

.method public setColor(I)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/high16 v1, 0x437f0000    # 255.0f

    iget v0, p0, Lcom/amap/api/mapcore/util/cs;->E:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amap/api/mapcore/util/cs;->E:I

    if-ne v0, v3, :cond_2

    :cond_0
    iput p1, p0, Lcom/amap/api/mapcore/util/cs;->G:I

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/cs;->M:F

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/cs;->N:F

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/cs;->O:F

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/cs;->P:F

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cs;->v:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cs;->x:Z

    if-eqz v0, :cond_3

    iput v3, p0, Lcom/amap/api/mapcore/util/cs;->E:I

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/i;->d()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->Z:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/PolylineOptions;->color(I)Lcom/amap/api/maps/model/PolylineOptions;

    return-void

    :cond_3
    iput v2, p0, Lcom/amap/api/mapcore/util/cs;->E:I

    goto :goto_0
.end method

.method public setCustemTextureIndex(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/cs;->m:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cs;->o:Ljava/util/List;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/cs;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cs;->o:Ljava/util/List;

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/cs;->A:Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public setCustomTexture(Lcom/amap/api/maps/model/BitmapDescriptor;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amap/api/mapcore/util/cs;->e:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x10

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-wide v0, p0, Lcom/amap/api/mapcore/util/cs;->e:J

    if-eqz p1, :cond_0

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/cs;->v:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/cs;->y:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/cs;->E:I

    iput-object p1, p0, Lcom/amap/api/mapcore/util/cs;->r:Lcom/amap/api/maps/model/BitmapDescriptor;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/i;->d()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->Z:Lcom/amap/api/maps/model/PolylineOptions;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->Z:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/PolylineOptions;->setCustomTexture(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/PolylineOptions;

    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDottedLine(Z)V
    .locals 2

    const/4 v1, 0x2

    iget v0, p0, Lcom/amap/api/mapcore/util/cs;->E:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/amap/api/mapcore/util/cs;->E:I

    if-nez v0, :cond_2

    :cond_0
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/cs;->x:Z

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cs;->v:Z

    if-eqz v0, :cond_1

    iput v1, p0, Lcom/amap/api/mapcore/util/cs;->E:I

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/i;->d()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    :cond_2
    return-void
.end method

.method public setGeodesic(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/cs;->w:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/i;->d()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    return-void
.end method

.method public setOptions(Lcom/amap/api/maps/model/PolylineOptions;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/amap/api/mapcore/util/cs;->Z:Lcom/amap/api/maps/model/PolylineOptions;

    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/cs;->setColor(I)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->isGeodesic()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/cs;->setGeodesic(Z)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->isDottedLine()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/cs;->setDottedLine(Z)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getDottedLineType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/cs;->a(I)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->isAboveMaskLayer()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/cs;->setAboveMaskLayer(Z)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->isVisible()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/cs;->setVisible(Z)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getWidth()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/cs;->setWidth(F)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getZIndex()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/cs;->setZIndex(F)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->isUseTexture()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/cs;->a(Z)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getTransparency()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/cs;->setTransparency(F)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getColorValues()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getColorValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/cs;->c(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->isUseGradient()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/cs;->b(Z)V

    :cond_1
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getCustomTexture()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getCustomTexture()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/cs;->setCustomTexture(Lcom/amap/api/maps/model/BitmapDescriptor;)V

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cs;->e()V

    :cond_2
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getCustomTextureList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getCustomTextureList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/cs;->b(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getCustomTextureIndex()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/cs;->setCustemTextureIndex(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cs;->e()V

    :cond_3
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/cs;->setPoints(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PolylineDelegateImp"

    const-string v2, "setOptions"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public setPoints(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iput-object p1, p0, Lcom/amap/api/mapcore/util/cs;->j:Ljava/util/List;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cs;->t:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/cs;->a(Ljava/util/List;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/cs;->z:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/i;->d()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->Z:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/PolylineOptions;->setPoints(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "PolylineDelegateImp"

    const-string v2, "setPoints"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cs;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setTransparency(F)V
    .locals 6

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    float-to-double v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/amap/api/mapcore/util/cs;->Q:F

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/i;->d()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/cs;->u:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/i;->d()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->Z:Lcom/amap/api/maps/model/PolylineOptions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->Z:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/PolylineOptions;->visible(Z)Lcom/amap/api/maps/model/PolylineOptions;

    :cond_0
    return-void
.end method

.method public setWidth(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput p1, p0, Lcom/amap/api/mapcore/util/cs;->J:F

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/i;->d()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->Z:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/PolylineOptions;->width(F)Lcom/amap/api/maps/model/PolylineOptions;

    return-void
.end method

.method public setZIndex(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput p1, p0, Lcom/amap/api/mapcore/util/cs;->K:F

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/i;->c()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->f:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/i;->d()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->Z:Lcom/amap/api/maps/model/PolylineOptions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cs;->Z:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/PolylineOptions;->zIndex(F)Lcom/amap/api/maps/model/PolylineOptions;

    :cond_0
    return-void
.end method
