.class public Lorg/jboss/netty/container/osgi/NettyBundleActivator;
.super Ljava/lang/Object;
.source "NettyBundleActivator.java"

# interfaces
.implements Lorg/osgi/framework/BundleActivator;


# instance fields
.field private loggerFactory:Lorg/jboss/netty/logging/OsgiLoggerFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Lorg/osgi/framework/BundleContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/jboss/netty/logging/OsgiLoggerFactory;

    invoke-direct {v0, p1}, Lorg/jboss/netty/logging/OsgiLoggerFactory;-><init>(Lorg/osgi/framework/BundleContext;)V

    iput-object v0, p0, Lorg/jboss/netty/container/osgi/NettyBundleActivator;->loggerFactory:Lorg/jboss/netty/logging/OsgiLoggerFactory;

    iget-object v0, p0, Lorg/jboss/netty/container/osgi/NettyBundleActivator;->loggerFactory:Lorg/jboss/netty/logging/OsgiLoggerFactory;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->setDefaultFactory(Lorg/jboss/netty/logging/InternalLoggerFactory;)V

    return-void
.end method

.method public stop(Lorg/osgi/framework/BundleContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/container/osgi/NettyBundleActivator;->loggerFactory:Lorg/jboss/netty/logging/OsgiLoggerFactory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/container/osgi/NettyBundleActivator;->loggerFactory:Lorg/jboss/netty/logging/OsgiLoggerFactory;

    invoke-virtual {v0}, Lorg/jboss/netty/logging/OsgiLoggerFactory;->getFallback()Lorg/jboss/netty/logging/InternalLoggerFactory;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->setDefaultFactory(Lorg/jboss/netty/logging/InternalLoggerFactory;)V

    iget-object v0, p0, Lorg/jboss/netty/container/osgi/NettyBundleActivator;->loggerFactory:Lorg/jboss/netty/logging/OsgiLoggerFactory;

    invoke-virtual {v0}, Lorg/jboss/netty/logging/OsgiLoggerFactory;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/container/osgi/NettyBundleActivator;->loggerFactory:Lorg/jboss/netty/logging/OsgiLoggerFactory;

    :cond_0
    return-void
.end method
