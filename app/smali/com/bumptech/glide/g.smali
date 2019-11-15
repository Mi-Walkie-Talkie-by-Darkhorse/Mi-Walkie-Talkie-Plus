.class public Lcom/bumptech/glide/g;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Lcom/bumptech/glide/manager/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/g$a;
    }
.end annotation


# static fields
.field private static final c:Lcom/bumptech/glide/request/d;

.field private static final d:Lcom/bumptech/glide/request/d;

.field private static final e:Lcom/bumptech/glide/request/d;


# instance fields
.field protected final a:Lcom/bumptech/glide/c;

.field final b:Lcom/bumptech/glide/manager/h;

.field private final f:Lcom/bumptech/glide/manager/m;

.field private final g:Lcom/bumptech/glide/manager/l;

.field private final h:Lcom/bumptech/glide/manager/n;

.field private final i:Ljava/lang/Runnable;

.field private final j:Landroid/os/Handler;

.field private final k:Lcom/bumptech/glide/manager/c;

.field private l:Lcom/bumptech/glide/request/d;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/bumptech/glide/request/d;->a(Ljava/lang/Class;)Lcom/bumptech/glide/request/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/d;->g()Lcom/bumptech/glide/request/d;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/g;->c:Lcom/bumptech/glide/request/d;

    const-class v0, Lcom/bumptech/glide/load/resource/d/c;

    invoke-static {v0}, Lcom/bumptech/glide/request/d;->a(Ljava/lang/Class;)Lcom/bumptech/glide/request/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/d;->g()Lcom/bumptech/glide/request/d;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/g;->d:Lcom/bumptech/glide/request/d;

    sget-object v0, Lcom/bumptech/glide/load/engine/g;->c:Lcom/bumptech/glide/load/engine/g;

    invoke-static {v0}, Lcom/bumptech/glide/request/d;->a(Lcom/bumptech/glide/load/engine/g;)Lcom/bumptech/glide/request/d;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/Priority;->d:Lcom/bumptech/glide/Priority;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/d;->a(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/d;->a(Z)Lcom/bumptech/glide/request/d;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/g;->e:Lcom/bumptech/glide/request/d;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/manager/h;Lcom/bumptech/glide/manager/l;)V
    .locals 6

    new-instance v4, Lcom/bumptech/glide/manager/m;

    invoke-direct {v4}, Lcom/bumptech/glide/manager/m;-><init>()V

    invoke-virtual {p1}, Lcom/bumptech/glide/c;->d()Lcom/bumptech/glide/manager/d;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/g;-><init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/manager/h;Lcom/bumptech/glide/manager/l;Lcom/bumptech/glide/manager/m;Lcom/bumptech/glide/manager/d;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/manager/h;Lcom/bumptech/glide/manager/l;Lcom/bumptech/glide/manager/m;Lcom/bumptech/glide/manager/d;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/manager/n;

    invoke-direct {v0}, Lcom/bumptech/glide/manager/n;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/g;->h:Lcom/bumptech/glide/manager/n;

    new-instance v0, Lcom/bumptech/glide/g$1;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/g$1;-><init>(Lcom/bumptech/glide/g;)V

    iput-object v0, p0, Lcom/bumptech/glide/g;->i:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bumptech/glide/g;->j:Landroid/os/Handler;

    iput-object p1, p0, Lcom/bumptech/glide/g;->a:Lcom/bumptech/glide/c;

    iput-object p2, p0, Lcom/bumptech/glide/g;->b:Lcom/bumptech/glide/manager/h;

    iput-object p3, p0, Lcom/bumptech/glide/g;->g:Lcom/bumptech/glide/manager/l;

    iput-object p4, p0, Lcom/bumptech/glide/g;->f:Lcom/bumptech/glide/manager/m;

    invoke-virtual {p1}, Lcom/bumptech/glide/c;->e()Lcom/bumptech/glide/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/e;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/g$a;

    invoke-direct {v1, p4}, Lcom/bumptech/glide/g$a;-><init>(Lcom/bumptech/glide/manager/m;)V

    invoke-interface {p5, v0, v1}, Lcom/bumptech/glide/manager/d;->a(Landroid/content/Context;Lcom/bumptech/glide/manager/c$a;)Lcom/bumptech/glide/manager/c;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/g;->k:Lcom/bumptech/glide/manager/c;

    invoke-static {}, Lcom/bumptech/glide/util/i;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/g;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bumptech/glide/g;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/g;->k:Lcom/bumptech/glide/manager/c;

    invoke-interface {p2, v0}, Lcom/bumptech/glide/manager/h;->a(Lcom/bumptech/glide/manager/i;)V

    invoke-virtual {p1}, Lcom/bumptech/glide/c;->e()Lcom/bumptech/glide/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/e;->a()Lcom/bumptech/glide/request/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/g;->a(Lcom/bumptech/glide/request/d;)V

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/c;->a(Lcom/bumptech/glide/g;)V

    return-void

    :cond_0
    invoke-interface {p2, p0}, Lcom/bumptech/glide/manager/h;->a(Lcom/bumptech/glide/manager/i;)V

    goto :goto_0
.end method

