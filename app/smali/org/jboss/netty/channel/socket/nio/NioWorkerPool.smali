.class public Lorg/jboss/netty/channel/socket/nio/NioWorkerPool;
.super Lorg/jboss/netty/channel/socket/nio/AbstractNioWorkerPool;
.source "NioWorkerPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jboss/netty/channel/socket/nio/AbstractNioWorkerPool",
        "<",
        "Lorg/jboss/netty/channel/socket/nio/NioWorker;",
        ">;"
    }
.end annotation


# instance fields
.field private final determiner:Lorg/jboss/netty/util/ThreadNameDeterminer;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jboss/netty/channel/socket/nio/NioWorkerPool;-><init>(Ljava/util/concurrent/Executor;ILorg/jboss/netty/util/ThreadNameDeterminer;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;ILorg/jboss/netty/util/ThreadNameDeterminer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorkerPool;-><init>(Ljava/util/concurrent/Executor;IZ)V

    iput-object p3, p0, Lorg/jboss/netty/channel/socket/nio/NioWorkerPool;->determiner:Lorg/jboss/netty/util/ThreadNameDeterminer;

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioWorkerPool;->init()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createWorker(Ljava/util/concurrent/Executor;)Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/NioWorkerPool;->createWorker(Ljava/util/concurrent/Executor;)Lorg/jboss/netty/channel/socket/nio/NioWorker;

    move-result-object v0

    return-object v0
.end method

.method protected createWorker(Ljava/util/concurrent/Executor;)Lorg/jboss/netty/channel/socket/nio/NioWorker;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lorg/jboss/netty/channel/socket/nio/NioWorker;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioWorkerPool;->determiner:Lorg/jboss/netty/util/ThreadNameDeterminer;

    invoke-direct {v0, p1, v1}, Lorg/jboss/netty/channel/socket/nio/NioWorker;-><init>(Ljava/util/concurrent/Executor;Lorg/jboss/netty/util/ThreadNameDeterminer;)V

    return-object v0
.end method
