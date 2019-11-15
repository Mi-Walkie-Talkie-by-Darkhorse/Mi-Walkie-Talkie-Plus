.class public final Lcom/bumptech/glide/load/resource/b/b;
.super Lcom/bumptech/glide/h;
.source "DrawableTransitionOptions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/h",
        "<",
        "Lcom/bumptech/glide/load/resource/b/b;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bumptech/glide/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/request/b/a$a;)Lcom/bumptech/glide/load/resource/b/b;
    .locals 1

    invoke-virtual {p1}, Lcom/bumptech/glide/request/b/a$a;->a()Lcom/bumptech/glide/request/b/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/resource/b/b;->a(Lcom/bumptech/glide/request/b/a;)Lcom/bumptech/glide/load/resource/b/b;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/request/b/a;)Lcom/bumptech/glide/load/resource/b/b;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/resource/b/b;->a(Lcom/bumptech/glide/request/b/e;)Lcom/bumptech/glide/h;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/b/b;

    return-object v0
.end method

.method public c()Lcom/bumptech/glide/load/resource/b/b;
    .locals 1

    new-instance v0, Lcom/bumptech/glide/request/b/a$a;

    invoke-direct {v0}, Lcom/bumptech/glide/request/b/a$a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/resource/b/b;->a(Lcom/bumptech/glide/request/b/a$a;)Lcom/bumptech/glide/load/resource/b/b;

    move-result-object v0

    return-object v0
.end method