.method private c(Lcom/bumptech/glide/request/a/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/a/h",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/g;->b(Lcom/bumptech/glide/request/a/h;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/g;->a:Lcom/bumptech/glide/c;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/c;->a(Lcom/bumptech/glide/request/a/h;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lcom/bumptech/glide/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResourceType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TResourceType;>;)",
            "Lcom/bumptech/glide/f",
            "<TResourceType;>;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/f;

    iget-object v1, p0, Lcom/bumptech/glide/g;->a:Lcom/bumptech/glide/c;

    invoke-direct {v0, v1, p0, p1}, Lcom/bumptech/glide/f;-><init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/g;Ljava/lang/Class;)V

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Lcom/bumptech/glide/f;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/f",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/g;->g()Lcom/bumptech/glide/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/f;->a(Ljava/lang/Object;)Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    invoke-static {}, Lcom/bumptech/glide/util/i;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/g;->f:Lcom/bumptech/glide/manager/m;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/m;->a()V

    return-void
.end method

.method public a(Lcom/bumptech/glide/request/a/h;)V
    .locals 2
    .param p1    # Lcom/bumptech/glide/request/a/h;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/a/h",
            "<*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/bumptech/glide/util/i;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/bumptech/glide/g;->c(Lcom/bumptech/glide/request/a/h;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/g;->j:Landroid/os/Handler;

    new-instance v1, Lcom/bumptech/glide/g$2;

    invoke-direct {v1, p0, p1}, Lcom/bumptech/glide/g$2;-><init>(Lcom/bumptech/glide/g;Lcom/bumptech/glide/request/a/h;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method a(Lcom/bumptech/glide/request/a/h;Lcom/bumptech/glide/request/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/a/h",
            "<*>;",
            "Lcom/bumptech/glide/request/a;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/g;->h:Lcom/bumptech/glide/manager/n;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/manager/n;->a(Lcom/bumptech/glide/request/a/h;)V

    iget-object v0, p0, Lcom/bumptech/glide/g;->f:Lcom/bumptech/glide/manager/m;

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/manager/m;->a(Lcom/bumptech/glide/request/a;)V

    return-void
.end method

.method protected a(Lcom/bumptech/glide/request/d;)V
    .locals 1
    .param p1    # Lcom/bumptech/glide/request/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/bumptech/glide/request/d;->a()Lcom/bumptech/glide/request/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/d;->h()Lcom/bumptech/glide/request/d;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/g;->l:Lcom/bumptech/glide/request/d;

    return-void
.end method

.method b(Ljava/lang/Class;)Lcom/bumptech/glide/h;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/bumptech/glide/h",
            "<*TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/g;->a:Lcom/bumptech/glide/c;

    invoke-virtual {v0}, Lcom/bumptech/glide/c;->e()Lcom/bumptech/glide/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/e;->a(Ljava/lang/Class;)Lcom/bumptech/glide/h;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    invoke-static {}, Lcom/bumptech/glide/util/i;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/g;->f:Lcom/bumptech/glide/manager/m;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/m;->b()V

    return-void
.end method

.method b(Lcom/bumptech/glide/request/a/h;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/a/h",
            "<*>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-interface {p1}, Lcom/bumptech/glide/request/a/h;->b()Lcom/bumptech/glide/request/a;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/bumptech/glide/g;->f:Lcom/bumptech/glide/manager/m;

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/manager/m;->b(Lcom/bumptech/glide/request/a;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bumptech/glide/g;->h:Lcom/bumptech/glide/manager/n;

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/manager/n;->b(Lcom/bumptech/glide/request/a/h;)V

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/bumptech/glide/request/a/h;->a(Lcom/bumptech/glide/request/a;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 1

    invoke-virtual {p0}, Lcom/bumptech/glide/g;->b()V

    iget-object v0, p0, Lcom/bumptech/glide/g;->h:Lcom/bumptech/glide/manager/n;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/n;->c()V

    return-void
.end method

.method public d()V
    .locals 1

    invoke-virtual {p0}, Lcom/bumptech/glide/g;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/g;->h:Lcom/bumptech/glide/manager/n;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/n;->d()V

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/g;->h:Lcom/bumptech/glide/manager/n;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/n;->e()V

    iget-object v0, p0, Lcom/bumptech/glide/g;->h:Lcom/bumptech/glide/manager/n;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/n;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/a/h;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/g;->a(Lcom/bumptech/glide/request/a/h;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/g;->h:Lcom/bumptech/glide/manager/n;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/n;->b()V

    iget-object v0, p0, Lcom/bumptech/glide/g;->f:Lcom/bumptech/glide/manager/m;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/m;->c()V

    iget-object v0, p0, Lcom/bumptech/glide/g;->b:Lcom/bumptech/glide/manager/h;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/manager/h;->b(Lcom/bumptech/glide/manager/i;)V

    iget-object v0, p0, Lcom/bumptech/glide/g;->b:Lcom/bumptech/glide/manager/h;

    iget-object v1, p0, Lcom/bumptech/glide/g;->k:Lcom/bumptech/glide/manager/c;

    invoke-interface {v0, v1}, Lcom/bumptech/glide/manager/h;->b(Lcom/bumptech/glide/manager/i;)V

    iget-object v0, p0, Lcom/bumptech/glide/g;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bumptech/glide/g;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/bumptech/glide/g;->a:Lcom/bumptech/glide/c;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/c;->b(Lcom/bumptech/glide/g;)V

    return-void
.end method

.method public f()Lcom/bumptech/glide/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/f",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;)Lcom/bumptech/glide/f;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/g;->c:Lcom/bumptech/glide/request/d;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/f;->a(Lcom/bumptech/glide/request/d;)Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/bumptech/glide/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/f",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;)Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method

.method h()Lcom/bumptech/glide/request/d;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/g;->l:Lcom/bumptech/glide/request/d;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{tracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/g;->f:Lcom/bumptech/glide/manager/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", treeNode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/g;->g:Lcom/bumptech/glide/manager/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
