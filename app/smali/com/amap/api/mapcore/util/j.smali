.class public Lcom/amap/api/mapcore/util/j;
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
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/amap/api/mapcore/util/j;->a:I

    iput v0, p0, Lcom/amap/api/mapcore/util/j;->b:I

    iput v0, p0, Lcom/amap/api/mapcore/util/j;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/util/j;->d:I

    iput-object v1, p0, Lcom/amap/api/mapcore/util/j;->e:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/j;->f:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/j;->g:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/j;->a:I

    return v0
.end method

.method public a(I)I
    .locals 1

    if-nez p1, :cond_0

    iget v0, p0, Lcom/amap/api/mapcore/util/j;->b:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/amap/api/mapcore/util/j;->c:I

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/j;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/j;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "amap_sdk_lineTexture.png"

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/ee;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/j;->e:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/j;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/j;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "amap_sdk_lineDashTexture_square.png"

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/ee;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/j;->f:Landroid/graphics/Bitmap;

    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/j;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/j;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const-string v0, "amap_sdk_lineDashTexture_circle.png"

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/ee;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/j;->g:Landroid/graphics/Bitmap;

    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/j;->e:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ee;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/j;->a:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/j;->f:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/ee;->a(Landroid/graphics/Bitmap;Z)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/j;->b:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/j;->g:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/ee;->a(Landroid/graphics/Bitmap;Z)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/j;->c:I

    const/16 v0, 0x200

    const/16 v1, 0x400

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/ee;->a(II)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/j;->d:I

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/j;->d:I

    return v0
.end method

.method public c()V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [I

    iget v1, p0, Lcom/amap/api/mapcore/util/j;->a:I

    aput v1, v0, v3

    const/4 v1, 0x1

    iget v2, p0, Lcom/amap/api/mapcore/util/j;->b:I

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/amap/api/mapcore/util/j;->c:I

    aput v2, v0, v1

    iget v1, p0, Lcom/amap/api/mapcore/util/j;->d:I

    aput v1, v0, v4

    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return-void
.end method

.method public d()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/j;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/j;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/j;->f:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/j;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/j;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/j;->g:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/j;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/j;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/j;->e:Landroid/graphics/Bitmap;

    :cond_2
    return-void
.end method
