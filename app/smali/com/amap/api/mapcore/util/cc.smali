.class public Lcom/amap/api/mapcore/util/cc;
.super Ljava/lang/Object;
.source "GroundOverlayDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore/util/cf;


# instance fields
.field a:Lcom/autonavi/amap/mapcore/FPointBounds;

.field b:[F

.field c:I

.field d:Lcom/amap/api/mapcore/util/cx$b;

.field private e:Lcom/amap/api/mapcore/util/l;

.field private f:Lcom/amap/api/maps/model/BitmapDescriptor;

.field private g:Lcom/amap/api/maps/model/LatLng;

.field private h:F

.field private i:F

.field private j:Lcom/amap/api/maps/model/LatLngBounds;

.field private k:F

.field private l:F

.field private m:Z

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:Ljava/lang/String;

.field private s:Ljava/nio/FloatBuffer;

.field private t:Ljava/nio/FloatBuffer;

.field private u:I

.field private v:Z

.field private w:Z

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/util/l;)V
    .locals 4

    const/4 v3, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/cc;->m:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/util/cc;->n:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/amap/api/mapcore/util/cc;->o:F

    iput v2, p0, Lcom/amap/api/mapcore/util/cc;->p:F

    iput v2, p0, Lcom/amap/api/mapcore/util/cc;->q:F

    iput-object v1, p0, Lcom/amap/api/mapcore/util/cc;->s:Ljava/nio/FloatBuffer;

    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/cc;->v:Z

    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/cc;->w:Z

    iput-object v1, p0, Lcom/amap/api/mapcore/util/cc;->a:Lcom/autonavi/amap/mapcore/FPointBounds;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cc;->x:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cc;->y:Ljava/util/List;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/cc;->b:[F

    const/16 v0, 0x2710

    iput v0, p0, Lcom/amap/api/mapcore/util/cc;->c:I

    iput-object p1, p0, Lcom/amap/api/mapcore/util/cc;->e:Lcom/amap/api/mapcore/util/l;

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cc;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cc;->r:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "GroundOverlayDelegateImp"

    const-string v2, "create"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 6

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->b:[F

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->d:Lcom/amap/api/mapcore/util/cx$b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->d:Lcom/amap/api/mapcore/util/cx$b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/cx$b;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cc;->i()V

    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->d:Lcom/amap/api/mapcore/util/cx$b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/cx$b;->a()V

    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/4 v0, 0x1

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/amap/api/mapcore/util/cc;->o:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/amap/api/mapcore/util/cc;->o:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/amap/api/mapcore/util/cc;->o:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/amap/api/mapcore/util/cc;->o:F

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glBlendColor(FFFF)V

    const/16 v0, 0xde1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->d:Lcom/amap/api/mapcore/util/cx$b;

    iget v0, v0, Lcom/amap/api/mapcore/util/cx$b;->b:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->d:Lcom/amap/api/mapcore/util/cx$b;

    iget v0, v0, Lcom/amap/api/mapcore/util/cx$b;->b:I

    const/4 v1, 0x4

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x10

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->d:Lcom/amap/api/mapcore/util/cx$b;

    iget v0, v0, Lcom/amap/api/mapcore/util/cx$b;->c:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->d:Lcom/amap/api/mapcore/util/cx$b;

    iget v0, v0, Lcom/amap/api/mapcore/util/cx$b;->c:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x8

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->d:Lcom/amap/api/mapcore/util/cx$b;

    iget v0, v0, Lcom/amap/api/mapcore/util/cx$b;->g:I

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cc;->e:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/l;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_x()I

    move-result v1

    iget v2, p0, Lcom/amap/api/mapcore/util/cc;->c:I

    div-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cc;->e:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v2}, Lcom/amap/api/mapcore/util/l;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_y()I

    move-result v2

    iget v3, p0, Lcom/amap/api/mapcore/util/cc;->c:I

    div-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/amap/api/mapcore/util/cc;->e:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v3}, Lcom/amap/api/mapcore/util/l;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_x()I

    move-result v3

    iget v4, p0, Lcom/amap/api/mapcore/util/cc;->c:I

    rem-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/amap/api/mapcore/util/cc;->e:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v4}, Lcom/amap/api/mapcore/util/l;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_y()I

    move-result v4

    iget v5, p0, Lcom/amap/api/mapcore/util/cc;->c:I

    rem-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->d:Lcom/amap/api/mapcore/util/cx$b;

    iget v0, v0, Lcom/amap/api/mapcore/util/cx$b;->h:I

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/amap/api/mapcore/util/cc;->o:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/amap/api/mapcore/util/cc;->o:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/amap/api/mapcore/util/cc;->o:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/amap/api/mapcore/util/cc;->o:F

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->d:Lcom/amap/api/mapcore/util/cx$b;

    iget v0, v0, Lcom/amap/api/mapcore/util/cx$b;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/amap/api/mapcore/util/cc;->e:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v3}, Lcom/amap/api/mapcore/util/l;->u()[F

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const/16 v0, 0xde1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->d:Lcom/amap/api/mapcore/util/cx$b;

    iget v0, v0, Lcom/amap/api/mapcore/util/cx$b;->b:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->d:Lcom/amap/api/mapcore/util/cx$b;

    iget v0, v0, Lcom/amap/api/mapcore/util/cx$b;->c:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    goto/16 :goto_0
.end method

.method private a(Lcom/autonavi/amap/mapcore/DPoint;DDDDLcom/autonavi/amap/mapcore/IPoint;)V
    .locals 14

    iget v2, p0, Lcom/amap/api/mapcore/util/cc;->p:F

    float-to-double v2, v2

    mul-double v2, v2, p6

    sub-double v2, p2, v2

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/amap/api/mapcore/util/cc;->q:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    mul-double v4, v4, p8

    sub-double v4, v4, p4

    iget v6, p0, Lcom/amap/api/mapcore/util/cc;->k:F

    neg-float v6, v6

    float-to-double v6, v6

    const-wide v8, 0x3f91df46a2529d37L    # 0.01745329251994329

    mul-double/2addr v6, v8

    iget-wide v8, p1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v10, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v12, v4

    add-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-int v8, v8

    move-object/from16 v0, p10

    iput v8, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget-wide v8, p1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v4, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v2, v6

    sub-double v2, v4, v2

    add-double/2addr v2, v8

    double-to-int v2, v2

    move-object/from16 v0, p10

    iput v2, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    return-void
.end method

.method private e()V
    .locals 13

    const/high16 v12, 0x3f800000    # 1.0f

    const-wide v6, 0x3f91df46a2529d37L    # 0.01745329251994329

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->g:Lcom/amap/api/maps/model/LatLng;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/amap/api/mapcore/util/cc;->h:F

    float-to-double v0, v0

    const-wide v2, 0x41584dae328f5c29L    # 6371000.79

    iget-object v4, p0, Lcom/amap/api/mapcore/util/cc;->g:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v4, Lcom/amap/api/maps/model/LatLng;->latitude:D

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    mul-double/2addr v2, v6

    div-double/2addr v0, v2

    iget v2, p0, Lcom/amap/api/mapcore/util/cc;->i:F

    float-to-double v2, v2

    const-wide v4, 0x40fb25af0c031ddeL    # 111194.94043265979

    div-double/2addr v2, v4

    :try_start_0
    new-instance v4, Lcom/amap/api/maps/model/LatLngBounds;

    new-instance v5, Lcom/amap/api/maps/model/LatLng;

    iget-object v6, p0, Lcom/amap/api/mapcore/util/cc;->g:Lcom/amap/api/maps/model/LatLng;

    iget-wide v6, v6, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget v8, p0, Lcom/amap/api/mapcore/util/cc;->q:F

    sub-float v8, v12, v8

    float-to-double v8, v8

    mul-double/2addr v8, v2

    sub-double/2addr v6, v8

    iget-object v8, p0, Lcom/amap/api/mapcore/util/cc;->g:Lcom/amap/api/maps/model/LatLng;

    iget-wide v8, v8, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget v10, p0, Lcom/amap/api/mapcore/util/cc;->p:F

    float-to-double v10, v10

    mul-double/2addr v10, v0

    sub-double/2addr v8, v10

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    new-instance v6, Lcom/amap/api/maps/model/LatLng;

    iget-object v7, p0, Lcom/amap/api/mapcore/util/cc;->g:Lcom/amap/api/maps/model/LatLng;

    iget-wide v8, v7, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget v7, p0, Lcom/amap/api/mapcore/util/cc;->q:F

    float-to-double v10, v7

    mul-double/2addr v2, v10

    add-double/2addr v2, v8

    iget-object v7, p0, Lcom/amap/api/mapcore/util/cc;->g:Lcom/amap/api/maps/model/LatLng;

    iget-wide v8, v7, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget v7, p0, Lcom/amap/api/mapcore/util/cc;->p:F

    sub-float v7, v12, v7

    float-to-double v10, v7

    mul-double/2addr v0, v10

    add-double/2addr v0, v8

    invoke-direct {v6, v2, v3, v0, v1}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-direct {v4, v5, v6}, Lcom/amap/api/maps/model/LatLngBounds;-><init>(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)V

    iput-object v4, p0, Lcom/amap/api/mapcore/util/cc;->j:Lcom/amap/api/maps/model/LatLngBounds;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cc;->g()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private f()V
    .locals 14

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->j:Lcom/amap/api/maps/model/LatLngBounds;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->j:Lcom/amap/api/maps/model/LatLngBounds;

    iget-object v0, v0, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cc;->j:Lcom/amap/api/maps/model/LatLngBounds;

    iget-object v1, v1, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    const/high16 v3, 0x3f800000    # 1.0f

    iget v6, p0, Lcom/amap/api/mapcore/util/cc;->q:F

    sub-float/2addr v3, v6

    float-to-double v6, v3

    iget-wide v8, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v10, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iget-wide v6, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget v3, p0, Lcom/amap/api/mapcore/util/cc;->p:F

    float-to-double v8, v3

    iget-wide v10, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v12, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    iput-object v2, p0, Lcom/amap/api/mapcore/util/cc;->g:Lcom/amap/api/maps/model/LatLng;

    const-wide v2, 0x41584dae328f5c29L    # 6371000.79

    iget-object v4, p0, Lcom/amap/api/mapcore/util/cc;->g:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v4, Lcom/amap/api/maps/model/LatLng;->latitude:D

    const-wide v6, 0x3f91df46a2529d37L    # 0.01745329251994329

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    iget-wide v4, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v6, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    const-wide v4, 0x3f91df46a2529d37L    # 0.01745329251994329

    mul-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Lcom/amap/api/mapcore/util/cc;->h:F

    const-wide v2, 0x41584dae328f5c29L    # 6371000.79

    iget-wide v4, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v0, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double v0, v4, v0

    mul-double/2addr v0, v2

    const-wide v2, 0x3f91df46a2529d37L    # 0.01745329251994329

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/amap/api/mapcore/util/cc;->i:F

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cc;->g()V

    goto :goto_0
.end method

.method private declared-synchronized g()V
    .locals 49

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/util/cc;->j:Lcom/amap/api/maps/model/LatLngBounds;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/16 v2, 0x10

    :try_start_1
    new-array v2, v2, [F

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/amap/api/mapcore/util/cc;->b:[F

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v12

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v24

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v36

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v48

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/util/cc;->j:Lcom/amap/api/maps/model/LatLngBounds;

    iget-object v2, v2, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amap/api/mapcore/util/cc;->j:Lcom/amap/api/maps/model/LatLngBounds;

    iget-object v4, v4, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v4, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3, v4, v5, v12}, Lcom/autonavi/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/util/cc;->j:Lcom/amap/api/maps/model/LatLngBounds;

    iget-object v2, v2, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amap/api/mapcore/util/cc;->j:Lcom/amap/api/maps/model/LatLngBounds;

    iget-object v4, v4, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v4, Lcom/amap/api/maps/model/LatLng;->latitude:D

    move-object/from16 v0, v24

    invoke-static {v2, v3, v4, v5, v0}, Lcom/autonavi/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/util/cc;->j:Lcom/amap/api/maps/model/LatLngBounds;

    iget-object v2, v2, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amap/api/mapcore/util/cc;->j:Lcom/amap/api/maps/model/LatLngBounds;

    iget-object v4, v4, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v4, Lcom/amap/api/maps/model/LatLng;->latitude:D

    move-object/from16 v0, v36

    invoke-static {v2, v3, v4, v5, v0}, Lcom/autonavi/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/util/cc;->j:Lcom/amap/api/maps/model/LatLngBounds;

    iget-object v2, v2, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amap/api/mapcore/util/cc;->j:Lcom/amap/api/maps/model/LatLngBounds;

    iget-object v4, v4, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v4, Lcom/amap/api/maps/model/LatLng;->latitude:D

    move-object/from16 v0, v48

    invoke-static {v2, v3, v4, v5, v0}, Lcom/autonavi/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/amap/api/mapcore/util/cc;->k:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    move-object/from16 v0, v24

    iget v2, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v3, v12, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int/2addr v2, v3

    int-to-double v8, v2

    move-object/from16 v0, v24

    iget v2, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    move-object/from16 v0, v36

    iget v3, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int/2addr v2, v3

    int-to-double v10, v2

    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v3

    iget v2, v12, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-double v4, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/amap/api/mapcore/util/cc;->p:F

    float-to-double v6, v2

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iput-wide v4, v3, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    iget v2, v12, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-double v4, v2

    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/amap/api/mapcore/util/cc;->q:F

    sub-float/2addr v2, v6

    float-to-double v6, v2

    mul-double/2addr v6, v10

    sub-double/2addr v4, v6

    iput-wide v4, v3, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v12}, Lcom/amap/api/mapcore/util/cc;->a(Lcom/autonavi/amap/mapcore/DPoint;DDDDLcom/autonavi/amap/mapcore/IPoint;)V

    const-wide/16 v18, 0x0

    move-object/from16 v14, p0

    move-object v15, v3

    move-wide/from16 v16, v8

    move-wide/from16 v20, v8

    move-wide/from16 v22, v10

    invoke-direct/range {v14 .. v24}, Lcom/amap/api/mapcore/util/cc;->a(Lcom/autonavi/amap/mapcore/DPoint;DDDDLcom/autonavi/amap/mapcore/IPoint;)V

    move-object/from16 v26, p0

    move-object/from16 v27, v3

    move-wide/from16 v28, v8

    move-wide/from16 v30, v10

    move-wide/from16 v32, v8

    move-wide/from16 v34, v10

    invoke-direct/range {v26 .. v36}, Lcom/amap/api/mapcore/util/cc;->a(Lcom/autonavi/amap/mapcore/DPoint;DDDDLcom/autonavi/amap/mapcore/IPoint;)V

    const-wide/16 v40, 0x0

    move-object/from16 v38, p0

    move-object/from16 v39, v3

    move-wide/from16 v42, v10

    move-wide/from16 v44, v8

    move-wide/from16 v46, v10

    invoke-direct/range {v38 .. v48}, Lcom/amap/api/mapcore/util/cc;->a(Lcom/autonavi/amap/mapcore/DPoint;DDDDLcom/autonavi/amap/mapcore/IPoint;)V

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/util/cc;->b:[F

    const/4 v3, 0x0

    iget v4, v12, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/amap/api/mapcore/util/cc;->c:I

    div-int/2addr v4, v5

    int-to-float v4, v4

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/util/cc;->b:[F

    const/4 v3, 0x1

    iget v4, v12, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/amap/api/mapcore/util/cc;->c:I

    div-int/2addr v4, v5

    int-to-float v4, v4

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/util/cc;->b:[F

    const/4 v3, 0x2

    iget v4, v12, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/amap/api/mapcore/util/cc;->c:I

    rem-int/2addr v4, v5

    int-to-float v4, v4

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/util/cc;->b:[F

    const/4 v3, 0x3

    iget v4, v12, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/amap/api/mapcore/util/cc;->c:I

    rem-int/2addr v4, v5

    int-to-float v4, v4

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/util/cc;->b:[F

    const/4 v3, 0x4

    move-object/from16 v0, v24

    iget v4, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/amap/api/mapcore/util/cc;->c:I

    div-int/2addr v4, v5

    int-to-float v4, v4

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/util/cc;->b:[F

    const/4 v3, 0x5

    move-object/from16 v0, v24

    iget v4, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/amap/api/mapcore/util/cc;->c:I

    div-int/2addr v4, v5

    int-to-float v4, v4

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/util/cc;->b:[F

    const/4 v3, 0x6

    move-object/from16 v0, v24

    iget v4, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/amap/api/mapcore/util/cc;->c:I

    rem-int/2addr v4, v5

    int-to-float v4, v4

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/util/cc;->b:[F

    const/4 v3, 0x7

    move-object/from16 v0, v24

    iget v4, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/amap/api/mapcore/util/cc;->c:I

    rem-int/2addr v4, v5

    int-to-float v4, v4

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/util/cc;->b:[F

    const/16 v3, 0x8

    move-object/from16 v0, v36

    iget v4, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/amap/api/mapcore/util/cc;->c:I

    div-int/2addr v4, v5

    int-to-float v4, v4

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/util/cc;->b:[F

    const/16 v3, 0x9

    move-object/from16 v0, v36

    iget v4, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/amap/api/mapcore/util/cc;->c:I

    div-int/2addr v4, v5

    int-to-float v4, v4

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/util/cc;->b:[F

    const/16 v3, 0xa

    move-object/from16 v0, v36

    iget v4, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/amap/api/mapcore/util/cc;->c:I

    rem-int/2addr v4, v5

    int-to-float v4, v4

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/util/cc;->b:[F

    const/16 v3, 0xb

    move-object/from16 v0, v36

    iget v4, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/amap/api/mapcore/util/cc;->c:I

    rem-int/2addr v4, v5

    int-to-float v4, v4

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/util/cc;->b:[F

    const/16 v3, 0xc

    move-object/from16 v0, v48

    iget v4, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/amap/api/mapcore/util/cc;->c:I

    div-int/2addr v4, v5

    int-to-float v4, v4

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/util/cc;->b:[F

    const/16 v3, 0xd

    move-object/from16 v0, v48

    iget v4, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/amap/api/mapcore/util/cc;->c:I

    div-int/2addr v4, v5

    int-to-float v4, v4

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/util/cc;->b:[F

    const/16 v3, 0xe

    move-object/from16 v0, v48

    iget v4, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/amap/api/mapcore/util/cc;->c:I

    rem-int/2addr v4, v5

    int-to-float v4, v4

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/util/cc;->b:[F

    const/16 v3, 0xf

    move-object/from16 v0, v48

    iget v4, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/amap/api/mapcore/util/cc;->c:I

    rem-int/2addr v4, v5

    int-to-float v4, v4

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/util/cc;->s:Ljava/nio/FloatBuffer;

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/util/cc;->b:[F

    invoke-static {v2}, Lcom/amap/api/mapcore/util/ee;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/amap/api/mapcore/util/cc;->s:Ljava/nio/FloatBuffer;

    :goto_1
    invoke-virtual/range {v48 .. v48}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    invoke-virtual {v12}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    invoke-virtual/range {v24 .. v24}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    invoke-virtual/range {v36 .. v36}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/util/cc;->b:[F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/mapcore/util/cc;->s:Ljava/nio/FloatBuffer;

    invoke-static {v2, v3}, Lcom/amap/api/mapcore/util/ee;->a([FLjava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/amap/api/mapcore/util/cc;->s:Ljava/nio/FloatBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private h()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->f:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->f:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->f:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->f:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cc;->f:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cc;->f:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v2}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/amap/api/mapcore/util/cc;->f:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v3}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v0, v0

    int-to-float v3, v3

    div-float/2addr v0, v3

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/16 v2, 0x8

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v3, 0x2

    aput v0, v2, v3

    const/4 v3, 0x3

    aput v1, v2, v3

    const/4 v1, 0x4

    aput v0, v2, v1

    const/4 v0, 0x5

    aput v4, v2, v0

    const/4 v0, 0x6

    aput v4, v2, v0

    const/4 v0, 0x7

    aput v4, v2, v0

    invoke-static {v2}, Lcom/amap/api/mapcore/util/ee;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cc;->t:Ljava/nio/FloatBuffer;

    goto :goto_0
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->e:Lcom/amap/api/mapcore/util/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->e:Lcom/amap/api/mapcore/util/l;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->t(I)Lcom/amap/api/mapcore/util/cw;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/cx$b;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cc;->d:Lcom/amap/api/mapcore/util/cx$b;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(FF)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput p1, p0, Lcom/amap/api/mapcore/util/cc;->p:F

    iput p2, p0, Lcom/amap/api/mapcore/util/cc;->q:F

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->e:Lcom/amap/api/mapcore/util/l;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/cc;->w:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->g:Lcom/amap/api/maps/model/LatLng;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cc;->f()V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->j:Lcom/amap/api/maps/model/LatLngBounds;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cc;->e()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cc;->g()V

    goto :goto_0
.end method

.method public c()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cc;->m:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->g:Lcom/amap/api/maps/model/LatLng;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->j:Lcom/amap/api/maps/model/LatLngBounds;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->f:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->b:[F

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cc;->b()Z

    :cond_3
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cc;->v:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->f:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, p0, Lcom/amap/api/mapcore/util/cc;->u:I

    if-nez v1, :cond_7

    new-array v1, v4, [I

    aput v3, v1, v3

    invoke-static {v4, v1, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v1, v1, v3

    iput v1, p0, Lcom/amap/api/mapcore/util/cc;->u:I

    :goto_1
    iget v1, p0, Lcom/amap/api/mapcore/util/cc;->u:I

    invoke-static {v1, v0, v3}, Lcom/amap/api/mapcore/util/ee;->b(ILandroid/graphics/Bitmap;Z)I

    :cond_4
    iput-boolean v4, p0, Lcom/amap/api/mapcore/util/cc;->v:Z

    :cond_5
    iget v0, p0, Lcom/amap/api/mapcore/util/cc;->h:F

    cmpl-float v0, v0, v5

    if-nez v0, :cond_6

    iget v0, p0, Lcom/amap/api/mapcore/util/cc;->i:F

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_1

    :cond_6
    iget v0, p0, Lcom/amap/api/mapcore/util/cc;->u:I

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cc;->s:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cc;->t:Ljava/nio/FloatBuffer;

    invoke-direct {p0, v0, v1, v2}, Lcom/amap/api/mapcore/util/cc;->a(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    iput-boolean v4, p0, Lcom/amap/api/mapcore/util/cc;->w:Z

    goto :goto_0

    :cond_7
    new-array v1, v4, [I

    iget v2, p0, Lcom/amap/api/mapcore/util/cc;->u:I

    aput v2, v1, v3

    invoke-static {v4, v1, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    goto :goto_1
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cc;->w:Z

    return v0
.end method

.method public destroy()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cc;->remove()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->f:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->f:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cc;->f:Lcom/amap/api/maps/model/BitmapDescriptor;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->t:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->t:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cc;->t:Ljava/nio/FloatBuffer;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->s:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->s:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cc;->s:Ljava/nio/FloatBuffer;

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cc;->g:Lcom/amap/api/maps/model/LatLng;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cc;->j:Lcom/amap/api/maps/model/LatLngBounds;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "GroundOverlayDelegateImp"

    const-string v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
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

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cc;->getId()Ljava/lang/String;

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

.method public getBearing()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/amap/api/mapcore/util/cc;->k:F

    return v0
.end method

.method public getBounds()Lcom/amap/api/maps/model/LatLngBounds;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->j:Lcom/amap/api/maps/model/LatLngBounds;

    return-object v0
.end method

.method public getHeight()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/amap/api/mapcore/util/cc;->i:F

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->r:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->e:Lcom/amap/api/mapcore/util/l;

    const-string v1, "GroundOverlay"

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cc;->r:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()Lcom/amap/api/maps/model/LatLng;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->g:Lcom/amap/api/maps/model/LatLng;

    return-object v0
.end method

.method public getTransparency()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/amap/api/mapcore/util/cc;->n:F

    return v0
.end method

.method public getWidth()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/amap/api/mapcore/util/cc;->h:F

    return v0
.end method

.method public getZIndex()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/amap/api/mapcore/util/cc;->l:F

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

    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cc;->m:Z

    return v0
.end method

.method public remove()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->e:Lcom/amap/api/mapcore/util/l;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cc;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->a(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->e:Lcom/amap/api/mapcore/util/l;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    return-void
.end method

.method public setAboveMaskLayer(Z)V
    .locals 0

    return-void
.end method

.method public setBearing(F)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float v0, p1, v1

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    iget v1, p0, Lcom/amap/api/mapcore/util/cc;->k:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    const-wide v4, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    iput v0, p0, Lcom/amap/api/mapcore/util/cc;->k:F

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cc;->g()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->e:Lcom/amap/api/mapcore/util/l;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    return-void
.end method

.method public setDimensions(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const-string v0, "GroundOverlayDelegateImp"

    const-string v1, "Width must be non-negative"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cc;->v:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/amap/api/mapcore/util/cc;->h:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    iput p1, p0, Lcom/amap/api/mapcore/util/cc;->h:F

    iput p1, p0, Lcom/amap/api/mapcore/util/cc;->i:F

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cc;->e()V

    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->e:Lcom/amap/api/mapcore/util/l;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    return-void

    :cond_1
    iput p1, p0, Lcom/amap/api/mapcore/util/cc;->h:F

    iput p1, p0, Lcom/amap/api/mapcore/util/cc;->i:F

    goto :goto_0
.end method

.method public setDimensions(FF)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    cmpg-float v0, p1, v1

    if-lez v0, :cond_0

    cmpg-float v0, p2, v1

    if-gtz v0, :cond_1

    :cond_0
    const-string v0, "GroundOverlayDelegateImp"

    const-string v1, "Width and Height must be non-negative"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cc;->v:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/amap/api/mapcore/util/cc;->h:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/amap/api/mapcore/util/cc;->i:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_2

    iput p1, p0, Lcom/amap/api/mapcore/util/cc;->h:F

    iput p2, p0, Lcom/amap/api/mapcore/util/cc;->i:F

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cc;->e()V

    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->e:Lcom/amap/api/mapcore/util/l;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    return-void

    :cond_2
    iput p1, p0, Lcom/amap/api/mapcore/util/cc;->h:F

    iput p2, p0, Lcom/amap/api/mapcore/util/cc;->i:F

    goto :goto_0
.end method

.method public setImage(Lcom/amap/api/maps/model/BitmapDescriptor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/cc;->f:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cc;->h()V

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cc;->v:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/cc;->v:Z

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->e:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    goto :goto_0
.end method

.method public setPosition(Lcom/amap/api/maps/model/LatLng;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/mapcore/util/cc;->g:Lcom/amap/api/maps/model/LatLng;

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cc;->e()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->e:Lcom/amap/api/mapcore/util/l;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    return-void
.end method

.method public setPositionFromBounds(Lcom/amap/api/maps/model/LatLngBounds;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/mapcore/util/cc;->j:Lcom/amap/api/maps/model/LatLngBounds;

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cc;->f()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->e:Lcom/amap/api/mapcore/util/l;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    return-void
.end method

.method public setTransparency(F)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    float-to-double v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/amap/api/mapcore/util/cc;->n:F

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/amap/api/mapcore/util/cc;->o:F

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->e:Lcom/amap/api/mapcore/util/l;

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

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/cc;->m:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->e:Lcom/amap/api/mapcore/util/l;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    return-void
.end method

.method public setZIndex(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput p1, p0, Lcom/amap/api/mapcore/util/cc;->l:F

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->e:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->f()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cc;->e:Lcom/amap/api/mapcore/util/l;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    return-void
.end method
