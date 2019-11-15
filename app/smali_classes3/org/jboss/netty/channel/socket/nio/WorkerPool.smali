.class public interface abstract Lorg/jboss/netty/channel/socket/nio/WorkerPool;
.super Ljava/lang/Object;
.source "WorkerPool.java"

# interfaces
.implements Lorg/jboss/netty/channel/socket/nio/NioSelectorPool;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lorg/jboss/netty/channel/socket/Worker;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/jboss/netty/channel/socket/nio/NioSelectorPool;"
    }
.end annotation


# virtual methods
.method public abstract nextWorker()Lorg/jboss/netty/channel/socket/Worker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method
