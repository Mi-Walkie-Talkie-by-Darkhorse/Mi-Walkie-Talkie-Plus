.class public Lorg/jboss/netty/container/spring/NettyLoggerConfigurator;
.super Ljava/lang/Object;
.source "NettyLoggerConfigurator.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/jboss/netty/logging/CommonsLoggerFactory;

    invoke-direct {v0}, Lorg/jboss/netty/logging/CommonsLoggerFactory;-><init>()V

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->setDefaultFactory(Lorg/jboss/netty/logging/InternalLoggerFactory;)V

    return-void
.end method
