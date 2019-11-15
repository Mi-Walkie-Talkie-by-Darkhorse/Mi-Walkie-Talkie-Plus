.class public Lcom/bumptech/glide/request/f;
.super Ljava/lang/Object;
.source "ThumbnailRequestCoordinator.java"

# interfaces
.implements Lcom/bumptech/glide/request/a;
.implements Lcom/bumptech/glide/request/b;


# instance fields
.field private a:Lcom/bumptech/glide/request/a;

.field private b:Lcom/bumptech/glide/request/a;

.field private c:Lcom/bumptech/glide/request/b;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/f;-><init>(Lcom/bumptech/glide/request/b;)V

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/request/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/request/f;->c:Lcom/bumptech/glide/request/b;

    return-void
.end method

.method private j()Z
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/request/f;->c:Lcom/bumptech/glide/request/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/f;->c:Lcom/bumptech/glide/request/b;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/b;->b(Lcom/bumptech/glide/request/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k()Z
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/request/f;->c:Lcom/bumptech/glide/request/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/f;->c:Lcom/bumptech/glide/request/b;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/b;->c(Lcom/bumptech/glide/request/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l()Z
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/request/f;->c:Lcom/bumptech/glide/request/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/f;->c:Lcom/bumptech/glide/request/b;

    invoke-interface {v0}, Lcom/bumptech/glide/request/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/request/f;->d:Z

    iget-object v0, p0, Lcom/bumptech/glide/request/f;->b:Lcom/bumptech/glide/request/a;

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/f;->b:Lcom/bumptech/glide/request/a;

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->a()V

    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/request/f;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/request/f;->a:Lcom/bumptech/glide/request/a;

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/request/f;->a:Lcom/bumptech/glide/request/a;

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->a()V

    :cond_1
    return-void
.end method

.method public a(Lcom/bumptech/glide/request/a;Lcom/bumptech/glide/request/a;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/request/f;->a:Lcom/bumptech/glide/request/a;

    iput-object p2, p0, Lcom/bumptech/glide/request/f;->b:Lcom/bumptech/glide/request/a;

    return-void
.end method

.method public a(Lcom/bumptech/glide/request/a;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/bumptech/glide/request/f;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/bumptech/glide/request/f;

    iget-object v1, p0, Lcom/bumptech/glide/request/f;->a:Lcom/bumptech/glide/request/a;

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/bumptech/glide/request/f;->a:Lcom/bumptech/glide/request/a;

    if-nez v1, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/bumptech/glide/request/f;->b:Lcom/bumptech/glide/request/a;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/bumptech/glide/request/f;->b:Lcom/bumptech/glide/request/a;

    if-nez v1, :cond_0

    :goto_1
    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/request/f;->a:Lcom/bumptech/glide/request/a;

    iget-object v2, p1, Lcom/bumptech/glide/request/f;->a:Lcom/bumptech/glide/request/a;

    invoke-interface {v1, v2}, Lcom/bumptech/glide/request/a;->a(Lcom/bumptech/glide/request/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/bumptech/glide/request/f;->b:Lcom/bumptech/glide/request/a;

    iget-object v2, p1, Lcom/bumptech/glide/request/f;->b:Lcom/bumptech/glide/request/a;

    invoke-interface {v1, v2}, Lcom/bumptech/glide/request/a;->a(Lcom/bumptech/glide/request/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/request/f;->d:Z

    iget-object v0, p0, Lcom/bumptech/glide/request/f;->a:Lcom/bumptech/glide/request/a;

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->b()V

    iget-object v0, p0, Lcom/bumptech/glide/request/f;->b:Lcom/bumptech/glide/request/a;

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->b()V

    return-void
.end method

.method public b(Lcom/bumptech/glide/request/a;)Z
    .locals 1

    invoke-direct {p0}, Lcom/bumptech/glide/request/f;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/request/f;->a:Lcom/bumptech/glide/request/a;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/f;->a:Lcom/bumptech/glide/request/a;

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->g()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/request/f;->d:Z

    iget-object v0, p0, Lcom/bumptech/glide/request/f;->b:Lcom/bumptech/glide/request/a;

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->c()V

    iget-object v0, p0, Lcom/bumptech/glide/request/f;->a:Lcom/bumptech/glide/request/a;

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->c()V

    return-void
.end method

.method public c(Lcom/bumptech/glide/request/a;)Z
    .locals 1

    invoke-direct {p0}, Lcom/bumptech/glide/request/f;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/f;->a:Lcom/bumptech/glide/request/a;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/f;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Lcom/bumptech/glide/request/a;)V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/request/f;->b:Lcom/bumptech/glide/request/a;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/request/f;->c:Lcom/bumptech/glide/request/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bumptech/glide/request/f;->c:Lcom/bumptech/glide/request/b;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/b;->d(Lcom/bumptech/glide/request/a;)V

    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/request/f;->b:Lcom/bumptech/glide/request/a;

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/f;->b:Lcom/bumptech/glide/request/a;

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->c()V

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    invoke-direct {p0}, Lcom/bumptech/glide/request/f;->l()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/f;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/request/f;->a:Lcom/bumptech/glide/request/a;

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->e()Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/request/f;->a:Lcom/bumptech/glide/request/a;

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/f;->b:Lcom/bumptech/glide/request/a;

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/request/f;->a:Lcom/bumptech/glide/request/a;

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/f;->b:Lcom/bumptech/glide/request/a;

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/request/f;->a:Lcom/bumptech/glide/request/a;

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->h()Z

    move-result v0

    return v0
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/request/f;->a:Lcom/bumptech/glide/request/a;

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->i()V

    iget-object v0, p0, Lcom/bumptech/glide/request/f;->b:Lcom/bumptech/glide/request/a;

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->i()V

    return-void
.end method
