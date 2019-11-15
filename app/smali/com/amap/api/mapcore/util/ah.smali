.class public Lcom/amap/api/mapcore/util/ah;
.super Ljava/lang/Object;
.source "FakeInstanceMultiPoint.java"


# static fields
.field public static a:I


# instance fields
.field b:[F

.field c:I

.field d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Lcom/amap/api/maps/model/BitmapDescriptor;

.field private i:Ljava/nio/FloatBuffer;

.field private j:Ljava/nio/FloatBuffer;

.field private k:Ljava/nio/ShortBuffer;

.field private l:I

.field private m:Lcom/amap/api/mapcore/util/cx$a;

.field private n:Lcom/amap/api/mapcore/util/cx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc8

    sput v0, Lcom/amap/api/mapcore/util/ah;->a:I

    return-void
.end method

.method public constructor <init>([FLcom/amap/api/mapcore/util/aj;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lcom/amap/api/mapcore/util/ah;->e:I

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/ah;->f:Z

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/ah;->g:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ah;->b:[F

    iput v1, p0, Lcom/amap/api/mapcore/util/ah;->l:I

    iput v1, p0, Lcom/amap/api/mapcore/util/ah;->c:I

    iput v1, p0, Lcom/amap/api/mapcore/util/ah;->d:I

    iput-object p1, p0, Lcom/amap/api/mapcore/util/ah;->b:[F

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 6

    const v5, 0x47012f00    # 33071.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0xde1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/amap/api/mapcore/util/ah;->l:I

    if-nez v0, :cond_2

    new-array v0, v4, [I

    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v0, v0, v3

    iput v0, p0, Lcom/amap/api/mapcore/util/ah;->l:I

    :cond_2
    iget v0, p0, Lcom/amap/api/mapcore/util/ah;->l:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amap/api/mapcore/util/ah;->l:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2801

    const/high16 v1, 0x46180000    # 9728.0f

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2800

    const v1, 0x46180400    # 9729.0f

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2802

    invoke-static {v2, v0, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2803

    invoke-static {v2, v0, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v2, v3, p1, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    iget v0, p0, Lcom/amap/api/mapcore/util/ah;->l:I

    if-eqz v0, :cond_0

    iput-boolean v4, p0, Lcom/amap/api/mapcore/util/ah;->g:Z

    goto :goto_0
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .locals 5

    const-class v1, Lcom/amap/api/mapcore/util/ah;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v2, "amap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": glError "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": glError "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    monitor-exit v1

    return-void
.end method

.method private a([F)V
    .locals 8

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ah;->i:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_1

    array-length v0, p1

    sget v2, Lcom/amap/api/mapcore/util/ah;->a:I

    mul-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ah;->i:Ljava/nio/FloatBuffer;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ah;->i:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    move v0, v1

    :goto_1
    sget v2, Lcom/amap/api/mapcore/util/ah;->a:I

    if-ge v0, v2, :cond_4

    array-length v4, p1

    move v2, v1

    move v3, v1

    :goto_2
    if-ge v2, v4, :cond_3

    aget v5, p1, v2

    iget v6, p0, Lcom/amap/api/mapcore/util/ah;->e:I

    rem-int v6, v3, v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    iget-object v5, p0, Lcom/amap/api/mapcore/util/ah;->i:Ljava/nio/FloatBuffer;

    int-to-float v6, v0

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    :goto_3
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iget-object v6, p0, Lcom/amap/api/mapcore/util/ah;->i:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ah;->i:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ah;->k:Ljava/nio/ShortBuffer;

    if-nez v0, :cond_6

    sget v0, Lcom/amap/api/mapcore/util/ah;->a:I

    mul-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ah;->k:Ljava/nio/ShortBuffer;

    sget v0, Lcom/amap/api/mapcore/util/ah;->a:I

    mul-int/lit8 v0, v0, 0x6

    new-array v0, v0, [S

    :goto_4
    sget v2, Lcom/amap/api/mapcore/util/ah;->a:I

    if-ge v1, v2, :cond_5

    mul-int/lit8 v2, v1, 0x6

    add-int/lit8 v2, v2, 0x0

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x0

    int-to-short v3, v3

    aput-short v3, v0, v2

    mul-int/lit8 v2, v1, 0x6

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x1

    int-to-short v3, v3

    aput-short v3, v0, v2

    mul-int/lit8 v2, v1, 0x6

    add-int/lit8 v2, v2, 0x2

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x2

    int-to-short v3, v3

    aput-short v3, v0, v2

    mul-int/lit8 v2, v1, 0x6

    add-int/lit8 v2, v2, 0x3

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x0

    int-to-short v3, v3

    aput-short v3, v0, v2

    mul-int/lit8 v2, v1, 0x6

    add-int/lit8 v2, v2, 0x4

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x2

    int-to-short v3, v3

    aput-short v3, v0, v2

    mul-int/lit8 v2, v1, 0x6

    add-int/lit8 v2, v2, 0x5

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x3

    int-to-short v3, v3

    aput-short v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ah;->k:Ljava/nio/ShortBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ah;->k:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/ah;->f:Z

    goto/16 :goto_0
.end method

.method private d()V
    .locals 6

    const v5, 0x88e4

    const v4, 0x8893

    const v3, 0x8892

    const/4 v2, 0x2

    const/4 v1, 0x0

    iget v0, p0, Lcom/amap/api/mapcore/util/ah;->c:I

    if-nez v0, :cond_0

    new-array v0, v2, [I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    aget v1, v0, v1

    iput v1, p0, Lcom/amap/api/mapcore/util/ah;->c:I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/ah;->d:I

    iget v0, p0, Lcom/amap/api/mapcore/util/ah;->c:I

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ah;->i:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->limit()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ah;->i:Ljava/nio/FloatBuffer;

    invoke-static {v3, v0, v1, v5}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    iget v0, p0, Lcom/amap/api/mapcore/util/ah;->d:I

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    sget v0, Lcom/amap/api/mapcore/util/ah;->a:I

    mul-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ah;->k:Ljava/nio/ShortBuffer;

    invoke-static {v4, v0, v1, v5}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    const-string v0, "bindVbo"

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ah;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ah;->i:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ah;->i:Ljava/nio/FloatBuffer;

    :cond_0
    return-void
.end method

.method private e()V
    .locals 3

    const/4 v2, 0x4

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ah;->n:Lcom/amap/api/mapcore/util/cx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ah;->n:Lcom/amap/api/mapcore/util/cx;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/cx;->a(I)Lcom/amap/api/mapcore/util/cw;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/cx$a;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ah;->m:Lcom/amap/api/mapcore/util/cx$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    sput v0, Lcom/amap/api/mapcore/util/ah;->a:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ah;->n:Lcom/amap/api/mapcore/util/cx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ah;->n:Lcom/amap/api/mapcore/util/cx;

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore/util/cx;->a(I)Lcom/amap/api/mapcore/util/cw;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/cx$a;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ah;->m:Lcom/amap/api/mapcore/util/cx$a;

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ah;->b:[F

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/ah;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ah;->b:[F

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/ah;->a([F)V

    :cond_0
    return-void
.end method

.method public a(Lcom/amap/api/mapcore/util/cx;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/ah;->n:Lcom/amap/api/mapcore/util/cx;

    return-void
.end method

.method public a(Lcom/amap/api/maps/model/BitmapDescriptor;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/ah;->h:Lcom/amap/api/maps/model/BitmapDescriptor;

    return-void
.end method

.method public a([F[F[FFFFFI)V
    .locals 6

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/ah;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ah;->h:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ah;->h:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/ah;->a(Landroid/graphics/Bitmap;)V

    :cond_0
    iget v0, p0, Lcom/amap/api/mapcore/util/ah;->l:I

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ah;->m:Lcom/amap/api/mapcore/util/cx$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ah;->m:Lcom/amap/api/mapcore/util/cx$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/cx$a;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ah;->e()V

    :cond_3
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ah;->d()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ah;->m:Lcom/amap/api/mapcore/util/cx$a;

    iget v0, v0, Lcom/amap/api/mapcore/util/cx$a;->d:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ah;->m:Lcom/amap/api/mapcore/util/cx$a;

    iget v0, v0, Lcom/amap/api/mapcore/util/cx$a;->j:I

    invoke-static {v0, p4, p5, p6, p7}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ah;->m:Lcom/amap/api/mapcore/util/cx$a;

    iget v0, v0, Lcom/amap/api/mapcore/util/cx$a;->i:I

    const/4 v1, 0x0

    invoke-static {v0, p8, p3, v1}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glBlendColor(FFFF)V

    const/16 v0, 0xde1

    iget v1, p0, Lcom/amap/api/mapcore/util/ah;->l:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ah;->m:Lcom/amap/api/mapcore/util/cx$a;

    iget v0, v0, Lcom/amap/api/mapcore/util/cx$a;->c:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const v0, 0x8892

    iget v1, p0, Lcom/amap/api/mapcore/util/ah;->c:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ah;->m:Lcom/amap/api/mapcore/util/cx$a;

    iget v0, v0, Lcom/amap/api/mapcore/util/cx$a;->c:I

    const/4 v1, 0x4

    const/16 v2, 0x1406

    const/4 v3, 0x0

    iget v4, p0, Lcom/amap/api/mapcore/util/ah;->e:I

    mul-int/lit8 v4, v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ah;->m:Lcom/amap/api/mapcore/util/cx$a;

    iget v0, v0, Lcom/amap/api/mapcore/util/cx$a;->h:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ah;->m:Lcom/amap/api/mapcore/util/cx$a;

    iget v0, v0, Lcom/amap/api/mapcore/util/cx$a;->h:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    iget v4, p0, Lcom/amap/api/mapcore/util/ah;->e:I

    mul-int/lit8 v4, v4, 0x4

    const/16 v5, 0x10

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ah;->m:Lcom/amap/api/mapcore/util/cx$a;

    iget v0, v0, Lcom/amap/api/mapcore/util/cx$a;->g:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ah;->m:Lcom/amap/api/mapcore/util/cx$a;

    iget v0, v0, Lcom/amap/api/mapcore/util/cx$a;->k:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const v0, 0x8893

    iget v1, p0, Lcom/amap/api/mapcore/util/ah;->d:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const/4 v0, 0x4

    mul-int/lit8 v1, p8, 0x6

    const/16 v2, 0x1403

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    const/16 v0, 0xde1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const v0, 0x8892

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ah;->m:Lcom/amap/api/mapcore/util/cx$a;

    iget v0, v0, Lcom/amap/api/mapcore/util/cx$a;->c:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ah;->m:Lcom/amap/api/mapcore/util/cx$a;

    iget v0, v0, Lcom/amap/api/mapcore/util/cx$a;->h:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    goto/16 :goto_0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/ah;->f:Z

    return v0
.end method

.method public c()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ah;->i:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ah;->i:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ah;->j:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ah;->j:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ah;->k:Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ah;->k:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ah;->h:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_3

    iput-object v4, p0, Lcom/amap/api/mapcore/util/ah;->h:Lcom/amap/api/maps/model/BitmapDescriptor;

    :cond_3
    new-array v0, v5, [I

    iget v1, p0, Lcom/amap/api/mapcore/util/ah;->c:I

    aput v1, v0, v2

    iget v1, p0, Lcom/amap/api/mapcore/util/ah;->d:I

    aput v1, v0, v3

    invoke-static {v5, v0, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    iget v0, p0, Lcom/amap/api/mapcore/util/ah;->l:I

    if-eqz v0, :cond_4

    new-array v0, v3, [I

    iget v1, p0, Lcom/amap/api/mapcore/util/ah;->l:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    :cond_4
    iput v2, p0, Lcom/amap/api/mapcore/util/ah;->c:I

    iput v2, p0, Lcom/amap/api/mapcore/util/ah;->d:I

    iput-object v4, p0, Lcom/amap/api/mapcore/util/ah;->b:[F

    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/ah;->f:Z

    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/ah;->g:Z

    iput v2, p0, Lcom/amap/api/mapcore/util/ah;->c:I

    iput v2, p0, Lcom/amap/api/mapcore/util/ah;->d:I

    iput-object v4, p0, Lcom/amap/api/mapcore/util/ah;->n:Lcom/amap/api/mapcore/util/cx;

    return-void
.end method
