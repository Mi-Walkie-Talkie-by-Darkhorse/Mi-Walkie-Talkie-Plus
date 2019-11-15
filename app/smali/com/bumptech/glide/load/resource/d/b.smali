.class public final Lcom/bumptech/glide/load/resource/d/b;
.super Ljava/lang/Object;
.source "GifBitmapProvider.java"

# interfaces
.implements Lcom/bumptech/glide/gifdecoder/GifDecoder$a;


# instance fields
.field private final a:Lcom/bumptech/glide/load/engine/a/e;

.field private final b:Lcom/bumptech/glide/load/engine/a/b;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/engine/a/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/d/b;->a:Lcom/bumptech/glide/load/engine/a/e;

    iput-object p2, p0, Lcom/bumptech/glide/load/resource/d/b;->b:Lcom/bumptech/glide/load/engine/a/b;

    return-void
.end method


# virtual methods
.method public a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/b;->a:Lcom/bumptech/glide/load/engine/a/e;

    invoke-interface {v0, p1, p2, p3}, Lcom/bumptech/glide/load/engine/a/e;->b(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/b;->a:Lcom/bumptech/glide/load/engine/a/e;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/a/e;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public a([B)V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/b;->b:Lcom/bumptech/glide/load/engine/a/b;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/b;->b:Lcom/bumptech/glide/load/engine/a/b;

    const-class v1, [B

    invoke-interface {v0, p1, v1}, Lcom/bumptech/glide/load/engine/a/b;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public a([I)V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/b;->b:Lcom/bumptech/glide/load/engine/a/b;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/b;->b:Lcom/bumptech/glide/load/engine/a/b;

    const-class v1, [I

    invoke-interface {v0, p1, v1}, Lcom/bumptech/glide/load/engine/a/b;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public a(I)[B
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/b;->b:Lcom/bumptech/glide/load/engine/a/b;

    if-nez v0, :cond_0

    new-array v0, p1, [B

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/b;->b:Lcom/bumptech/glide/load/engine/a/b;

    const-class v1, [B

    invoke-interface {v0, p1, v1}, Lcom/bumptech/glide/load/engine/a/b;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0
.end method

.method public b(I)[I
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/b;->b:Lcom/bumptech/glide/load/engine/a/b;

    if-nez v0, :cond_0

    new-array v0, p1, [I

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/b;->b:Lcom/bumptech/glide/load/engine/a/b;

    const-class v1, [I

    invoke-interface {v0, p1, v1}, Lcom/bumptech/glide/load/engine/a/b;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_0
.end method
