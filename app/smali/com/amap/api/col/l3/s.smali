.class public final Lcom/amap/api/col/l3/s;
.super Ljava/lang/Object;
.source "GLOverlayTextureManager.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Landroid/graphics/Bitmap;

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/amap/api/col/l3/s;->a:I

    .line 3
    iput v0, p0, Lcom/amap/api/col/l3/s;->b:I

    .line 4
    iput v0, p0, Lcom/amap/api/col/l3/s;->c:I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/amap/api/col/l3/s;->d:I

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/amap/api/col/l3/s;->e:Landroid/graphics/Bitmap;

    .line 7
    iput-object v0, p0, Lcom/amap/api/col/l3/s;->f:Landroid/graphics/Bitmap;

    .line 8
    iput-object v0, p0, Lcom/amap/api/col/l3/s;->g:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/amap/api/col/l3/s;->a:I

    return v0
.end method

.method public final a(I)I
    .locals 0

    if-nez p1, :cond_0

    .line 12
    iget p1, p0, Lcom/amap/api/col/l3/s;->b:I

    return p1

    .line 13
    :cond_0
    iget p1, p0, Lcom/amap/api/col/l3/s;->c:I

    return p1
.end method

.method public final a(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/s;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "amap_sdk_lineTexture.png"

    .line 2
    invoke-static {p1, v0}, Lcom/amap/api/col/l3/em;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/s;->e:Landroid/graphics/Bitmap;

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/s;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "amap_sdk_lineDashTexture_square.png"

    .line 4
    invoke-static {p1, v0}, Lcom/amap/api/col/l3/em;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/s;->f:Landroid/graphics/Bitmap;

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/l3/s;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const-string v0, "amap_sdk_lineDashTexture_circle.png"

    .line 6
    invoke-static {p1, v0}, Lcom/amap/api/col/l3/em;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/s;->g:Landroid/graphics/Bitmap;

    .line 7
    :cond_5
    iget-object p1, p0, Lcom/amap/api/col/l3/s;->e:Landroid/graphics/Bitmap;

    invoke-static {p1}, Lcom/amap/api/col/l3/em;->a(Landroid/graphics/Bitmap;)I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3/s;->a:I

    .line 8
    iget-object p1, p0, Lcom/amap/api/col/l3/s;->f:Landroid/graphics/Bitmap;

    invoke-static {p1}, Lcom/amap/api/col/l3/em;->b(Landroid/graphics/Bitmap;)I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3/s;->b:I

    .line 9
    iget-object p1, p0, Lcom/amap/api/col/l3/s;->g:Landroid/graphics/Bitmap;

    invoke-static {p1}, Lcom/amap/api/col/l3/em;->b(Landroid/graphics/Bitmap;)I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3/s;->c:I

    .line 10
    invoke-static {}, Lcom/amap/api/col/l3/em;->a()I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3/s;->d:I

    return-void
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/col/l3/s;->d:I

    return v0
.end method

.method public final c()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 1
    iget v1, p0, Lcom/amap/api/col/l3/s;->a:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/amap/api/col/l3/s;->b:I

    const/4 v3, 0x1

    aput v1, v0, v3

    iget v1, p0, Lcom/amap/api/col/l3/s;->c:I

    const/4 v3, 0x2

    aput v1, v0, v3

    iget v1, p0, Lcom/amap/api/col/l3/s;->d:I

    const/4 v3, 0x3

    aput v1, v0, v3

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/s;->f:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3
    iput-object v1, p0, Lcom/amap/api/col/l3/s;->f:Landroid/graphics/Bitmap;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/s;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 6
    iput-object v1, p0, Lcom/amap/api/col/l3/s;->g:Landroid/graphics/Bitmap;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/s;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 9
    iput-object v1, p0, Lcom/amap/api/col/l3/s;->e:Landroid/graphics/Bitmap;

    :cond_2
    return-void
.end method
