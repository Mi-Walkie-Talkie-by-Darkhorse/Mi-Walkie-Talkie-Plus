.class public final Lcom/amap/api/col/l3/db;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amap/api/col/l3/cu;


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

.field private ac:Lcom/amap/api/col/l3/dg$d;

.field b:I

.field c:I

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/amap/mapcore/FPoint;",
            ">;"
        }
    .end annotation
.end field

.field e:J

.field private f:Lcom/amap/api/col/l3/r;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/amap/mapcore/IPoint;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/amap/mapcore/FPoint;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/col/l3/ab;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
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
.method public constructor <init>(Lcom/amap/api/col/l3/r;Lcom/amap/api/maps/model/PolylineOptions;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/db;->h:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/db;->i:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/db;->j:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/db;->k:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/db;->l:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/db;->m:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/db;->n:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/db;->o:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/db;->p:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3/db;->r:Lcom/amap/api/maps/model/BitmapDescriptor;

    iput-object v0, p0, Lcom/amap/api/col/l3/db;->s:Lcom/amap/api/maps/model/LatLngBounds;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/amap/api/col/l3/db;->t:Ljava/lang/Object;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amap/api/col/l3/db;->u:Z

    iput-boolean v1, p0, Lcom/amap/api/col/l3/db;->v:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/amap/api/col/l3/db;->w:Z

    iput-boolean v2, p0, Lcom/amap/api/col/l3/db;->x:Z

    iput-boolean v2, p0, Lcom/amap/api/col/l3/db;->y:Z

    iput-boolean v1, p0, Lcom/amap/api/col/l3/db;->z:Z

    iput-boolean v2, p0, Lcom/amap/api/col/l3/db;->A:Z

    iput-boolean v2, p0, Lcom/amap/api/col/l3/db;->B:Z

    iput-boolean v2, p0, Lcom/amap/api/col/l3/db;->C:Z

    iput-boolean v1, p0, Lcom/amap/api/col/l3/db;->D:Z

    iput v2, p0, Lcom/amap/api/col/l3/db;->E:I

    iput v2, p0, Lcom/amap/api/col/l3/db;->F:I

    const/high16 v1, -0x1000000

    iput v1, p0, Lcom/amap/api/col/l3/db;->G:I

    iput v2, p0, Lcom/amap/api/col/l3/db;->H:I

    iput v2, p0, Lcom/amap/api/col/l3/db;->I:I

    const/high16 v1, 0x41200000    # 10.0f

    iput v1, p0, Lcom/amap/api/col/l3/db;->J:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/amap/api/col/l3/db;->K:F

    iput v1, p0, Lcom/amap/api/col/l3/db;->L:F

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/amap/api/col/l3/db;->Q:F

    iput v1, p0, Lcom/amap/api/col/l3/db;->R:F

    const-wide/high16 v3, 0x4014000000000000L    # 5.0

    iput-wide v3, p0, Lcom/amap/api/col/l3/db;->V:D

    iput-boolean v2, p0, Lcom/amap/api/col/l3/db;->W:Z

    const/4 v1, 0x2

    iput v1, p0, Lcom/amap/api/col/l3/db;->X:I

    iput-object v0, p0, Lcom/amap/api/col/l3/db;->Y:Lcom/autonavi/amap/mapcore/FPointBounds;

    iput-object v0, p0, Lcom/amap/api/col/l3/db;->a:Landroid/graphics/Rect;

    iput v2, p0, Lcom/amap/api/col/l3/db;->aa:I

    iput v1, p0, Lcom/amap/api/col/l3/db;->ab:I

    iput v2, p0, Lcom/amap/api/col/l3/db;->b:I

    iput v2, p0, Lcom/amap/api/col/l3/db;->c:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/db;->d:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/l3/db;->e:J

    iput-object p1, p0, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {p0, p2}, Lcom/amap/api/col/l3/db;->setOptions(Lcom/amap/api/maps/model/PolylineOptions;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3/db;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/db;->g:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "PolylineDelegateImp"

    const-string v0, "create"

    invoke-static {p1, p2, v0}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method private a(ZLcom/amap/api/maps/model/BitmapDescriptor;)I
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/r;->c()Lcom/amap/api/col/l3/u;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/amap/api/col/l3/u;->a(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/col/l3/ab;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amap/api/col/l3/ab;->f()I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    const/4 v1, 0x0

    if-nez v0, :cond_2

    new-instance v0, Lcom/amap/api/col/l3/ab;

    invoke-direct {v0, p2, v1}, Lcom/amap/api/col/l3/ab;-><init>(Lcom/amap/api/maps/model/BitmapDescriptor;I)V

    :cond_2
    invoke-virtual {p2}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    new-array v3, v2, [I

    aput v1, v3, v1

    invoke-static {v2, v3, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v1, v3, v1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/r;->c()Lcom/amap/api/col/l3/u;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/amap/api/col/l3/u;->a(Lcom/amap/api/col/l3/ab;)V

    :cond_3
    iget-object p1, p0, Lcom/amap/api/col/l3/db;->l:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1, p2, v2}, Lcom/amap/api/col/l3/em;->a(ILandroid/graphics/Bitmap;Z)I

    :cond_4
    return v1
.end method

.method private a(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autonavi/amap/mapcore/FPoint;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/l3/db;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autonavi/amap/mapcore/FPoint;

    iget-object v4, p0, Lcom/amap/api/col/l3/db;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    const/4 v5, 0x1

    :goto_0
    add-int/lit8 v6, v0, -0x1

    if-ge v5, v6, :cond_5

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/autonavi/amap/mapcore/FPoint;

    if-eq v5, v4, :cond_4

    iget v7, v6, Landroid/graphics/PointF;->x:F

    iget v8, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/amap/api/col/l3/db;->R:F

    cmpl-float v7, v7, v8

    if-gez v7, :cond_2

    iget v7, v6, Landroid/graphics/PointF;->y:F

    iget v8, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/amap/api/col/l3/db;->R:F

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v7, 0x1

    :goto_2
    if-eqz v7, :cond_3

    goto :goto_3

    :cond_3
    iget-object v7, p0, Lcom/amap/api/col/l3/db;->d:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v4

    invoke-virtual {v7, v8, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_4
    :goto_3
    iget-object v3, p0, Lcom/amap/api/col/l3/db;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v6

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/amap/api/col/l3/db;->d:Ljava/util/ArrayList;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/amap/api/col/l3/db;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x3

    mul-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/amap/api/col/l3/db;->b:I

    iget-object v3, p0, Lcom/amap/api/col/l3/db;->S:[F

    if-eqz v3, :cond_6

    array-length v3, v3

    if-ge v3, p1, :cond_7

    :cond_6
    new-array v3, p1, [F

    iput-object v3, p0, Lcom/amap/api/col/l3/db;->S:[F

    :cond_7
    iget v3, p0, Lcom/amap/api/col/l3/db;->E:I

    const/4 v5, 0x5

    const/4 v6, 0x0

    if-eq v3, v5, :cond_a

    if-ne v3, v0, :cond_8

    goto :goto_6

    :cond_8
    iget-object p1, p0, Lcom/amap/api/col/l3/db;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/FPoint;

    iget-object v3, p0, Lcom/amap/api/col/l3/db;->S:[F

    mul-int/lit8 v5, v2, 0x3

    iget v7, v0, Landroid/graphics/PointF;->x:F

    aput v7, v3, v5

    add-int/lit8 v7, v5, 0x1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    aput v0, v3, v7

    add-int/2addr v5, v1

    aput v6, v3, v5

    add-int/2addr v2, v4

    goto :goto_5

    :cond_9
    return-void

    :cond_a
    :goto_6
    iget-object v3, p0, Lcom/amap/api/col/l3/db;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_7
    div-int/lit8 v9, p1, 0x3

    if-ge v5, v9, :cond_e

    iget-object v9, p0, Lcom/amap/api/col/l3/db;->d:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/autonavi/amap/mapcore/FPoint3;

    iget-object v10, p0, Lcom/amap/api/col/l3/db;->S:[F

    mul-int/lit8 v11, v5, 0x3

    iget v12, v9, Landroid/graphics/PointF;->x:F

    aput v12, v10, v11

    add-int/lit8 v12, v11, 0x1

    iget v13, v9, Landroid/graphics/PointF;->y:F

    aput v13, v10, v12

    add-int/2addr v11, v1

    aput v6, v10, v11

    iget v9, v9, Lcom/autonavi/amap/mapcore/FPoint3;->colorIndex:I

    if-nez v5, :cond_b

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v9

    goto :goto_9

    :cond_b
    if-eq v9, v7, :cond_d

    const/4 v10, -0x1

    if-ne v9, v10, :cond_c

    goto :goto_8

    :cond_c
    move v7, v9

    :goto_8
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_9
    aput v5, v3, v8

    add-int/lit8 v8, v8, 0x1

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_e
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/amap/api/col/l3/db;->T:[I

    array-length v0, p1

    invoke-static {v3, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/amap/api/col/l3/db;->o:Ljava/util/List;

    monitor-enter p1

    :try_start_0
    iput-object v4, p0, Lcom/amap/api/col/l3/db;->o:Ljava/util/List;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v4, p0, Lcom/amap/api/col/l3/db;->p:Ljava/util/List;

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method private static a(Ljava/util/List;Ljava/util/List;D)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autonavi/amap/mapcore/IPoint;",
            ">;",
            "Ljava/util/List<",
            "Lcom/autonavi/amap/mapcore/IPoint;",
            ">;D)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xa

    if-gt v2, v3, :cond_1

    int-to-float v2, v2

    const/high16 v3, 0x41200000    # 10.0f

    div-float v3, v2, v3

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v4

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    float-to-double v7, v3

    sub-double/2addr v5, v7

    mul-double v7, v5, v5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/autonavi/amap/mapcore/IPoint;

    iget v9, v9, Landroid/graphics/Point;->x:I

    int-to-double v9, v9

    mul-double v9, v9, v7

    const/high16 v11, 0x40000000    # 2.0f

    mul-float v11, v11, v3

    float-to-double v11, v11

    mul-double v11, v11, v5

    const/4 v5, 0x1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/autonavi/amap/mapcore/IPoint;

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-double v13, v6

    mul-double v13, v13, v11

    mul-double v13, v13, p2

    add-double/2addr v9, v13

    mul-float v3, v3, v3

    const/4 v6, 0x2

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/autonavi/amap/mapcore/IPoint;

    iget v13, v13, Landroid/graphics/Point;->x:I

    int-to-float v13, v13

    mul-float v13, v13, v3

    float-to-double v13, v13

    add-double/2addr v9, v13

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/autonavi/amap/mapcore/IPoint;

    iget v13, v13, Landroid/graphics/Point;->y:I

    int-to-double v13, v13

    mul-double v13, v13, v7

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/autonavi/amap/mapcore/IPoint;

    iget v5, v5, Landroid/graphics/Point;->y:I

    move v15, v2

    int-to-double v1, v5

    mul-double v1, v1, v11

    mul-double v1, v1, p2

    add-double/2addr v13, v1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/amap/mapcore/IPoint;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    mul-float v1, v1, v3

    float-to-double v1, v1

    add-double/2addr v13, v1

    mul-double v11, v11, p2

    add-double/2addr v7, v11

    float-to-double v1, v3

    add-double/2addr v7, v1

    div-double/2addr v9, v7

    double-to-int v1, v9

    iput v1, v4, Landroid/graphics/Point;->x:I

    div-double/2addr v13, v7

    double-to-int v1, v13

    iput v1, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v1, p1

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v2, v15

    float-to-int v2, v2

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method private a([Lcom/autonavi/amap/mapcore/FPoint;)Z
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/r;->c()Lcom/amap/api/col/l3/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/col/l3/u;->h()F

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3/db;->L:F

    invoke-direct {p0}, Lcom/amap/api/col/l3/db;->e()V

    iget v0, p0, Lcom/amap/api/col/l3/db;->L:F

    const/4 v1, 0x0

    const/high16 v2, 0x41200000    # 10.0f

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/r;->c()Lcom/amap/api/col/l3/u;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3/db;->Y:Lcom/autonavi/amap/mapcore/FPointBounds;

    iget-object v0, v0, Lcom/autonavi/amap/mapcore/FPointBounds;->northeast:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-static {v0, p1}, Lcom/amap/api/col/l3/em;->a(Lcom/autonavi/amap/mapcore/FPoint;[Lcom/autonavi/amap/mapcore/FPoint;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3/db;->Y:Lcom/autonavi/amap/mapcore/FPointBounds;

    iget-object v0, v0, Lcom/autonavi/amap/mapcore/FPointBounds;->southwest:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-static {v0, p1}, Lcom/amap/api/col/l3/em;->a(Lcom/autonavi/amap/mapcore/FPoint;[Lcom/autonavi/amap/mapcore/FPoint;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1

    :catchall_0
    :cond_2
    return v1
.end method

.method private b(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v3, :cond_0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    if-eq v6, v4, :cond_1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    aput v3, v0, v5

    add-int/lit8 v5, v5, 0x1

    move v4, v6

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/amap/api/col/l3/db;->T:[I

    array-length v3, p1

    invoke-static {v0, v2, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private d()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/l3/db;->t:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;-><init>()V

    iget-object v2, p0, Lcom/amap/api/col/l3/db;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/amap/api/col/l3/db;->C:Z

    iget-object v3, p0, Lcom/amap/api/col/l3/db;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/amap/api/col/l3/db;->S:[F

    array-length v3, v3

    iput v3, p0, Lcom/amap/api/col/l3/db;->b:I

    iget-object v3, p0, Lcom/amap/api/col/l3/db;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/autonavi/amap/mapcore/IPoint;

    new-instance v5, Lcom/autonavi/amap/mapcore/FPoint3;

    invoke-direct {v5}, Lcom/autonavi/amap/mapcore/FPoint3;-><init>()V

    iget-object v6, p0, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {v6}, Lcom/amap/api/col/l3/r;->c()Lcom/amap/api/col/l3/u;

    move-result-object v6

    iget v7, v4, Landroid/graphics/Point;->y:I

    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-interface {v6, v7, v4, v5}, Lcom/amap/api/col/l3/u;->a(IILcom/autonavi/amap/mapcore/FPoint;)V

    iget-object v4, p0, Lcom/amap/api/col/l3/db;->S:[F

    mul-int/lit8 v6, v2, 0x3

    iget v7, v5, Landroid/graphics/PointF;->x:F

    aput v7, v4, v6

    iget-object v4, p0, Lcom/amap/api/col/l3/db;->S:[F

    add-int/lit8 v7, v6, 0x1

    iget v8, v5, Landroid/graphics/PointF;->y:F

    aput v8, v4, v7

    iget-object v4, p0, Lcom/amap/api/col/l3/db;->S:[F

    add-int/lit8 v6, v6, 0x2

    const/4 v7, 0x0

    aput v7, v4, v6

    iget-object v4, p0, Lcom/amap/api/col/l3/db;->m:Ljava/util/List;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v6, p0, Lcom/amap/api/col/l3/db;->m:Ljava/util/List;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/amap/api/col/l3/db;->m:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v2, :cond_0

    iget-object v6, p0, Lcom/amap/api/col/l3/db;->m:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/autonavi/amap/mapcore/FPoint3;->setColorIndex(I)V

    goto :goto_1

    :cond_0
    iget-object v6, p0, Lcom/amap/api/col/l3/db;->n:Ljava/util/List;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/amap/api/col/l3/db;->n:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v2, :cond_1

    iget-object v6, p0, Lcom/amap/api/col/l3/db;->n:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/autonavi/amap/mapcore/FPoint3;->setColorIndex(I)V

    :cond_1
    :goto_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v4, p0, Lcom/amap/api/col/l3/db;->i:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v5}, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;->include(Lcom/autonavi/amap/mapcore/FPoint;)Lcom/autonavi/amap/mapcore/FPointBounds$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v4

    throw v1

    :cond_2
    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;->build()Lcom/autonavi/amap/mapcore/FPointBounds;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/col/l3/db;->Y:Lcom/autonavi/amap/mapcore/FPointBounds;

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-boolean v0, p0, Lcom/amap/api/col/l3/db;->D:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/l3/db;->S:[F

    invoke-static {v0}, Lcom/amap/api/col/l3/em;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/db;->q:Ljava/nio/FloatBuffer;

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/l3/db;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3/db;->H:I

    invoke-direct {p0}, Lcom/amap/api/col/l3/db;->e()V

    const/4 v0, 0x1

    return v0

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private e()V
    .locals 3

    iget v0, p0, Lcom/amap/api/col/l3/db;->H:I

    const/16 v1, 0x1388

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/amap/api/col/l3/db;->L:F

    const/high16 v1, 0x41400000    # 12.0f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    iget v1, p0, Lcom/amap/api/col/l3/db;->J:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    div-float/2addr v0, v2

    add-float/2addr v1, v0

    const/high16 v0, 0x43480000    # 200.0f

    cmpg-float v2, v1, v0

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x43480000    # 200.0f

    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/r;->c()Lcom/amap/api/col/l3/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/col/l3/u;->d()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->getMapLenWithWin(I)F

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3/db;->R:F

    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/r;->c()Lcom/amap/api/col/l3/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/col/l3/u;->d()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->getMapLenWithWin(I)F

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3/db;->R:F

    return-void

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/r;->c()Lcom/amap/api/col/l3/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/col/l3/u;->d()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->getMapLenWithWin(I)F

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3/db;->R:F

    return-void
.end method

.method private f()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3/db;->y:Z

    iput v0, p0, Lcom/amap/api/col/l3/db;->F:I

    iget-object v1, p0, Lcom/amap/api/col/l3/db;->U:[I

    if-eqz v1, :cond_0

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/r;->c()Lcom/amap/api/col/l3/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/amap/mapcore/Rectangle;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/l3/db;->a:Landroid/graphics/Rect;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/Rectangle;->isOverlap(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    return v2
.end method

.method public final a(Lcom/amap/api/maps/model/LatLng;)Z
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/amap/api/col/l3/db;->S:[F

    array-length v3, v2

    new-array v4, v3, [F

    array-length v5, v2

    const/4 v6, 0x0

    invoke-static {v2, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    div-int/lit8 v3, v3, 0x3

    const/4 v2, 0x2

    if-ge v3, v2, :cond_0

    return v6

    :cond_0
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    iget-object v4, v0, Lcom/amap/api/col/l3/db;->S:[F

    array-length v4, v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    iget-object v4, v0, Lcom/amap/api/col/l3/db;->S:[F

    aget v4, v4, v3

    add-int/lit8 v3, v3, 0x1

    iget-object v7, v0, Lcom/amap/api/col/l3/db;->S:[F

    aget v7, v7, v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v4, v7}, Lcom/autonavi/amap/mapcore/FPoint;->obtain(FF)Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v3, v5

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-gtz v3, :cond_2

    return v6

    :cond_2
    iget-object v3, v0, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {v3}, Lcom/amap/api/col/l3/r;->c()Lcom/amap/api/col/l3/u;

    move-result-object v3

    invoke-interface {v3}, Lcom/amap/api/col/l3/u;->d()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v3

    iget v4, v0, Lcom/amap/api/col/l3/db;->J:F

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x4

    invoke-virtual {v3, v4}, Lcom/autonavi/ae/gmap/GLMapState;->getMapLenWithWin(I)F

    move-result v3

    float-to-double v3, v3

    iget-object v7, v0, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {v7}, Lcom/amap/api/col/l3/r;->c()Lcom/amap/api/col/l3/u;

    move-result-object v7

    invoke-interface {v7}, Lcom/amap/api/col/l3/u;->d()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v7

    iget-wide v8, v0, Lcom/amap/api/col/l3/db;->V:D

    double-to-int v8, v8

    invoke-virtual {v7, v8}, Lcom/autonavi/ae/gmap/GLMapState;->getMapLenWithWin(I)F

    move-result v7

    float-to-double v7, v7

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v15

    iget-object v9, v0, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {v9}, Lcom/amap/api/col/l3/r;->c()Lcom/amap/api/col/l3/u;

    move-result-object v9

    iget-wide v10, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v12, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object v14, v15

    invoke-interface/range {v9 .. v14}, Lcom/amap/api/col/l3/u;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v1

    iget-object v9, v0, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {v9}, Lcom/amap/api/col/l3/r;->c()Lcom/amap/api/col/l3/u;

    move-result-object v9

    iget v10, v15, Landroid/graphics/Point;->y:I

    iget v11, v15, Landroid/graphics/Point;->x:I

    invoke-interface {v9, v10, v11, v1}, Lcom/amap/api/col/l3/u;->a(IILcom/autonavi/amap/mapcore/FPoint;)V

    invoke-virtual {v15}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v5

    if-ge v10, v11, :cond_7

    if-nez v10, :cond_3

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/autonavi/amap/mapcore/FPoint;

    :cond_3
    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/autonavi/amap/mapcore/FPoint;

    iget v12, v1, Landroid/graphics/PointF;->x:F

    float-to-double v12, v12

    iget v14, v1, Landroid/graphics/PointF;->y:F

    float-to-double v14, v14

    iget v6, v9, Landroid/graphics/PointF;->x:F

    float-to-double v5, v6

    iget v9, v9, Landroid/graphics/PointF;->y:F

    move-object/from16 p1, v1

    float-to-double v0, v9

    iget v9, v11, Landroid/graphics/PointF;->x:F

    move/from16 v16, v10

    float-to-double v9, v9

    move-object/from16 v17, v2

    iget v2, v11, Landroid/graphics/PointF;->y:F

    move-wide/from16 v18, v3

    float-to-double v2, v2

    sub-double v20, v9, v5

    sub-double v22, v12, v5

    mul-double v24, v20, v22

    sub-double v26, v2, v0

    sub-double v28, v14, v0

    mul-double v30, v26, v28

    add-double v24, v24, v30

    const-wide/16 v30, 0x0

    cmpg-double v4, v24, v30

    if-gtz v4, :cond_4

    mul-double v22, v22, v22

    mul-double v28, v28, v28

    add-double v22, v22, v28

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    goto :goto_3

    :cond_4
    mul-double v22, v20, v20

    mul-double v28, v26, v26

    add-double v22, v22, v28

    cmpl-double v4, v24, v22

    if-ltz v4, :cond_5

    sub-double/2addr v12, v9

    mul-double v12, v12, v12

    sub-double/2addr v14, v2

    mul-double v14, v14, v14

    add-double/2addr v12, v14

    goto :goto_2

    :cond_5
    div-double v24, v24, v22

    mul-double v20, v20, v24

    add-double v5, v5, v20

    mul-double v26, v26, v24

    add-double v0, v0, v26

    sub-double/2addr v12, v5

    mul-double v12, v12, v12

    sub-double/2addr v0, v14

    mul-double v0, v0, v0

    add-double/2addr v12, v0

    :goto_2
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    :goto_3
    add-double v3, v7, v18

    sub-double/2addr v3, v0

    cmpl-double v0, v3, v30

    if-ltz v0, :cond_6

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    return v0

    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v9, v11

    move/from16 v10, v16

    move-object/from16 v2, v17

    move-wide/from16 v3, v18

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_7
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/amap/api/col/l3/db;->h:Ljava/util/List;

    if-eqz v0, :cond_2e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2e

    iget v0, v1, Lcom/amap/api/col/l3/db;->J:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    goto/16 :goto_16

    :cond_0
    iget-object v0, v1, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/r;->c()Lcom/amap/api/col/l3/u;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v2, v1, Lcom/amap/api/col/l3/db;->t:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, v1, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/r;->c()Lcom/amap/api/col/l3/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_x()I

    move-result v0

    iget-object v3, v1, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {v3}, Lcom/amap/api/col/l3/r;->c()Lcom/amap/api/col/l3/u;

    move-result-object v3

    invoke-interface {v3}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_y()I

    move-result v3

    iget-object v4, v1, Lcom/amap/api/col/l3/db;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, v1, Lcom/amap/api/col/l3/db;->h:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    if-ne v4, v5, :cond_2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_4

    iget-object v7, v1, Lcom/amap/api/col/l3/db;->h:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/autonavi/amap/mapcore/IPoint;

    iget-object v8, v1, Lcom/amap/api/col/l3/db;->i:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/autonavi/amap/mapcore/FPoint;

    iget v9, v7, Landroid/graphics/Point;->x:I

    sub-int/2addr v9, v0

    int-to-float v9, v9

    iput v9, v8, Landroid/graphics/PointF;->x:F

    iget v7, v7, Landroid/graphics/Point;->y:I

    sub-int/2addr v7, v3

    int-to-float v7, v7

    iput v7, v8, Landroid/graphics/PointF;->y:F

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, v1, Lcom/amap/api/col/l3/db;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v4, v5, :cond_4

    iget-object v8, v1, Lcom/amap/api/col/l3/db;->h:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/autonavi/amap/mapcore/IPoint;

    new-instance v9, Lcom/autonavi/amap/mapcore/FPoint3;

    invoke-direct {v9}, Lcom/autonavi/amap/mapcore/FPoint3;-><init>()V

    iget-object v10, v1, Lcom/amap/api/col/l3/db;->m:Ljava/util/List;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_10

    :try_start_1
    iget-object v11, v1, Lcom/amap/api/col/l3/db;->m:Ljava/util/List;

    if-eqz v11, :cond_3

    iget-object v11, v1, Lcom/amap/api/col/l3/db;->m:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v7, :cond_3

    iget-object v11, v1, Lcom/amap/api/col/l3/db;->m:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v9, v11}, Lcom/autonavi/amap/mapcore/FPoint3;->setColorIndex(I)V

    :cond_3
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget v10, v8, Landroid/graphics/Point;->x:I

    sub-int/2addr v10, v0

    int-to-float v10, v10

    iput v10, v9, Landroid/graphics/PointF;->x:F

    iget v8, v8, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v3

    int-to-float v8, v8

    iput v8, v9, Landroid/graphics/PointF;->y:F

    iget-object v8, v1, Lcom/amap/api/col/l3/db;->i:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0

    :cond_4
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_10

    iget-boolean v0, v1, Lcom/amap/api/col/l3/db;->z:Z

    if-eqz v0, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3/db;->d()Z

    iput-boolean v6, v1, Lcom/amap/api/col/l3/db;->z:Z

    goto :goto_3

    :cond_5
    iget-boolean v0, v1, Lcom/amap/api/col/l3/db;->A:Z

    if-eqz v0, :cond_8

    iget-object v2, v1, Lcom/amap/api/col/l3/db;->t:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v0, v1, Lcom/amap/api/col/l3/db;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v3, v1, Lcom/amap/api/col/l3/db;->m:Ljava/util/List;

    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v4, v1, Lcom/amap/api/col/l3/db;->m:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v0, :cond_7

    if-le v4, v5, :cond_6

    iget-object v7, v1, Lcom/amap/api/col/l3/db;->i:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/autonavi/amap/mapcore/FPoint3;

    iget-object v8, v1, Lcom/amap/api/col/l3/db;->m:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/autonavi/amap/mapcore/FPoint3;->setColorIndex(I)V

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit v2

    goto :goto_3

    :catchall_1
    move-exception v0

    monitor-exit v3

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_8
    :goto_3
    iget-object v0, v1, Lcom/amap/api/col/l3/db;->S:[F

    const/4 v2, 0x1

    if-eqz v0, :cond_2d

    iget v3, v1, Lcom/amap/api/col/l3/db;->H:I

    if-lez v3, :cond_2d

    iget-boolean v3, v1, Lcom/amap/api/col/l3/db;->D:Z

    const/4 v4, 0x3

    if-eqz v3, :cond_29

    iget-object v0, v1, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/r;->c()Lcom/amap/api/col/l3/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    iget-object v3, v1, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {v3}, Lcom/amap/api/col/l3/r;->c()Lcom/amap/api/col/l3/u;

    move-result-object v3

    invoke-interface {v3}, Lcom/amap/api/col/l3/u;->d()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v3

    iget v5, v1, Lcom/amap/api/col/l3/db;->J:F

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Lcom/autonavi/ae/gmap/GLMapState;->getMapLenWithWin(I)F

    move-result v9

    iget v3, v1, Lcom/amap/api/col/l3/db;->E:I

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const/4 v5, 0x2

    if-eqz v3, :cond_25

    const/high16 v10, 0x3f800000    # 1.0f

    const/16 v11, 0xc

    if-eq v3, v2, :cond_1f

    if-eq v3, v5, :cond_18

    if-eq v3, v4, :cond_13

    const/4 v4, 0x4

    if-eq v3, v4, :cond_11

    const/4 v4, 0x5

    if-eq v3, v4, :cond_9

    goto/16 :goto_15

    :cond_9
    iget-boolean v3, v1, Lcom/amap/api/col/l3/db;->y:Z

    if-nez v3, :cond_c

    :try_start_6
    iget-object v3, v1, Lcom/amap/api/col/l3/db;->k:Ljava/util/List;

    if-eqz v3, :cond_c

    iget-object v3, v1, Lcom/amap/api/col/l3/db;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [I

    iput-object v3, v1, Lcom/amap/api/col/l3/db;->U:[I

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v11, :cond_a

    const/4 v3, 0x1

    goto :goto_4

    :cond_a
    const/4 v3, 0x0

    :goto_4
    iget-object v4, v1, Lcom/amap/api/col/l3/db;->k:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v7, 0x0

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-direct {v1, v3, v8}, Lcom/amap/api/col/l3/db;->a(ZLcom/amap/api/maps/model/BitmapDescriptor;)I

    move-result v8

    iget-object v11, v1, Lcom/amap/api/col/l3/db;->U:[I

    aput v8, v11, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_b
    iput-boolean v2, v1, Lcom/amap/api/col/l3/db;->y:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v0

    const-string v3, "MarkerDelegateImp"

    const-string v4, "loadtexture"

    invoke-static {v0, v3, v4}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15

    :cond_c
    :goto_6
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/amap/mapcore/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/Rectangle;->getClipMapRect()[Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v0

    :try_start_7
    iget-object v3, v1, Lcom/amap/api/col/l3/db;->i:Ljava/util/List;

    invoke-direct {v1, v0}, Lcom/amap/api/col/l3/db;->a([Lcom/autonavi/amap/mapcore/FPoint;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v3, v1, Lcom/amap/api/col/l3/db;->t:Ljava/lang/Object;

    monitor-enter v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    :try_start_8
    iget-object v4, v1, Lcom/amap/api/col/l3/db;->i:Ljava/util/List;

    invoke-static {v0, v4}, Lcom/amap/api/col/l3/em;->b([Lcom/autonavi/amap/mapcore/FPoint;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-object v3, v0

    goto :goto_7

    :catchall_4
    move-exception v0

    :try_start_9
    monitor-exit v3

    throw v0

    :cond_d
    :goto_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v5, :cond_2d

    invoke-direct {v1, v3}, Lcom/amap/api/col/l3/db;->a(Ljava/util/List;)V

    iget-object v3, v1, Lcom/amap/api/col/l3/db;->o:Ljava/util/List;

    monitor-enter v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    :try_start_a
    iget-object v0, v1, Lcom/amap/api/col/l3/db;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    new-array v0, v11, [I

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v11, :cond_f

    iget-object v5, v1, Lcom/amap/api/col/l3/db;->o:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gez v5, :cond_e

    const/4 v5, 0x0

    :cond_e
    iget-object v7, v1, Lcom/amap/api/col/l3/db;->U:[I

    aget v5, v7, v5

    aput v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_f
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :try_start_b
    iget-object v3, v1, Lcom/amap/api/col/l3/db;->T:[I

    if-eqz v3, :cond_10

    const/4 v6, 0x1

    :cond_10
    and-int/lit8 v3, v6, 0x1

    if-eqz v3, :cond_2d

    iget-object v7, v1, Lcom/amap/api/col/l3/db;->S:[F

    iget v8, v1, Lcom/amap/api/col/l3/db;->b:I

    iget-object v12, v1, Lcom/amap/api/col/l3/db;->T:[I

    iget-object v3, v1, Lcom/amap/api/col/l3/db;->T:[I

    array-length v13, v3

    iget v3, v1, Lcom/amap/api/col/l3/db;->Q:F

    sub-float v14, v10, v3

    iget-object v3, v1, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {v3}, Lcom/amap/api/col/l3/r;->d()[F

    move-result-object v15

    move-object v10, v0

    invoke-static/range {v7 .. v15}, Lcom/autonavi/amap/mapcore/AMapNativeRenderer;->nativeDrawLineByMultiTextureID([FIF[II[IIF[F)V

    goto/16 :goto_15

    :catchall_5
    move-exception v0

    monitor-exit v3

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :cond_11
    iget-object v0, v1, Lcom/amap/api/col/l3/db;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v10, v0, [I

    :goto_9
    iget-object v0, v1, Lcom/amap/api/col/l3/db;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_12

    iget-object v0, v1, Lcom/amap/api/col/l3/db;->n:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v10, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_12
    :try_start_c
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3/db;->d()Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_a
    iget-object v7, v1, Lcom/amap/api/col/l3/db;->S:[F

    array-length v8, v7

    iget-object v0, v1, Lcom/amap/api/col/l3/db;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    iget-object v12, v1, Lcom/amap/api/col/l3/db;->T:[I

    array-length v13, v12

    iget-object v0, v1, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/r;->c()Lcom/amap/api/col/l3/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/col/l3/u;->e()I

    move-result v14

    iget-object v0, v1, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/r;->d()[F

    move-result-object v15

    invoke-static/range {v7 .. v15}, Lcom/autonavi/amap/mapcore/AMapNativeRenderer;->nativeDrawGradientColorLine([FIF[II[III[F)V

    goto/16 :goto_15

    :cond_13
    iget-object v3, v1, Lcom/amap/api/col/l3/db;->n:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [I

    const/4 v4, 0x0

    :goto_b
    iget-object v7, v1, Lcom/amap/api/col/l3/db;->n:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_14

    iget-object v7, v1, Lcom/amap/api/col/l3/db;->n:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_14
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/amap/mapcore/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/Rectangle;->getClipMapRect()[Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v0

    :try_start_d
    iget-object v3, v1, Lcom/amap/api/col/l3/db;->i:Ljava/util/List;

    invoke-direct {v1, v0}, Lcom/amap/api/col/l3/db;->a([Lcom/autonavi/amap/mapcore/FPoint;)Z

    move-result v4

    if-eqz v4, :cond_15

    iget-object v3, v1, Lcom/amap/api/col/l3/db;->t:Ljava/lang/Object;

    monitor-enter v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    :try_start_e
    iget-object v4, v1, Lcom/amap/api/col/l3/db;->i:Ljava/util/List;

    invoke-static {v0, v4}, Lcom/amap/api/col/l3/em;->b([Lcom/autonavi/amap/mapcore/FPoint;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    move-object v3, v0

    goto :goto_c

    :catchall_6
    move-exception v0

    :try_start_f
    monitor-exit v3

    throw v0

    :cond_15
    :goto_c
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v5, :cond_2d

    invoke-direct {v1, v3}, Lcom/amap/api/col/l3/db;->a(Ljava/util/List;)V

    iget-object v0, v1, Lcom/amap/api/col/l3/db;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    new-array v11, v12, [I

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v12, :cond_16

    iget-object v3, v1, Lcom/amap/api/col/l3/db;->p:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v11, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_16
    iget-object v0, v1, Lcom/amap/api/col/l3/db;->T:[I

    if-eqz v0, :cond_17

    const/4 v6, 0x1

    :cond_17
    and-int/lit8 v0, v6, 0x1

    if-eqz v0, :cond_2d

    iget-object v7, v1, Lcom/amap/api/col/l3/db;->S:[F

    iget v8, v1, Lcom/amap/api/col/l3/db;->b:I

    iget-object v0, v1, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/r;->c()Lcom/amap/api/col/l3/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/col/l3/u;->e()I

    move-result v10

    iget-object v13, v1, Lcom/amap/api/col/l3/db;->T:[I

    iget-object v0, v1, Lcom/amap/api/col/l3/db;->T:[I

    array-length v14, v0

    iget-object v0, v1, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/r;->d()[F

    move-result-object v15

    invoke-static/range {v7 .. v15}, Lcom/autonavi/amap/mapcore/AMapNativeRenderer;->nativeDrawLineByMultiColor([FIFI[II[II[F)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    goto/16 :goto_15

    :catchall_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_15

    :cond_18
    iget-boolean v3, v1, Lcom/amap/api/col/l3/db;->y:Z

    if-nez v3, :cond_1b

    monitor-enter p0

    :try_start_10
    iget-object v3, v1, Lcom/amap/api/col/l3/db;->r:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v3, :cond_1a

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v11, :cond_19

    const/4 v3, 0x1

    goto :goto_e

    :cond_19
    const/4 v3, 0x0

    :goto_e
    iget-object v4, v1, Lcom/amap/api/col/l3/db;->r:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-direct {v1, v3, v4}, Lcom/amap/api/col/l3/db;->a(ZLcom/amap/api/maps/model/BitmapDescriptor;)I

    move-result v3

    iput v3, v1, Lcom/amap/api/col/l3/db;->F:I

    iput-boolean v2, v1, Lcom/amap/api/col/l3/db;->y:Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    :cond_1a
    monitor-exit p0

    goto :goto_f

    :catchall_8
    move-exception v0

    :try_start_11
    const-string v3, "MarkerDelegateImp"

    const-string v4, "loadtexture"

    invoke-static {v0, v3, v4}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    goto/16 :goto_15

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1b
    :goto_f
    :try_start_12
    iget-object v3, v1, Lcom/amap/api/col/l3/db;->i:Ljava/util/List;

    iget-object v4, v1, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {v4}, Lcom/amap/api/col/l3/r;->c()Lcom/amap/api/col/l3/u;

    move-result-object v4

    if-nez v4, :cond_1c

    goto/16 :goto_15

    :cond_1c
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getChangeRatio()D

    move-result-wide v10

    cmpl-double v4, v10, v7

    if-nez v4, :cond_1d

    iget-object v4, v1, Lcom/amap/api/col/l3/db;->S:[F

    if-eqz v4, :cond_1d

    iget v4, v1, Lcom/amap/api/col/l3/db;->aa:I

    add-int/2addr v4, v2

    iput v4, v1, Lcom/amap/api/col/l3/db;->aa:I

    iget v7, v1, Lcom/amap/api/col/l3/db;->ab:I

    if-le v4, v7, :cond_1d

    iget-object v7, v1, Lcom/amap/api/col/l3/db;->S:[F

    iget v8, v1, Lcom/amap/api/col/l3/db;->b:I

    iget-object v0, v1, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/r;->c()Lcom/amap/api/col/l3/u;

    move-result-object v0

    iget v3, v1, Lcom/amap/api/col/l3/db;->I:I

    invoke-interface {v0, v3}, Lcom/amap/api/col/l3/u;->e(I)I

    move-result v10

    iget v11, v1, Lcom/amap/api/col/l3/db;->N:F

    iget v12, v1, Lcom/amap/api/col/l3/db;->O:F

    iget v13, v1, Lcom/amap/api/col/l3/db;->P:F

    iget v14, v1, Lcom/amap/api/col/l3/db;->M:F

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x0

    iget-object v0, v1, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/r;->d()[F

    move-result-object v19

    invoke-static/range {v7 .. v19}, Lcom/autonavi/amap/mapcore/AMapNativeRenderer;->nativeDrawLineByTextureID([FIFIFFFFFZZZ[F)V

    goto/16 :goto_15

    :cond_1d
    iput v6, v1, Lcom/amap/api/col/l3/db;->aa:I

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/amap/mapcore/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/Rectangle;->getClipMapRect()[Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/amap/api/col/l3/db;->a([Lcom/autonavi/amap/mapcore/FPoint;)Z

    move-result v4

    if-eqz v4, :cond_1e

    iget-object v3, v1, Lcom/amap/api/col/l3/db;->t:Ljava/lang/Object;

    monitor-enter v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_f

    :try_start_13
    iget-object v4, v1, Lcom/amap/api/col/l3/db;->i:Ljava/util/List;

    invoke-static {v0, v4}, Lcom/amap/api/col/l3/em;->a([Lcom/autonavi/amap/mapcore/FPoint;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    monitor-exit v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    move-object v3, v0

    goto :goto_10

    :catchall_a
    move-exception v0

    :try_start_14
    monitor-exit v3

    throw v0

    :cond_1e
    :goto_10
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v5, :cond_2d

    invoke-direct {v1, v3}, Lcom/amap/api/col/l3/db;->a(Ljava/util/List;)V

    iget-object v7, v1, Lcom/amap/api/col/l3/db;->S:[F

    iget v8, v1, Lcom/amap/api/col/l3/db;->b:I

    iget-object v0, v1, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/r;->c()Lcom/amap/api/col/l3/u;

    move-result-object v0

    iget v3, v1, Lcom/amap/api/col/l3/db;->I:I

    invoke-interface {v0, v3}, Lcom/amap/api/col/l3/u;->e(I)I

    move-result v10

    iget v11, v1, Lcom/amap/api/col/l3/db;->N:F

    iget v12, v1, Lcom/amap/api/col/l3/db;->O:F

    iget v13, v1, Lcom/amap/api/col/l3/db;->P:F

    iget v14, v1, Lcom/amap/api/col/l3/db;->M:F

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x0

    iget-object v0, v1, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/r;->d()[F

    move-result-object v19

    invoke-static/range {v7 .. v19}, Lcom/autonavi/amap/mapcore/AMapNativeRenderer;->nativeDrawLineByTextureID([FIFIFFFFFZZZ[F)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_f

    goto/16 :goto_15

    :cond_1f
    iget-boolean v3, v1, Lcom/amap/api/col/l3/db;->y:Z

    if-nez v3, :cond_22

    monitor-enter p0

    :try_start_15
    iget-object v3, v1, Lcom/amap/api/col/l3/db;->r:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v3, :cond_21

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v11, :cond_20

    const/4 v3, 0x1

    goto :goto_11

    :cond_20
    const/4 v3, 0x0

    :goto_11
    iget-object v4, v1, Lcom/amap/api/col/l3/db;->r:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-direct {v1, v3, v4}, Lcom/amap/api/col/l3/db;->a(ZLcom/amap/api/maps/model/BitmapDescriptor;)I

    move-result v3

    iput v3, v1, Lcom/amap/api/col/l3/db;->F:I

    iput-boolean v2, v1, Lcom/amap/api/col/l3/db;->y:Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_b

    :cond_21
    monitor-exit p0

    goto :goto_12

    :catchall_b
    move-exception v0

    :try_start_16
    const-string v3, "MarkerDelegateImp"

    const-string v4, "loadtexture"

    invoke-static {v0, v3, v4}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_c

    goto/16 :goto_15

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_22
    :goto_12
    :try_start_17
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getChangeRatio()D

    move-result-wide v3

    cmpl-double v11, v3, v7

    if-nez v11, :cond_23

    iget-object v3, v1, Lcom/amap/api/col/l3/db;->S:[F

    if-eqz v3, :cond_23

    iget v3, v1, Lcom/amap/api/col/l3/db;->aa:I

    add-int/2addr v3, v2

    iput v3, v1, Lcom/amap/api/col/l3/db;->aa:I

    iget v4, v1, Lcom/amap/api/col/l3/db;->ab:I

    if-le v3, v4, :cond_23

    iget-object v7, v1, Lcom/amap/api/col/l3/db;->S:[F

    iget v8, v1, Lcom/amap/api/col/l3/db;->b:I

    iget v0, v1, Lcom/amap/api/col/l3/db;->F:I

    iget v11, v1, Lcom/amap/api/col/l3/db;->N:F

    iget v12, v1, Lcom/amap/api/col/l3/db;->O:F

    iget v13, v1, Lcom/amap/api/col/l3/db;->P:F

    iget v14, v1, Lcom/amap/api/col/l3/db;->M:F

    iget v3, v1, Lcom/amap/api/col/l3/db;->Q:F

    sub-float v15, v10, v3

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    iget-object v3, v1, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {v3}, Lcom/amap/api/col/l3/r;->d()[F

    move-result-object v19

    move v10, v0

    invoke-static/range {v7 .. v19}, Lcom/autonavi/amap/mapcore/AMapNativeRenderer;->nativeDrawLineByTextureID([FIFIFFFFFZZZ[F)V

    goto/16 :goto_15

    :cond_23
    iput v6, v1, Lcom/amap/api/col/l3/db;->aa:I

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/amap/mapcore/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/Rectangle;->getClipMapRect()[Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v0

    iget-object v3, v1, Lcom/amap/api/col/l3/db;->i:Ljava/util/List;

    invoke-direct {v1, v0}, Lcom/amap/api/col/l3/db;->a([Lcom/autonavi/amap/mapcore/FPoint;)Z

    move-result v4

    if-eqz v4, :cond_24

    iget-object v3, v1, Lcom/amap/api/col/l3/db;->t:Ljava/lang/Object;

    monitor-enter v3
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_f

    :try_start_18
    iget-object v4, v1, Lcom/amap/api/col/l3/db;->i:Ljava/util/List;

    invoke-static {v0, v4}, Lcom/amap/api/col/l3/em;->a([Lcom/autonavi/amap/mapcore/FPoint;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    monitor-exit v3
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_d

    move-object v3, v0

    goto :goto_13

    :catchall_d
    move-exception v0

    :try_start_19
    monitor-exit v3

    throw v0

    :cond_24
    :goto_13
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v5, :cond_2d

    invoke-direct {v1, v3}, Lcom/amap/api/col/l3/db;->a(Ljava/util/List;)V

    iget-object v7, v1, Lcom/amap/api/col/l3/db;->S:[F

    iget v8, v1, Lcom/amap/api/col/l3/db;->b:I

    iget v0, v1, Lcom/amap/api/col/l3/db;->F:I

    iget v11, v1, Lcom/amap/api/col/l3/db;->N:F

    iget v12, v1, Lcom/amap/api/col/l3/db;->O:F

    iget v13, v1, Lcom/amap/api/col/l3/db;->P:F

    iget v14, v1, Lcom/amap/api/col/l3/db;->M:F

    iget v3, v1, Lcom/amap/api/col/l3/db;->Q:F

    sub-float v15, v10, v3

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    iget-object v3, v1, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {v3}, Lcom/amap/api/col/l3/r;->d()[F

    move-result-object v19

    move v10, v0

    invoke-static/range {v7 .. v19}, Lcom/autonavi/amap/mapcore/AMapNativeRenderer;->nativeDrawLineByTextureID([FIFIFFFFFZZZ[F)V

    goto/16 :goto_15

    :cond_25
    iget-object v3, v1, Lcom/amap/api/col/l3/db;->i:Ljava/util/List;

    iget-object v4, v1, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {v4}, Lcom/amap/api/col/l3/r;->c()Lcom/amap/api/col/l3/u;

    move-result-object v4

    if-nez v4, :cond_26

    goto/16 :goto_15

    :cond_26
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getChangeRatio()D

    move-result-wide v10

    cmpl-double v4, v10, v7

    if-nez v4, :cond_27

    iget-object v4, v1, Lcom/amap/api/col/l3/db;->S:[F

    if-eqz v4, :cond_27

    iget v4, v1, Lcom/amap/api/col/l3/db;->aa:I

    add-int/2addr v4, v2

    iput v4, v1, Lcom/amap/api/col/l3/db;->aa:I

    iget v7, v1, Lcom/amap/api/col/l3/db;->ab:I

    if-le v4, v7, :cond_27

    iget-object v7, v1, Lcom/amap/api/col/l3/db;->S:[F

    iget v8, v1, Lcom/amap/api/col/l3/db;->b:I

    iget-object v0, v1, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/r;->c()Lcom/amap/api/col/l3/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/col/l3/u;->e()I

    move-result v10

    iget v11, v1, Lcom/amap/api/col/l3/db;->N:F

    iget v12, v1, Lcom/amap/api/col/l3/db;->O:F

    iget v13, v1, Lcom/amap/api/col/l3/db;->P:F

    iget v14, v1, Lcom/amap/api/col/l3/db;->M:F

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    iget-object v0, v1, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/r;->d()[F

    move-result-object v19

    invoke-static/range {v7 .. v19}, Lcom/autonavi/amap/mapcore/AMapNativeRenderer;->nativeDrawLineByTextureID([FIFIFFFFFZZZ[F)V

    goto/16 :goto_15

    :cond_27
    iput v6, v1, Lcom/amap/api/col/l3/db;->aa:I

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/amap/mapcore/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/Rectangle;->getClipMapRect()[Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/amap/api/col/l3/db;->a([Lcom/autonavi/amap/mapcore/FPoint;)Z

    move-result v4

    if-eqz v4, :cond_28

    iget-object v3, v1, Lcom/amap/api/col/l3/db;->t:Ljava/lang/Object;

    monitor-enter v3
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_f

    :try_start_1a
    iget-object v4, v1, Lcom/amap/api/col/l3/db;->i:Ljava/util/List;

    invoke-static {v0, v4}, Lcom/amap/api/col/l3/em;->a([Lcom/autonavi/amap/mapcore/FPoint;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_e

    move-object v3, v0

    goto :goto_14

    :catchall_e
    move-exception v0

    :try_start_1b
    monitor-exit v3

    throw v0

    :cond_28
    :goto_14
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v5, :cond_2d

    invoke-direct {v1, v3}, Lcom/amap/api/col/l3/db;->a(Ljava/util/List;)V

    iget-object v7, v1, Lcom/amap/api/col/l3/db;->S:[F

    iget v8, v1, Lcom/amap/api/col/l3/db;->b:I

    iget-object v0, v1, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/r;->c()Lcom/amap/api/col/l3/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/col/l3/u;->e()I

    move-result v10

    iget v11, v1, Lcom/amap/api/col/l3/db;->N:F

    iget v12, v1, Lcom/amap/api/col/l3/db;->O:F

    iget v13, v1, Lcom/amap/api/col/l3/db;->P:F

    iget v14, v1, Lcom/amap/api/col/l3/db;->M:F

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    iget-object v0, v1, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/r;->d()[F

    move-result-object v19

    invoke-static/range {v7 .. v19}, Lcom/autonavi/amap/mapcore/AMapNativeRenderer;->nativeDrawLineByTextureID([FIFIFFFFFZZZ[F)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_f

    goto :goto_15

    :cond_29
    iget-object v3, v1, Lcom/amap/api/col/l3/db;->q:Ljava/nio/FloatBuffer;

    if-nez v3, :cond_2a

    invoke-static {v0}, Lcom/amap/api/col/l3/em;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/col/l3/db;->q:Ljava/nio/FloatBuffer;

    :cond_2a
    iget-object v0, v1, Lcom/amap/api/col/l3/db;->ac:Lcom/amap/api/col/l3/dg$d;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Lcom/amap/api/col/l3/df;->b()Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_2b
    iget-object v0, v1, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lcom/amap/api/col/l3/r;->c()Lcom/amap/api/col/l3/u;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-interface {v0, v4}, Lcom/amap/api/col/l3/u;->m(I)Lcom/amap/api/col/l3/df;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/l3/dg$d;

    iput-object v0, v1, Lcom/amap/api/col/l3/db;->ac:Lcom/amap/api/col/l3/dg$d;

    :cond_2c
    iget-object v3, v1, Lcom/amap/api/col/l3/db;->ac:Lcom/amap/api/col/l3/dg$d;

    iget v4, v1, Lcom/amap/api/col/l3/db;->G:I

    iget-object v5, v1, Lcom/amap/api/col/l3/db;->q:Ljava/nio/FloatBuffer;

    iget v6, v1, Lcom/amap/api/col/l3/db;->J:F

    iget v7, v1, Lcom/amap/api/col/l3/db;->H:I

    iget-object v0, v1, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/r;->d()[F

    move-result-object v8

    invoke-static/range {v3 .. v8}, Lcom/amap/api/col/l3/dw;->a(Lcom/amap/api/col/l3/dg$d;ILjava/nio/FloatBuffer;FI[F)V

    :catchall_f
    :cond_2d
    :goto_15
    iput-boolean v2, v1, Lcom/amap/api/col/l3/db;->C:Z

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2e
    :goto_16
    return-void
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3/db;->C:Z

    return v0
.end method

.method public final destroy()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3/db;->remove()V

    iget-object v0, p0, Lcom/amap/api/col/l3/db;->l:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3/db;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/amap/api/col/l3/db;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/l3/db;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/col/l3/ab;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {v1}, Lcom/amap/api/col/l3/ab;->f()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amap/api/col/l3/r;->a(Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {v2}, Lcom/amap/api/col/l3/r;->c()Lcom/amap/api/col/l3/u;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amap/api/col/l3/ab;->j()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/amap/api/col/l3/u;->b(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/db;->S:[F

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/amap/api/col/l3/db;->S:[F

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3/db;->q:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/l3/db;->q:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iput-object v1, p0, Lcom/amap/api/col/l3/db;->q:Ljava/nio/FloatBuffer;

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/l3/db;->k:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/l3/db;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/l3/db;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v2}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/amap/api/col/l3/db;->r:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/l3/db;->r:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V

    :cond_5
    iget-object v0, p0, Lcom/amap/api/col/l3/db;->n:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/col/l3/db;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/amap/api/col/l3/db;->n:Ljava/util/List;

    :cond_6
    iget-object v0, p0, Lcom/amap/api/col/l3/db;->m:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/col/l3/db;->m:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/amap/api/col/l3/db;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/amap/api/col/l3/db;->m:Ljava/util/List;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0

    throw v1

    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/amap/api/col/l3/db;->j:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/amap/api/col/l3/db;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/amap/api/col/l3/db;->j:Ljava/util/List;

    :cond_8
    iput-object v1, p0, Lcom/amap/api/col/l3/db;->Z:Lcom/amap/api/maps/model/PolylineOptions;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    const-string v1, "PolylineDelegateImp"

    const-string v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlay;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amap/api/col/l3/db;->getId()Ljava/lang/String;

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

.method public final getColor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/amap/api/col/l3/db;->G:I

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/l3/db;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    const-string v1, "Polyline"

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/db;->g:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/db;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final getNearestLatLng(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/l3/db;->j:Ljava/util/List;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/amap/api/col/l3/db;->j:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    if-nez v2, :cond_2

    iget-object v1, p0, Lcom/amap/api/col/l3/db;->j:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/model/LatLng;

    invoke-static {p1, v1}, Lcom/amap/api/maps/AMapUtils;->calculateLineDistance(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F

    move-result v1

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/amap/api/col/l3/db;->j:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amap/api/maps/model/LatLng;

    invoke-static {p1, v4}, Lcom/amap/api/maps/AMapUtils;->calculateLineDistance(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F

    move-result v4

    cmpl-float v5, v1, v4

    if-lez v5, :cond_3

    move v3, v2

    move v1, v4

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/amap/api/col/l3/db;->j:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/maps/model/LatLng;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const-string v1, "PolylineDelegateImp"

    const-string v2, "getNearestLatLng"

    invoke-static {p1, v1, v2}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_2
    return-object v0
.end method

.method public final getOptions()Lcom/amap/api/maps/model/PolylineOptions;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/db;->Z:Lcom/amap/api/maps/model/PolylineOptions;

    return-object v0
.end method

.method public final getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/l3/db;->j:Ljava/util/List;

    return-object v0
.end method

.method public final getWidth()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/amap/api/col/l3/db;->J:F

    return v0
.end method

.method public final getZIndex()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/amap/api/col/l3/db;->K:F

    return v0
.end method

.method public final hashCodeRemote()I
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

.method public final isAboveMaskLayer()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3/db;->W:Z

    return v0
.end method

.method public final isDottedLine()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3/db;->x:Z

    return v0
.end method

.method public final isGeodesic()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3/db;->w:Z

    return v0
.end method

.method public final isVisible()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/col/l3/db;->u:Z

    return v0
.end method

.method public final remove()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {p0}, Lcom/amap/api/col/l3/db;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/r;->c(Ljava/lang/String;)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3/db;->setVisible(Z)V

    iget-object v1, p0, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {v1}, Lcom/amap/api/col/l3/r;->c()Lcom/amap/api/col/l3/u;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public final setAboveMaskLayer(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3/db;->W:Z

    return-void
.end method

.method public final setColor(I)V
    .locals 3

    iget v0, p0, Lcom/amap/api/col/l3/db;->E:I

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_3

    :cond_0
    iput p1, p0, Lcom/amap/api/col/l3/db;->G:I

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v0, v2

    iput v0, p0, Lcom/amap/api/col/l3/db;->M:F

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/amap/api/col/l3/db;->N:F

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/amap/api/col/l3/db;->O:F

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/amap/api/col/l3/db;->P:F

    iget-boolean v0, p0, Lcom/amap/api/col/l3/db;->v:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/amap/api/col/l3/db;->x:Z

    if-eqz v0, :cond_1

    iput v1, p0, Lcom/amap/api/col/l3/db;->E:I

    goto :goto_0

    :cond_1
    iput v2, p0, Lcom/amap/api/col/l3/db;->E:I

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/r;->c()Lcom/amap/api/col/l3/u;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/l3/db;->Z:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/PolylineOptions;->color(I)Lcom/amap/api/maps/model/PolylineOptions;

    return-void
.end method

.method public final setCustemTextureIndex(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/db;->m:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v1, p0, Lcom/amap/api/col/l3/db;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/amap/api/col/l3/db;->m:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/amap/api/col/l3/db;->o:Ljava/util/List;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/db;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/db;->o:Ljava/util/List;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p1, 0x1

    :try_start_3
    iput-boolean p1, p0, Lcom/amap/api/col/l3/db;->A:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_4
    monitor-exit v0

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setCustomTexture(Lcom/amap/api/maps/model/BitmapDescriptor;)V
    .locals 7

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amap/api/col/l3/db;->e:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x10

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    return-void

    :cond_0
    iput-wide v0, p0, Lcom/amap/api/col/l3/db;->e:J

    if-nez p1, :cond_1

    return-void

    :cond_1
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/amap/api/col/l3/db;->v:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3/db;->y:Z

    const/4 v1, 0x1

    iput v1, p0, Lcom/amap/api/col/l3/db;->E:I

    iput-object p1, p0, Lcom/amap/api/col/l3/db;->r:Lcom/amap/api/maps/model/BitmapDescriptor;

    iget-object v1, p0, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {v1}, Lcom/amap/api/col/l3/r;->c()Lcom/amap/api/col/l3/u;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    iget-object v0, p0, Lcom/amap/api/col/l3/db;->Z:Lcom/amap/api/maps/model/PolylineOptions;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3/db;->Z:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/PolylineOptions;->setCustomTexture(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/PolylineOptions;

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setDottedLine(Z)V
    .locals 2

    iget v0, p0, Lcom/amap/api/col/l3/db;->E:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_2

    :cond_0
    iput-boolean p1, p0, Lcom/amap/api/col/l3/db;->x:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/amap/api/col/l3/db;->v:Z

    if-eqz p1, :cond_1

    iput v1, p0, Lcom/amap/api/col/l3/db;->E:I

    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/r;->c()Lcom/amap/api/col/l3/u;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    :cond_2
    return-void
.end method

.method public final setGeodesic(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/amap/api/col/l3/db;->w:Z

    iget-object p1, p0, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/r;->c()Lcom/amap/api/col/l3/u;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public final setOptions(Lcom/amap/api/maps/model/PolylineOptions;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/amap/api/col/l3/db;->Z:Lcom/amap/api/maps/model/PolylineOptions;

    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3/db;->setColor(I)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->isGeodesic()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3/db;->setGeodesic(Z)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->isDottedLine()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3/db;->setDottedLine(Z)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getDottedLineType()I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3/db;->I:I

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->isAboveMaskLayer()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/l3/db;->W:Z

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->isVisible()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3/db;->setVisible(Z)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getWidth()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3/db;->setWidth(F)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getZIndex()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3/db;->setZIndex(F)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->isUseTexture()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/l3/db;->D:Z

    iget-object v0, p0, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/r;->c()Lcom/amap/api/col/l3/u;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getTransparency()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3/db;->setTransparency(F)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getColorValues()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getColorValues()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcom/amap/api/col/l3/db;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_2

    iput-boolean v1, p0, Lcom/amap/api/col/l3/db;->v:Z

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3/db;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/db;->p:Ljava/util/List;

    const/4 v0, 0x3

    iput v0, p0, Lcom/amap/api/col/l3/db;->E:I

    iget-object v0, p0, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/r;->c()Lcom/amap/api/col/l3/u;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    goto :goto_0

    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3/db;->setColor(I)V

    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->isUseGradient()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/amap/api/col/l3/db;->n:Ljava/util/List;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/amap/api/col/l3/db;->n:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_4

    iput-boolean v0, p0, Lcom/amap/api/col/l3/db;->B:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/amap/api/col/l3/db;->E:I

    iget-object v0, p0, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/r;->c()Lcom/amap/api/col/l3/u;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    :cond_4
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getCustomTexture()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getCustomTexture()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3/db;->setCustomTexture(Lcom/amap/api/maps/model/BitmapDescriptor;)V

    invoke-direct {p0}, Lcom/amap/api/col/l3/db;->f()V

    :cond_5
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getCustomTextureList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getCustomTextureList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_7

    iput-boolean v1, p0, Lcom/amap/api/col/l3/db;->v:Z

    const/4 v2, 0x5

    iput v2, p0, Lcom/amap/api/col/l3/db;->E:I

    iput-object v0, p0, Lcom/amap/api/col/l3/db;->k:Ljava/util/List;

    iget-object v0, p0, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/r;->c()Lcom/amap/api/col/l3/u;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    goto :goto_1

    :cond_7
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3/db;->setCustomTexture(Lcom/amap/api/maps/model/BitmapDescriptor;)V

    :cond_8
    :goto_1
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getCustomTextureIndex()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3/db;->setCustemTextureIndex(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/amap/api/col/l3/db;->f()V

    :cond_9
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getPoints()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3/db;->setPoints(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "PolylineDelegateImp"

    const-string v1, "setOptions"

    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public final setPoints(Ljava/util/List;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    :try_start_0
    iput-object v0, v1, Lcom/amap/api/col/l3/db;->j:Ljava/util/List;

    iget-object v2, v1, Lcom/amap/api/col/l3/db;->t:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/amap/api/maps/model/LatLngBounds;->builder()Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_4

    const/4 v6, 0x0

    :try_start_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amap/api/maps/model/LatLng;

    iget-boolean v9, v1, Lcom/amap/api/col/l3/db;->w:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v9, :cond_0

    :try_start_3
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v6

    iget-object v9, v1, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {v9}, Lcom/amap/api/col/l3/r;->c()Lcom/amap/api/col/l3/u;

    move-result-object v10

    iget-wide v11, v8, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v13, v8, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object v15, v6

    invoke-interface/range {v10 .. v15}, Lcom/amap/api/col/l3/u;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {v4, v8}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_3

    :cond_0
    if-eqz v6, :cond_3

    :try_start_4
    iget-wide v9, v8, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v11, v6, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-wide v11, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v13, v9, v11

    if-gez v13, :cond_1

    :try_start_5
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v9

    iget-object v10, v1, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {v10}, Lcom/amap/api/col/l3/r;->c()Lcom/amap/api/col/l3/u;

    move-result-object v14

    iget-wide v10, v6, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v12, v6, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-wide v15, v10

    move-wide/from16 v17, v12

    move-object/from16 v19, v9

    invoke-interface/range {v14 .. v19}, Lcom/amap/api/col/l3/u;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v6}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v6

    iget-object v9, v1, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {v9}, Lcom/amap/api/col/l3/r;->c()Lcom/amap/api/col/l3/u;

    move-result-object v15

    iget-wide v9, v8, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v11, v8, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-wide/from16 v16, v9

    move-wide/from16 v18, v11

    move-object/from16 v20, v6

    invoke-interface/range {v15 .. v20}, Lcom/amap/api/col/l3/u;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :cond_1
    :try_start_6
    iget-wide v9, v6, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v11, v8, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    const-wide v11, 0x400921fb54442d18L    # Math.PI

    mul-double v9, v9, v11

    const-wide v11, 0x4066800000000000L    # 180.0

    div-double/2addr v9, v11

    new-instance v14, Lcom/amap/api/maps/model/LatLng;

    iget-wide v11, v8, Lcom/amap/api/maps/model/LatLng;->latitude:D

    move-wide/from16 v17, v9

    iget-wide v9, v6, Lcom/amap/api/maps/model/LatLng;->latitude:D

    add-double/2addr v11, v9

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    div-double v12, v11, v9

    iget-wide v9, v8, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v0, v6, Lcom/amap/api/maps/model/LatLng;->longitude:D

    add-double/2addr v9, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double v0, v9, v0

    const/16 v16, 0x0

    move-object v11, v14

    move-object v9, v14

    move-wide v14, v0

    invoke-direct/range {v11 .. v16}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    invoke-virtual {v4, v6}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    iget-wide v0, v9, Lcom/amap/api/maps/model/LatLng;->latitude:D

    const-wide/16 v10, 0x0

    cmpl-double v12, v0, v10

    if-lez v12, :cond_2

    const/4 v0, -0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x1

    :goto_2
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v1

    move-object/from16 v15, p0

    iget-object v10, v15, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {v10}, Lcom/amap/api/col/l3/r;->c()Lcom/amap/api/col/l3/u;

    move-result-object v10

    iget-wide v11, v6, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v13, v6, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object v6, v15

    move-object v15, v1

    invoke-interface/range {v10 .. v15}, Lcom/amap/api/col/l3/u;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v10

    iget-object v11, v6, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {v11}, Lcom/amap/api/col/l3/r;->c()Lcom/amap/api/col/l3/u;

    move-result-object v19

    iget-wide v11, v8, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v13, v8, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-wide/from16 v20, v11

    move-wide/from16 v22, v13

    move-object/from16 v24, v10

    invoke-interface/range {v19 .. v24}, Lcom/amap/api/col/l3/u;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v11

    iget-object v12, v6, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {v12}, Lcom/amap/api/col/l3/r;->c()Lcom/amap/api/col/l3/u;

    move-result-object v20

    iget-wide v12, v9, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v14, v9, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-wide/from16 v21, v12

    move-wide/from16 v23, v14

    move-object/from16 v25, v11

    invoke-interface/range {v20 .. v25}, Lcom/amap/api/col/l3/u;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double v14, v17, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    iget v9, v1, Landroid/graphics/Point;->x:I

    iget v12, v10, Landroid/graphics/Point;->x:I

    sub-int/2addr v9, v12

    int-to-double v12, v9

    iget v9, v1, Landroid/graphics/Point;->y:I

    move-object/from16 v19, v7

    iget v7, v10, Landroid/graphics/Point;->y:I

    sub-int/2addr v9, v7

    move-object/from16 v20, v8

    int-to-double v7, v9

    invoke-static {v12, v13, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double v7, v7, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->tan(D)D

    move-result-wide v12

    mul-double v7, v7, v12

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v9

    iget v12, v10, Landroid/graphics/Point;->x:I

    iget v13, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v12, v13

    int-to-double v12, v12

    iget v14, v10, Landroid/graphics/Point;->y:I

    iget v15, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v14, v15

    int-to-double v14, v14

    mul-double v17, v14, v14

    mul-double v21, v12, v12

    div-double v17, v17, v21

    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    add-double v17, v17, v21

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    int-to-double v3, v0

    mul-double v3, v3, v7

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    div-double/2addr v3, v7

    iget v0, v11, Landroid/graphics/Point;->y:I

    int-to-double v7, v0

    add-double/2addr v3, v7

    double-to-int v0, v3

    iput v0, v9, Landroid/graphics/Point;->y:I

    iget v3, v11, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v0

    int-to-double v3, v3

    mul-double v3, v3, v14

    div-double/2addr v3, v12

    iget v0, v11, Landroid/graphics/Point;->x:I

    int-to-double v7, v0

    add-double/2addr v3, v7

    double-to-int v0, v3

    iput v0, v9, Landroid/graphics/Point;->x:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v21

    invoke-static {v0, v3, v5, v6}, Lcom/amap/api/col/l3/db;->a(Ljava/util/List;Ljava/util/List;D)V

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    invoke-virtual {v9}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    invoke-virtual {v10}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    :cond_3
    :goto_3
    move-object/from16 v22, v4

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    :goto_4
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v7, v19

    move-object/from16 v6, v20

    move-object/from16 v4, v22

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_6

    :cond_4
    move-object/from16 v22, v4

    move-object/from16 v1, p0

    :try_start_7
    iput-object v3, v1, Lcom/amap/api/col/l3/db;->h:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, v1, Lcom/amap/api/col/l3/db;->H:I

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    invoke-virtual/range {v22 .. v22}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v3

    iput-object v3, v1, Lcom/amap/api/col/l3/db;->s:Lcom/amap/api/maps/model/LatLngBounds;

    :cond_5
    iget-object v3, v1, Lcom/amap/api/col/l3/db;->a:Landroid/graphics/Rect;

    if-nez v3, :cond_6

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v1, Lcom/amap/api/col/l3/db;->a:Landroid/graphics/Rect;

    :cond_6
    iget-object v3, v1, Lcom/amap/api/col/l3/db;->a:Landroid/graphics/Rect;

    invoke-static {v3}, Lcom/amap/api/col/l3/em;->a(Landroid/graphics/Rect;)V

    iget-object v3, v1, Lcom/amap/api/col/l3/db;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/autonavi/amap/mapcore/IPoint;

    iget-object v5, v1, Lcom/amap/api/col/l3/db;->a:Landroid/graphics/Rect;

    iget v6, v4, Landroid/graphics/Point;->x:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v5, v6, v4}, Lcom/amap/api/col/l3/em;->b(Landroid/graphics/Rect;II)V

    goto :goto_5

    :cond_7
    iget-object v3, v1, Lcom/amap/api/col/l3/db;->a:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->sort()V

    iget-object v3, v1, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {v3}, Lcom/amap/api/col/l3/r;->c()Lcom/amap/api/col/l3/u;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/4 v2, 0x1

    :try_start_8
    iput-boolean v2, v1, Lcom/amap/api/col/l3/db;->z:Z

    iget-object v2, v1, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {v2}, Lcom/amap/api/col/l3/r;->c()Lcom/amap/api/col/l3/u;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    iget-object v0, v1, Lcom/amap/api/col/l3/db;->Z:Lcom/amap/api/maps/model/PolylineOptions;

    move-object/from16 v2, p1

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/PolylineOptions;->setPoints(Ljava/util/List;)V

    return-void

    :catchall_1
    move-exception v0

    :goto_6
    monitor-exit v2

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    const-string v2, "PolylineDelegateImp"

    const-string v3, "setPoints"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/amap/api/col/l3/db;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setTransparency(F)V
    .locals 4

    float-to-double v0, p1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lcom/amap/api/col/l3/db;->Q:F

    iget-object p1, p0, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/r;->c()Lcom/amap/api/col/l3/u;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public final setVisible(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/amap/api/col/l3/db;->u:Z

    iget-object v0, p0, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/r;->c()Lcom/amap/api/col/l3/u;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    iget-object v0, p0, Lcom/amap/api/col/l3/db;->Z:Lcom/amap/api/maps/model/PolylineOptions;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/PolylineOptions;->visible(Z)Lcom/amap/api/maps/model/PolylineOptions;

    :cond_0
    return-void
.end method

.method public final setWidth(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput p1, p0, Lcom/amap/api/col/l3/db;->J:F

    iget-object v0, p0, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/r;->c()Lcom/amap/api/col/l3/u;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    iget-object v0, p0, Lcom/amap/api/col/l3/db;->Z:Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/PolylineOptions;->width(F)Lcom/amap/api/maps/model/PolylineOptions;

    return-void
.end method

.method public final setZIndex(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput p1, p0, Lcom/amap/api/col/l3/db;->K:F

    iget-object v0, p0, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/r;->b()V

    iget-object v0, p0, Lcom/amap/api/col/l3/db;->f:Lcom/amap/api/col/l3/r;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/r;->c()Lcom/amap/api/col/l3/u;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    iget-object v0, p0, Lcom/amap/api/col/l3/db;->Z:Lcom/amap/api/maps/model/PolylineOptions;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/PolylineOptions;->zIndex(F)Lcom/amap/api/maps/model/PolylineOptions;

    :cond_0
    return-void
.end method
