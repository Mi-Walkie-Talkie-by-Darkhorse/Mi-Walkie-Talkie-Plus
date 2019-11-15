.class Lorg/jboss/netty/logging/Slf4JLogger;
.super Lorg/jboss/netty/logging/AbstractInternalLogger;
.source "Slf4JLogger.java"


# instance fields
.field private final logger:Lorg/slf4j/Logger;


# direct methods
.method constructor <init>(Lorg/slf4j/Logger;)V
    .locals 0

    invoke-direct {p0}, Lorg/jboss/netty/logging/AbstractInternalLogger;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/logging/Slf4JLogger;->logger:Lorg/slf4j/Logger;

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/Slf4JLogger;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/Slf4JLogger;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/Slf4JLogger;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/Slf4JLogger;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/Slf4JLogger;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/Slf4JLogger;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/Slf4JLogger;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public isErrorEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/Slf4JLogger;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isErrorEnabled()Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/Slf4JLogger;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v0

    return v0
.end method

.method public isWarnEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/Slf4JLogger;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/Slf4JLogger;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public warn(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/Slf4JLogger;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/Slf4JLogger;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
