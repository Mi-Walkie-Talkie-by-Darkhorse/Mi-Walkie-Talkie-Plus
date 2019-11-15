.class public Lcom/amap/api/mapcore/util/cw;
.super Ljava/lang/Object;
.source "GLShader.java"


# instance fields
.field private a:Z

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)I
    .locals 1

    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    return v0
.end method

.method public a()V
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/cw;->d:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method

.method protected a(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/cw;->d(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/cw;->d:I

    iget v0, p0, Lcom/amap/api/mapcore/util/cw;->d:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/amap/api/mapcore/util/cw;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/cw;->d:I

    iget v0, p0, Lcom/amap/api/mapcore/util/cw;->d:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;)I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/cw;->d:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    :cond_0
    return v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const v0, 0x8b31

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/mapcore/util/cw;->a(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/cw;->e:I

    const v0, 0x8b30

    invoke-virtual {p0, v0, p2}, Lcom/amap/api/mapcore/util/cw;->a(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/cw;->f:I

    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    iget v1, p0, Lcom/amap/api/mapcore/util/cw;->e:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    iget v1, p0, Lcom/amap/api/mapcore/util/cw;->f:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    return v0
.end method

.method public b()V
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/cw;->d:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/amap/api/mapcore/util/cw;->d:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    :cond_0
    iget v0, p0, Lcom/amap/api/mapcore/util/cw;->e:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/amap/api/mapcore/util/cw;->e:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    :cond_1
    iget v0, p0, Lcom/amap/api/mapcore/util/cw;->f:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/amap/api/mapcore/util/cw;->f:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/cw;->a:Z

    return-void
.end method

.method protected c(Ljava/lang/String;)I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/cw;->d:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    :cond_0
    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cw;->a:Z

    return v0
.end method

.method public d(Ljava/lang/String;)I
    .locals 5

    const/16 v4, 0x24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "amap_sdk_shaders/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/di;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shader file not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_1

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not a shader file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    add-int/lit8 v0, v2, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/amap/api/mapcore/util/cw;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
