.class Lcom/bumptech/glide/load/engine/i;
.super Ljava/lang/Object;
.source "EngineJob.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/DecodeJob$a;
.implements Lcom/bumptech/glide/util/a/a$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/i$b;,
        Lcom/bumptech/glide/load/engine/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/DecodeJob$a",
        "<TR;>;",
        "Lcom/bumptech/glide/util/a/a$c;"
    }
.end annotation


# static fields
.field private static final a:Lcom/bumptech/glide/load/engine/i$a;

.field private static final b:Landroid/os/Handler;


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/request/e;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/bumptech/glide/util/a/b;

.field private final e:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Lcom/bumptech/glide/load/engine/i",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/bumptech/glide/load/engine/i$a;

.field private final g:Lcom/bumptech/glide/load/engine/j;

.field private final h:Lcom/bumptech/glide/load/engine/c/a;

.field private final i:Lcom/bumptech/glide/load/engine/c/a;

.field private final j:Lcom/bumptech/glide/load/engine/c/a;

.field private k:Lcom/bumptech/glide/load/c;

.field private l:Z

.field private m:Z

.field private n:Lcom/bumptech/glide/load/engine/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/q",
            "<*>;"
        }
    .end annotation
.end field

.field private o:Lcom/bumptech/glide/load/DataSource;

.field private p:Z

.field private q:Lcom/bumptech/glide/load/engine/GlideException;

.field private r:Z

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/request/e;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lcom/bumptech/glide/load/engine/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/m",
            "<*>;"
        }
    .end annotation
.end field

.field private u:Lcom/bumptech/glide/load/engine/DecodeJob;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/DecodeJob",
            "<TR;>;"
        }
    .end annotation
.end field

.field private volatile v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/bumptech/glide/load/engine/i$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/i$a;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/engine/i;->a:Lcom/bumptech/glide/load/engine/i$a;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/load/engine/i$b;

    invoke-direct {v2}, Lcom/bumptech/glide/load/engine/i$b;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/bumptech/glide/load/engine/i;->b:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/j;Landroid/support/v4/util/Pools$Pool;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/c/a;",
            "Lcom/bumptech/glide/load/engine/c/a;",
            "Lcom/bumptech/glide/load/engine/c/a;",
            "Lcom/bumptech/glide/load/engine/j;",
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Lcom/bumptech/glide/load/engine/i",
            "<*>;>;)V"
        }
    .end annotation

    sget-object v6, Lcom/bumptech/glide/load/engine/i;->a:Lcom/bumptech/glide/load/engine/i$a;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/load/engine/i;-><init>(Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/j;Landroid/support/v4/util/Pools$Pool;Lcom/bumptech/glide/load/engine/i$a;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/j;Landroid/support/v4/util/Pools$Pool;Lcom/bumptech/glide/load/engine/i$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/c/a;",
            "Lcom/bumptech/glide/load/engine/c/a;",
            "Lcom/bumptech/glide/load/engine/c/a;",
            "Lcom/bumptech/glide/load/engine/j;",
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Lcom/bumptech/glide/load/engine/i",
            "<*>;>;",
            "Lcom/bumptech/glide/load/engine/i$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/i;->c:Ljava/util/List;

    invoke-static {}, Lcom/bumptech/glide/util/a/b;->a()Lcom/bumptech/glide/util/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/i;->d:Lcom/bumptech/glide/util/a/b;

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/i;->h:Lcom/bumptech/glide/load/engine/c/a;

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/i;->i:Lcom/bumptech/glide/load/engine/c/a;

    iput-object p3, p0, Lcom/bumptech/glide/load/engine/i;->j:Lcom/bumptech/glide/load/engine/c/a;

    iput-object p4, p0, Lcom/bumptech/glide/load/engine/i;->g:Lcom/bumptech/glide/load/engine/j;

    iput-object p5, p0, Lcom/bumptech/glide/load/engine/i;->e:Landroid/support/v4/util/Pools$Pool;

    iput-object p6, p0, Lcom/bumptech/glide/load/engine/i;->f:Lcom/bumptech/glide/load/engine/i$a;

    return-void
.end method

.method private a(Z)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/bumptech/glide/util/i;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/i;->k:Lcom/bumptech/glide/load/c;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/i;->t:Lcom/bumptech/glide/load/engine/m;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/i;->n:Lcom/bumptech/glide/load/engine/q;

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->s:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iput-boolean v2, p0, Lcom/bumptech/glide/load/engine/i;->r:Z

    iput-boolean v2, p0, Lcom/bumptech/glide/load/engine/i;->v:Z

    iput-boolean v2, p0, Lcom/bumptech/glide/load/engine/i;->p:Z

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->u:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Z)V

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/i;->u:Lcom/bumptech/glide/load/engine/DecodeJob;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/i;->q:Lcom/bumptech/glide/load/engine/GlideException;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/i;->o:Lcom/bumptech/glide/load/DataSource;

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->e:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method private c(Lcom/bumptech/glide/request/e;)V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->s:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/i;->s:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private d(Lcom/bumptech/glide/request/e;)Z
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->s:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()Lcom/bumptech/glide/load/engine/c/a;
    .locals 1

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/i;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->j:Lcom/bumptech/glide/load/engine/c/a;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->i:Lcom/bumptech/glide/load/engine/c/a;

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/bumptech/glide/load/c;ZZ)Lcom/bumptech/glide/load/engine/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c;",
            "ZZ)",
            "Lcom/bumptech/glide/load/engine/i",
            "<TR;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/i;->k:Lcom/bumptech/glide/load/c;

    iput-boolean p2, p0, Lcom/bumptech/glide/load/engine/i;->l:Z

    iput-boolean p3, p0, Lcom/bumptech/glide/load/engine/i;->m:Z

    return-object p0
