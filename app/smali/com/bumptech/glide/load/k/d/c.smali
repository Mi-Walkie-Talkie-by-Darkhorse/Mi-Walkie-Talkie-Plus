.class public final Lcom/bumptech/glide/load/k/d/c;
.super Lcom/bumptech/glide/h;
.source "DrawableTransitionOptions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/h<",
        "Lcom/bumptech/glide/load/k/d/c;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/request/i/a$a;)Lcom/bumptech/glide/load/k/d/c;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/i/a$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/bumptech/glide/request/i/a$a;->a()Lcom/bumptech/glide/request/i/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/k/d/c;->a(Lcom/bumptech/glide/request/i/a;)Lcom/bumptech/glide/load/k/d/c;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/bumptech/glide/request/i/a;)Lcom/bumptech/glide/load/k/d/c;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/i/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/request/i/e;)Lcom/bumptech/glide/h;

    move-object p1, p0

    check-cast p1, Lcom/bumptech/glide/load/k/d/c;

    return-object p1
.end method

.method public b()Lcom/bumptech/glide/load/k/d/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/bumptech/glide/request/i/a$a;

    invoke-direct {v0}, Lcom/bumptech/glide/request/i/a$a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/k/d/c;->a(Lcom/bumptech/glide/request/i/a$a;)Lcom/bumptech/glide/load/k/d/c;

    move-result-object v0

    return-object v0
.end method
