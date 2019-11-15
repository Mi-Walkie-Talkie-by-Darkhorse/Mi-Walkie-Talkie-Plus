.class public Lcom/amap/api/mapcore/util/r;
.super Ljava/lang/Object;
.source "MaskLayer.java"


# instance fields
.field public a:Ljava/nio/FloatBuffer;

.field public b:Ljava/nio/ShortBuffer;

.field c:[F

.field d:[S

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:Lcom/autonavi/amap/mapcore/animation/GLAlphaAnimation;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/amap/api/mapcore/util/r;->e:F

    iput v0, p0, Lcom/amap/api/mapcore/util/r;->f:F

    iput v0, p0, Lcom/amap/api/mapcore/util/r;->g:F

    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/amap/api/mapcore/util/r;->h:F

    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/r;->c:[F

    const/4 v0, 0x6

    new-array v0, v0, [S

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/amap/api/mapcore/util/r;->d:[S

    iget-object v0, p0, Lcom/amap/api/mapcore/util/r;->d:[S

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/r;->b:Ljava/nio/ShortBuffer;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/r;->b:Ljava/nio/ShortBuffer;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/r;->d:[S

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/r;->b:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/r;->c:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/r;->a:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/r;->a:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/r;->c:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/r;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 2
        0x0s
        0x1s
        0x3s
        0x0s
        0x3s
        0x2s
    .end array-data
.end method


# virtual methods
.method public a(IIII)V
    .locals 2

    const/high16 v1, 0x437f0000    # 255.0f

    int-to-float v0, p1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/r;->e:F

    int-to-float v0, p2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/r;->f:F

    int-to-float v0, p3

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/r;->g:F

    int-to-float v0, p4

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/r;->h:F

    return-void
.end method

.method public a(Lcom/autonavi/amap/mapcore/animation/GLAlphaAnimation;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/r;->i:Lcom/autonavi/amap/mapcore/animation/GLAlphaAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/r;->i:Lcom/autonavi/amap/mapcore/animation/GLAlphaAnimation;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAlphaAnimation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/r;->i:Lcom/autonavi/amap/mapcore/animation/GLAlphaAnimation;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAlphaAnimation;->cancel()V

    :cond_0
    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/r;->i:Lcom/autonavi/amap/mapcore/animation/GLAlphaAnimation;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/r;->i:Lcom/autonavi/amap/mapcore/animation/GLAlphaAnimation;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAlphaAnimation;->start()V

    goto :goto_0
.end method
