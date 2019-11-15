.class final Lcom/bumptech/glide/load/engine/a/j$b;
.super Lcom/bumptech/glide/load/engine/a/d;
.source "LruArrayPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/engine/a/d",
        "<",
        "Lcom/bumptech/glide/load/engine/a/j$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/bumptech/glide/load/engine/a/j$a;
    .locals 1

    new-instance v0, Lcom/bumptech/glide/load/engine/a/j$a;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/engine/a/j$a;-><init>(Lcom/bumptech/glide/load/engine/a/j$b;)V

    return-object v0
.end method

.method a(ILjava/lang/Class;)Lcom/bumptech/glide/load/engine/a/j$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/bumptech/glide/load/engine/a/j$a;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/a/j$b;->c()Lcom/bumptech/glide/load/engine/a/m;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/a/j$a;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/engine/a/j$a;->a(ILjava/lang/Class;)V

    return-object v0
.end method

.method protected synthetic b()Lcom/bumptech/glide/load/engine/a/m;
    .locals 1

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/a/j$b;->a()Lcom/bumptech/glide/load/engine/a/j$a;

    move-result-object v0

    return-object v0
.end method
