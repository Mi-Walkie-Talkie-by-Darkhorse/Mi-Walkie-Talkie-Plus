.class public Lcom/bumptech/glide/load/engine/b/j;
.super Ljava/lang/Object;
.source "SafeKeyGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/b/j$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/util/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/util/e",
            "<",
            "Lcom/bumptech/glide/load/c;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Lcom/bumptech/glide/load/engine/b/j$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/util/e;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Lcom/bumptech/glide/util/e;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/b/j;->a:Lcom/bumptech/glide/util/e;

    const/16 v0, 0xa

    new-instance v1, Lcom/bumptech/glide/load/engine/b/j$1;

    invoke-direct {v1, p0}, Lcom/bumptech/glide/load/engine/b/j$1;-><init>(Lcom/bumptech/glide/load/engine/b/j;)V

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/a/a;->b(ILcom/bumptech/glide/util/a/a$a;)Landroid/support/v4/util/Pools$Pool;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/b/j;->b:Landroid/support/v4/util/Pools$Pool;

    return-void
.end method

.method private b(Lcom/bumptech/glide/load/c;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b/j;->b:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/b/j$a;

    :try_start_0
    iget-object v1, v0, Lcom/bumptech/glide/load/engine/b/j$a;->a:Ljava/security/MessageDigest;

    invoke-interface {p1, v1}, Lcom/bumptech/glide/load/c;->a(Ljava/security/MessageDigest;)V

    iget-object v1, v0, Lcom/bumptech/glide/load/engine/b/j$a;->a:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/util/i;->a([B)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/b/j;->b:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v2, v0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/b/j;->b:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v2, v0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    throw v1
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/c;)Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/b/j;->a:Lcom/bumptech/glide/util/e;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b/j;->a:Lcom/bumptech/glide/util/e;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/util/e;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/b/j;->b(Lcom/bumptech/glide/load/c;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/b/j;->a:Lcom/bumptech/glide/util/e;

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/b/j;->a:Lcom/bumptech/glide/util/e;

    invoke-virtual {v2, p1, v0}, Lcom/bumptech/glide/util/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
