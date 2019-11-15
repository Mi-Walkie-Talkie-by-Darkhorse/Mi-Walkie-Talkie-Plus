.class public Lcom/bumptech/glide/load/resource/d/d;
.super Ljava/lang/Object;
.source "GifDrawableEncoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/g",
        "<",
        "Lcom/bumptech/glide/load/resource/d/c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/e;)Lcom/bumptech/glide/load/EncodeStrategy;
    .locals 1

    sget-object v0, Lcom/bumptech/glide/load/EncodeStrategy;->a:Lcom/bumptech/glide/load/EncodeStrategy;

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/load/engine/q;Ljava/io/File;Lcom/bumptech/glide/load/e;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/q",
            "<",
            "Lcom/bumptech/glide/load/resource/d/c;",
            ">;",
            "Ljava/io/File;",
            "Lcom/bumptech/glide/load/e;",
            ")Z"
        }
    .end annotation

    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/q;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/d/c;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/d/c;->c()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/bumptech/glide/util/a;->a(Ljava/nio/ByteBuffer;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v2, "GifEncoder"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "GifEncoder"

    const-string v3, "Failed to encode GIF drawable data"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/io/File;Lcom/bumptech/glide/load/e;)Z
    .locals 1

    check-cast p1, Lcom/bumptech/glide/load/engine/q;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/d/d;->a(Lcom/bumptech/glide/load/engine/q;Ljava/io/File;Lcom/bumptech/glide/load/e;)Z

    move-result v0

    return v0
.end method
