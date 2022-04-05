.class public final Lcom/amap/api/col/l3/aq;
.super Ljava/lang/Object;


# static fields
.field public static a:I = 0xc8


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

.field private m:Lcom/amap/api/col/l3/dg$a;

.field private n:Lcom/amap/api/col/l3/dg;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>([F)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lcom/amap/api/col/l3/aq;->e:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3/aq;->f:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3/aq;->g:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amap/api/col/l3/aq;->b:[F

    iput v0, p0, Lcom/amap/api/col/l3/aq;->l:I

    iput v0, p0, Lcom/amap/api/col/l3/aq;->c:I

    iput v0, p0, Lcom/amap/api/col/l3/aq;->d:I

    iput-object p1, p0, Lcom/amap/api/col/l3/aq;->b:[F

    return-void
.end method

.method private static declared-synchronized a(Ljava/lang/String;)V
    .locals 4

    const-class v0, Lcom/amap/api/col/l3/aq;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": glError "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 9

    iget-object v0, p0, Lcom/amap/api/col/l3/aq;->b:[F

    if-eqz v0, :cond_6

    iget-boolean v1, p0, Lcom/amap/api/col/l3/aq;->f:Z

    if-nez v1, :cond_6

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/amap/api/col/l3/aq;->i:Ljava/nio/FloatBuffer;

    if-nez v1, :cond_0

    array-length v1, v0

    sget v2, Lcom/amap/api/col/l3/aq;->a:I

    mul-int v1, v1, v2

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/col/l3/aq;->i:Ljava/nio/FloatBuffer;

    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/l3/aq;->i:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    sget v3, Lcom/amap/api/col/l3/aq;->a:I

    const/4 v4, 0x3

    if-ge v2, v3, :cond_3

    array-length v3, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, v3, :cond_2

    aget v7, v0, v5

    iget v8, p0, Lcom/amap/api/col/l3/aq;->e:I

    rem-int v8, v6, v8

    if-ne v8, v4, :cond_1

    iget-object v7, p0, Lcom/amap/api/col/l3/aq;->i:Ljava/nio/FloatBuffer;

    int-to-float v8, v2

    invoke-virtual {v7, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_2

    :cond_1
    iget-object v8, p0, Lcom/amap/api/col/l3/aq;->i:Ljava/nio/FloatBuffer;

    invoke-virtual {v8, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    :goto_2
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/l3/aq;->i:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/amap/api/col/l3/aq;->k:Ljava/nio/ShortBuffer;

    if-nez v0, :cond_5

    sget v0, Lcom/amap/api/col/l3/aq;->a:I

    mul-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/aq;->k:Ljava/nio/ShortBuffer;

    sget v0, Lcom/amap/api/col/l3/aq;->a:I

    mul-int/lit8 v0, v0, 0x6

    new-array v0, v0, [S

    :goto_3
    sget v2, Lcom/amap/api/col/l3/aq;->a:I

    if-ge v1, v2, :cond_4

    mul-int/lit8 v2, v1, 0x6

    add-int/lit8 v3, v2, 0x0

    mul-int/lit8 v5, v1, 0x4

    add-int/lit8 v6, v5, 0x0

    int-to-short v6, v6

    aput-short v6, v0, v3

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v7, v5, 0x1

    int-to-short v7, v7

    aput-short v7, v0, v3

    add-int/lit8 v3, v2, 0x2

    add-int/lit8 v7, v5, 0x2

    int-to-short v7, v7

    aput-short v7, v0, v3

    add-int/lit8 v3, v2, 0x3

    aput-short v6, v0, v3

    add-int/lit8 v3, v2, 0x4

    aput-short v7, v0, v3

    add-int/lit8 v2, v2, 0x5

    add-int/2addr v5, v4

    int-to-short v3, v5

    aput-short v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/amap/api/col/l3/aq;->k:Ljava/nio/ShortBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    iget-object v0, p0, Lcom/amap/api/col/l3/aq;->k:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3/aq;->f:Z

    :cond_6
    return-void
.end method

.method public final a(Lcom/amap/api/col/l3/dg;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3/aq;->n:Lcom/amap/api/col/l3/dg;

    return-void
.end method

.method public final a(Lcom/amap/api/maps/model/BitmapDescriptor;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3/aq;->h:Lcom/amap/api/maps/model/BitmapDescriptor;

    return-void
.end method

.method public final a([F[F[FFFFFI)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p8

    iget-boolean v2, v0, Lcom/amap/api/col/l3/aq;->g:Z

    const/4 v3, 0x1

    const/16 v4, 0xde1

    const/4 v5, 0x0

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/amap/api/col/l3/aq;->h:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v6, v0, Lcom/amap/api/col/l3/aq;->l:I

    if-nez v6, :cond_0

    new-array v6, v3, [I

    invoke-static {v3, v6, v5}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v6, v6, v5

    iput v6, v0, Lcom/amap/api/col/l3/aq;->l:I

    :cond_0
    iget v6, v0, Lcom/amap/api/col/l3/aq;->l:I

    if-eqz v6, :cond_1

    invoke-static {v4, v6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v6, 0x2801

    const/high16 v7, 0x46180000    # 9728.0f

    invoke-static {v4, v6, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v6, 0x2800

    const v7, 0x46180400    # 9729.0f

    invoke-static {v4, v6, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v6, 0x2802

    const v7, 0x47012f00    # 33071.0f

    invoke-static {v4, v6, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v6, 0x2803

    invoke-static {v4, v6, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v4, v5, v2, v5}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    iget v2, v0, Lcom/amap/api/col/l3/aq;->l:I

    if-eqz v2, :cond_1

    iput-boolean v3, v0, Lcom/amap/api/col/l3/aq;->g:Z

    :cond_1
    iget v2, v0, Lcom/amap/api/col/l3/aq;->l:I

    if-nez v2, :cond_2

    return-void

    :cond_2
    iget-object v2, v0, Lcom/amap/api/col/l3/aq;->m:Lcom/amap/api/col/l3/dg$a;

    const/4 v6, 0x4

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/amap/api/col/l3/df;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    :try_start_0
    iget-object v2, v0, Lcom/amap/api/col/l3/aq;->n:Lcom/amap/api/col/l3/dg;

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/amap/api/col/l3/aq;->n:Lcom/amap/api/col/l3/dg;

    invoke-virtual {v2, v6}, Lcom/amap/api/col/l3/dg;->a(I)Lcom/amap/api/col/l3/df;

    move-result-object v2

    check-cast v2, Lcom/amap/api/col/l3/dg$a;

    iput-object v2, v0, Lcom/amap/api/col/l3/aq;->m:Lcom/amap/api/col/l3/dg$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    sput v3, Lcom/amap/api/col/l3/aq;->a:I

    iget-object v2, v0, Lcom/amap/api/col/l3/aq;->n:Lcom/amap/api/col/l3/dg;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v6}, Lcom/amap/api/col/l3/dg;->a(I)Lcom/amap/api/col/l3/df;

    move-result-object v2

    check-cast v2, Lcom/amap/api/col/l3/dg$a;

    iput-object v2, v0, Lcom/amap/api/col/l3/aq;->m:Lcom/amap/api/col/l3/dg$a;

    :cond_4
    :goto_0
    iget v2, v0, Lcom/amap/api/col/l3/aq;->c:I

    const v7, 0x8893

    const v8, 0x8892

    if-nez v2, :cond_5

    const/4 v2, 0x2

    new-array v9, v2, [I

    invoke-static {v2, v9, v5}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    aget v10, v9, v5

    iput v10, v0, Lcom/amap/api/col/l3/aq;->c:I

    aget v9, v9, v3

    iput v9, v0, Lcom/amap/api/col/l3/aq;->d:I

    invoke-static {v8, v10}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget-object v9, v0, Lcom/amap/api/col/l3/aq;->i:Ljava/nio/FloatBuffer;

    invoke-virtual {v9}, Ljava/nio/FloatBuffer;->limit()I

    move-result v9

    mul-int/lit8 v9, v9, 0x4

    iget-object v10, v0, Lcom/amap/api/col/l3/aq;->i:Ljava/nio/FloatBuffer;

    const v11, 0x88e4

    invoke-static {v8, v9, v10, v11}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    iget v9, v0, Lcom/amap/api/col/l3/aq;->d:I

    invoke-static {v7, v9}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    sget v9, Lcom/amap/api/col/l3/aq;->a:I

    mul-int/lit8 v9, v9, 0x6

    mul-int/lit8 v9, v9, 0x2

    iget-object v2, v0, Lcom/amap/api/col/l3/aq;->k:Ljava/nio/ShortBuffer;

    invoke-static {v7, v9, v2, v11}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    const-string v2, "bindVbo"

    invoke-static {v2}, Lcom/amap/api/col/l3/aq;->a(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/amap/api/col/l3/aq;->i:Ljava/nio/FloatBuffer;

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/amap/api/col/l3/aq;->i:Ljava/nio/FloatBuffer;

    :cond_5
    iget-object v2, v0, Lcom/amap/api/col/l3/aq;->m:Lcom/amap/api/col/l3/dg$a;

    iget v2, v2, Lcom/amap/api/col/l3/df;->d:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v2, v0, Lcom/amap/api/col/l3/aq;->m:Lcom/amap/api/col/l3/dg$a;

    iget v2, v2, Lcom/amap/api/col/l3/dg$a;->j:I

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    invoke-static {v2, v9, v10, v11, v12}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    iget-object v2, v0, Lcom/amap/api/col/l3/aq;->m:Lcom/amap/api/col/l3/dg$a;

    iget v2, v2, Lcom/amap/api/col/l3/dg$a;->i:I

    move-object/from16 v9, p3

    invoke-static {v2, v1, v9, v5}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    const/16 v2, 0xb71

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisable(I)V

    const/16 v2, 0xbe2

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v2, 0x302

    const/16 v9, 0x303

    invoke-static {v2, v9}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v2, v2, v2}, Landroid/opengl/GLES20;->glBlendColor(FFFF)V

    iget v2, v0, Lcom/amap/api/col/l3/aq;->l:I

    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v2, v0, Lcom/amap/api/col/l3/aq;->m:Lcom/amap/api/col/l3/dg$a;

    iget v2, v2, Lcom/amap/api/col/l3/dg$a;->c:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v2, v0, Lcom/amap/api/col/l3/aq;->c:I

    invoke-static {v8, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget-object v2, v0, Lcom/amap/api/col/l3/aq;->m:Lcom/amap/api/col/l3/dg$a;

    iget v9, v2, Lcom/amap/api/col/l3/dg$a;->c:I

    const/4 v10, 0x4

    const/16 v11, 0x1406

    const/4 v12, 0x0

    iget v2, v0, Lcom/amap/api/col/l3/aq;->e:I

    mul-int/lit8 v13, v2, 0x4

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    iget-object v2, v0, Lcom/amap/api/col/l3/aq;->m:Lcom/amap/api/col/l3/dg$a;

    iget v2, v2, Lcom/amap/api/col/l3/dg$a;->h:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v2, v0, Lcom/amap/api/col/l3/aq;->m:Lcom/amap/api/col/l3/dg$a;

    iget v9, v2, Lcom/amap/api/col/l3/dg$a;->h:I

    const/4 v10, 0x2

    iget v2, v0, Lcom/amap/api/col/l3/aq;->e:I

    mul-int/lit8 v13, v2, 0x4

    const/16 v14, 0x10

    invoke-static/range {v9 .. v14}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    iget-object v2, v0, Lcom/amap/api/col/l3/aq;->m:Lcom/amap/api/col/l3/dg$a;

    iget v2, v2, Lcom/amap/api/col/l3/dg$a;->g:I

    move-object/from16 v9, p1

    invoke-static {v2, v3, v5, v9, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object v2, v0, Lcom/amap/api/col/l3/aq;->m:Lcom/amap/api/col/l3/dg$a;

    iget v2, v2, Lcom/amap/api/col/l3/dg$a;->k:I

    move-object/from16 v9, p2

    invoke-static {v2, v3, v5, v9, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v2, v0, Lcom/amap/api/col/l3/aq;->d:I

    invoke-static {v7, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    mul-int/lit8 v1, v1, 0x6

    const/16 v2, 0x1403

    invoke-static {v6, v1, v2, v5}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v8, v5}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget-object v1, v0, Lcom/amap/api/col/l3/aq;->m:Lcom/amap/api/col/l3/dg$a;

    iget v1, v1, Lcom/amap/api/col/l3/dg$a;->c:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget-object v1, v0, Lcom/amap/api/col/l3/aq;->m:Lcom/amap/api/col/l3/dg$a;

    iget v1, v1, Lcom/amap/api/col/l3/dg$a;->h:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {v5}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3/aq;->f:Z

    return v0
.end method

.method public final c()V
    .locals 6

    iget-object v0, p0, Lcom/amap/api/col/l3/aq;->i:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/aq;->j:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/aq;->k:Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3/aq;->h:Lcom/amap/api/maps/model/BitmapDescriptor;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iput-object v1, p0, Lcom/amap/api/col/l3/aq;->h:Lcom/amap/api/maps/model/BitmapDescriptor;

    :cond_3
    const/4 v0, 0x2

    new-array v2, v0, [I

    iget v3, p0, Lcom/amap/api/col/l3/aq;->c:I

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p0, Lcom/amap/api/col/l3/aq;->d:I

    const/4 v5, 0x1

    aput v3, v2, v5

    invoke-static {v0, v2, v4}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    iget v0, p0, Lcom/amap/api/col/l3/aq;->l:I

    if-eqz v0, :cond_4

    new-array v2, v5, [I

    aput v0, v2, v4

    invoke-static {v5, v2, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    :cond_4
    iput v4, p0, Lcom/amap/api/col/l3/aq;->c:I

    iput v4, p0, Lcom/amap/api/col/l3/aq;->d:I

    iput-object v1, p0, Lcom/amap/api/col/l3/aq;->b:[F

    iput-boolean v4, p0, Lcom/amap/api/col/l3/aq;->f:Z

    iput-boolean v4, p0, Lcom/amap/api/col/l3/aq;->g:Z

    iput v4, p0, Lcom/amap/api/col/l3/aq;->c:I

    iput v4, p0, Lcom/amap/api/col/l3/aq;->d:I

    iput-object v1, p0, Lcom/amap/api/col/l3/aq;->n:Lcom/amap/api/col/l3/dg;

    return-void
.end method
