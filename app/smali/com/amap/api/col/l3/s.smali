.class public final Lcom/amap/api/col/l3/s;
.super Ljava/lang/Object;


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/col/l3/s;->a:I

    iput v0, p0, Lcom/amap/api/col/l3/s;->b:I

    iput v0, p0, Lcom/amap/api/col/l3/s;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/l3/s;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3/s;->e:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/amap/api/col/l3/s;->f:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/amap/api/col/l3/s;->g:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/l3/s;->a:I

    return v0
.end method

.method public final a(I)I
    .locals 0

    if-nez p1, :cond_0

    iget p1, p0, Lcom/amap/api/col/l3/s;->b:I

    return p1

    :cond_0
    iget p1, p0, Lcom/amap/api/col/l3/s;->c:I

    return p1
.end method

.method public final a(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/s;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "amap_sdk_lineTexture.png"

    invoke-static {p1, v0}, Lcom/amap/api/col/l3/em;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/s;->e:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/s;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "amap_sdk_lineDashTexture_square.png"

    invoke-static {p1, v0}, Lcom/amap/api/col/l3/em;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/s;->f:Landroid/graphics/Bitmap;

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/l3/s;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const-string v0, "amap_sdk_lineDashTexture_circle.png"

    invoke-static {p1, v0}, Lcom/amap/api/col/l3/em;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/s;->g:Landroid/graphics/Bitmap;

    :cond_5
    iget-object p1, p0, Lcom/amap/api/col/l3/s;->e:Landroid/graphics/Bitmap;

    invoke-static {p1}, Lcom/amap/api/col/l3/em;->a(Landroid/graphics/Bitmap;)I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3/s;->a:I

    iget-object p1, p0, Lcom/amap/api/col/l3/s;->f:Landroid/graphics/Bitmap;

    invoke-static {p1}, Lcom/amap/api/col/l3/em;->b(Landroid/graphics/Bitmap;)I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3/s;->b:I

    iget-object p1, p0, Lcom/amap/api/col/l3/s;->g:Landroid/graphics/Bitmap;

    invoke-static {p1}, Lcom/amap/api/col/l3/em;->b(Landroid/graphics/Bitmap;)I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3/s;->c:I

    invoke-static {}, Lcom/amap/api/col/l3/em;->a()I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3/s;->d:I

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/l3/s;->d:I

    return v0
.end method

.method public final c()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [I

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

    iget-object v0, p0, Lcom/amap/api/col/l3/s;->f:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/amap/api/col/l3/s;->f:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/s;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/amap/api/col/l3/s;->g:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/s;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/amap/api/col/l3/s;->e:Landroid/graphics/Bitmap;

    :cond_2
    return-void
.end method
