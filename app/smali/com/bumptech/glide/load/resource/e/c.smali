.class public Lcom/bumptech/glide/load/resource/e/c;
.super Ljava/lang/Object;
.source "GifDrawableBytesTranscoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/resource/e/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/resource/e/d",
        "<",
        "Lcom/bumptech/glide/load/resource/d/c;",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/engine/q;Lcom/bumptech/glide/load/e;)Lcom/bumptech/glide/load/engine/q;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/q",
            "<",
            "Lcom/bumptech/glide/load/resource/d/c;",
            ">;",
            "Lcom/bumptech/glide/load/e;",
            ")",
            "Lcom/bumptech/glide/load/engine/q",
            "<[B>;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/q;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/d/c;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/d/c;->c()Ljava/nio/ByteBuffer;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/load/resource/a/b;

    invoke-static {v0}, Lcom/bumptech/glide/util/a;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/bumptech/glide/load/resource/a/b;-><init>([B)V

    return-object v1
.end method
