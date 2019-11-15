.class Lorg/jboss/netty/logging/JBossLogger;
.super Lorg/jboss/netty/logging/AbstractInternalLogger;
.source "JBossLogger.java"


# instance fields
.field private final logger:Lorg/jboss/logging/Logger;


# direct methods
.method constructor <init>(Lorg/jboss/logging/Logger;)V
    .locals 0

    invoke-direct {p0}, Lorg/jboss/netty/logging/AbstractInternalLogger;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/logging/JBossLogger;->logger:Lorg/jboss/logging/Logger;

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/JBossLogger;->logger:Lorg/jboss/logging/Logger;

    invoke-virtual {v0, p1}, Lorg/jboss/logging/Logger;->debug(Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/JBossLogger;->logger:Lorg/jboss/logging/Logger;

    invoke-virtual {v0, p1, p2}, Lorg/jboss/logging/Logger;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/JBossLogger;->logger:Lorg/jboss/logging/Logger;

    invoke-virtual {v0, p1}, Lorg/jboss/logging/Logger;->error(Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/JBossLogger;->logger:Lorg/jboss/logging/Logger;

    invoke-virtual {v0, p1, p2}, Lorg/jboss/logging/Logger;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/JBossLogger;->logger:Lorg/jboss/logging/Logger;

    invoke-virtual {v0, p1}, Lorg/jboss/logging/Logger;->info(Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/JBossLogger;->logger:Lorg/jboss/logging/Logger;

    invoke-virtual {v0, p1, p2}, Lorg/jboss/logging/Logger;->info(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/JBossLogger;->logger:Lorg/jboss/logging/Logger;

    invoke-virtual {v0}, Lorg/jboss/logging/Logger;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public isErrorEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/JBossLogger;->logger:Lorg/jboss/logging/Logger;

    invoke-virtual {v0}, Lorg/jboss/logging/Logger;->isInfoEnabled()Z

    move-result v0

    return v0
.end method

.method public isWarnEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/JBossLogger;->logger:Lorg/jboss/logging/Logger;

    invoke-virtual {v0}, Lorg/jboss/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public warn(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/JBossLogger;->logger:Lorg/jboss/logging/Logger;

    invoke-virtual {v0, p1}, Lorg/jboss/logging/Logger;->warn(Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/JBossLogger;->logger:Lorg/jboss/logging/Logger;

    invoke-virtual {v0, p1, p2}, Lorg/jboss/logging/Logger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method
