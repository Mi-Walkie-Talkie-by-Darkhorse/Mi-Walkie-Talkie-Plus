.class public Lcom/bumptech/glide/g;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Lcom/bumptech/glide/j/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/g$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/j/i;",
        "Ljava/lang/Object<",
        "Lcom/bumptech/glide/f<",
        "Landroid/graphics/drawable/Drawable;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final k:Lcom/bumptech/glide/request/e;

.field private static final l:Lcom/bumptech/glide/request/e;


# instance fields
.field protected final a:Lcom/bumptech/glide/c;

.field protected final b:Landroid/content/Context;

.field final c:Lcom/bumptech/glide/j/h;

.field private final d:Lcom/bumptech/glide/j/n;

.field private final e:Lcom/bumptech/glide/j/m;

.field private final f:Lcom/bumptech/glide/j/p;

.field private final g:Ljava/lang/Runnable;

.field private final h:Landroid/os/Handler;

.field private final i:Lcom/bumptech/glide/j/c;

.field private j:Lcom/bumptech/glide/request/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/bumptech/glide/request/e;->f(Ljava/lang/Class;)Lcom/bumptech/glide/request/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/e;->O()Lcom/bumptech/glide/request/e;

    sput-object v0, Lcom/bumptech/glide/g;->k:Lcom/bumptech/glide/request/e;

    .line 2
    const-class v0, Lcom/bumptech/glide/load/k/f/c;

    invoke-static {v0}, Lcom/bumptech/glide/request/e;->f(Ljava/lang/Class;)Lcom/bumptech/glide/request/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/e;->O()Lcom/bumptech/glide/request/e;

    sput-object v0, Lcom/bumptech/glide/g;->l:Lcom/bumptech/glide/request/e;

    .line 3
    sget-object v0, Lcom/bumptech/glide/load/engine/h;->b:Lcom/bumptech/glide/load/engine/h;

    .line 4
    invoke-static {v0}, Lcom/bumptech/glide/request/e;->h(Lcom/bumptech/glide/load/engine/h;)Lcom/bumptech/glide/request/e;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/Priority;->d:Lcom/bumptech/glide/Priority;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/e;->X(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/e;

    move-result-object v0

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/e;->f0(Z)Lcom/bumptech/glide/request/e;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/j/h;Lcom/bumptech/glide/j/m;Landroid/content/Context;)V
    .locals 7
    .param p1    # Lcom/bumptech/glide/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/j/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/j/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v4, Lcom/bumptech/glide/j/n;

    invoke-direct {v4}, Lcom/bumptech/glide/j/n;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/bumptech/glide/c;->g()Lcom/bumptech/glide/j/d;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/g;-><init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/j/h;Lcom/bumptech/glide/j/m;Lcom/bumptech/glide/j/n;Lcom/bumptech/glide/j/d;Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/j/h;Lcom/bumptech/glide/j/m;Lcom/bumptech/glide/j/n;Lcom/bumptech/glide/j/d;Landroid/content/Context;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lcom/bumptech/glide/j/p;

    invoke-direct {v0}, Lcom/bumptech/glide/j/p;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/g;->f:Lcom/bumptech/glide/j/p;

    .line 6
    new-instance v0, Lcom/bumptech/glide/g$a;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/g$a;-><init>(Lcom/bumptech/glide/g;)V

    iput-object v0, p0, Lcom/bumptech/glide/g;->g:Ljava/lang/Runnable;

    .line 7
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/bumptech/glide/g;->h:Landroid/os/Handler;

    .line 8
    iput-object p1, p0, Lcom/bumptech/glide/g;->a:Lcom/bumptech/glide/c;

    .line 9
    iput-object p2, p0, Lcom/bumptech/glide/g;->c:Lcom/bumptech/glide/j/h;

    .line 10
    iput-object p3, p0, Lcom/bumptech/glide/g;->e:Lcom/bumptech/glide/j/m;

    .line 11
    iput-object p4, p0, Lcom/bumptech/glide/g;->d:Lcom/bumptech/glide/j/n;

    .line 12
    iput-object p6, p0, Lcom/bumptech/glide/g;->b:Landroid/content/Context;

    .line 13
    invoke-virtual {p6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    new-instance p6, Lcom/bumptech/glide/g$c;

    invoke-direct {p6, p4}, Lcom/bumptech/glide/g$c;-><init>(Lcom/bumptech/glide/j/n;)V

    .line 14
    invoke-interface {p5, p3, p6}, Lcom/bumptech/glide/j/d;->a(Landroid/content/Context;Lcom/bumptech/glide/j/c$a;)Lcom/bumptech/glide/j/c;

    move-result-object p3

    iput-object p3, p0, Lcom/bumptech/glide/g;->i:Lcom/bumptech/glide/j/c;

    .line 15
    invoke-static {}, Lcom/bumptech/glide/util/j;->o()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 16
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {p2, p0}, Lcom/bumptech/glide/j/h;->a(Lcom/bumptech/glide/j/i;)V

    .line 18
    :goto_0
    invoke-interface {p2, p3}, Lcom/bumptech/glide/j/h;->a(Lcom/bumptech/glide/j/i;)V

    .line 19
    invoke-virtual {p1}, Lcom/bumptech/glide/c;->i()Lcom/bumptech/glide/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bumptech/glide/e;->c()Lcom/bumptech/glide/request/e;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/g;->t(Lcom/bumptech/glide/request/e;)V

    .line 20
    invoke-virtual {p1, p0}, Lcom/bumptech/glide/c;->o(Lcom/bumptech/glide/g;)V

    return-void
.end method

.method private w(Lcom/bumptech/glide/request/h/h;)V
    .locals 2
    .param p1    # Lcom/bumptech/glide/request/h/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/h/h<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/g;->v(Lcom/bumptech/glide/request/h/h;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/g;->a:Lcom/bumptech/glide/c;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/c;->p(Lcom/bumptech/glide/request/h/h;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/bumptech/glide/request/h/h;->h()Lcom/bumptech/glide/request/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/bumptech/glide/request/h/h;->h()Lcom/bumptech/glide/request/b;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    invoke-interface {p1, v1}, Lcom/bumptech/glide/request/h/h;->c(Lcom/bumptech/glide/request/b;)V

    .line 5
    invoke-interface {v0}, Lcom/bumptech/glide/request/b;->clear()V

    :cond_0
    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Class;)Lcom/bumptech/glide/f;
    .locals 3
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResourceType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TResourceType;>;)",
            "Lcom/bumptech/glide/f<",
            "TResourceType;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/bumptech/glide/f;

    iget-object v1, p0, Lcom/bumptech/glide/g;->a:Lcom/bumptech/glide/c;

    iget-object v2, p0, Lcom/bumptech/glide/g;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/bumptech/glide/f;-><init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/g;Ljava/lang/Class;Landroid/content/Context;)V

    return-object v0
