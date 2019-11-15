.class public Lcom/amap/api/mapcore/util/cv;
.super Ljava/lang/Object;
.source "TileOverlayDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore/util/cn;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/cv$a;,
        Lcom/amap/api/mapcore/util/cv$b;
    }
.end annotation


# static fields
.field private static h:I


# instance fields
.field a:Lcom/amap/api/mapcore/util/cx$e;

.field private b:Lcom/amap/api/mapcore/util/v;

.field private c:Lcom/amap/api/maps/model/TileProvider;

.field private d:Ljava/lang/Float;

.field private e:Z

.field private f:Z

.field private g:Lcom/amap/api/mapcore/util/l;

.field private i:I

.field private j:I

.field private k:I

.field private l:Lcom/amap/api/mapcore/util/eg;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore/util/cv$a;",
            ">;"
        }
    .end annotation
.end field

.field private n:Z

.field private o:Lcom/amap/api/mapcore/util/cv$b;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/amap/api/mapcore/util/cv;->h:I

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/maps/model/TileOverlayOptions;Lcom/amap/api/mapcore/util/v;Z)V
    .locals 5

    const/16 v0, 0x100

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/cv;->f:Z

    iput v0, p0, Lcom/amap/api/mapcore/util/cv;->i:I

    iput v0, p0, Lcom/amap/api/mapcore/util/cv;->j:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/cv;->k:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cv;->m:Ljava/util/List;

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/cv;->n:Z

    iput-object v2, p0, Lcom/amap/api/mapcore/util/cv;->o:Lcom/amap/api/mapcore/util/cv$b;

    iput-object v2, p0, Lcom/amap/api/mapcore/util/cv;->q:Ljava/lang/String;

    iput-object v2, p0, Lcom/amap/api/mapcore/util/cv;->r:Ljava/nio/FloatBuffer;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/cv;->b:Lcom/amap/api/mapcore/util/v;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->getTileProvider()Lcom/amap/api/maps/model/TileProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cv;->c:Lcom/amap/api/maps/model/TileProvider;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv;->c:Lcom/amap/api/maps/model/TileProvider;

    invoke-interface {v0}, Lcom/amap/api/maps/model/TileProvider;->getTileWidth()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/cv;->i:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv;->c:Lcom/amap/api/maps/model/TileProvider;

    invoke-interface {v0}, Lcom/amap/api/maps/model/TileProvider;->getTileHeight()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/cv;->j:I

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ee;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cv;->r:Ljava/nio/FloatBuffer;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->getZIndex()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cv;->d:Ljava/lang/Float;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->isVisible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/cv;->e:Z

    iput-boolean p3, p0, Lcom/amap/api/mapcore/util/cv;->f:Z

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cv;->f:Z

    if-eqz v0, :cond_2

    const-string v0, "TileOverlay0"

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cv;->q:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv;->b:Lcom/amap/api/mapcore/util/v;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/v;->a()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cv;->g:Lcom/amap/api/mapcore/util/l;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv;->q:Ljava/lang/String;

    const-string v1, "TileOverlay"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/cv;->k:I

    if-eqz p3, :cond_3

    :try_start_0
    new-instance v0, Lcom/amap/api/mapcore/util/ef$a;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cv;->b:Lcom/amap/api/mapcore/util/v;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/v;->e()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cv;->q:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/amap/api/mapcore/util/v;->a()Lcom/amap/api/mapcore/util/l;

    move-result-object v3

    invoke-interface {v3}, Lcom/amap/api/mapcore/util/l;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/ef$a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->getMemoryCacheEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/ef$a;->a(Z)V

    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/cv;->f:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/amap/api/mapcore/util/ef$a;->i:Z

    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->getDiskCacheEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/ef$a;->b(Z)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->getMemCacheSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/ef$a;->a(I)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->getDiskCacheSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/mapcore/util/ef$a;->a(J)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->getDiskCacheDir()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/ef$a;->a(Ljava/lang/String;)V

    :cond_1
    new-instance v1, Lcom/amap/api/mapcore/util/eg;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cv;->b:Lcom/amap/api/mapcore/util/v;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/v;->e()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/amap/api/mapcore/util/cv;->i:I

    iget v4, p0, Lcom/amap/api/mapcore/util/cv;->j:I

    invoke-direct {v1, v2, v3, v4}, Lcom/amap/api/mapcore/util/eg;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/cv;->l:Lcom/amap/api/mapcore/util/eg;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cv;->l:Lcom/amap/api/mapcore/util/eg;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cv;->c:Lcom/amap/api/maps/model/TileProvider;

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore/util/eg;->a(Lcom/amap/api/maps/model/TileProvider;)V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cv;->l:Lcom/amap/api/mapcore/util/eg;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/eg;->a(Lcom/amap/api/mapcore/util/ef$a;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv;->l:Lcom/amap/api/mapcore/util/eg;

    new-instance v1, Lcom/amap/api/mapcore/util/cv$1;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore/util/cv$1;-><init>(Lcom/amap/api/mapcore/util/cv;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/eg;->a(Lcom/amap/api/mapcore/util/ei$c;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cv;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cv;->q:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    :try_start_1
    new-instance v0, Lcom/amap/api/mapcore/util/ef$a;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cv;->b:Lcom/amap/api/mapcore/util/v;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/v;->e()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cv;->q:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/amap/api/mapcore/util/ef$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_2

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

.method static synthetic a(Lcom/amap/api/mapcore/util/cv;)Lcom/amap/api/mapcore/util/l;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv;->g:Lcom/amap/api/mapcore/util/l;

    return-object v0
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/l;IIIILcom/amap/api/mapcore/util/v;Lcom/amap/api/mapcore/util/eg;)Ljava/util/ArrayList;
    .locals 1

    invoke-static/range {p0 .. p6}, Lcom/amap/api/mapcore/util/cv;->b(Lcom/amap/api/mapcore/util/l;IIIILcom/amap/api/mapcore/util/v;Lcom/amap/api/mapcore/util/eg;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private a(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 9

    const/16 v8, 0xde1

    const/16 v7, 0xbe2

    const/4 v6, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv;->a:Lcom/amap/api/mapcore/util/cx$e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv;->a:Lcom/amap/api/mapcore/util/cx$e;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/cx$e;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cv;->e()V

    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv;->a:Lcom/amap/api/mapcore/util/cx$e;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/cx$e;->a()V

    invoke-static {v7}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v0, 0x303

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    invoke-static {v1, v1, v1, v1}, Landroid/opengl/GLES20;->glBlendColor(FFFF)V

    invoke-static {v8, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv;->a:Lcom/amap/api/mapcore/util/cx$e;

    iget v0, v0, Lcom/amap/api/mapcore/util/cx$e;->b:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv;->a:Lcom/amap/api/mapcore/util/cx$e;

    iget v0, v0, Lcom/amap/api/mapcore/util/cx$e;->b:I

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/16 v4, 0xc

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv;->a:Lcom/amap/api/mapcore/util/cx$e;

    iget v0, v0, Lcom/amap/api/mapcore/util/cx$e;->c:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv;->a:Lcom/amap/api/mapcore/util/cx$e;

    iget v0, v0, Lcom/amap/api/mapcore/util/cx$e;->c:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/16 v4, 0x8

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv;->a:Lcom/amap/api/mapcore/util/cx$e;

    iget v0, v0, Lcom/amap/api/mapcore/util/cx$e;->a:I

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cv;->b:Lcom/amap/api/mapcore/util/v;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/v;->g()[F

    move-result-object v1

    invoke-static {v0, v6, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 v0, 0x6

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv;->a:Lcom/amap/api/mapcore/util/cx$e;

    iget v0, v0, Lcom/amap/api/mapcore/util/cx$e;->b:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv;->a:Lcom/amap/api/mapcore/util/cx$e;

    iget v0, v0, Lcom/amap/api/mapcore/util/cx$e;->c:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {v8, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    invoke-static {v7}, Landroid/opengl/GLES20;->glDisable(I)V

    goto :goto_0
.end method

.method private a(Lcom/amap/api/mapcore/util/cv$a;)Z
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv;->g:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->c()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    iget v1, p1, Lcom/amap/api/mapcore/util/cv$a;->c:I

    int-to-float v1, v1

    iget v2, p0, Lcom/amap/api/mapcore/util/cv;->i:I

    iget v3, p0, Lcom/amap/api/mapcore/util/cv;->j:I

    iget-object v4, p1, Lcom/amap/api/mapcore/util/cv$a;->e:Lcom/autonavi/amap/mapcore/IPoint;

    iget v4, v4, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget-object v5, p1, Lcom/amap/api/mapcore/util/cv$a;->e:Lcom/autonavi/amap/mapcore/IPoint;

    iget v5, v5, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    float-to-int v6, v1

    rsub-int/lit8 v6, v6, 0x14

    shl-int v6, v11, v6

    mul-int/2addr v6, v3

    add-int/2addr v5, v6

    const/16 v6, 0xc

    new-array v6, v6, [F

    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v7

    invoke-virtual {v0, v4, v5, v7}, Lcom/autonavi/ae/gmap/GLMapState;->geo2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v8

    float-to-int v9, v1

    rsub-int/lit8 v9, v9, 0x14

    shl-int v9, v11, v9

    mul-int/2addr v9, v2

    add-int/2addr v9, v4

    invoke-virtual {v0, v9, v5, v8}, Lcom/autonavi/ae/gmap/GLMapState;->geo2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v9

    float-to-int v10, v1

    rsub-int/lit8 v10, v10, 0x14

    shl-int v10, v11, v10

    mul-int/2addr v2, v10

    add-int/2addr v2, v4

    float-to-int v10, v1

    rsub-int/lit8 v10, v10, 0x14

    shl-int v10, v11, v10

    mul-int/2addr v10, v3

    sub-int v10, v5, v10

    invoke-virtual {v0, v2, v10, v9}, Lcom/autonavi/ae/gmap/GLMapState;->geo2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v2

    float-to-int v1, v1

    rsub-int/lit8 v1, v1, 0x14

    shl-int v1, v11, v1

    mul-int/2addr v1, v3

    sub-int v1, v5, v1

    invoke-virtual {v0, v4, v1, v2}, Lcom/autonavi/ae/gmap/GLMapState;->geo2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    const/4 v0, 0x0

    iget v1, v7, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    aput v1, v6, v0

    iget v0, v7, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    aput v0, v6, v11

    const/4 v0, 0x2

    aput v12, v6, v0

    const/4 v0, 0x3

    iget v1, v8, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    aput v1, v6, v0

    const/4 v0, 0x4

    iget v1, v8, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    aput v1, v6, v0

    const/4 v0, 0x5

    aput v12, v6, v0

    const/4 v0, 0x6

    iget v1, v9, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    aput v1, v6, v0

    const/4 v0, 0x7

    iget v1, v9, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    aput v1, v6, v0

    const/16 v0, 0x8

    aput v12, v6, v0

    const/16 v0, 0x9

    iget v1, v2, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    aput v1, v6, v0

    const/16 v0, 0xa

    iget v1, v2, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    aput v1, v6, v0

    const/16 v0, 0xb

    aput v12, v6, v0

    iget-object v0, p1, Lcom/amap/api/mapcore/util/cv$a;->h:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_0

    invoke-static {v6}, Lcom/amap/api/mapcore/util/ee;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p1, Lcom/amap/api/mapcore/util/cv$a;->h:Ljava/nio/FloatBuffer;

    :goto_0
    invoke-virtual {v7}, Lcom/autonavi/amap/mapcore/FPoint;->recycle()V

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/FPoint;->recycle()V

    invoke-virtual {v8}, Lcom/autonavi/amap/mapcore/FPoint;->recycle()V

    invoke-virtual {v9}, Lcom/autonavi/amap/mapcore/FPoint;->recycle()V

    return v11

    :cond_0
    iget-object v0, p1, Lcom/amap/api/mapcore/util/cv$a;->h:Ljava/nio/FloatBuffer;

    invoke-static {v6, v0}, Lcom/amap/api/mapcore/util/ee;->a([FLjava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p1, Lcom/amap/api/mapcore/util/cv$a;->h:Ljava/nio/FloatBuffer;

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/l;Ljava/util/List;IZLjava/util/List;ZLcom/amap/api/mapcore/util/v;Lcom/amap/api/mapcore/util/eg;)Z
    .locals 1

    invoke-static/range {p0 .. p7}, Lcom/amap/api/mapcore/util/cv;->b(Lcom/amap/api/mapcore/util/l;Ljava/util/List;IZLjava/util/List;ZLcom/amap/api/mapcore/util/v;Lcom/amap/api/mapcore/util/eg;)Z

    move-result v0

    return v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget v0, Lcom/amap/api/mapcore/util/cv;->h:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/amap/api/mapcore/util/cv;->h:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/amap/api/mapcore/util/cv;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lcom/amap/api/mapcore/util/l;IIIILcom/amap/api/mapcore/util/v;Lcom/amap/api/mapcore/util/eg;)Ljava/util/ArrayList;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/mapcore/util/l;",
            "IIII",
            "Lcom/amap/api/mapcore/util/v;",
            "Lcom/amap/api/mapcore/util/eg;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/mapcore/util/cv$a;",
            ">;"
        }
    .end annotation

    invoke-interface/range {p0 .. p0}, Lcom/amap/api/mapcore/util/l;->c()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v1

    const v2, 0x7fffffff

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const/4 v5, 0x0

    invoke-interface/range {p0 .. p0}, Lcom/amap/api/mapcore/util/l;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/autonavi/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/amap/mapcore/Rectangle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/autonavi/amap/mapcore/Rectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v9

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v10

    iget v7, v6, Landroid/graphics/Rect;->left:I

    iput v7, v9, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v7, v6, Landroid/graphics/Rect;->top:I

    iput v7, v9, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v7, v9, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v7, v9, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v7, v9, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v7, v9, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v7, v6, Landroid/graphics/Rect;->right:I

    iput v7, v9, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v7, v6, Landroid/graphics/Rect;->top:I

    iput v7, v9, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v7, v9, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v7, v9, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v7, v9, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v7, v9, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v7, v6, Landroid/graphics/Rect;->left:I

    iput v7, v9, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v7, v6, Landroid/graphics/Rect;->bottom:I

    iput v7, v9, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v7, v9, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v7, v9, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v7, v9, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v7, v9, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v7, v6, Landroid/graphics/Rect;->right:I

    iput v7, v9, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iput v6, v9, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v6, v9, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v6, v9, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v13

    iget v3, v9, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v4, v9, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v14

    const/4 v4, 0x1

    rsub-int/lit8 v5, p1, 0x14

    shl-int/2addr v4, v5

    mul-int v4, v4, p2

    sub-int v15, v2, v4

    const/4 v2, 0x1

    rsub-int/lit8 v4, p1, 0x14

    shl-int/2addr v2, v4

    mul-int v2, v2, p3

    sub-int v16, v3, v2

    invoke-virtual {v1, v10}, Lcom/autonavi/ae/gmap/GLMapState;->getGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    iget v1, v10, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    rsub-int/lit8 v2, p1, 0x14

    shr-int/2addr v1, v2

    div-int v2, v1, p2

    iget v1, v10, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    rsub-int/lit8 v3, p1, 0x14

    shr-int/2addr v1, v3

    div-int v3, v1, p3

    rsub-int/lit8 v1, p1, 0x14

    shl-int v1, v2, v1

    mul-int v11, v1, p2

    rsub-int/lit8 v1, p1, 0x14

    shl-int v1, v3, v1

    mul-int v12, v1, p3

    new-instance v1, Lcom/amap/api/mapcore/util/cv$a;

    move/from16 v4, p1

    move/from16 v5, p4

    move-object/from16 v6, p0

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/amap/api/mapcore/util/cv$a;-><init>(IIIILcom/amap/api/mapcore/util/l;Lcom/amap/api/mapcore/util/v;Lcom/amap/api/mapcore/util/eg;)V

    invoke-static {v11, v12}, Lcom/autonavi/amap/mapcore/IPoint;->obtain(II)Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v4

    iput-object v4, v1, Lcom/amap/api/mapcore/util/cv$a;->e:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-virtual {v9}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    invoke-virtual {v10}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    move v12, v1

    :goto_0
    const/4 v1, 0x0

    sub-int v5, v2, v12

    :goto_1
    add-int v4, v2, v12

    if-gt v5, v4, :cond_4

    add-int v6, v3, v12

    new-instance v18, Lcom/autonavi/amap/mapcore/IPoint;

    rsub-int/lit8 v4, p1, 0x14

    shl-int v4, v5, v4

    mul-int v4, v4, p2

    rsub-int/lit8 v7, p1, 0x14

    shl-int v7, v6, v7

    mul-int v7, v7, p3

    move-object/from16 v0, v18

    invoke-direct {v0, v4, v7}, Lcom/autonavi/amap/mapcore/IPoint;-><init>(II)V

    move-object/from16 v0, v18

    iget v4, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    if-ge v4, v13, :cond_1

    move-object/from16 v0, v18

    iget v4, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    if-le v4, v15, :cond_1

    move-object/from16 v0, v18

    iget v4, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    if-ge v4, v14, :cond_1

    move-object/from16 v0, v18

    iget v4, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    move/from16 v0, v16

    if-le v4, v0, :cond_1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    new-instance v4, Lcom/amap/api/mapcore/util/cv$a;

    move/from16 v7, p1

    move/from16 v8, p4

    move-object/from16 v9, p0

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v4 .. v11}, Lcom/amap/api/mapcore/util/cv$a;-><init>(IIIILcom/amap/api/mapcore/util/l;Lcom/amap/api/mapcore/util/v;Lcom/amap/api/mapcore/util/eg;)V

    move-object/from16 v0, v18

    iput-object v0, v4, Lcom/amap/api/mapcore/util/cv$a;->e:Lcom/autonavi/amap/mapcore/IPoint;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sub-int v6, v3, v12

    new-instance v18, Lcom/autonavi/amap/mapcore/IPoint;

    rsub-int/lit8 v4, p1, 0x14

    shl-int v4, v5, v4

    mul-int v4, v4, p2

    rsub-int/lit8 v7, p1, 0x14

    shl-int v7, v6, v7

    mul-int v7, v7, p3

    move-object/from16 v0, v18

    invoke-direct {v0, v4, v7}, Lcom/autonavi/amap/mapcore/IPoint;-><init>(II)V

    move-object/from16 v0, v18

    iget v4, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    if-ge v4, v13, :cond_3

    move-object/from16 v0, v18

    iget v4, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    if-le v4, v15, :cond_3

    move-object/from16 v0, v18

    iget v4, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    if-ge v4, v14, :cond_3

    move-object/from16 v0, v18

    iget v4, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    move/from16 v0, v16

    if-le v4, v0, :cond_3

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :cond_2
    new-instance v4, Lcom/amap/api/mapcore/util/cv$a;

    move/from16 v7, p1

    move/from16 v8, p4

    move-object/from16 v9, p0

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v4 .. v11}, Lcom/amap/api/mapcore/util/cv$a;-><init>(IIIILcom/amap/api/mapcore/util/l;Lcom/amap/api/mapcore/util/v;Lcom/amap/api/mapcore/util/eg;)V

    move-object/from16 v0, v18

    iput-object v0, v4, Lcom/amap/api/mapcore/util/cv$a;->e:Lcom/autonavi/amap/mapcore/IPoint;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_4
    add-int v4, v3, v12

    add-int/lit8 v6, v4, -0x1

    :goto_2
    sub-int v4, v3, v12

    if-le v6, v4, :cond_9

    add-int v5, v2, v12

    new-instance v18, Lcom/autonavi/amap/mapcore/IPoint;

    rsub-int/lit8 v4, p1, 0x14

    shl-int v4, v5, v4

    mul-int v4, v4, p2

    rsub-int/lit8 v7, p1, 0x14

    shl-int v7, v6, v7

    mul-int v7, v7, p3

    move-object/from16 v0, v18

    invoke-direct {v0, v4, v7}, Lcom/autonavi/amap/mapcore/IPoint;-><init>(II)V

    move-object/from16 v0, v18

    iget v4, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    if-ge v4, v13, :cond_6

    move-object/from16 v0, v18

    iget v4, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    if-le v4, v15, :cond_6

    move-object/from16 v0, v18

    iget v4, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    if-ge v4, v14, :cond_6

    move-object/from16 v0, v18

    iget v4, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    move/from16 v0, v16

    if-le v4, v0, :cond_6

    if-nez v1, :cond_5

    const/4 v1, 0x1

    :cond_5
    new-instance v4, Lcom/amap/api/mapcore/util/cv$a;

    move/from16 v7, p1

    move/from16 v8, p4

    move-object/from16 v9, p0

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v4 .. v11}, Lcom/amap/api/mapcore/util/cv$a;-><init>(IIIILcom/amap/api/mapcore/util/l;Lcom/amap/api/mapcore/util/v;Lcom/amap/api/mapcore/util/eg;)V

    move-object/from16 v0, v18

    iput-object v0, v4, Lcom/amap/api/mapcore/util/cv$a;->e:Lcom/autonavi/amap/mapcore/IPoint;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    sub-int v5, v2, v12

    new-instance v18, Lcom/autonavi/amap/mapcore/IPoint;

    rsub-int/lit8 v4, p1, 0x14

    shl-int v4, v5, v4

    mul-int v4, v4, p2

    rsub-int/lit8 v7, p1, 0x14

    shl-int v7, v6, v7

    mul-int v7, v7, p3

    move-object/from16 v0, v18

    invoke-direct {v0, v4, v7}, Lcom/autonavi/amap/mapcore/IPoint;-><init>(II)V

    move-object/from16 v0, v18

    iget v4, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    if-ge v4, v13, :cond_8

    move-object/from16 v0, v18

    iget v4, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    if-le v4, v15, :cond_8

    move-object/from16 v0, v18

    iget v4, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    if-ge v4, v14, :cond_8

    move-object/from16 v0, v18

    iget v4, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    move/from16 v0, v16

    if-le v4, v0, :cond_8

    if-nez v1, :cond_7

    const/4 v1, 0x1

    :cond_7
    new-instance v4, Lcom/amap/api/mapcore/util/cv$a;

    move/from16 v7, p1

    move/from16 v8, p4

    move-object/from16 v9, p0

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v4 .. v11}, Lcom/amap/api/mapcore/util/cv$a;-><init>(IIIILcom/amap/api/mapcore/util/l;Lcom/amap/api/mapcore/util/v;Lcom/amap/api/mapcore/util/eg;)V

    move-object/from16 v0, v18

    iput-object v0, v4, Lcom/amap/api/mapcore/util/cv$a;->e:Lcom/autonavi/amap/mapcore/IPoint;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_2

    :cond_9
    if-nez v1, :cond_a

    return-object v17

    :cond_a
    add-int/lit8 v1, v12, 0x1

    move v12, v1

    goto/16 :goto_0
.end method

.method private static b(Lcom/amap/api/mapcore/util/l;Ljava/util/List;IZLjava/util/List;ZLcom/amap/api/mapcore/util/v;Lcom/amap/api/mapcore/util/eg;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/mapcore/util/l;",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore/util/cv$a;",
            ">;IZ",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore/util/cv$a;",
            ">;Z",
            "Lcom/amap/api/mapcore/util/v;",
            "Lcom/amap/api/mapcore/util/eg;",
            ")Z"
        }
    .end annotation

    const/4 v7, 0x7

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    if-nez p4, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    monitor-enter p4

    :try_start_0
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/cv$a;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore/util/cv$a;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/cv$a;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-boolean v6, v0, Lcom/amap/api/mapcore/util/cv$a;->g:Z

    if-eqz v6, :cond_3

    iget-boolean v5, v0, Lcom/amap/api/mapcore/util/cv$a;->g:Z

    iput-boolean v5, v1, Lcom/amap/api/mapcore/util/cv$a;->g:Z

    iget v5, v0, Lcom/amap/api/mapcore/util/cv$a;->f:I

    iput v5, v1, Lcom/amap/api/mapcore/util/cv$a;->f:I

    move v1, v3

    :goto_2
    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/cv$a;->b()V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :try_start_1
    invoke-interface {p4}, Ljava/util/List;->clear()V

    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {p0}, Lcom/amap/api/mapcore/util/l;->getMaxZoomLevel()F

    move-result v0

    float-to-int v0, v0

    if-gt p2, v0, :cond_5

    invoke-interface {p0}, Lcom/amap/api/mapcore/util/l;->getMinZoomLevel()F

    move-result v0

    float-to-int v0, v0

    if-ge p2, v0, :cond_6

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_7

    move v0, v2

    goto :goto_0

    :cond_7
    :goto_3
    if-ge v2, v1, :cond_c

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/cv$a;

    if-nez v0, :cond_9

    :cond_8
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    if-eqz p5, :cond_a

    invoke-virtual {p6}, Lcom/amap/api/mapcore/util/v;->a()Lcom/amap/api/mapcore/util/l;

    move-result-object v4

    invoke-interface {v4}, Lcom/amap/api/mapcore/util/l;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "zh_cn"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {}, Lcom/amap/api/maps/MapsInitializer;->isLoadWorldGridMap()Z

    move-result v4

    if-eqz v4, :cond_8

    iget v4, v0, Lcom/amap/api/mapcore/util/cv$a;->c:I

    if-lt v4, v7, :cond_8

    iget v4, v0, Lcom/amap/api/mapcore/util/cv$a;->a:I

    iget v5, v0, Lcom/amap/api/mapcore/util/cv$a;->b:I

    iget v6, v0, Lcom/amap/api/mapcore/util/cv$a;->c:I

    invoke-static {v4, v5, v6}, Lcom/amap/api/mapcore/util/dy;->a(III)Z

    move-result v4

    if-nez v4, :cond_8

    :cond_a
    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v4, v0, Lcom/amap/api/mapcore/util/cv$a;->g:Z

    if-nez v4, :cond_8

    if-eqz p7, :cond_8

    invoke-virtual {p7, p3, v0}, Lcom/amap/api/mapcore/util/eg;->a(ZLcom/amap/api/mapcore/util/cv$a;)V

    goto :goto_4

    :cond_b
    invoke-static {}, Lcom/amap/api/maps/MapsInitializer;->isLoadWorldGridMap()Z

    move-result v4

    if-nez v4, :cond_a

    iget v4, v0, Lcom/amap/api/mapcore/util/cv$a;->c:I

    if-lt v4, v7, :cond_a

    iget v4, v0, Lcom/amap/api/mapcore/util/cv$a;->a:I

    iget v5, v0, Lcom/amap/api/mapcore/util/cv$a;->b:I

    iget v6, v0, Lcom/amap/api/mapcore/util/cv$a;->c:I

    invoke-static {v4, v5, v6}, Lcom/amap/api/mapcore/util/dy;->a(III)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_4

    :cond_c
    move v0, v3

    goto/16 :goto_0

    :cond_d
    move v1, v2

    goto/16 :goto_2
.end method

.method private c(Z)V
    .locals 10

    new-instance v0, Lcom/amap/api/mapcore/util/cv$b;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cv;->g:Lcom/amap/api/mapcore/util/l;

    iget v3, p0, Lcom/amap/api/mapcore/util/cv;->i:I

    iget v4, p0, Lcom/amap/api/mapcore/util/cv;->j:I

    iget v5, p0, Lcom/amap/api/mapcore/util/cv;->k:I

    iget-object v6, p0, Lcom/amap/api/mapcore/util/cv;->m:Ljava/util/List;

    iget-boolean v7, p0, Lcom/amap/api/mapcore/util/cv;->f:Z

    iget-object v8, p0, Lcom/amap/api/mapcore/util/cv;->b:Lcom/amap/api/mapcore/util/v;

    iget-object v9, p0, Lcom/amap/api/mapcore/util/cv;->l:Lcom/amap/api/mapcore/util/eg;

    move v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/amap/api/mapcore/util/cv$b;-><init>(ZLcom/amap/api/mapcore/util/l;IIILjava/util/List;ZLcom/amap/api/mapcore/util/v;Lcom/amap/api/mapcore/util/eg;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cv;->o:Lcom/amap/api/mapcore/util/cv$b;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv;->o:Lcom/amap/api/mapcore/util/cv$b;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/cv$b;->c([Ljava/lang/Object;)Lcom/amap/api/mapcore/util/dj;

    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv;->o:Lcom/amap/api/mapcore/util/cv$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv;->o:Lcom/amap/api/mapcore/util/cv$b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/cv$b;->a()Lcom/amap/api/mapcore/util/dj$d;

    move-result-object v0

    sget-object v1, Lcom/amap/api/mapcore/util/dj$d;->b:Lcom/amap/api/mapcore/util/dj$d;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv;->o:Lcom/amap/api/mapcore/util/cv$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/cv$b;->a(Z)Z

    :cond_0
    return-void
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv;->b:Lcom/amap/api/mapcore/util/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv;->b:Lcom/amap/api/mapcore/util/v;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/v;->a()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv;->b:Lcom/amap/api/mapcore/util/v;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/v;->a()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->t(I)Lcom/amap/api/mapcore/util/cw;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/cx$e;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cv;->a:Lcom/amap/api/mapcore/util/cx$e;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv;->m:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/amap/api/mapcore/util/cv;->m:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    monitor-exit v3

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv;->m:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/cv$a;

    iget-boolean v1, v0, Lcom/amap/api/mapcore/util/cv$a;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_3

    :try_start_1
    iget-object v1, v0, Lcom/amap/api/mapcore/util/cv$a;->e:Lcom/autonavi/amap/mapcore/IPoint;

    iget-object v5, v0, Lcom/amap/api/mapcore/util/cv$a;->i:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/amap/api/mapcore/util/cv$a;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/amap/api/mapcore/util/cv$a;->i:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/ee;->a(Landroid/graphics/Bitmap;)I

    move-result v1

    iput v1, v0, Lcom/amap/api/mapcore/util/cv$a;->f:I

    iget v1, v0, Lcom/amap/api/mapcore/util/cv$a;->f:I

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amap/api/mapcore/util/cv$a;->g:Z

    :cond_2
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/amap/api/mapcore/util/cv$a;->i:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_2
    :try_start_2
    iget-boolean v1, v0, Lcom/amap/api/mapcore/util/cv$a;->g:Z

    if-eqz v1, :cond_4

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/cv;->a(Lcom/amap/api/mapcore/util/cv$a;)Z

    iget v1, v0, Lcom/amap/api/mapcore/util/cv$a;->f:I

    iget-object v0, v0, Lcom/amap/api/mapcore/util/cv$a;->h:Ljava/nio/FloatBuffer;

    iget-object v5, p0, Lcom/amap/api/mapcore/util/cv;->r:Ljava/nio/FloatBuffer;

    invoke-direct {p0, v1, v0, v5}, Lcom/amap/api/mapcore/util/cv;->a(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v5, "TileOverlayDelegateImp"

    const-string v6, "drawTiles"

    invoke-static {v1, v5, v6}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_5
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/cv;->p:Ljava/lang/String;

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cv;->d()V

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cv;->b()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv;->l:Lcom/amap/api/mapcore/util/eg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv;->l:Lcom/amap/api/mapcore/util/eg;

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore/util/eg;->a(Z)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv;->l:Lcom/amap/api/mapcore/util/eg;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/eg;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv;->l:Lcom/amap/api/mapcore/util/eg;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/eg;->a(Z)V

    :cond_0
    invoke-direct {p0, v2}, Lcom/amap/api/mapcore/util/cv;->c(Z)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cv;->n:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cv;->d()V

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/cv;->c(Z)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv;->m:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cv;->m:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cv;->n:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/cv;->n:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv;->l:Lcom/amap/api/mapcore/util/eg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv;->l:Lcom/amap/api/mapcore/util/eg;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/eg;->a(Z)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 4

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cv;->d()V

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cv;->m:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv;->m:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/cv$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/cv$a;->b()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearTileCache()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv;->l:Lcom/amap/api/mapcore/util/eg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv;->l:Lcom/amap/api/mapcore/util/eg;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/eg;->g()V

    :cond_0
    return-void
.end method

.method public destroy(Z)V
    .locals 4

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cv;->d()V

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cv;->m:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv;->m:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/cv$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/cv$a;->b()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv;->l:Lcom/amap/api/mapcore/util/eg;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv;->l:Lcom/amap/api/mapcore/util/eg;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/eg;->h()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv;->l:Lcom/amap/api/mapcore/util/eg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/eg;->a(Z)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv;->l:Lcom/amap/api/mapcore/util/eg;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/eg;->a(Lcom/amap/api/maps/model/TileProvider;)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cv;->remove()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;)Z
    .locals 2

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cv;->getId()Ljava/lang/String;

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

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv;->q:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "TileOverlay"

    invoke-static {v0}, Lcom/amap/api/mapcore/util/cv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cv;->q:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getZIndex()F
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv;->d:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public hashCodeRemote()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cv;->e:Z

    return v0
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv;->b:Lcom/amap/api/mapcore/util/v;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/util/v;->b(Lcom/amap/api/mapcore/util/cn;)Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv;->g:Lcom/amap/api/mapcore/util/l;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/cv;->e:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv;->g:Lcom/amap/api/mapcore/util/l;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/cv;->a(Z)V

    :cond_0
    return-void
.end method

.method public setZIndex(F)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cv;->d:Ljava/lang/Float;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv;->b:Lcom/amap/api/mapcore/util/v;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/v;->d()V

    return-void
.end method
