.class Lorg/jboss/netty/logging/CommonsLogger;
.super Lorg/jboss/netty/logging/AbstractInternalLogger;
.source "CommonsLogger.java"


# instance fields
.field private final logger:Lorg/apache/commons/logging/a;

.field private final loggerName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/commons/logging/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/jboss/netty/logging/AbstractInternalLogger;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/a;

    iput-object p2, p0, Lorg/jboss/netty/logging/CommonsLogger;->loggerName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/a;

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/a;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/logging/a;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/a;

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/a;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/a;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/logging/a;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/a;

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/a;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/a;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/logging/a;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/a;

    invoke-interface {v0}, Lorg/apache/commons/logging/a;->a()Z

    move-result v0

    return v0
.end method

.method public isErrorEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/a;

    invoke-interface {v0}, Lorg/apache/commons/logging/a;->b()Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/a;

    invoke-interface {v0}, Lorg/apache/commons/logging/a;->c()Z

    move-result v0

    return v0
.end method

.method public isWarnEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/a;

    invoke-interface {v0}, Lorg/apache/commons/logging/a;->d()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/CommonsLogger;->loggerName:Ljava/lang/String;

    return-object v0
.end method

.method public warn(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/a;

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/a;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/a;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/logging/a;->c(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method
