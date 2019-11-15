.class public Lcom/amap/api/mapcore/util/do;
.super Ljava/lang/Object;
.source "GLESUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/do$a;,
        Lcom/amap/api/mapcore/util/do$c;,
        Lcom/amap/api/mapcore/util/do$b;
    }
.end annotation


# direct methods
.method private static a(Lcom/amap/api/mapcore/util/cx$d;IILjava/nio/FloatBuffer;FII[F)V
    .locals 7

    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/cx$d;->a()V

    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    const/4 v4, 0x4

    new-array v6, v4, [F

    const/4 v4, 0x0

    aput v1, v6, v4

    const/4 v1, 0x1

    aput v2, v6, v1

    const/4 v1, 0x2

    aput v3, v6, v1

    const/4 v1, 0x3

    aput v0, v6, v1

    invoke-static {p4}, Landroid/opengl/GLES20;->glLineWidth(F)V

    iget v0, p0, Lcom/amap/api/mapcore/util/cx$d;->b:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lcom/amap/api/mapcore/util/cx$d;->b:I

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/amap/api/mapcore/util/cx$d;->c:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v6, v2}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    iget v0, p0, Lcom/amap/api/mapcore/util/cx$d;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p7, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    invoke-static {p1, p5, p6}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget v0, p0, Lcom/amap/api/mapcore/util/cx$d;->b:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    goto :goto_0
.end method

.method public static a(Lcom/amap/api/mapcore/util/cx$d;IILjava/nio/FloatBuffer;FI[F)V
    .locals 8

    const/4 v1, 0x2

    const/4 v5, 0x1

    add-int/lit8 v6, p5, -0x1

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/amap/api/mapcore/util/do;->a(Lcom/amap/api/mapcore/util/cx$d;IILjava/nio/FloatBuffer;FII[F)V

    return-void
.end method

.method public static a(Lcom/amap/api/mapcore/util/cx$d;IILjava/nio/FloatBuffer;FI[FII)V
    .locals 8

    const/4 v1, 0x6

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, p0

    move v2, p1

    move-object v3, p3

    move v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/amap/api/mapcore/util/do;->b(Lcom/amap/api/mapcore/util/cx$d;IILjava/nio/FloatBuffer;FI[F)V

    const/4 v1, 0x2

    const/4 v5, 0x1

    add-int/lit8 v6, p5, -0x1

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/amap/api/mapcore/util/do;->a(Lcom/amap/api/mapcore/util/cx$d;IILjava/nio/FloatBuffer;FII[F)V

    return-void
.end method

.method public static a(Lcom/amap/api/mapcore/util/cx$d;IILjava/nio/FloatBuffer;FLjava/nio/FloatBuffer;II[F)V
    .locals 7

    const/4 v1, 0x4

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, p0

    move v2, p1

    move-object v3, p5

    move v5, p7

    move-object v6, p8

    invoke-static/range {v0 .. v6}, Lcom/amap/api/mapcore/util/do;->b(Lcom/amap/api/mapcore/util/cx$d;IILjava/nio/FloatBuffer;FI[F)V

    const/4 v1, 0x2

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p6

    move-object v6, p8

    invoke-static/range {v0 .. v6}, Lcom/amap/api/mapcore/util/do;->b(Lcom/amap/api/mapcore/util/cx$d;IILjava/nio/FloatBuffer;FI[F)V

    return-void
.end method

.method public static a(Lcom/amap/api/mapcore/util/cx$d;ILjava/nio/FloatBuffer;FI[F)V
    .locals 7

    const/4 v1, 0x3

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/amap/api/mapcore/util/do;->b(Lcom/amap/api/mapcore/util/cx$d;IILjava/nio/FloatBuffer;FI[F)V

    return-void
.end method

.method public static a(Lcom/amap/api/mapcore/util/m;IIIIII)V
    .locals 7

    if-lez p4, :cond_0

    invoke-interface {p0}, Lcom/amap/api/mapcore/util/m;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    :cond_0
    new-instance v0, Lcom/amap/api/mapcore/util/do$b;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/do$b;-><init>()V

    invoke-interface {p0, v0}, Lcom/amap/api/mapcore/util/m;->a(Lcom/amap/api/mapcore/util/dq;)V

    new-instance v0, Lcom/amap/api/mapcore/util/do$a;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/mapcore/util/do$a;-><init>(IIIIII)V

    invoke-interface {p0, v0}, Lcom/amap/api/mapcore/util/m;->a(Lcom/amap/api/mapcore/util/dp;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "amap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method private static b(Lcom/amap/api/mapcore/util/cx$d;IILjava/nio/FloatBuffer;FI[F)V
    .locals 8

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/amap/api/mapcore/util/do;->a(Lcom/amap/api/mapcore/util/cx$d;IILjava/nio/FloatBuffer;FII[F)V

    return-void
.end method

.method public static b(Lcom/amap/api/mapcore/util/cx$d;IILjava/nio/FloatBuffer;FLjava/nio/FloatBuffer;II[F)V
    .locals 7

    const/4 v1, 0x2

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p6

    move-object v6, p8

    invoke-static/range {v0 .. v6}, Lcom/amap/api/mapcore/util/do;->b(Lcom/amap/api/mapcore/util/cx$d;IILjava/nio/FloatBuffer;FI[F)V

    return-void
.end method
