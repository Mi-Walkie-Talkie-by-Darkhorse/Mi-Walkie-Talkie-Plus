.class public Lcom/amap/api/mapcore/util/ct;
.super Ljava/lang/Object;
.source "PopupOverlay.java"

# interfaces
.implements Lcom/amap/api/mapcore/util/ae;
.implements Lcom/amap/api/mapcore/util/ci;
.implements Lcom/autonavi/amap/mapcore/interfaces/IInfoWindowManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/ct$a;
    }
.end annotation


# instance fields
.field private A:F

.field private B:F

.field private C:I

.field private D:Z

.field private E:Landroid/graphics/Bitmap;

.field private F:Landroid/graphics/Bitmap;

.field private G:Landroid/graphics/Bitmap;

.field private H:Landroid/graphics/Bitmap;

.field private I:Z

.field private J:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

.field private K:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

.field private L:Z

.field private M:Z

.field a:Lcom/amap/api/mapcore/util/l;

.field b:[F

.field c:Lcom/amap/api/mapcore/util/ct$a;

.field d:[F

.field e:J

.field f:J

.field g:J

.field h:Lcom/amap/api/mapcore/util/af;

.field private i:Landroid/content/Context;

.field private j:Lcom/amap/api/mapcore/util/cg;

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Lcom/autonavi/amap/mapcore/FPoint;

.field private q:Ljava/nio/FloatBuffer;

.field private r:Ljava/lang/String;

.field private s:Z

.field private t:Ljava/nio/FloatBuffer;

.field private u:F

.field private v:F

.field private w:Z

.field private x:Landroid/graphics/Bitmap;

.field private y:Landroid/graphics/Bitmap;

.field private z:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/util/l;Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/ct;->k:Z

    iput v2, p0, Lcom/amap/api/mapcore/util/ct;->l:I

    iput v2, p0, Lcom/amap/api/mapcore/util/ct;->m:I

    iput v2, p0, Lcom/amap/api/mapcore/util/ct;->n:I

    iput v2, p0, Lcom/amap/api/mapcore/util/ct;->o:I

    iput-object v1, p0, Lcom/amap/api/mapcore/util/ct;->q:Ljava/nio/FloatBuffer;

    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/ct;->s:Z

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/amap/api/mapcore/util/ct;->u:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/amap/api/mapcore/util/ct;->v:F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ct;->z:Landroid/graphics/Rect;

    iput v4, p0, Lcom/amap/api/mapcore/util/ct;->A:F

    iput v4, p0, Lcom/amap/api/mapcore/util/ct;->B:F

    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/ct;->D:Z

    iput-object v1, p0, Lcom/amap/api/mapcore/util/ct;->E:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/ct;->F:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/ct;->G:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/ct;->H:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/ct;->a:Lcom/amap/api/mapcore/util/l;

    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/ct;->I:Z

    const/16 v0, 0xc

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ct;->b:[F

    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ct;->d:[F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/ct;->e:J

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/ct;->f:J

    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/ct;->g:J

    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/ct;->L:Z

    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/ct;->M:Z

    iput-object p2, p0, Lcom/amap/api/mapcore/util/ct;->i:Landroid/content/Context;

    iput-object p1, p0, Lcom/amap/api/mapcore/util/ct;->a:Lcom/amap/api/mapcore/util/l;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ct;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ct;->r:Ljava/lang/String;

    return-void

    nop

    :array_0
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

.method private a(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v2, 0x1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->i:Landroid/content/Context;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ct;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object p1, v0

    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheQuality(I)V

    invoke-static {p1}, Lcom/amap/api/mapcore/util/ee;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/ct;)Lcom/autonavi/amap/mapcore/animation/GLAnimation;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->J:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

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
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->c:Lcom/amap/api/mapcore/util/ct$a;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ct;->h()V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->c:Lcom/amap/api/mapcore/util/ct$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ct$a;->a()V

    invoke-static {v7}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v0, 0x303

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    invoke-static {v1, v1, v1, v1}, Landroid/opengl/GLES20;->glBlendColor(FFFF)V

    invoke-static {v8, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->c:Lcom/amap/api/mapcore/util/ct$a;

    iget v0, v0, Lcom/amap/api/mapcore/util/ct$a;->b:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->c:Lcom/amap/api/mapcore/util/ct$a;

    iget v0, v0, Lcom/amap/api/mapcore/util/ct$a;->b:I

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/16 v4, 0xc

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->c:Lcom/amap/api/mapcore/util/ct$a;

    iget v0, v0, Lcom/amap/api/mapcore/util/ct$a;->c:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->c:Lcom/amap/api/mapcore/util/ct$a;

    iget v0, v0, Lcom/amap/api/mapcore/util/ct$a;->c:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/16 v4, 0x8

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->c:Lcom/amap/api/mapcore/util/ct$a;

    iget v0, v0, Lcom/amap/api/mapcore/util/ct$a;->a:I

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ct;->d:[F

    invoke-static {v0, v6, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 v0, 0x6

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->c:Lcom/amap/api/mapcore/util/ct$a;

    iget v0, v0, Lcom/amap/api/mapcore/util/ct$a;->b:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->c:Lcom/amap/api/mapcore/util/ct$a;

    iget v0, v0, Lcom/amap/api/mapcore/util/ct$a;->c:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {v8, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    invoke-static {v7}, Landroid/opengl/GLES20;->glDisable(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/ct;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/ct;->L:Z

    return p1
.end method

.method static synthetic b(Lcom/amap/api/mapcore/util/ct;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/ct;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ct;->l()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/ct;->b(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ct;->m()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/ct;->b(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private declared-synchronized c(Landroid/graphics/Bitmap;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
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

.method private c(Z)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->K:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/ct;->M:Z

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/ct;->L:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->K:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->startNow()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->K:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    new-instance v1, Lcom/amap/api/mapcore/util/ct$1;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/mapcore/util/ct$1;-><init>(Lcom/amap/api/mapcore/util/ct;Z)V

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->setAnimationListener(Lcom/amap/api/maps/model/animation/Animation$AnimationListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->J:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/ct;->L:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->J:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->startNow()V

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/ct;->b(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/ct;->b(Z)V

    goto :goto_0
.end method

.method private d(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->F:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/ct;->c(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/ct;->F:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private e(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->G:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/ct;->c(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/ct;->G:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private f(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->H:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/ct;->c(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/ct;->H:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private g(Landroid/graphics/Bitmap;)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ct;->E:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ct;->E:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ct;->G:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ct;->G:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ct;->F:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ct;->F:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ct;->H:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ct;->H:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->E:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private m()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->G:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private n()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/ct;->M:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->K:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->K:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_1

    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/ct;->L:Z

    new-instance v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/animation/GLTransformation;-><init>()V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ct;->K:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->getTransformation(JLcom/autonavi/amap/mapcore/animation/GLTransformation;)Z

    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scale_x:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_0

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scale_y:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_0

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scale_x:D

    double-to-float v1, v2

    iput v1, p0, Lcom/amap/api/mapcore/util/ct;->A:F

    iget-wide v0, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scale_y:D

    double-to-float v0, v0

    iput v0, p0, Lcom/amap/api/mapcore/util/ct;->B:F

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->J:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->J:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_2

    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/ct;->M:Z

    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/ct;->L:Z

    iget v0, p0, Lcom/amap/api/mapcore/util/ct;->n:I

    iput v0, p0, Lcom/amap/api/mapcore/util/ct;->l:I

    iget v0, p0, Lcom/amap/api/mapcore/util/ct;->o:I

    iput v0, p0, Lcom/amap/api/mapcore/util/ct;->m:I

    new-instance v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/animation/GLTransformation;-><init>()V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ct;->J:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->getTransformation(JLcom/autonavi/amap/mapcore/animation/GLTransformation;)Z

    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scale_x:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_0

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scale_y:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_0

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scale_x:D

    double-to-float v1, v2

    iput v1, p0, Lcom/amap/api/mapcore/util/ct;->A:F

    iget-wide v0, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scale_y:D

    double-to-float v0, v0

    iput v0, p0, Lcom/amap/api/mapcore/util/ct;->B:F

    goto :goto_0

    :cond_2
    iput v1, p0, Lcom/amap/api/mapcore/util/ct;->A:F

    iput v1, p0, Lcom/amap/api/mapcore/util/ct;->B:F

    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/ct;->L:Z

    goto :goto_0
.end method

.method private o()I
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-array v0, v2, [I

    aput v1, v0, v1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v0, v0, v1

    return v0
.end method

.method private p()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/ct;->D:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->x:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/ct;->c(Z)V

    :goto_0
    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/ct;->a(Z)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ct;->m()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/ct;->b(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private q()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/ct;->D:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->x:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/ct;->c(Z)V

    :goto_0
    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/ct;->a(Z)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ct;->l()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/ct;->b(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private r()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->x:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->x:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/ct;->x:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->y:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->y:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->y:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/ct;->y:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->E:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->E:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->E:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->F:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->F:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->F:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->G:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->G:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->G:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->H:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->H:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->H:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    return-void
.end method

.method private s()V
    .locals 0

    return-void
.end method

.method private t()Landroid/graphics/Rect;
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ct;->z:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ct;->z:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/amap/api/mapcore/util/ct;->z:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/amap/api/mapcore/util/ct;->z:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ct;->v()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private u()Landroid/graphics/Rect;
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ct;->z:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ct;->z:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/amap/api/mapcore/util/ct;->z:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/amap/api/mapcore/util/ct;->z:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ct;->w()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private v()I
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->E:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->E:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->E:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method private w()I
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->G:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->G:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->G:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->E:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/ct;->c(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/ct;->E:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public a(Lcom/amap/api/mapcore/util/af;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/ct;->h:Lcom/amap/api/mapcore/util/af;

    return-void
.end method

.method public declared-synchronized a(Lcom/amap/api/mapcore/util/cg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_0
    invoke-interface {p1}, Lcom/amap/api/mapcore/util/cg;->isInfoWindowEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->j:Lcom/amap/api/mapcore/util/cg;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->j:Lcom/amap/api/mapcore/util/cg;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cg;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/amap/api/mapcore/util/cg;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ct;->a_()V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->h:Lcom/amap/api/mapcore/util/af;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/ct;->j:Lcom/amap/api/mapcore/util/cg;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/amap/api/mapcore/util/cg;->a(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/ct;->setVisible(Z)V

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ct;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/autonavi/amap/mapcore/FPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/ct;->p:Lcom/autonavi/amap/mapcore/FPoint;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/ct;->D:Z

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(II)Z
    .locals 10

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->c()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ct;->p:Lcom/autonavi/amap/mapcore/FPoint;

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ct;->p:Lcom/autonavi/amap/mapcore/FPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget-object v3, p0, Lcom/amap/api/mapcore/util/ct;->p:Lcom/autonavi/amap/mapcore/FPoint;

    iget v3, v3, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-virtual {v0, v2, v3, v1}, Lcom/autonavi/ae/gmap/GLMapState;->map2Win(FFLcom/autonavi/amap/mapcore/IPoint;)V

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ct;->f()I

    move-result v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ct;->g()I

    move-result v2

    iget v3, v1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v4, p0, Lcom/amap/api/mapcore/util/ct;->l:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v4, v0

    iget v5, p0, Lcom/amap/api/mapcore/util/ct;->u:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, v1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v5, p0, Lcom/amap/api/mapcore/util/ct;->m:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v5, v2

    const/high16 v6, 0x3f800000    # 1.0f

    iget v7, p0, Lcom/amap/api/mapcore/util/ct;->v:F

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    sub-int v1, v3, v0

    if-gt v1, p1, :cond_2

    neg-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    if-lt v3, v0, :cond_2

    neg-int v0, v2

    mul-int/lit8 v0, v0, 0x2

    if-lt v4, v0, :cond_2

    sub-int v0, v4, v2

    if-le v0, p2, :cond_3

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->x:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ct;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ct;->t:Ljava/nio/FloatBuffer;

    if-nez v2, :cond_5

    const/16 v2, 0x8

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Lcom/amap/api/mapcore/util/ee;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/mapcore/util/ct;->t:Ljava/nio/FloatBuffer;

    :cond_5
    const/high16 v2, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/amap/api/mapcore/util/ct;->A:F

    sub-float/2addr v2, v5

    float-to-double v6, v2

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v8

    int-to-double v8, v0

    mul-double/2addr v6, v8

    double-to-int v2, v6

    iget-object v5, p0, Lcom/amap/api/mapcore/util/ct;->b:[F

    const/4 v6, 0x0

    add-int v7, v3, v2

    int-to-float v7, v7

    aput v7, v5, v6

    iget-object v5, p0, Lcom/amap/api/mapcore/util/ct;->z:Landroid/graphics/Rect;

    add-int v6, v3, v2

    iput v6, v5, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/amap/api/mapcore/util/ct;->b:[F

    const/4 v6, 0x1

    sub-int v7, p2, v4

    int-to-float v7, v7

    aput v7, v5, v6

    iget-object v5, p0, Lcom/amap/api/mapcore/util/ct;->b:[F

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput v7, v5, v6

    iget-object v5, p0, Lcom/amap/api/mapcore/util/ct;->b:[F

    const/4 v6, 0x3

    add-int v7, v3, v0

    sub-int/2addr v7, v2

    int-to-float v7, v7

    aput v7, v5, v6

    iget-object v5, p0, Lcom/amap/api/mapcore/util/ct;->b:[F

    const/4 v6, 0x4

    sub-int v7, p2, v4

    int-to-float v7, v7

    aput v7, v5, v6

    iget-object v5, p0, Lcom/amap/api/mapcore/util/ct;->z:Landroid/graphics/Rect;

    sub-int v6, v4, v1

    iput v6, v5, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/amap/api/mapcore/util/ct;->b:[F

    const/4 v6, 0x5

    const/4 v7, 0x0

    aput v7, v5, v6

    iget-object v5, p0, Lcom/amap/api/mapcore/util/ct;->b:[F

    const/4 v6, 0x6

    add-int v7, v3, v0

    sub-int/2addr v7, v2

    int-to-float v7, v7

    aput v7, v5, v6

    iget-object v5, p0, Lcom/amap/api/mapcore/util/ct;->z:Landroid/graphics/Rect;

    add-int/2addr v0, v3

    iput v0, v5, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->b:[F

    const/4 v5, 0x7

    sub-int v6, p2, v4

    add-int/2addr v6, v1

    int-to-float v6, v6

    aput v6, v0, v5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->z:Landroid/graphics/Rect;

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->b:[F

    const/16 v5, 0x8

    const/4 v6, 0x0

    aput v6, v0, v5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->b:[F

    const/16 v5, 0x9

    add-int/2addr v2, v3

    int-to-float v2, v2

    aput v2, v0, v5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->b:[F

    const/16 v2, 0xa

    sub-int v3, p2, v4

    add-int/2addr v1, v3

    int-to-float v1, v1

    aput v1, v0, v2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->b:[F

    const/16 v1, 0xb

    const/4 v2, 0x0

    aput v2, v0, v1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->q:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->b:[F

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ee;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ct;->q:Ljava/nio/FloatBuffer;

    :goto_1
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->b:[F

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ct;->q:Ljava/nio/FloatBuffer;

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/ee;->a([FLjava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ct;->q:Ljava/nio/FloatBuffer;

    goto :goto_1

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

.method public a(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/ct;->s:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ct;->j:Lcom/amap/api/mapcore/util/cg;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ct;->z:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/ee;->a(Landroid/graphics/Rect;II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized a_()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/ct;->setVisible(Z)V

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ct;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()V
    .locals 10

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->j:Lcom/amap/api/mapcore/util/cg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->j:Lcom/amap/api/mapcore/util/cg;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cg;->j()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/ct;->setVisible(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/ct;->setVisible(Z)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->j:Lcom/amap/api/mapcore/util/cg;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cg;->h()Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->j:Lcom/amap/api/mapcore/util/cg;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cg;->e()I

    move-result v0

    iget-object v3, p0, Lcom/amap/api/mapcore/util/ct;->j:Lcom/amap/api/mapcore/util/cg;

    invoke-interface {v3}, Lcom/amap/api/mapcore/util/cg;->c()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->j:Lcom/amap/api/mapcore/util/cg;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cg;->f()I

    move-result v0

    iget-object v4, p0, Lcom/amap/api/mapcore/util/ct;->j:Lcom/amap/api/mapcore/util/cg;

    invoke-interface {v4}, Lcom/amap/api/mapcore/util/cg;->d()I

    move-result v4

    add-int/2addr v0, v4

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ct;->j()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/amap/api/mapcore/util/ct;->x:Landroid/graphics/Bitmap;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/amap/api/mapcore/util/ct;->E:Landroid/graphics/Bitmap;

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/amap/api/mapcore/util/ct;->G:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    :cond_3
    iget-object v4, p0, Lcom/amap/api/mapcore/util/ct;->j:Lcom/amap/api/mapcore/util/cg;

    invoke-interface {v4}, Lcom/amap/api/mapcore/util/cg;->getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v4}, Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;->isInfoWindowEnable()Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/ct;->setVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    const/4 v5, 0x1

    :try_start_1
    invoke-virtual {p0, v5}, Lcom/amap/api/mapcore/util/ct;->setVisible(Z)V

    if-eqz v4, :cond_8

    invoke-interface {v4}, Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;->isInfoWindowAutoOverturn()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ct;->t()Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ct;->u()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ct;->e()Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x0

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    :goto_1
    iget-object v7, p0, Lcom/amap/api/mapcore/util/ct;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v7, v4, v5}, Lcom/amap/api/mapcore/util/l;->a(Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;Landroid/graphics/Rect;)I

    move-result v5

    iget-object v7, p0, Lcom/amap/api/mapcore/util/ct;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v7, v4, v6}, Lcom/amap/api/mapcore/util/l;->a(Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;Landroid/graphics/Rect;)I

    move-result v4

    if-lez v5, :cond_7

    if-eqz v4, :cond_5

    if-lez v4, :cond_7

    if-ge v5, v4, :cond_7

    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->j:Lcom/amap/api/mapcore/util/cg;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cg;->f()I

    move-result v0

    iget-object v4, p0, Lcom/amap/api/mapcore/util/ct;->j:Lcom/amap/api/mapcore/util/cg;

    invoke-interface {v4}, Lcom/amap/api/mapcore/util/cg;->d()I

    move-result v4

    add-int/2addr v0, v4

    add-int/2addr v0, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ct;->p()V

    :goto_2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ct;->j:Lcom/amap/api/mapcore/util/cg;

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/cg;->a()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/ct;->a(Lcom/autonavi/amap/mapcore/FPoint;)V

    invoke-virtual {p0, v3, v0}, Lcom/amap/api/mapcore/util/ct;->c(II)V

    goto/16 :goto_0

    :cond_6
    const/4 v7, 0x0

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v2

    neg-int v8, v8

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ct;->q()V

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ct;->j:Lcom/amap/api/mapcore/util/cg;

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/cg;->a()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/ct;->a(Lcom/autonavi/amap/mapcore/FPoint;)V

    invoke-virtual {p0, v3, v0}, Lcom/amap/api/mapcore/util/ct;->c(II)V

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ct;->q()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public b(II)V
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/ct;->s:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->p:Lcom/autonavi/amap/mapcore/FPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->x:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ct;->i()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_2
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/ct;->I:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    :try_start_0
    iget v0, p0, Lcom/amap/api/mapcore/util/ct;->C:I

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    iget v5, p0, Lcom/amap/api/mapcore/util/ct;->C:I

    aput v5, v3, v4

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->x:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/amap/api/mapcore/util/ct;->C:I

    iget-object v3, p0, Lcom/amap/api/mapcore/util/ct;->x:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/amap/api/mapcore/util/ee;->b(ILandroid/graphics/Bitmap;Z)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/ct;->I:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ct;->n()V

    invoke-virtual {p0, p1, p2}, Lcom/amap/api/mapcore/util/ct;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->d:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->d:[F

    int-to-float v3, p1

    int-to-float v5, p2

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, -0x40800000    # -1.0f

    move v4, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    iget v0, p0, Lcom/amap/api/mapcore/util/ct;->C:I

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ct;->q:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/ct;->t:Ljava/nio/FloatBuffer;

    invoke-direct {p0, v0, v2, v3}, Lcom/amap/api/mapcore/util/ct;->a(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/ct;->w:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/ct;->w:Z

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ct;->s()V

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ct;->o()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/ct;->C:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "PopupOverlay"

    const-string v2, "drawMarker"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public declared-synchronized b(Landroid/graphics/Bitmap;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->x:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->x:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->E:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->F:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->G:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->H:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->y:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/ct;->c(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->x:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ct;->y:Landroid/graphics/Bitmap;

    :cond_3
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/ct;->I:Z

    iput-object p1, p0, Lcom/amap/api/mapcore/util/ct;->x:Landroid/graphics/Bitmap;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->x:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/ct;->g(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->y:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/ct;->c(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->x:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ct;->y:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public c(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/ct;->L:Z

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/amap/api/mapcore/util/ct;->n:I

    iput p2, p0, Lcom/amap/api/mapcore/util/ct;->o:I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/amap/api/mapcore/util/ct;->l:I

    iput p2, p0, Lcom/amap/api/mapcore/util/ct;->m:I

    iput p1, p0, Lcom/amap/api/mapcore/util/ct;->n:I

    iput p2, p0, Lcom/amap/api/mapcore/util/ct;->o:I

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public destroy()V
    .locals 3

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/ct;->k:Z

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ct;->remove()V

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ct;->r()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->t:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->t:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ct;->t:Ljava/nio/FloatBuffer;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->q:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->q:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ct;->q:Ljava/nio/FloatBuffer;

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ct;->p:Lcom/autonavi/amap/mapcore/FPoint;

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/util/ct;->C:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "PopupOverlay"

    const-string v2, "realDestroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/ct;->D:Z

    return v0
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

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ct;->getId()Ljava/lang/String;

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

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->r:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "PopupOverlay"

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ct;->r:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getZIndex()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()V
    .locals 2

    new-instance v0, Lcom/amap/api/mapcore/util/ct$a;

    const-string v1, "texture.glsl"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/ct$a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ct;->c:Lcom/amap/api/mapcore/util/ct$a;

    return-void
.end method

.method public hashCodeRemote()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method protected i()V
    .locals 8

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->h:Lcom/amap/api/mapcore/util/af;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->h:Lcom/amap/api/mapcore/util/af;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/af;->c()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_3

    iget-wide v0, p0, Lcom/amap/api/mapcore/util/ct;->f:J

    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/amap/api/mapcore/util/ct;->e:J

    sub-long v6, v4, v6

    cmp-long v0, v6, v0

    if-lez v0, :cond_2

    iget-wide v0, p0, Lcom/amap/api/mapcore/util/ct;->e:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->j:Lcom/amap/api/mapcore/util/cg;

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/ct;->a(Lcom/amap/api/mapcore/util/cg;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iput-wide v4, p0, Lcom/amap/api/mapcore/util/ct;->e:J

    :cond_2
    return-void

    :cond_3
    iget-wide v4, p0, Lcom/amap/api/mapcore/util/ct;->g:J

    cmp-long v4, v0, v4

    if-gtz v4, :cond_0

    iget-wide v0, p0, Lcom/amap/api/mapcore/util/ct;->g:J

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    move-wide v0, v2

    goto :goto_0
.end method

.method public isAboveMaskLayer()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/ct;->s:Z

    return v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/ct;->L:Z

    return v0
.end method

.method protected k()V
    .locals 3

    :try_start_0
    new-instance v1, Lcom/amap/api/maps/model/Marker;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->j:Lcom/amap/api/mapcore/util/cg;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IMarker;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->h:Lcom/amap/api/mapcore/util/af;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->h:Lcom/amap/api/mapcore/util/af;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/af;->a(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/ct;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ct;->h:Lcom/amap/api/mapcore/util/af;

    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore/util/af;->b(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->h:Lcom/amap/api/mapcore/util/af;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/af;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-direct {p0, v2}, Lcom/amap/api/mapcore/util/ct;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/ct;->a(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->h:Lcom/amap/api/mapcore/util/af;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/af;->c(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/ct;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/ct;->d(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->h:Lcom/amap/api/mapcore/util/af;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/af;->d(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/ct;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/ct;->e(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->h:Lcom/amap/api/mapcore/util/af;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/af;->e(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/ct;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/ct;->f(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "PopupOverlay"

    const-string v2, "getInfoWindow"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public remove()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public setAboveMaskLayer(Z)V
    .locals 0

    return-void
.end method

.method public setInfoWindowAnimation(Lcom/amap/api/maps/model/animation/Animation;Lcom/amap/api/maps/model/animation/Animation$AnimationListener;)V
    .locals 0

    return-void
.end method

.method public setInfoWindowAppearAnimation(Lcom/amap/api/maps/model/animation/Animation;)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->K:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->K:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    iget-object v1, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->clone()Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ct;->J:Lcom/autonavi/amap/mapcore/animation/GLAnimation;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "PopupOverlay"

    const-string v2, "setInfoWindowDisappearAnimation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ct;->J:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    goto :goto_0
.end method

.method public setInfoWindowBackColor(I)V
    .locals 0

    return-void
.end method

.method public setInfoWindowBackEnable(Z)V
    .locals 0

    return-void
.end method

.method public setInfoWindowBackScale(FF)V
    .locals 0

    return-void
.end method

.method public setInfoWindowDisappearAnimation(Lcom/amap/api/maps/model/animation/Animation;)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->J:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ct;->J:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    iget-object v1, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->clone()Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ct;->K:Lcom/autonavi/amap/mapcore/animation/GLAnimation;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "PopupOverlay"

    const-string v2, "setInfoWindowDisappearAnimation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ct;->K:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    goto :goto_0
.end method

.method public setInfoWindowMovingAnimation(Lcom/amap/api/maps/model/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/ct;->s:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/ct;->w:Z

    :cond_0
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/ct;->s:Z

    return-void
.end method

.method public setZIndex(F)V
    .locals 0

    return-void
.end method

.method public startAnimation()V
    .locals 0

    return-void
.end method
