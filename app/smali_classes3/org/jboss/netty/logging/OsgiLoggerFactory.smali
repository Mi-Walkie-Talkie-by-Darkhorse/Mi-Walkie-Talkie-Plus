.class public Lorg/jboss/netty/logging/OsgiLoggerFactory;
.super Lorg/jboss/netty/logging/InternalLoggerFactory;
.source "OsgiLoggerFactory.java"


# instance fields
.field private final fallback:Lorg/jboss/netty/logging/InternalLoggerFactory;

.field volatile logService:Lorg/osgi/service/log/LogService;

.field private final logServiceTracker:Lorg/osgi/util/tracker/ServiceTracker;


# direct methods
.method public constructor <init>(Lorg/osgi/framework/BundleContext;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/logging/OsgiLoggerFactory;-><init>(Lorg/osgi/framework/BundleContext;Lorg/jboss/netty/logging/InternalLoggerFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/osgi/framework/BundleContext;Lorg/jboss/netty/logging/InternalLoggerFactory;)V
    .locals 3

    invoke-direct {p0}, Lorg/jboss/netty/logging/InternalLoggerFactory;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ctx"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    invoke-static {}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getDefaultFactory()Lorg/jboss/netty/logging/InternalLoggerFactory;

    move-result-object p2

    instance-of v0, p2, Lorg/jboss/netty/logging/OsgiLoggerFactory;

    if-eqz v0, :cond_1

    new-instance p2, Lorg/jboss/netty/logging/JdkLoggerFactory;

    invoke-direct {p2}, Lorg/jboss/netty/logging/JdkLoggerFactory;-><init>()V

    :cond_1
    iput-object p2, p0, Lorg/jboss/netty/logging/OsgiLoggerFactory;->fallback:Lorg/jboss/netty/logging/InternalLoggerFactory;

    new-instance v0, Lorg/jboss/netty/logging/OsgiLoggerFactory$1;

    const-string v1, "org.osgi.service.log.LogService"

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/jboss/netty/logging/OsgiLoggerFactory$1;-><init>(Lorg/jboss/netty/logging/OsgiLoggerFactory;Lorg/osgi/framework/BundleContext;Ljava/lang/String;Lorg/osgi/util/tracker/ServiceTrackerCustomizer;)V

    iput-object v0, p0, Lorg/jboss/netty/logging/OsgiLoggerFactory;->logServiceTracker:Lorg/osgi/util/tracker/ServiceTracker;

    iget-object v0, p0, Lorg/jboss/netty/logging/OsgiLoggerFactory;->logServiceTracker:Lorg/osgi/util/tracker/ServiceTracker;

    invoke-virtual {v0}, Lorg/osgi/util/tracker/ServiceTracker;->open()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/logging/OsgiLoggerFactory;->logService:Lorg/osgi/service/log/LogService;

    iget-object v0, p0, Lorg/jboss/netty/logging/OsgiLoggerFactory;->logServiceTracker:Lorg/osgi/util/tracker/ServiceTracker;

    invoke-virtual {v0}, Lorg/osgi/util/tracker/ServiceTracker;->close()V

    return-void
.end method

.method public getFallback()Lorg/jboss/netty/logging/InternalLoggerFactory;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/OsgiLoggerFactory;->fallback:Lorg/jboss/netty/logging/InternalLoggerFactory;

    return-object v0
.end method

.method public getLogService()Lorg/osgi/service/log/LogService;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/OsgiLoggerFactory;->logService:Lorg/osgi/service/log/LogService;

    return-object v0
.end method

.method public newInstance(Ljava/lang/String;)Lorg/jboss/netty/logging/InternalLogger;
    .locals 2

    new-instance v0, Lorg/jboss/netty/logging/OsgiLogger;

    iget-object v1, p0, Lorg/jboss/netty/logging/OsgiLoggerFactory;->fallback:Lorg/jboss/netty/logging/InternalLoggerFactory;

    invoke-virtual {v1, p1}, Lorg/jboss/netty/logging/InternalLoggerFactory;->newInstance(Ljava/lang/String;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lorg/jboss/netty/logging/OsgiLogger;-><init>(Lorg/jboss/netty/logging/OsgiLoggerFactory;Ljava/lang/String;Lorg/jboss/netty/logging/InternalLogger;)V

    return-object v0
.end method
