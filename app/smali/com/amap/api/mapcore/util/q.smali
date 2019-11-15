.class public Lcom/amap/api/mapcore/util/q;
.super Ljava/lang/Object;
.source "MapOverlayImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/q$a;
    }
.end annotation


# instance fields
.field a:Lcom/amap/api/mapcore/util/l;

.field b:[F

.field public c:Lcom/amap/api/mapcore/util/cx$c;

.field d:I

.field e:I

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore/util/cj;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore/util/s;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore/util/cj;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/amap/api/mapcore/util/q$a;

.field private j:Z

.field private k:Lcom/autonavi/amap/mapcore/IPoint;

.field private l:Lcom/amap/api/mapcore/util/cg;

.field private m:Lcom/amap/api/mapcore/util/cg;

.field private n:Lcom/amap/api/mapcore/util/ek;

.field private o:Lcom/amap/api/mapcore/util/du;

.field private p:Ljava/nio/FloatBuffer;

.field private q:Landroid/os/Handler;

.field private r:[I

.field private s:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/l;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/q;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/q;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/q;->h:Ljava/util/List;

    new-instance v0, Lcom/amap/api/mapcore/util/q$a;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/q$a;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/q;->i:Lcom/amap/api/mapcore/util/q$a;

    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/q;->j:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/q;->q:Landroid/os/Handler;

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/amap/api/mapcore/util/q;->r:[I

    const v0, 0x2bf20

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/amap/api/mapcore/util/q;->b:[F

    iput v2, p0, Lcom/amap/api/mapcore/util/q;->d:I

    iput v2, p0, Lcom/amap/api/mapcore/util/q;->e:I

    new-instance v0, Lcom/amap/api/mapcore/util/q$2;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/q$2;-><init>(Lcom/amap/api/mapcore/util/q;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/q;->s:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/q;->a:Lcom/amap/api/mapcore/util/l;

    new-instance v0, Lcom/amap/api/mapcore/util/ek;

    const/16 v1, 0x200

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Lcom/amap/api/mapcore/util/ek;-><init>(II)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/q;->n:Lcom/amap/api/mapcore/util/ek;

    new-instance v0, Lcom/amap/api/mapcore/util/du;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/du;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/q;->o:Lcom/amap/api/mapcore/util/du;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/q;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->f:Ljava/util/List;

    return-object v0
.end method

.method private a(I)V
    .locals 7

    const v6, 0x8892

    const/16 v4, 0x7530

    const/4 v3, 0x2

    const/16 v0, 0x1388

    const/4 v1, 0x0

    if-le p1, v0, :cond_0

    move p1, v0

    :cond_0
    iget v2, p0, Lcom/amap/api/mapcore/util/q;->d:I

    if-nez v2, :cond_2

    new-array v2, v3, [I

    invoke-static {v3, v2, v1}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    aget v3, v2, v1

    iput v3, p0, Lcom/amap/api/mapcore/util/q;->d:I

    const/4 v3, 0x1

    aget v2, v2, v3

    iput v2, p0, Lcom/amap/api/mapcore/util/q;->e:I

    iget-object v2, p0, Lcom/amap/api/mapcore/util/q;->o:Lcom/amap/api/mapcore/util/du;

    invoke-virtual {v2, v4}, Lcom/amap/api/mapcore/util/du;->b(I)Ljava/nio/ShortBuffer;

    move-result-object v2

    new-array v3, v4, [S

    :goto_0
    if-ge v1, v0, :cond_1

    mul-int/lit8 v4, v1, 0x6

    add-int/lit8 v4, v4, 0x0

    mul-int/lit8 v5, v1, 0x4

    add-int/lit8 v5, v5, 0x0

    int-to-short v5, v5

    aput-short v5, v3, v4

    mul-int/lit8 v4, v1, 0x6

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v5, v1, 0x4

    add-int/lit8 v5, v5, 0x1

    int-to-short v5, v5

    aput-short v5, v3, v4

    mul-int/lit8 v4, v1, 0x6

    add-int/lit8 v4, v4, 0x2

    mul-int/lit8 v5, v1, 0x4

    add-int/lit8 v5, v5, 0x2

    int-to-short v5, v5

    aput-short v5, v3, v4

    mul-int/lit8 v4, v1, 0x6

    add-int/lit8 v4, v4, 0x3

    mul-int/lit8 v5, v1, 0x4

    add-int/lit8 v5, v5, 0x0

    int-to-short v5, v5

    aput-short v5, v3, v4

    mul-int/lit8 v4, v1, 0x6

    add-int/lit8 v4, v4, 0x4

    mul-int/lit8 v5, v1, 0x4

    add-int/lit8 v5, v5, 0x2

    int-to-short v5, v5

    aput-short v5, v3, v4

    mul-int/lit8 v4, v1, 0x6

    add-int/lit8 v4, v4, 0x5

    mul-int/lit8 v5, v1, 0x4

    add-int/lit8 v5, v5, 0x3

    int-to-short v5, v5

    aput-short v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v3}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    const v0, 0x8893

    iget v1, p0, Lcom/amap/api/mapcore/util/q;->e:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const v0, 0x8893

    const v1, 0xea60

    const v3, 0x88e4

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    :cond_2
    iget v0, p0, Lcom/amap/api/mapcore/util/q;->d:I

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    mul-int/lit8 v0, p1, 0x24

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/amap/api/mapcore/util/q;->p:Ljava/nio/FloatBuffer;

    const v2, 0x88e4

    invoke-static {v6, v0, v1, v2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    return-void
.end method

.method private a(IIII)V
    .locals 6

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->o:Lcom/amap/api/mapcore/util/du;

    mul-int/lit8 v1, p2, 0x24

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/du;->c(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/q;->p:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->p:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/q;->b:[F

    invoke-virtual {v0, v1, p3, p4}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->p:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    invoke-direct {p0, p2}, Lcom/amap/api/mapcore/util/q;->a(I)V

    iget-object v4, p0, Lcom/amap/api/mapcore/util/q;->p:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p4

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore/util/q;->a(IIILjava/nio/FloatBuffer;Lcom/autonavi/amap/mapcore/MapConfig;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->o:Lcom/amap/api/mapcore/util/du;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/du;->a()V

    goto :goto_0
.end method

.method private a(IIILjava/nio/FloatBuffer;Lcom/autonavi/amap/mapcore/MapConfig;)V
    .locals 8

    const/4 v7, 0x1

    const/16 v2, 0x1406

    const/16 v4, 0x24

    const v6, 0x8892

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->c:Lcom/amap/api/mapcore/util/cx$c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->c:Lcom/amap/api/mapcore/util/cx$c;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/cx$c;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/q;->k()V

    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->c:Lcom/amap/api/mapcore/util/cx$c;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/cx$c;->a()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->c:Lcom/amap/api/mapcore/util/cx$c;

    iget v0, v0, Lcom/amap/api/mapcore/util/cx$c;->h:I

    invoke-virtual {p5}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_r()F

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->c:Lcom/amap/api/mapcore/util/cx$c;

    iget v0, v0, Lcom/amap/api/mapcore/util/cx$c;->b:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lcom/amap/api/mapcore/util/q;->d:I

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->c:Lcom/amap/api/mapcore/util/cx$c;

    iget v0, v0, Lcom/amap/api/mapcore/util/cx$c;->b:I

    const/4 v1, 0x4

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v0, 0x303

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/16 v0, 0xde1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->c:Lcom/amap/api/mapcore/util/cx$c;

    iget v0, v0, Lcom/amap/api/mapcore/util/cx$c;->c:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lcom/amap/api/mapcore/util/q;->d:I

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->c:Lcom/amap/api/mapcore/util/cx$c;

    iget v0, v0, Lcom/amap/api/mapcore/util/cx$c;->c:I

    const/4 v1, 0x2

    const/16 v5, 0x10

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->c:Lcom/amap/api/mapcore/util/cx$c;

    iget v0, v0, Lcom/amap/api/mapcore/util/cx$c;->g:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lcom/amap/api/mapcore/util/q;->d:I

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->c:Lcom/amap/api/mapcore/util/cx$c;

    iget v0, v0, Lcom/amap/api/mapcore/util/cx$c;->g:I

    const/4 v1, 0x3

    const/16 v5, 0x18

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->c:Lcom/amap/api/mapcore/util/cx$c;

    iget v0, v0, Lcom/amap/api/mapcore/util/cx$c;->a:I

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/q;->b()[F

    move-result-object v1

    invoke-static {v0, v7, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const v0, 0x8893

    iget v1, p0, Lcom/amap/api/mapcore/util/q;->e:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const/4 v0, 0x4

    mul-int/lit8 v1, p3, 0x6

    const/16 v2, 0x1403

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const v0, 0x8893

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const/16 v0, 0xde1

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->c:Lcom/amap/api/mapcore/util/cx$c;

    iget v0, v0, Lcom/amap/api/mapcore/util/cx$c;->b:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->c:Lcom/amap/api/mapcore/util/cx$c;

    iget v0, v0, Lcom/amap/api/mapcore/util/cx$c;->c:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/amap/api/mapcore/util/q;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/q;->j()V

    return-void
.end method

.method private d(Lcom/amap/api/mapcore/util/cj;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/q;->f()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MapOverlayImageView"

    const-string v2, "addMarker"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private j()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->f:Ljava/util/List;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/q;->i:Lcom/amap/api/mapcore/util/q$a;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MapOverlayImageView"

    const-string v2, "changeOverlayIndex"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->c:Lcom/amap/api/mapcore/util/cx$c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->a:Lcom/amap/api/mapcore/util/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->a:Lcom/amap/api/mapcore/util/l;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->t(I)Lcom/amap/api/mapcore/util/cw;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/cx$c;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/q;->c:Lcom/amap/api/mapcore/util/cx$c;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)Lcom/amap/api/mapcore/util/cg;
    .locals 6

    iget-object v2, p0, Lcom/amap/api/mapcore/util/q;->f:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/cj;

    instance-of v3, v0, Lcom/amap/api/mapcore/util/co;

    if-eqz v3, :cond_0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cj;->h()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v3, v4, v5}, Lcom/amap/api/mapcore/util/ee;->a(Landroid/graphics/Rect;II)Z

    move-result v3

    if-eqz v3, :cond_0

    check-cast v0, Lcom/amap/api/mapcore/util/cg;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/q;->l:Lcom/amap/api/mapcore/util/cg;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->l:Lcom/amap/api/mapcore/util/cg;

    monitor-exit v2

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/amap/api/mapcore/util/co;

    invoke-direct {v1, p1, p0}, Lcom/amap/api/mapcore/util/co;-><init>(Lcom/amap/api/maps/model/MarkerOptions;Lcom/amap/api/mapcore/util/q;)V

    iget-object v2, p0, Lcom/amap/api/mapcore/util/q;->f:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/q;->d(Lcom/amap/api/mapcore/util/cj;)V

    new-instance v0, Lcom/amap/api/maps/model/Marker;

    invoke-direct {v0, v1}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IMarker;)V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/amap/api/maps/model/TextOptions;)Lcom/amap/api/maps/model/Text;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/q;->f:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    new-instance v2, Lcom/amap/api/mapcore/util/cu;

    invoke-direct {v2, p1, p0}, Lcom/amap/api/mapcore/util/cu;-><init>(Lcom/amap/api/maps/model/TextOptions;Lcom/amap/api/mapcore/util/q;)V

    invoke-direct {p0, v2}, Lcom/amap/api/mapcore/util/q;->d(Lcom/amap/api/mapcore/util/cj;)V

    new-instance v0, Lcom/amap/api/maps/model/Text;

    invoke-direct {v0, v2}, Lcom/amap/api/maps/model/Text;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IText;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps/model/MarkerOptions;",
            ">;Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps/model/Marker;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/MarkerOptions;

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/q;->a(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amap/api/mapcore/util/q;->a:Lcom/amap/api/mapcore/util/l;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {v0, v3}, Lcom/amap/api/mapcore/util/aa;->a(Lcom/amap/api/maps/model/LatLng;F)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/amap/api/mapcore/util/l;->a(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V

    :cond_2
    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/amap/api/maps/model/LatLngBounds;->builder()Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v3

    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/q;->a(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/amap/api/mapcore/util/q$1;

    invoke-direct {v2, p0, v3}, Lcom/amap/api/mapcore/util/q$1;-><init>(Lcom/amap/api/mapcore/util/q;Lcom/amap/api/maps/model/LatLngBounds$Builder;)V

    const-wide/16 v4, 0x32

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "AMapDelegateImpGLSurfaceView"

    const-string v3, "addMarkers"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto/16 :goto_0
.end method

.method public a()V
    .locals 13

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapPerPixelUnitLength()F

    move-result v8

    iget-object v9, p0, Lcom/amap/api/mapcore/util/q;->f:Ljava/util/List;

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/q;->h()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v9

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    :goto_1
    if-ge v1, v3, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/cj;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cj;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cj;->l()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cj;->i()Z

    move-result v4

    iput-boolean v4, p0, Lcom/amap/api/mapcore/util/q;->j:Z

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cj;->j()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cj;->isInfoWindowShown()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    :cond_3
    :try_start_2
    iget-object v4, p0, Lcom/amap/api/mapcore/util/q;->h:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    :try_start_5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->m:Lcom/amap/api/mapcore/util/cg;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->m:Lcom/amap/api/mapcore/util/cg;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cg;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->h:Ljava/util/List;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/q;->m:Lcom/amap/api/mapcore/util/cg;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    move v1, v2

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    :goto_3
    if-ge v1, v10, :cond_8

    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/cj;

    monitor-enter v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v7, p0, Lcom/amap/api/mapcore/util/q;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0, v7}, Lcom/amap/api/mapcore/util/cj;->a(Lcom/amap/api/mapcore/util/l;)V

    if-nez v1, :cond_7

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cj;->k()I

    move-result v7

    move v12, v3

    move v3, v4

    move v4, v12

    :goto_4
    iget-object v6, p0, Lcom/amap/api/mapcore/util/q;->a:Lcom/amap/api/mapcore/util/l;

    iget-object v11, p0, Lcom/amap/api/mapcore/util/q;->b:[F

    invoke-interface {v0, v6, v11, v3, v8}, Lcom/amap/api/mapcore/util/cj;->a(Lcom/amap/api/mapcore/util/l;[FIF)V

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cj;->k()I

    move-result v6

    if-eq v6, v7, :cond_a

    invoke-direct {p0, v7, v5, v4, v3}, Lcom/amap/api/mapcore/util/q;->a(IIII)V

    move v4, v2

    move v5, v2

    :goto_5
    add-int/lit8 v4, v4, 0x24

    add-int/lit8 v5, v5, 0x1

    const/16 v7, 0x1388

    if-ne v5, v7, :cond_6

    invoke-direct {p0, v6, v5, v3, v4}, Lcom/amap/api/mapcore/util/q;->a(IIII)V

    move v3, v2

    move v4, v2

    move v5, v2

    :cond_6
    monitor-exit v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_7
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cj;->k()I

    move-result v7

    if-eq v7, v6, :cond_b

    invoke-direct {p0, v6, v5, v3, v4}, Lcom/amap/api/mapcore/util/q;->a(IIII)V

    move v4, v2

    move v3, v2

    move v5, v2

    goto :goto_4

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v1

    :cond_8
    if-lez v5, :cond_9

    invoke-direct {p0, v6, v5, v3, v4}, Lcom/amap/api/mapcore/util/q;->a(IIII)V

    :cond_9
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    :cond_a
    move v6, v7

    move v12, v3

    move v3, v4

    move v4, v12

    goto :goto_5

    :cond_b
    move v7, v6

    move v12, v4

    move v4, v3

    move v3, v12

    goto :goto_4
.end method

.method public a(Lcom/amap/api/mapcore/util/cg;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->m:Lcom/amap/api/mapcore/util/cg;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/amap/api/mapcore/util/cg;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/q;->m:Lcom/amap/api/mapcore/util/cg;

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/cg;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->m:Lcom/amap/api/mapcore/util/cg;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/cg;->b(Z)V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/amap/api/mapcore/util/cg;->b(Z)V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/q;->m:Lcom/amap/api/mapcore/util/cg;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MapOverlayImageView"

    const-string v2, "set2Top"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/mapcore/util/s;)V
    .locals 2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/q;->g:Ljava/util/List;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    const/4 v3, 0x1

    :goto_0
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/amap/api/mapcore/util/q;->l:Lcom/amap/api/mapcore/util/cg;

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/amap/api/mapcore/util/q;->k:Lcom/autonavi/amap/mapcore/IPoint;

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/amap/api/mapcore/util/q;->m:Lcom/amap/api/mapcore/util/cg;

    iget-object v4, p0, Lcom/amap/api/mapcore/util/q;->f:Ljava/util/List;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v5, p0, Lcom/amap/api/mapcore/util/q;->h:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    if-eqz v3, :cond_3

    iget-object v1, p0, Lcom/amap/api/mapcore/util/q;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_1
    :goto_1
    monitor-exit v4

    :goto_2
    return-void

    :cond_2
    move v3, v1

    goto :goto_0

    :cond_3
    move v3, v1

    :goto_3
    iget-object v1, p0, Lcom/amap/api/mapcore/util/q;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_5

    iget-object v1, p0, Lcom/amap/api/mapcore/util/q;->f:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore/util/cj;

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/cj;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v1

    goto :goto_3

    :cond_4
    invoke-interface {v1}, Lcom/amap/api/mapcore/util/cj;->remove()Z

    move-object v1, v2

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lcom/amap/api/mapcore/util/q;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/amap/api/mapcore/util/q;->f:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Lcom/amap/api/mapcore/util/cj;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v1, v2, Lcom/amap/api/mapcore/util/cg;

    if-eqz v1, :cond_1

    move-object v0, v2

    check-cast v0, Lcom/amap/api/mapcore/util/cg;

    move-object v1, v0

    iput-object v1, p0, Lcom/amap/api/mapcore/util/q;->m:Lcom/amap/api/mapcore/util/cg;

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    const-string v2, "MapOverlayImageView"

    const-string v3, "clear"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public declared-synchronized a(Landroid/graphics/Bitmap;Lcom/amap/api/mapcore/util/s;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->n:Lcom/amap/api/mapcore/util/ek;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p2}, Lcom/amap/api/mapcore/util/s;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/ek;->a(IILjava/lang/String;)Lcom/amap/api/mapcore/util/ek$c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/amap/api/mapcore/util/ek$c;->a:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/q;->n:Lcom/amap/api/mapcore/util/ek;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/ek;->a()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p2, v1}, Lcom/amap/api/mapcore/util/s;->b(F)V

    iget v1, v0, Lcom/amap/api/mapcore/util/ek$c;->b:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/q;->n:Lcom/amap/api/mapcore/util/ek;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/ek;->b()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p2, v1}, Lcom/amap/api/mapcore/util/s;->a(F)V

    iget v1, v0, Lcom/amap/api/mapcore/util/ek$c;->a:I

    iget v2, v0, Lcom/amap/api/mapcore/util/ek$c;->c:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/q;->n:Lcom/amap/api/mapcore/util/ek;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/ek;->a()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p2, v1}, Lcom/amap/api/mapcore/util/s;->c(F)V

    iget v1, v0, Lcom/amap/api/mapcore/util/ek$c;->b:I

    iget v0, v0, Lcom/amap/api/mapcore/util/ek$c;->d:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/q;->n:Lcom/amap/api/mapcore/util/ek;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/ek;->b()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p2, v0}, Lcom/amap/api/mapcore/util/s;->d(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/amap/api/mapcore/util/cj;)Z
    .locals 3

    iget-object v1, p0, Lcom/amap/api/mapcore/util/q;->f:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->m:Lcom/amap/api/mapcore/util/cg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->m:Lcom/amap/api/mapcore/util/cg;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cg;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/amap/api/mapcore/util/cj;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/q;->m:Lcom/amap/api/mapcore/util/cg;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/q;->b(Lcom/amap/api/mapcore/util/cj;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(Lcom/amap/api/mapcore/util/cg;)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->k:Lcom/autonavi/amap/mapcore/IPoint;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/q;->k:Lcom/autonavi/amap/mapcore/IPoint;

    :cond_0
    invoke-interface {p1}, Lcom/amap/api/mapcore/util/cg;->h()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v0}, Lcom/autonavi/amap/mapcore/IPoint;->obtain(II)Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/q;->k:Lcom/autonavi/amap/mapcore/IPoint;

    iput-object p1, p0, Lcom/amap/api/mapcore/util/q;->l:Lcom/amap/api/mapcore/util/cg;

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->a:Lcom/amap/api/mapcore/util/l;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/q;->l:Lcom/amap/api/mapcore/util/cg;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->a(Lcom/amap/api/mapcore/util/cg;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MapOverlayImageView"

    const-string v2, "showInfoWindow"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b(Lcom/amap/api/mapcore/util/cj;)V
    .locals 2

    :try_start_0
    invoke-interface {p1}, Lcom/amap/api/mapcore/util/cj;->isInfoWindowShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->i()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/q;->l:Lcom/amap/api/mapcore/util/cg;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->l:Lcom/amap/api/mapcore/util/cg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->l:Lcom/amap/api/mapcore/util/cg;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cg;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/amap/api/mapcore/util/cj;->getId()Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/q;->l:Lcom/amap/api/mapcore/util/cg;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v5, p0, Lcom/amap/api/mapcore/util/q;->f:Ljava/util/List;

    monitor-enter v5

    const/4 v3, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/q;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v4, v1

    :goto_0
    if-ltz v4, :cond_1

    iget-object v1, p0, Lcom/amap/api/mapcore/util/q;->f:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore/util/cj;

    instance-of v2, v1, Lcom/amap/api/mapcore/util/co;

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/cj;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/amap/api/mapcore/util/co;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/co;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/cj;->h()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-static {v6, v2, v7}, Lcom/amap/api/mapcore/util/ee;->a(Landroid/graphics/Rect;II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v3, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, v6, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v4}, Lcom/autonavi/amap/mapcore/IPoint;->obtain(II)Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v3

    iput-object v3, p0, Lcom/amap/api/mapcore/util/q;->k:Lcom/autonavi/amap/mapcore/IPoint;

    check-cast v1, Lcom/amap/api/mapcore/util/cg;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/q;->l:Lcom/amap/api/mapcore/util/cg;

    move v1, v2

    :goto_1
    monitor-exit v5

    return v1

    :cond_0
    add-int/lit8 v1, v4, -0x1

    move v4, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    move v1, v3

    goto :goto_1
.end method

.method public b()[F
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->a:Lcom/amap/api/mapcore/util/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->u()[F

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x10

    new-array v0, v0, [F

    goto :goto_0
.end method

.method public c()Lcom/amap/api/mapcore/util/l;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->a:Lcom/amap/api/mapcore/util/l;

    return-object v0
.end method

.method public c(Lcom/amap/api/mapcore/util/cj;)Z
    .locals 2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/q;->f:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()Lcom/amap/api/mapcore/util/cg;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->l:Lcom/amap/api/mapcore/util/cg;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/Marker;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/amap/api/mapcore/util/q;->f:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/cj;

    instance-of v4, v0, Lcom/amap/api/mapcore/util/co;

    if-eqz v4, :cond_0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cj;->j()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lcom/amap/api/maps/model/Marker;

    check-cast v0, Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-direct {v4, v0}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IMarker;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v3, "MapOverlayImageView"

    const-string v4, "getMapScreenMarkers"

    invoke-static {v0, v3, v4}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_1
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public f()V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/q;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/q;->s:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected g()I
    .locals 2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/q;->f:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public h()V
    .locals 6

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/q;->g:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/q;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/l;->e()I

    move-result v3

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/s;->h()V

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/s;->i()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/s;->f()I

    move-result v4

    if-ne v4, v3, :cond_1

    iget-object v4, p0, Lcom/amap/api/mapcore/util/q;->n:Lcom/amap/api/mapcore/util/ek;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/s;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/mapcore/util/ek;->a(Ljava/lang/String;)Z

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/amap/api/mapcore/util/q;->r:[I

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/s;->f()I

    move-result v0

    aput v0, v4, v5

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/amap/api/mapcore/util/q;->r:[I

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public i()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/cj;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/amap/api/mapcore/util/cj;->destroy(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MapOverlayImageView"

    const-string v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const-string v1, "amapApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MapOverlayImageView clear erro"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/q;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/q;->a:Lcom/amap/api/mapcore/util/l;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
