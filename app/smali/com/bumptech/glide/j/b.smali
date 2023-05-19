.class Lcom/bumptech/glide/j/b;
.super Ljava/lang/Object;
.source "ApplicationLifecycle.java"

# interfaces
.implements Lcom/bumptech/glide/j/h;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/j/i;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/j/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-interface {p1}, Lcom/bumptech/glide/j/i;->onStart()V

    return-void
.end method

.method public b(Lcom/bumptech/glide/j/i;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/j/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
