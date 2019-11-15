.class public Lcom/bumptech/glide/load/resource/bitmap/g;
.super Ljava/lang/Object;
.source "ByteBufferBitmapDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/f",
        "<",
        "Ljava/nio/ByteBuffer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/resource/bitmap/k;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/resource/bitmap/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/g;->a:Lcom/bumptech/glide/load/resource/bitmap/k;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;IILcom/bumptech/glide/load/e;)Lcom/bumptech/glide/load/engine/q;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/resource/bitmap/g;->a(Ljava/nio/ByteBuffer;IILcom/bumptech/glide/load/e;)Lcom/bumptech/glide/load/engine/q;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/nio/ByteBuffer;IILcom/bumptech/glide/load/e;)Lcom/bumptech/glide/load/engine/q;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
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

    invoke-static {p1}, Lcom/bumptech/glide/util/a;->b(Ljava/nio/ByteBuffer;)Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/g;->a:Lcom/bumptech/glide/load/resource/bitmap/k;

    invoke-virtual {v1, v0, p2, p3, p4}, Lcom/bumptech/glide/load/resource/bitmap/k;->a(Ljava/io/InputStream;IILcom/bumptech/glide/load/e;)Lcom/bumptech/glide/load/engine/q;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/bumptech/glide/load/e;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/g;->a(Ljava/nio/ByteBuffer;Lcom/bumptech/glide/load/e;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/nio/ByteBuffer;Lcom/bumptech/glide/load/e;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/g;->a:Lcom/bumptech/glide/load/resource/bitmap/k;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/resource/bitmap/k;->a(Ljava/nio/ByteBuffer;)Z

    move-result v0

    return v0
.end method
