.class public Lorg/jboss/netty/channel/socket/nio/NioServerBossPool;
.super Lorg/jboss/netty/channel/socket/nio/AbstractNioBossPool;
.source "NioServerBossPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jboss/netty/channel/socket/nio/AbstractNioBossPool",
        "<",
        "Lorg/jboss/netty/channel/socket/nio/NioServerBoss;",
        ">;"
    }
.end annotation


# instance fields
.field private final determiner:Lorg/jboss/netty/util/ThreadNameDeterminer;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jboss/netty/channel/socket/nio/NioServerBossPool;-><init>(Ljava/util/concurrent/Executor;ILorg/jboss/netty/util/ThreadNameDeterminer;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;ILorg/jboss/netty/util/ThreadNameDeterminer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioBossPool;-><init>(Ljava/util/concurrent/Executor;IZ)V

    iput-object p3, p0, Lorg/jboss/netty/channel/socket/nio/NioServerBossPool;->determiner:Lorg/jboss/netty/util/ThreadNameDeterminer;

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioServerBossPool;->init()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic newBoss(Ljava/util/concurrent/Executor;)Lorg/jboss/netty/channel/socket/nio/Boss;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/NioServerBossPool;->newBoss(Ljava/util/concurrent/Executor;)Lorg/jboss/netty/channel/socket/nio/NioServerBoss;

    move-result-object v0

    return-object v0
.end method

.method protected newBoss(Ljava/util/concurrent/Executor;)Lorg/jboss/netty/channel/socket/nio/NioServerBoss;
    .locals 2

    new-instance v0, Lorg/jboss/netty/channel/socket/nio/NioServerBoss;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioServerBossPool;->determiner:Lorg/jboss/netty/util/ThreadNameDeterminer;

    invoke-direct {v0, p1, v1}, Lorg/jboss/netty/channel/socket/nio/NioServerBoss;-><init>(Ljava/util/concurrent/Executor;Lorg/jboss/netty/util/ThreadNameDeterminer;)V

    return-object v0
.end method
