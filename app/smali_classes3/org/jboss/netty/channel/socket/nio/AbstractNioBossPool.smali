.class public abstract Lorg/jboss/netty/channel/socket/nio/AbstractNioBossPool;
.super Ljava/lang/Object;
.source "AbstractNioBossPool.java"

# interfaces
.implements Lorg/jboss/netty/channel/socket/nio/BossPool;
.implements Lorg/jboss/netty/util/ExternalResourceReleasable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lorg/jboss/netty/channel/socket/nio/Boss;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/jboss/netty/channel/socket/nio/BossPool",
        "<TE;>;",
        "Lorg/jboss/netty/util/ExternalResourceReleasable;"
    }
.end annotation


# instance fields
.field private final bossExecutor:Ljava/util/concurrent/Executor;

.field private final bossIndex:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final bosses:[Lorg/jboss/netty/channel/socket/nio/Boss;

.field private volatile initDone:Z


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioBossPool;-><init>(Ljava/util/concurrent/Executor;IZ)V

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;IZ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioBossPool;->bossIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bossExecutor"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gtz p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bossCount ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "must be a positive integer."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-array v0, p2, [Lorg/jboss/netty/channel/socket/nio/Boss;

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioBossPool;->bosses:[Lorg/jboss/netty/channel/socket/nio/Boss;

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioBossPool;->bossExecutor:Ljava/util/concurrent/Executor;

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioBossPool;->init()V

    :cond_2
    return-void
.end method


# virtual methods
.method protected init()V
    .locals 3

    iget-boolean v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioBossPool;->initDone:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Init was done before"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioBossPool;->initDone:Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioBossPool;->bosses:[Lorg/jboss/netty/channel/socket/nio/Boss;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioBossPool;->bosses:[Lorg/jboss/netty/channel/socket/nio/Boss;

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioBossPool;->bossExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v2}, Lorg/jboss/netty/channel/socket/nio/AbstractNioBossPool;->newBoss(Ljava/util/concurrent/Executor;)Lorg/jboss/netty/channel/socket/nio/Boss;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected abstract newBoss(Ljava/util/concurrent/Executor;)Lorg/jboss/netty/channel/socket/nio/Boss;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")TE;"
        }
    .end annotation
.end method

.method public nextBoss()Lorg/jboss/netty/channel/socket/nio/Boss;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioBossPool;->bosses:[Lorg/jboss/netty/channel/socket/nio/Boss;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioBossPool;->bossIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioBossPool;->bosses:[Lorg/jboss/netty/channel/socket/nio/Boss;

    array-length v2, v2

    rem-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public rebuildSelectors()V
    .locals 4

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioBossPool;->bosses:[Lorg/jboss/netty/channel/socket/nio/Boss;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-interface {v3}, Lorg/jboss/netty/channel/socket/nio/Boss;->rebuildSelector()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public releaseExternalResources()V
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioBossPool;->shutdown()V

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioBossPool;->bossExecutor:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Lorg/jboss/netty/util/internal/ExecutorUtil;->shutdownNow(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public shutdown()V
    .locals 4

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioBossPool;->bosses:[Lorg/jboss/netty/channel/socket/nio/Boss;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-interface {v3}, Lorg/jboss/netty/channel/socket/nio/Boss;->shutdown()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
