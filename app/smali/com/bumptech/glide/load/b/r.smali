.class public Lcom/bumptech/glide/load/b/r;
.super Ljava/lang/Object;
.source "MultiModelLoaderFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/b/r$a;,
        Lcom/bumptech/glide/load/b/r$c;,
        Lcom/bumptech/glide/load/b/r$b;
    }
.end annotation


# static fields
.field private static final a:Lcom/bumptech/glide/load/b/r$c;

.field private static final b:Lcom/bumptech/glide/load/b/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/n",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/b/r$b",
            "<**>;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/bumptech/glide/load/b/r$c;

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/bumptech/glide/load/b/r$b",
            "<**>;>;"
        }
    .end annotation
.end field

.field private final f:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Exception;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bumptech/glide/load/b/r$c;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/r$c;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/b/r;->a:Lcom/bumptech/glide/load/b/r$c;

    new-instance v0, Lcom/bumptech/glide/load/b/r$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/r$a;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/b/r;->b:Lcom/bumptech/glide/load/b/n;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/util/Pools$Pool;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Exception;",
            ">;>;)V"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/b/r;->a:Lcom/bumptech/glide/load/b/r$c;

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/b/r;-><init>(Landroid/support/v4/util/Pools$Pool;Lcom/bumptech/glide/load/b/r$c;)V

    return-void
.end method

.method constructor <init>(Landroid/support/v4/util/Pools$Pool;Lcom/bumptech/glide/load/b/r$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Exception;",
            ">;>;",
            "Lcom/bumptech/glide/load/b/r$c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/r;->c:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/r;->e:Ljava/util/Set;

    iput-object p1, p0, Lcom/bumptech/glide/load/b/r;->f:Landroid/support/v4/util/Pools$Pool;

    iput-object p2, p0, Lcom/bumptech/glide/load/b/r;->d:Lcom/bumptech/glide/load/b/r$c;

    return-void
.end method

.method private static a()Lcom/bumptech/glide/load/b/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/load/b/n",
            "<TModel;TData;>;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/b/r;->b:Lcom/bumptech/glide/load/b/n;

    return-object v0
.end method

.method private a(Lcom/bumptech/glide/load/b/r$b;)Lcom/bumptech/glide/load/b/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/b/r$b",
            "<**>;)",
            "Lcom/bumptech/glide/load/b/n",
            "<TModel;TData;>;"
        }
    .end annotation

    iget-object v0, p1, Lcom/bumptech/glide/load/b/r$b;->b:Lcom/bumptech/glide/load/b/o;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/load/b/o;->a(Lcom/bumptech/glide/load/b/r;)Lcom/bumptech/glide/load/b/n;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/util/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/b/n;

    return-object v0
.end method

.method private a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/o;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TModel;>;",
            "Ljava/lang/Class",
            "<TData;>;",
            "Lcom/bumptech/glide/load/b/o",
            "<TModel;TData;>;Z)V"
        }
    .end annotation

    new-instance v1, Lcom/bumptech/glide/load/b/r$b;

    invoke-direct {v1, p1, p2, p3}, Lcom/bumptech/glide/load/b/r$b;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/o;)V

    iget-object v2, p0, Lcom/bumptech/glide/load/b/r;->c:Ljava/util/List;

    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/b/r;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    invoke-interface {v2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/b/n;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TModel;>;",
            "Ljava/lang/Class",
            "<TData;>;)",
            "Lcom/bumptech/glide/load/b/n",
            "<TModel;TData;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/bumptech/glide/load/b/r;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/b/r$b;

    iget-object v5, p0, Lcom/bumptech/glide/load/b/r;->e:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/b/r$b;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/bumptech/glide/load/b/r;->e:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/b/r;->a(Lcom/bumptech/glide/load/b/r$b;)Lcom/bumptech/glide/load/b/n;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/bumptech/glide/load/b/r;->e:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcom/bumptech/glide/load/b/r;->e:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_3

    iget-object v0, p0, Lcom/bumptech/glide/load/b/r;->d:Lcom/bumptech/glide/load/b/r$c;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/r;->f:Landroid/support/v4/util/Pools$Pool;

    invoke-virtual {v0, v3, v1}, Lcom/bumptech/glide/load/b/r$c;->a(Ljava/util/List;Landroid/support/v4/util/Pools$Pool;)Lcom/bumptech/glide/load/b/q;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    :goto_1
    monitor-exit p0

    return-object v0

    :cond_3
    :try_start_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_4

    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/b/n;

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    invoke-static {}, Lcom/bumptech/glide/load/b/r;->a()Lcom/bumptech/glide/load/b/n;

    move-result-object v0

    goto :goto_1

    :cond_5
    new-instance v0, Lcom/bumptech/glide/Registry$NoModelLoaderAvailableException;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/Registry$NoModelLoaderAvailableException;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method declared-synchronized a(Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TModel;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/b/n",
            "<TModel;*>;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/bumptech/glide/load/b/r;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/b/r$b;

    iget-object v3, p0, Lcom/bumptech/glide/load/b/r;->e:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/b/r$b;->a(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/bumptech/glide/load/b/r;->e:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/b/r;->a(Lcom/bumptech/glide/load/b/r$b;)Lcom/bumptech/glide/load/b/n;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/bumptech/glide/load/b/r;->e:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcom/bumptech/glide/load/b/r;->e:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    monitor-exit p0

    return-object v1
.end method

.method declared-synchronized a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TModel;>;",
            "Ljava/lang/Class",
            "<TData;>;",
            "Lcom/bumptech/glide/load/b/o",
            "<TModel;TData;>;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bumptech/glide/load/b/r;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/o;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/bumptech/glide/load/b/r;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/b/r$b;

    iget-object v3, v0, Lcom/bumptech/glide/load/b/r$b;->a:Ljava/lang/Class;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/b/r$b;->a(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, v0, Lcom/bumptech/glide/load/b/r$b;->a:Ljava/lang/Class;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    monitor-exit p0

    return-object v1
.end method
