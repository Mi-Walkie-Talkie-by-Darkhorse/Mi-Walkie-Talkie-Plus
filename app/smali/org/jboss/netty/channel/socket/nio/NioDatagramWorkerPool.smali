.class public Lorg/jboss/netty/channel/socket/nio/NioDatagramWorkerPool;
.super Lorg/jboss/netty/channel/socket/nio/AbstractNioWorkerPool;
.source "NioDatagramWorkerPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jboss/netty/channel/socket/nio/AbstractNioWorkerPool",
        "<",
        "Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorkerPool;-><init>(Ljava/util/concurrent/Executor;I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createWorker(Ljava/util/concurrent/Executor;)Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorkerPool;->createWorker(Ljava/util/concurrent/Executor;)Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;

    move-result-object v0

    return-object v0
.end method

.method protected createWorker(Ljava/util/concurrent/Executor;)Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;

    invoke-direct {v0, p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
