.class Lcom/bumptech/glide/load/engine/x/n$c;
.super Lcom/bumptech/glide/load/engine/x/d;
.source "SizeConfigStrategy.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/x/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/engine/x/d<",
        "Lcom/bumptech/glide/load/engine/x/n$b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/x/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a()Lcom/bumptech/glide/load/engine/x/m;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/x/n$c;->a()Lcom/bumptech/glide/load/engine/x/n$b;

    move-result-object v0

    return-object v0
.end method

.method protected a()Lcom/bumptech/glide/load/engine/x/n$b;
    .locals 1

    .line 4
    new-instance v0, Lcom/bumptech/glide/load/engine/x/n$b;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/engine/x/n$b;-><init>(Lcom/bumptech/glide/load/engine/x/n$c;)V

    return-object v0
.end method

.method public a(ILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/x/n$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/x/d;->b()Lcom/bumptech/glide/load/engine/x/m;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/x/n$b;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/engine/x/n$b;->a(ILandroid/graphics/Bitmap$Config;)V

    return-object v0
.end method
