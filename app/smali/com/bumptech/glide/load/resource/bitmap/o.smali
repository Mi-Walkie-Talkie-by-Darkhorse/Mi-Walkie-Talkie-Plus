.class public Lcom/bumptech/glide/load/resource/bitmap/o;
.super Ljava/lang/Object;
.source "StreamBitmapDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/o$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/f",
        "<",
        "Ljava/io/InputStream;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/resource/bitmap/k;

.field private final b:Lcom/bumptech/glide/load/engine/a/b;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/resource/bitmap/k;Lcom/bumptech/glide/load/engine/a/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/o;->a:Lcom/bumptech/glide/load/resource/bitmap/k;

    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/o;->b:Lcom/bumptech/glide/load/engine/a/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;IILcom/bumptech/glide/load/e;)Lcom/bumptech/glide/load/engine/q;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II",
            "Lcom/bumptech/glide/load/e;",
            ")",
            "Lcom/bumptech/glide/load/engine/q",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    invoke-static {p1}, Lcom/bumptech/glide/util/c;->a(Ljava/io/InputStream;)Lcom/bumptech/glide/util/c;

    move-result-object v7

    new-instance v1, Lcom/bumptech/glide/util/f;

    invoke-direct {v1, v7}, Lcom/bumptech/glide/util/f;-><init>(Ljava/io/InputStream;)V

    new-instance v5, Lcom/bumptech/glide/load/resource/bitmap/o$a;

    invoke-direct {v5, p1, v7}, Lcom/bumptech/glide/load/resource/bitmap/o$a;-><init>(Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Lcom/bumptech/glide/util/c;)V

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/o;->a:Lcom/bumptech/glide/load/resource/bitmap/k;

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/bumptech/glide/load/resource/bitmap/k;->a(Ljava/io/InputStream;IILcom/bumptech/glide/load/e;Lcom/bumptech/glide/load/resource/bitmap/k$a;)Lcom/bumptech/glide/load/engine/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {v7}, Lcom/bumptech/glide/util/c;->b()V

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->b()V

    :cond_0
    return-object v0

    :cond_1
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/o;->b:Lcom/bumptech/glide/load/engine/a/b;

    invoke-direct {v1, p1, v0}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;-><init>(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/a/b;)V

    const/4 v0, 0x1

    move v6, v0

    move-object p1, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v7}, Lcom/bumptech/glide/util/c;->b()V

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->b()V

    :cond_2
    throw v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;IILcom/bumptech/glide/load/e;)Lcom/bumptech/glide/load/engine/q;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/resource/bitmap/o;->a(Ljava/io/InputStream;IILcom/bumptech/glide/load/e;)Lcom/bumptech/glide/load/engine/q;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/io/InputStream;Lcom/bumptech/glide/load/e;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/o;->a:Lcom/bumptech/glide/load/resource/bitmap/k;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/resource/bitmap/k;->a(Ljava/io/InputStream;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/bumptech/glide/load/e;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/o;->a(Ljava/io/InputStream;Lcom/bumptech/glide/load/e;)Z

    move-result v0

    return v0
.end method
