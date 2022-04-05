.class public final Lcom/amap/api/col/l3/z;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3/z$a;
    }
.end annotation


# instance fields
.field a:Lcom/amap/api/col/l3/u;

.field b:[F

.field public c:Lcom/amap/api/col/l3/dg$c;

.field d:I

.field e:I

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/col/l3/cs;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/col/l3/ab;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/col/l3/cs;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/amap/api/col/l3/z$a;

.field private j:Z

.field private k:Lcom/autonavi/amap/mapcore/IPoint;

.field private l:Lcom/amap/api/col/l3/cp;

.field private m:Lcom/amap/api/col/l3/cp;

.field private n:Lcom/amap/api/col/l3/er;

.field private o:Lcom/amap/api/col/l3/ec;

.field private p:Ljava/nio/FloatBuffer;

.field private q:Landroid/os/Handler;

.field private r:[I

.field private s:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/amap/api/col/l3/u;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amap/api/col/l3/z;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/z;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/z;->h:Ljava/util/List;

    new-instance v0, Lcom/amap/api/col/l3/z$a;

    invoke-direct {v0}, Lcom/amap/api/col/l3/z$a;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/z;->i:Lcom/amap/api/col/l3/z$a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3/z;->j:Z

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/amap/api/col/l3/z;->q:Landroid/os/Handler;

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/amap/api/col/l3/z;->r:[I

    const v0, 0x2bf20

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/amap/api/col/l3/z;->b:[F

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/l3/z;->d:I

    iput v0, p0, Lcom/amap/api/col/l3/z;->e:I

    new-instance v0, Lcom/amap/api/col/l3/z$2;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3/z$2;-><init>(Lcom/amap/api/col/l3/z;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/z;->s:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/amap/api/col/l3/z;->a:Lcom/amap/api/col/l3/u;

    new-instance p1, Lcom/amap/api/col/l3/er;

    invoke-direct {p1}, Lcom/amap/api/col/l3/er;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3/z;->n:Lcom/amap/api/col/l3/er;

    new-instance p1, Lcom/amap/api/col/l3/ec;

    invoke-direct {p1}, Lcom/amap/api/col/l3/ec;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3/z;->o:Lcom/amap/api/col/l3/ec;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3/z;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3/z;->f:Ljava/util/List;

    return-object p0
.end method

.method private a(IIII)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    if-eqz v2, :cond_9

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v3, v0, Lcom/amap/api/col/l3/z;->o:Lcom/amap/api/col/l3/ec;

    mul-int/lit8 v4, v2, 0x24

    invoke-virtual {v3, v4}, Lcom/amap/api/col/l3/ec;->a(I)Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, v0, Lcom/amap/api/col/l3/z;->p:Ljava/nio/FloatBuffer;

    iget-object v4, v0, Lcom/amap/api/col/l3/z;->b:[F

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual {v3, v4, v5, v6}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    iget-object v3, v0, Lcom/amap/api/col/l3/z;->p:Ljava/nio/FloatBuffer;

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    const/16 v3, 0x1388

    if-le v2, v3, :cond_1

    const/16 v4, 0x1388

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    iget v5, v0, Lcom/amap/api/col/l3/z;->d:I

    const v6, 0x88e4

    const v7, 0x8893

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v5, :cond_3

    const/4 v5, 0x2

    new-array v10, v5, [I

    invoke-static {v5, v10, v9}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    aget v5, v10, v9

    iput v5, v0, Lcom/amap/api/col/l3/z;->d:I

    aget v5, v10, v8

    iput v5, v0, Lcom/amap/api/col/l3/z;->e:I

    iget-object v5, v0, Lcom/amap/api/col/l3/z;->o:Lcom/amap/api/col/l3/ec;

    invoke-virtual {v5}, Lcom/amap/api/col/l3/ec;->b()Ljava/nio/ShortBuffer;

    move-result-object v5

    const/16 v10, 0x7530

    new-array v10, v10, [S

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v3, :cond_2

    mul-int/lit8 v12, v11, 0x6

    add-int/lit8 v13, v12, 0x0

    mul-int/lit8 v14, v11, 0x4

    add-int/lit8 v15, v14, 0x0

    int-to-short v15, v15

    aput-short v15, v10, v13

    add-int/lit8 v13, v12, 0x1

    add-int/lit8 v3, v14, 0x1

    int-to-short v3, v3

    aput-short v3, v10, v13

    add-int/lit8 v3, v12, 0x2

    add-int/lit8 v13, v14, 0x2

    int-to-short v13, v13

    aput-short v13, v10, v3

    add-int/lit8 v3, v12, 0x3

    aput-short v15, v10, v3

    add-int/lit8 v3, v12, 0x4

    aput-short v13, v10, v3

    add-int/lit8 v12, v12, 0x5

    add-int/lit8 v14, v14, 0x3

    int-to-short v3, v14

    aput-short v3, v10, v12

    add-int/lit8 v11, v11, 0x1

    const/16 v3, 0x1388

    goto :goto_1

    :cond_2
    invoke-virtual {v5, v10}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    invoke-virtual {v5}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    iget v3, v0, Lcom/amap/api/col/l3/z;->e:I

    invoke-static {v7, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const v3, 0xea60

    invoke-static {v7, v3, v5, v6}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    :cond_3
    iget v3, v0, Lcom/amap/api/col/l3/z;->d:I

    const v5, 0x8892

    invoke-static {v5, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    mul-int/lit8 v4, v4, 0x24

    const/4 v3, 0x4

    mul-int/lit8 v4, v4, 0x4

    iget-object v10, v0, Lcom/amap/api/col/l3/z;->p:Ljava/nio/FloatBuffer;

    invoke-static {v5, v4, v10, v6}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    iget-object v4, v0, Lcom/amap/api/col/l3/z;->p:Ljava/nio/FloatBuffer;

    iget-object v6, v0, Lcom/amap/api/col/l3/z;->a:Lcom/amap/api/col/l3/u;

    invoke-interface {v6}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v6

    if-eqz v1, :cond_8

    if-eqz v4, :cond_8

    if-nez v2, :cond_4

    goto/16 :goto_3

    :cond_4
    iget-object v4, v0, Lcom/amap/api/col/l3/z;->c:Lcom/amap/api/col/l3/dg$c;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/amap/api/col/l3/df;->b()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    iget-object v4, v0, Lcom/amap/api/col/l3/z;->c:Lcom/amap/api/col/l3/dg$c;

    if-nez v4, :cond_6

    iget-object v4, v0, Lcom/amap/api/col/l3/z;->a:Lcom/amap/api/col/l3/u;

    if-eqz v4, :cond_6

    invoke-interface {v4, v8}, Lcom/amap/api/col/l3/u;->m(I)Lcom/amap/api/col/l3/df;

    move-result-object v4

    check-cast v4, Lcom/amap/api/col/l3/dg$c;

    iput-object v4, v0, Lcom/amap/api/col/l3/z;->c:Lcom/amap/api/col/l3/dg$c;

    :cond_6
    iget-object v4, v0, Lcom/amap/api/col/l3/z;->c:Lcom/amap/api/col/l3/dg$c;

    iget v4, v4, Lcom/amap/api/col/l3/df;->d:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v4, v0, Lcom/amap/api/col/l3/z;->c:Lcom/amap/api/col/l3/dg$c;

    iget v4, v4, Lcom/amap/api/col/l3/dg$c;->h:I

    invoke-virtual {v6}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_r()F

    move-result v6

    invoke-static {v4, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v4, v0, Lcom/amap/api/col/l3/z;->c:Lcom/amap/api/col/l3/dg$c;

    iget v4, v4, Lcom/amap/api/col/l3/dg$c;->b:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v4, v0, Lcom/amap/api/col/l3/z;->d:I

    invoke-static {v5, v4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget-object v4, v0, Lcom/amap/api/col/l3/z;->c:Lcom/amap/api/col/l3/dg$c;

    iget v10, v4, Lcom/amap/api/col/l3/dg$c;->b:I

    const/4 v11, 0x4

    const/16 v12, 0x1406

    const/4 v13, 0x0

    const/16 v14, 0x24

    const/4 v15, 0x0

    invoke-static/range {v10 .. v15}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    const/16 v4, 0xbe2

    invoke-static {v4}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v6, 0x303

    invoke-static {v8, v6}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/16 v6, 0xde1

    invoke-static {v6, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v1, v0, Lcom/amap/api/col/l3/z;->c:Lcom/amap/api/col/l3/dg$c;

    iget v1, v1, Lcom/amap/api/col/l3/dg$c;->c:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v1, v0, Lcom/amap/api/col/l3/z;->d:I

    invoke-static {v5, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget-object v1, v0, Lcom/amap/api/col/l3/z;->c:Lcom/amap/api/col/l3/dg$c;

    iget v10, v1, Lcom/amap/api/col/l3/dg$c;->c:I

    const/4 v11, 0x2

    const/16 v15, 0x10

    invoke-static/range {v10 .. v15}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    iget-object v1, v0, Lcom/amap/api/col/l3/z;->c:Lcom/amap/api/col/l3/dg$c;

    iget v1, v1, Lcom/amap/api/col/l3/dg$c;->g:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v1, v0, Lcom/amap/api/col/l3/z;->d:I

    invoke-static {v5, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget-object v1, v0, Lcom/amap/api/col/l3/z;->c:Lcom/amap/api/col/l3/dg$c;

    iget v10, v1, Lcom/amap/api/col/l3/dg$c;->g:I

    const/4 v11, 0x3

    const/16 v15, 0x18

    invoke-static/range {v10 .. v15}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    iget-object v1, v0, Lcom/amap/api/col/l3/z;->c:Lcom/amap/api/col/l3/dg$c;

    iget v1, v1, Lcom/amap/api/col/l3/dg$c;->a:I

    iget-object v10, v0, Lcom/amap/api/col/l3/z;->a:Lcom/amap/api/col/l3/u;

    if-eqz v10, :cond_7

    invoke-interface {v10}, Lcom/amap/api/col/l3/u;->v()[F

    move-result-object v10

    goto :goto_2

    :cond_7
    const/16 v10, 0x10

    new-array v10, v10, [F

    :goto_2
    invoke-static {v1, v8, v9, v10, v9}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v1, v0, Lcom/amap/api/col/l3/z;->e:I

    invoke-static {v7, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    mul-int/lit8 v1, v2, 0x6

    const/16 v2, 0x1403

    invoke-static {v3, v1, v2, v9}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    invoke-static {v5, v9}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    invoke-static {v7, v9}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    invoke-static {v6, v9}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v1, v0, Lcom/amap/api/col/l3/z;->c:Lcom/amap/api/col/l3/dg$c;

    iget v1, v1, Lcom/amap/api/col/l3/dg$c;->b:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget-object v1, v0, Lcom/amap/api/col/l3/z;->c:Lcom/amap/api/col/l3/dg$c;

    iget v1, v1, Lcom/amap/api/col/l3/dg$c;->c:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {v4}, Landroid/opengl/GLES20;->glDisable(I)V

    invoke-static {v9}, Landroid/opengl/GLES20;->glUseProgram(I)V

    :cond_8
    :goto_3
    iget-object v1, v0, Lcom/amap/api/col/l3/z;->o:Lcom/amap/api/col/l3/ec;

    invoke-virtual {v1}, Lcom/amap/api/col/l3/ec;->a()V

    :cond_9
    :goto_4
    return-void
.end method

.method static synthetic b(Lcom/amap/api/col/l3/z;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/z;->f:Ljava/util/List;

    iget-object p0, p0, Lcom/amap/api/col/l3/z;->i:Lcom/amap/api/col/l3/z$a;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "MapOverlayImageView"

    const-string v1, "changeOverlayIndex"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private d(Lcom/amap/api/col/l3/cs;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/z;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/amap/api/col/l3/z;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "MapOverlayImageView"

    const-string v1, "addMarker"

    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)Lcom/amap/api/col/l3/cp;
    .locals 6

    iget-object v0, p0, Lcom/amap/api/col/l3/z;->f:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/z;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/amap/api/col/l3/z;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/col/l3/cs;

    instance-of v3, v2, Lcom/amap/api/col/l3/cx;

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/amap/api/col/l3/cs;->h()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v3, v4, v5}, Lcom/amap/api/col/l3/em;->a(Landroid/graphics/Rect;II)Z

    move-result v3

    if-eqz v3, :cond_0

    check-cast v2, Lcom/amap/api/col/l3/cp;

    iput-object v2, p0, Lcom/amap/api/col/l3/z;->l:Lcom/amap/api/col/l3/cp;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final a(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lcom/amap/api/col/l3/cx;

    invoke-direct {v0, p1, p0}, Lcom/amap/api/col/l3/cx;-><init>(Lcom/amap/api/maps/model/MarkerOptions;Lcom/amap/api/col/l3/z;)V

    iget-object p1, p0, Lcom/amap/api/col/l3/z;->f:Ljava/util/List;

    monitor-enter p1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/amap/api/col/l3/z;->d(Lcom/amap/api/col/l3/cs;)V

    new-instance v1, Lcom/amap/api/maps/model/Marker;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IMarker;)V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method public final a(Lcom/amap/api/maps/model/TextOptions;)Lcom/amap/api/maps/model/Text;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/z;->f:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/amap/api/col/l3/dd;

    invoke-direct {v1, p1, p0}, Lcom/amap/api/col/l3/dd;-><init>(Lcom/amap/api/maps/model/TextOptions;Lcom/amap/api/col/l3/z;)V

    invoke-direct {p0, v1}, Lcom/amap/api/col/l3/z;->d(Lcom/amap/api/col/l3/cs;)V

    new-instance p1, Lcom/amap/api/maps/model/Text;

    invoke-direct {p1, v1}, Lcom/amap/api/maps/model/Text;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IText;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final a(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/maps/model/MarkerOptions;",
            ">;Z)",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/maps/model/Marker;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/model/MarkerOptions;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/amap/api/col/l3/z;->a(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_4

    invoke-virtual {v1}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/amap/api/col/l3/z;->a:Lcom/amap/api/col/l3/u;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object p2

    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {p2, v1}, Lcom/amap/api/col/l3/aj;->a(Lcom/amap/api/maps/model/LatLng;F)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amap/api/col/l3/u;->a(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/amap/api/maps/model/LatLngBounds;->builder()Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v1

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v3}, Lcom/amap/api/col/l3/z;->a(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/amap/api/col/l3/z;->a:Lcom/amap/api/col/l3/u;

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/amap/api/col/l3/z$1;

    invoke-direct {p2, p0, v1}, Lcom/amap/api/col/l3/z$1;-><init>(Lcom/amap/api/col/l3/z;Lcom/amap/api/maps/model/LatLngBounds$Builder;)V

    const-wide/16 v1, 0x32

    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_1
    return-object v0

    :catchall_0
    move-exception p1

    const-string p2, "AMapDelegateImpGLSurfaceView"

    const-string v1, "addMarkers"

    invoke-static {p1, p2, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0

    :cond_5
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a()V
    .locals 13

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/z;->a:Lcom/amap/api/col/l3/u;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapPerPixelUnitLength()F

    move-result v0

    iget-object v1, p0, Lcom/amap/api/col/l3/z;->f:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    iget-object v2, p0, Lcom/amap/api/col/l3/z;->g:Ljava/util/List;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iget-object v3, p0, Lcom/amap/api/col/l3/z;->a:Lcom/amap/api/col/l3/u;

    invoke-interface {v3}, Lcom/amap/api/col/l3/u;->f()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    iget-object v6, p0, Lcom/amap/api/col/l3/z;->g:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v5, v6, :cond_2

    iget-object v6, p0, Lcom/amap/api/col/l3/z;->g:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amap/api/col/l3/ab;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/amap/api/col/l3/ab;->h()V

    invoke-virtual {v6}, Lcom/amap/api/col/l3/ab;->i()I

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v6}, Lcom/amap/api/col/l3/ab;->f()I

    move-result v8

    if-ne v8, v3, :cond_0

    iget-object v7, p0, Lcom/amap/api/col/l3/z;->n:Lcom/amap/api/col/l3/er;

    invoke-virtual {v6}, Lcom/amap/api/col/l3/ab;->j()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/amap/api/col/l3/er;->a(Ljava/lang/String;)Z

    goto :goto_1

    :cond_0
    iget-object v8, p0, Lcom/amap/api/col/l3/z;->r:[I

    invoke-virtual {v6}, Lcom/amap/api/col/l3/ab;->f()I

    move-result v6

    aput v6, v8, v4

    iget-object v6, p0, Lcom/amap/api/col/l3/z;->r:[I

    invoke-static {v7, v6, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v2, p0, Lcom/amap/api/col/l3/z;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    monitor-exit v1

    return-void

    :cond_3
    iget-object v2, p0, Lcom/amap/api/col/l3/z;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/amap/api/col/l3/z;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_6

    iget-object v5, p0, Lcom/amap/api/col/l3/z;->f:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amap/api/col/l3/cs;

    invoke-interface {v5}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Lcom/amap/api/col/l3/cs;->l()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-interface {v5}, Lcom/amap/api/col/l3/cs;->i()Z

    move-result v6

    iput-boolean v6, p0, Lcom/amap/api/col/l3/z;->j:Z

    invoke-interface {v5}, Lcom/amap/api/col/l3/cs;->j()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-interface {v5}, Lcom/amap/api/col/l3/cs;->isInfoWindowShown()Z

    move-result v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v6, :cond_5

    :cond_4
    :try_start_4
    iget-object v6, p0, Lcom/amap/api/col/l3/z;->h:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v5

    :try_start_5
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/amap/api/col/l3/z;->m:Lcom/amap/api/col/l3/cp;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/amap/api/col/l3/z;->m:Lcom/amap/api/col/l3/cp;

    invoke-interface {v2}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/amap/api/col/l3/z;->h:Ljava/util/List;

    iget-object v3, p0, Lcom/amap/api/col/l3/z;->m:Lcom/amap/api/col/l3/cp;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v2, p0, Lcom/amap/api/col/l3/z;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_d

    iget-object v2, p0, Lcom/amap/api/col/l3/z;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_4
    if-ge v3, v2, :cond_c

    iget-object v10, p0, Lcom/amap/api/col/l3/z;->h:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/amap/api/col/l3/cs;

    monitor-enter v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    iget-object v11, p0, Lcom/amap/api/col/l3/z;->a:Lcom/amap/api/col/l3/u;

    invoke-interface {v10, v11}, Lcom/amap/api/col/l3/cs;->a(Lcom/amap/api/col/l3/u;)V

    if-nez v3, :cond_8

    invoke-interface {v10}, Lcom/amap/api/col/l3/cs;->k()I

    move-result v6

    goto :goto_5

    :cond_8
    invoke-interface {v10}, Lcom/amap/api/col/l3/cs;->k()I

    move-result v11

    if-eq v11, v6, :cond_9

    invoke-direct {p0, v6, v5, v8, v9}, Lcom/amap/api/col/l3/z;->a(IIII)V

    move v6, v11

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :cond_9
    :goto_5
    iget-object v11, p0, Lcom/amap/api/col/l3/z;->a:Lcom/amap/api/col/l3/u;

    iget-object v12, p0, Lcom/amap/api/col/l3/z;->b:[F

    invoke-interface {v10, v11, v12, v9, v0}, Lcom/amap/api/col/l3/cs;->a(Lcom/amap/api/col/l3/u;[FIF)V

    invoke-interface {v10}, Lcom/amap/api/col/l3/cs;->k()I

    move-result v11

    if-eq v11, v6, :cond_a

    invoke-direct {p0, v6, v5, v8, v9}, Lcom/amap/api/col/l3/z;->a(IIII)V

    move v8, v9

    move v6, v11

    const/4 v5, 0x0

    const/4 v9, 0x0

    :cond_a
    add-int/lit8 v9, v9, 0x24

    add-int/2addr v5, v7

    const/16 v11, 0x1388

    if-ne v5, v11, :cond_b

    invoke-direct {p0, v6, v5, v8, v9}, Lcom/amap/api/col/l3/z;->a(IIII)V

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :cond_b
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v10

    throw v0

    :cond_c
    if-lez v5, :cond_d

    invoke-direct {p0, v6, v5, v8, v9}, Lcom/amap/api/col/l3/z;->a(IIII)V

    :cond_d
    monitor-exit v1

    return-void

    :catchall_2
    move-exception v0

    monitor-exit v2

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v0

    :try_start_8
    monitor-exit v1

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final a(Lcom/amap/api/col/l3/ab;)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3/z;->g:Ljava/util/List;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/z;->g:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final a(Lcom/amap/api/col/l3/cp;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/z;->m:Lcom/amap/api/col/l3/cp;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/l3/z;->m:Lcom/amap/api/col/l3/cp;

    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/z;->m:Lcom/amap/api/col/l3/cp;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/col/l3/cs;->b(Z)V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/z;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/amap/api/col/l3/cs;->b(Z)V

    iput-object p1, p0, Lcom/amap/api/col/l3/z;->m:Lcom/amap/api/col/l3/cp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "MapOverlayImageView"

    const-string v1, "set2Top"

    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/amap/api/col/l3/z;->l:Lcom/amap/api/col/l3/cp;

    iput-object v2, p0, Lcom/amap/api/col/l3/z;->k:Lcom/autonavi/amap/mapcore/IPoint;

    iput-object v2, p0, Lcom/amap/api/col/l3/z;->m:Lcom/amap/api/col/l3/cp;

    iget-object v3, p0, Lcom/amap/api/col/l3/z;->f:Ljava/util/List;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, p0, Lcom/amap/api/col/l3/z;->h:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/amap/api/col/l3/z;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_4

    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/amap/api/col/l3/z;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/amap/api/col/l3/z;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/col/l3/cs;

    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v2, v1

    goto :goto_3

    :cond_3
    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->remove()Z

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/amap/api/col/l3/z;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    if-eqz v2, :cond_5

    iget-object p1, p0, Lcom/amap/api/col/l3/z;->f:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Lcom/amap/api/col/l3/cs;->l()Z

    move-result p1

    if-eqz p1, :cond_5

    instance-of p1, v2, Lcom/amap/api/col/l3/cp;

    if-eqz p1, :cond_5

    check-cast v2, Lcom/amap/api/col/l3/cp;

    iput-object v2, p0, Lcom/amap/api/col/l3/z;->m:Lcom/amap/api/col/l3/cp;

    :cond_5
    :goto_4
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v3

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_5
    const-string v0, "MapOverlayImageView"

    const-string v1, "clear"

    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final declared-synchronized a(Landroid/graphics/Bitmap;Lcom/amap/api/col/l3/ab;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/z;->n:Lcom/amap/api/col/l3/er;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {p2}, Lcom/amap/api/col/l3/ab;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/amap/api/col/l3/er;->a(IILjava/lang/String;)Lcom/amap/api/col/l3/er$c;

    move-result-object p1

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/amap/api/col/l3/er$c;->a:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/amap/api/col/l3/z;->n:Lcom/amap/api/col/l3/er;

    invoke-virtual {v1}, Lcom/amap/api/col/l3/er;->a()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p2, v0}, Lcom/amap/api/col/l3/ab;->b(F)V

    iget v0, p1, Lcom/amap/api/col/l3/er$c;->b:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/amap/api/col/l3/z;->n:Lcom/amap/api/col/l3/er;

    invoke-virtual {v1}, Lcom/amap/api/col/l3/er;->b()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p2, v0}, Lcom/amap/api/col/l3/ab;->a(F)V

    iget v0, p1, Lcom/amap/api/col/l3/er$c;->a:I

    iget v1, p1, Lcom/amap/api/col/l3/er$c;->c:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/amap/api/col/l3/z;->n:Lcom/amap/api/col/l3/er;

    invoke-virtual {v1}, Lcom/amap/api/col/l3/er;->a()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p2, v0}, Lcom/amap/api/col/l3/ab;->c(F)V

    iget v0, p1, Lcom/amap/api/col/l3/er$c;->b:I

    iget p1, p1, Lcom/amap/api/col/l3/er$c;->d:I

    add-int/2addr v0, p1

    int-to-float p1, v0

    iget-object v0, p0, Lcom/amap/api/col/l3/z;->n:Lcom/amap/api/col/l3/er;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/er;->b()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-virtual {p2, p1}, Lcom/amap/api/col/l3/ab;->d(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Lcom/amap/api/col/l3/cs;)Z
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3/z;->f:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/z;->m:Lcom/amap/api/col/l3/cp;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/l3/z;->m:Lcom/amap/api/col/l3/cp;

    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amap/api/col/l3/z;->m:Lcom/amap/api/col/l3/cp;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3/z;->b(Lcom/amap/api/col/l3/cs;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object v1, p0, Lcom/amap/api/col/l3/z;->f:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return p1

    :catchall_1
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final b()Lcom/amap/api/col/l3/u;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/z;->a:Lcom/amap/api/col/l3/u;

    return-object v0
.end method

.method public final b(Lcom/amap/api/col/l3/cp;)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3/z;->k:Lcom/autonavi/amap/mapcore/IPoint;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/z;->k:Lcom/autonavi/amap/mapcore/IPoint;

    :cond_0
    invoke-interface {p1}, Lcom/amap/api/col/l3/cs;->h()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v0}, Lcom/autonavi/amap/mapcore/IPoint;->obtain(II)Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/z;->k:Lcom/autonavi/amap/mapcore/IPoint;

    iput-object p1, p0, Lcom/amap/api/col/l3/z;->l:Lcom/amap/api/col/l3/cp;

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/z;->a:Lcom/amap/api/col/l3/u;

    invoke-interface {v0, p1}, Lcom/amap/api/col/l3/u;->a(Lcom/amap/api/col/l3/cp;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "MapOverlayImageView"

    const-string v1, "showInfoWindow"

    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final b(Lcom/amap/api/col/l3/cs;)V
    .locals 2

    :try_start_0
    invoke-interface {p1}, Lcom/amap/api/col/l3/cs;->isInfoWindowShown()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/amap/api/col/l3/z;->a:Lcom/amap/api/col/l3/u;

    invoke-interface {p1}, Lcom/amap/api/col/l3/u;->j()V

    iput-object v1, p0, Lcom/amap/api/col/l3/z;->l:Lcom/amap/api/col/l3/cp;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/z;->l:Lcom/amap/api/col/l3/cp;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3/z;->l:Lcom/amap/api/col/l3/cp;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getId()Ljava/lang/String;

    move-result-object p1

    if-ne v0, p1, :cond_1

    iput-object v1, p0, Lcom/amap/api/col/l3/z;->l:Lcom/amap/api/col/l3/cp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final b(Landroid/view/MotionEvent;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/l3/z;->f:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/amap/api/col/l3/z;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    iget-object v3, p0, Lcom/amap/api/col/l3/z;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/col/l3/cs;

    instance-of v4, v3, Lcom/amap/api/col/l3/cx;

    if-eqz v4, :cond_0

    invoke-interface {v3}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/amap/api/col/l3/cx;

    invoke-virtual {v4}, Lcom/amap/api/col/l3/cx;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Lcom/amap/api/col/l3/cs;->h()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v4, v5, v6}, Lcom/amap/api/col/l3/em;->a(Landroid/graphics/Rect;II)Z

    move-result v5

    if-eqz v5, :cond_0

    iget p1, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    iget v1, v4, Landroid/graphics/Rect;->top:I

    invoke-static {p1, v1}, Lcom/autonavi/amap/mapcore/IPoint;->obtain(II)Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/z;->k:Lcom/autonavi/amap/mapcore/IPoint;

    check-cast v3, Lcom/amap/api/col/l3/cp;

    iput-object v3, p0, Lcom/amap/api/col/l3/z;->l:Lcom/amap/api/col/l3/cp;

    move v1, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final c()Lcom/amap/api/col/l3/cp;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/z;->l:Lcom/amap/api/col/l3/cp;

    return-object v0
.end method

.method public final c(Lcom/amap/api/col/l3/cs;)Z
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3/z;->f:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/z;->f:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final d()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/Marker;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/l3/z;->f:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/amap/api/col/l3/z;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/col/l3/cs;

    instance-of v4, v3, Lcom/amap/api/col/l3/cx;

    if-eqz v4, :cond_0

    invoke-interface {v3}, Lcom/amap/api/col/l3/cs;->j()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lcom/amap/api/maps/model/Marker;

    check-cast v3, Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-direct {v4, v3}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IMarker;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_2
    const-string v3, "MapOverlayImageView"

    const-string v4, "getMapScreenMarkers"

    invoke-static {v2, v3, v4}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final e()V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/l3/z;->q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/api/col/l3/z;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/amap/api/col/l3/z;->q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/api/col/l3/z;->s:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected final f()I
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3/z;->f:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/z;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final g()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/z;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/col/l3/cs;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->destroy(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3/z;->a(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/z;->a:Lcom/amap/api/col/l3/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "MapOverlayImageView"

    const-string v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MapOverlayImageView clear erro"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method
