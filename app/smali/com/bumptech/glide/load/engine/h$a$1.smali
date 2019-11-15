.class Lcom/bumptech/glide/load/engine/h$a$1;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Lcom/bumptech/glide/util/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/h$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/util/a/a$a",
        "<",
        "Lcom/bumptech/glide/load/engine/DecodeJob",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/load/engine/h$a;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/h$a;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/h$a$1;->a:Lcom/bumptech/glide/load/engine/h$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/load/engine/DecodeJob;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/DecodeJob",
            "<*>;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/engine/DecodeJob;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/h$a$1;->a:Lcom/bumptech/glide/load/engine/h$a;

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/h$a;->a:Lcom/bumptech/glide/load/engine/DecodeJob$d;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/h$a$1;->a:Lcom/bumptech/glide/load/engine/h$a;

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/h$a;->b:Landroid/support/v4/util/Pools$Pool;

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/engine/DecodeJob;-><init>(Lcom/bumptech/glide/load/engine/DecodeJob$d;Landroid/support/v4/util/Pools$Pool;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/h$a$1;->a()Lcom/bumptech/glide/load/engine/DecodeJob;

    move-result-object v0

    return-object v0
.end method