.end method

.method a()V
    .locals 2

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/i;->r:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/i;->p:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/i;->v:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/i;->v:Z

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->u:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->b()V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->g:Lcom/bumptech/glide/load/engine/j;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/i;->k:Lcom/bumptech/glide/load/c;

    invoke-interface {v0, p0, v1}, Lcom/bumptech/glide/load/engine/j;->a(Lcom/bumptech/glide/load/engine/i;Lcom/bumptech/glide/load/c;)V

    goto :goto_0
.end method

.method public a(Lcom/bumptech/glide/load/engine/DecodeJob;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DecodeJob",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/i;->f()Lcom/bumptech/glide/load/engine/c/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/c/a;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/bumptech/glide/load/engine/GlideException;)V
    .locals 2

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/i;->q:Lcom/bumptech/glide/load/engine/GlideException;

    sget-object v0, Lcom/bumptech/glide/load/engine/i;->b:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Lcom/bumptech/glide/load/engine/q;Lcom/bumptech/glide/load/DataSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/q",
            "<TR;>;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/i;->n:Lcom/bumptech/glide/load/engine/q;

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/i;->o:Lcom/bumptech/glide/load/DataSource;

    sget-object v0, Lcom/bumptech/glide/load/engine/i;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Lcom/bumptech/glide/request/e;)V
    .locals 2

    invoke-static {}, Lcom/bumptech/glide/util/i;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->d:Lcom/bumptech/glide/util/a/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/a/b;->b()V

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/i;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->t:Lcom/bumptech/glide/load/engine/m;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/i;->o:Lcom/bumptech/glide/load/DataSource;

    invoke-interface {p1, v0, v1}, Lcom/bumptech/glide/request/e;->a(Lcom/bumptech/glide/load/engine/q;Lcom/bumptech/glide/load/DataSource;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/i;->r:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->q:Lcom/bumptech/glide/load/engine/GlideException;

    invoke-interface {p1, v0}, Lcom/bumptech/glide/request/e;->a(Lcom/bumptech/glide/load/engine/GlideException;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method b()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->d:Lcom/bumptech/glide/util/a/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/a/b;->b()V

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/i;->v:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->n:Lcom/bumptech/glide/load/engine/q;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/q;->e()V

    invoke-direct {p0, v4}, Lcom/bumptech/glide/load/engine/i;->a(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received a resource without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/i;->p:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already have resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->f:Lcom/bumptech/glide/load/engine/i$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/i;->n:Lcom/bumptech/glide/load/engine/q;

    iget-boolean v2, p0, Lcom/bumptech/glide/load/engine/i;->l:Z

    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/load/engine/i$a;->a(Lcom/bumptech/glide/load/engine/q;Z)Lcom/bumptech/glide/load/engine/m;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/i;->t:Lcom/bumptech/glide/load/engine/m;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/i;->p:Z

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->t:Lcom/bumptech/glide/load/engine/m;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/m;->f()V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->g:Lcom/bumptech/glide/load/engine/j;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/i;->k:Lcom/bumptech/glide/load/c;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/i;->t:Lcom/bumptech/glide/load/engine/m;

    invoke-interface {v0, v1, v2}, Lcom/bumptech/glide/load/engine/j;->a(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/m;)V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/e;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/i;->d(Lcom/bumptech/glide/request/e;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/i;->t:Lcom/bumptech/glide/load/engine/m;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/m;->f()V

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/i;->t:Lcom/bumptech/glide/load/engine/m;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/i;->o:Lcom/bumptech/glide/load/DataSource;

    invoke-interface {v0, v2, v3}, Lcom/bumptech/glide/request/e;->a(Lcom/bumptech/glide/load/engine/q;Lcom/bumptech/glide/load/DataSource;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->t:Lcom/bumptech/glide/load/engine/m;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/m;->g()V

    invoke-direct {p0, v4}, Lcom/bumptech/glide/load/engine/i;->a(Z)V

    goto :goto_0
.end method

.method public b(Lcom/bumptech/glide/load/engine/DecodeJob;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DecodeJob",
            "<TR;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/i;->u:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/DecodeJob;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->h:Lcom/bumptech/glide/load/engine/c/a;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/c/a;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/i;->f()Lcom/bumptech/glide/load/engine/c/a;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Lcom/bumptech/glide/request/e;)V
    .locals 1

    invoke-static {}, Lcom/bumptech/glide/util/i;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->d:Lcom/bumptech/glide/util/a/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/a/b;->b()V

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/i;->p:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/i;->r:Z

    if-eqz v0, :cond_2

    :cond_0
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/i;->c(Lcom/bumptech/glide/request/e;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/i;->a()V

    goto :goto_0
.end method

.method public b_()Lcom/bumptech/glide/util/a/b;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->d:Lcom/bumptech/glide/util/a/b;

    return-object v0
.end method

.method c()V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->d:Lcom/bumptech/glide/util/a/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/a/b;->b()V

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/i;->v:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not cancelled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->g:Lcom/bumptech/glide/load/engine/j;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/i;->k:Lcom/bumptech/glide/load/c;

    invoke-interface {v0, p0, v1}, Lcom/bumptech/glide/load/engine/j;->a(Lcom/bumptech/glide/load/engine/i;Lcom/bumptech/glide/load/c;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/i;->a(Z)V

    return-void
.end method

.method e()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->d:Lcom/bumptech/glide/util/a/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/a/b;->b()V

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/i;->v:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v3}, Lcom/bumptech/glide/load/engine/i;->a(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received an exception without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/i;->r:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already failed once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/i;->r:Z

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->g:Lcom/bumptech/glide/load/engine/j;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/i;->k:Lcom/bumptech/glide/load/c;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/bumptech/glide/load/engine/j;->a(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/m;)V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/e;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/i;->d(Lcom/bumptech/glide/request/e;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/i;->q:Lcom/bumptech/glide/load/engine/GlideException;

    invoke-interface {v0, v2}, Lcom/bumptech/glide/request/e;->a(Lcom/bumptech/glide/load/engine/GlideException;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, v3}, Lcom/bumptech/glide/load/engine/i;->a(Z)V

    goto :goto_0
.end method