.end method

.method public f()Lcom/bumptech/glide/f;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/f<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/g;->d(Ljava/lang/Class;)Lcom/bumptech/glide/f;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/g;->k:Lcom/bumptech/glide/request/e;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/f;->b(Lcom/bumptech/glide/request/e;)Lcom/bumptech/glide/f;

    return-object v0
.end method

.method public k()Lcom/bumptech/glide/f;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/f<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/g;->d(Ljava/lang/Class;)Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public l()Lcom/bumptech/glide/f;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/f<",
            "Lcom/bumptech/glide/load/k/f/c;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/bumptech/glide/load/k/f/c;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/g;->d(Ljava/lang/Class;)Lcom/bumptech/glide/f;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/g;->l:Lcom/bumptech/glide/request/e;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/f;->b(Lcom/bumptech/glide/request/e;)Lcom/bumptech/glide/f;

    return-object v0
.end method

.method public m(Lcom/bumptech/glide/request/h/h;)V
    .locals 2
    .param p1    # Lcom/bumptech/glide/request/h/h;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/h/h<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/bumptech/glide/util/j;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-direct {p0, p1}, Lcom/bumptech/glide/g;->w(Lcom/bumptech/glide/request/h/h;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/g;->h:Landroid/os/Handler;

    new-instance v1, Lcom/bumptech/glide/g$b;

    invoke-direct {v1, p0, p1}, Lcom/bumptech/glide/g$b;-><init>(Lcom/bumptech/glide/g;Lcom/bumptech/glide/request/h/h;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method n()Lcom/bumptech/glide/request/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/g;->j:Lcom/bumptech/glide/request/e;

    return-object v0
.end method

.method o(Ljava/lang/Class;)Lcom/bumptech/glide/h;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/bumptech/glide/h<",
            "*TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/g;->a:Lcom/bumptech/glide/c;

    invoke-virtual {v0}, Lcom/bumptech/glide/c;->i()Lcom/bumptech/glide/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/e;->d(Ljava/lang/Class;)Lcom/bumptech/glide/h;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/g;->f:Lcom/bumptech/glide/j/p;

    invoke-virtual {v0}, Lcom/bumptech/glide/j/p;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/g;->f:Lcom/bumptech/glide/j/p;

    invoke-virtual {v0}, Lcom/bumptech/glide/j/p;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/h/h;

    .line 3
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/g;->m(Lcom/bumptech/glide/request/h/h;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/g;->f:Lcom/bumptech/glide/j/p;

    invoke-virtual {v0}, Lcom/bumptech/glide/j/p;->d()V

    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/g;->d:Lcom/bumptech/glide/j/n;

    invoke-virtual {v0}, Lcom/bumptech/glide/j/n;->c()V

    .line 6
    iget-object v0, p0, Lcom/bumptech/glide/g;->c:Lcom/bumptech/glide/j/h;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/j/h;->b(Lcom/bumptech/glide/j/i;)V

    .line 7
    iget-object v0, p0, Lcom/bumptech/glide/g;->c:Lcom/bumptech/glide/j/h;

    iget-object v1, p0, Lcom/bumptech/glide/g;->i:Lcom/bumptech/glide/j/c;

    invoke-interface {v0, v1}, Lcom/bumptech/glide/j/h;->b(Lcom/bumptech/glide/j/i;)V

    .line 8
    iget-object v0, p0, Lcom/bumptech/glide/g;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bumptech/glide/g;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    iget-object v0, p0, Lcom/bumptech/glide/g;->a:Lcom/bumptech/glide/c;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/c;->s(Lcom/bumptech/glide/g;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/g;->s()V

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/g;->f:Lcom/bumptech/glide/j/p;

    invoke-virtual {v0}, Lcom/bumptech/glide/j/p;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/g;->r()V

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/g;->f:Lcom/bumptech/glide/j/p;

    invoke-virtual {v0}, Lcom/bumptech/glide/j/p;->onStop()V

    return-void
.end method

.method public p(Landroid/net/Uri;)Lcom/bumptech/glide/f;
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/bumptech/glide/f<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/g;->k()Lcom/bumptech/glide/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/f;->o(Landroid/net/Uri;)Lcom/bumptech/glide/f;

    return-object v0
.end method

.method public q(Ljava/lang/String;)Lcom/bumptech/glide/f;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/f<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/g;->k()Lcom/bumptech/glide/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/f;->q(Ljava/lang/String;)Lcom/bumptech/glide/f;

    return-object v0
.end method

.method public r()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/bumptech/glide/util/j;->a()V

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/g;->d:Lcom/bumptech/glide/j/n;

    invoke-virtual {v0}, Lcom/bumptech/glide/j/n;->d()V

    return-void
.end method

.method public s()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/bumptech/glide/util/j;->a()V

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/g;->d:Lcom/bumptech/glide/j/n;

    invoke-virtual {v0}, Lcom/bumptech/glide/j/n;->f()V

    return-void
.end method

.method protected t(Lcom/bumptech/glide/request/e;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/bumptech/glide/request/e;->d()Lcom/bumptech/glide/request/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/request/e;->b()Lcom/bumptech/glide/request/e;

    iput-object p1, p0, Lcom/bumptech/glide/g;->j:Lcom/bumptech/glide/request/e;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{tracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/g;->d:Lcom/bumptech/glide/j/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", treeNode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/g;->e:Lcom/bumptech/glide/j/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method u(Lcom/bumptech/glide/request/h/h;Lcom/bumptech/glide/request/b;)V
    .locals 1
    .param p1    # Lcom/bumptech/glide/request/h/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/h/h<",
            "*>;",
            "Lcom/bumptech/glide/request/b;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/g;->f:Lcom/bumptech/glide/j/p;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/j/p;->k(Lcom/bumptech/glide/request/h/h;)V

    .line 2
    iget-object p1, p0, Lcom/bumptech/glide/g;->d:Lcom/bumptech/glide/j/n;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/j/n;->g(Lcom/bumptech/glide/request/b;)V

    return-void
.end method

.method v(Lcom/bumptech/glide/request/h/h;)Z
    .locals 3
    .param p1    # Lcom/bumptech/glide/request/h/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/h/h<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/bumptech/glide/request/h/h;->h()Lcom/bumptech/glide/request/b;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/bumptech/glide/g;->d:Lcom/bumptech/glide/j/n;

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/j/n;->b(Lcom/bumptech/glide/request/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/bumptech/glide/g;->f:Lcom/bumptech/glide/j/p;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/j/p;->l(Lcom/bumptech/glide/request/h/h;)V

    const/4 v0, 0x0

    .line 4
    invoke-interface {p1, v0}, Lcom/bumptech/glide/request/h/h;->c(Lcom/bumptech/glide/request/b;)V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
