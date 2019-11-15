.class Lorg/jboss/netty/logging/OsgiLogger;
.super Lorg/jboss/netty/logging/AbstractInternalLogger;
.source "OsgiLogger.java"


# instance fields
.field private final fallback:Lorg/jboss/netty/logging/InternalLogger;

.field private final name:Ljava/lang/String;

.field private final parent:Lorg/jboss/netty/logging/OsgiLoggerFactory;

.field private final prefix:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/jboss/netty/logging/OsgiLoggerFactory;Ljava/lang/String;Lorg/jboss/netty/logging/InternalLogger;)V
    .locals 2

    invoke-direct {p0}, Lorg/jboss/netty/logging/AbstractInternalLogger;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/logging/OsgiLogger;->parent:Lorg/jboss/netty/logging/OsgiLoggerFactory;

    iput-object p2, p0, Lorg/jboss/netty/logging/OsgiLogger;->name:Ljava/lang/String;

    iput-object p3, p0, Lorg/jboss/netty/logging/OsgiLogger;->fallback:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/logging/OsgiLogger;->prefix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lorg/jboss/netty/logging/OsgiLogger;->parent:Lorg/jboss/netty/logging/OsgiLoggerFactory;

    invoke-virtual {v0}, Lorg/jboss/netty/logging/OsgiLoggerFactory;->getLogService()Lorg/osgi/service/log/LogService;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/jboss/netty/logging/OsgiLogger;->prefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/osgi/service/log/LogService;->log(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/logging/OsgiLogger;->fallback:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0, p1}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    iget-object v0, p0, Lorg/jboss/netty/logging/OsgiLogger;->parent:Lorg/jboss/netty/logging/OsgiLoggerFactory;

    invoke-virtual {v0}, Lorg/jboss/netty/logging/OsgiLoggerFactory;->getLogService()Lorg/osgi/service/log/LogService;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/jboss/netty/logging/OsgiLogger;->prefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lorg/osgi/service/log/LogService;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/logging/OsgiLogger;->fallback:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public error(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lorg/jboss/netty/logging/OsgiLogger;->parent:Lorg/jboss/netty/logging/OsgiLoggerFactory;

    invoke-virtual {v0}, Lorg/jboss/netty/logging/OsgiLoggerFactory;->getLogService()Lorg/osgi/service/log/LogService;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/jboss/netty/logging/OsgiLogger;->prefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/osgi/service/log/LogService;->log(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/logging/OsgiLogger;->fallback:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0, p1}, Lorg/jboss/netty/logging/InternalLogger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    iget-object v0, p0, Lorg/jboss/netty/logging/OsgiLogger;->parent:Lorg/jboss/netty/logging/OsgiLoggerFactory;

    invoke-virtual {v0}, Lorg/jboss/netty/logging/OsgiLoggerFactory;->getLogService()Lorg/osgi/service/log/LogService;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/jboss/netty/logging/OsgiLogger;->prefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lorg/osgi/service/log/LogService;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/logging/OsgiLogger;->fallback:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public info(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lorg/jboss/netty/logging/OsgiLogger;->parent:Lorg/jboss/netty/logging/OsgiLoggerFactory;

    invoke-virtual {v0}, Lorg/jboss/netty/logging/OsgiLoggerFactory;->getLogService()Lorg/osgi/service/log/LogService;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/jboss/netty/logging/OsgiLogger;->prefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/osgi/service/log/LogService;->log(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/logging/OsgiLogger;->fallback:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0, p1}, Lorg/jboss/netty/logging/InternalLogger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    iget-object v0, p0, Lorg/jboss/netty/logging/OsgiLogger;->parent:Lorg/jboss/netty/logging/OsgiLoggerFactory;

    invoke-virtual {v0}, Lorg/jboss/netty/logging/OsgiLoggerFactory;->getLogService()Lorg/osgi/service/log/LogService;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/jboss/netty/logging/OsgiLogger;->prefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lorg/osgi/service/log/LogService;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/logging/OsgiLogger;->fallback:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/logging/InternalLogger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isDebugEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isErrorEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isWarnEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/OsgiLogger;->name:Ljava/lang/String;

    return-object v0
.end method

.method public warn(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lorg/jboss/netty/logging/OsgiLogger;->parent:Lorg/jboss/netty/logging/OsgiLoggerFactory;

    invoke-virtual {v0}, Lorg/jboss/netty/logging/OsgiLoggerFactory;->getLogService()Lorg/osgi/service/log/LogService;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/jboss/netty/logging/OsgiLogger;->prefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/osgi/service/log/LogService;->log(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/logging/OsgiLogger;->fallback:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0, p1}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    iget-object v0, p0, Lorg/jboss/netty/logging/OsgiLogger;->parent:Lorg/jboss/netty/logging/OsgiLoggerFactory;

    invoke-virtual {v0}, Lorg/jboss/netty/logging/OsgiLoggerFactory;->getLogService()Lorg/osgi/service/log/LogService;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/jboss/netty/logging/OsgiLogger;->prefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lorg/osgi/service/log/LogService;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/logging/OsgiLogger;->fallback:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
