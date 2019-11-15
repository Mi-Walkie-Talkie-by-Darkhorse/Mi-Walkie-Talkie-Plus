.class public interface abstract Lorg/jboss/netty/channel/socket/nio/BossPool;
.super Ljava/lang/Object;
.source "BossPool.java"

# interfaces
.implements Lorg/jboss/netty/channel/socket/nio/NioSelectorPool;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lorg/jboss/netty/channel/socket/nio/Boss;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/jboss/netty/channel/socket/nio/NioSelectorPool;"
    }
.end annotation


# virtual methods
.method public abstract nextBoss()Lorg/jboss/netty/channel/socket/nio/Boss;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method
