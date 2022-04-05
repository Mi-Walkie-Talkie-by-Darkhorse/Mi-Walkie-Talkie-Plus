.class Lcom/bumptech/glide/load/engine/x/c$b;
.super Lcom/bumptech/glide/load/engine/x/d;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/x/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/engine/x/d<",
        "Lcom/bumptech/glide/load/engine/x/c$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/x/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/bumptech/glide/load/engine/x/c$a;
    .locals 1

    new-instance v0, Lcom/bumptech/glide/load/engine/x/c$a;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/engine/x/c$a;-><init>(Lcom/bumptech/glide/load/engine/x/c$b;)V

    return-object v0
.end method

.method a(IILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/x/c$a;
    .locals 1

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/x/d;->b()Lcom/bumptech/glide/load/engine/x/m;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/x/c$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/load/engine/x/c$a;->a(IILandroid/graphics/Bitmap$Config;)V

    return-object v0
.end method

.method protected bridge synthetic a()Lcom/bumptech/glide/load/engine/x/m;
    .locals 1

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/x/c$b;->a()Lcom/bumptech/glide/load/engine/x/c$a;

    move-result-object v0

    return-object v0
.end method
