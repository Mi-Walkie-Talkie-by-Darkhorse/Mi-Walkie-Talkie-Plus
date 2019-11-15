.class final Lorg/jboss/netty/logging/InternalLoggerFactory$1;
.super Ljava/lang/Object;
.source "InternalLoggerFactory.java"

# interfaces
.implements Lorg/jboss/netty/logging/InternalLogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/String;)Lorg/jboss/netty/logging/InternalLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$logger:Lorg/jboss/netty/logging/InternalLogger;


# direct methods
.method constructor <init>(Lorg/jboss/netty/logging/InternalLogger;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/logging/InternalLoggerFactory$1;->val$logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/InternalLoggerFactory$1;->val$logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0, p1}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {p2}, Lorg/jboss/netty/util/internal/StackTraceSimplifier;->simplify(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lorg/jboss/netty/logging/InternalLoggerFactory$1;->val$logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/InternalLoggerFactory$1;->val$logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0, p1}, Lorg/jboss/netty/logging/InternalLogger;->error(Ljava/lang/String;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {p2}, Lorg/jboss/netty/util/internal/StackTraceSimplifier;->simplify(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lorg/jboss/netty/logging/InternalLoggerFactory$1;->val$logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/InternalLoggerFactory$1;->val$logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0, p1}, Lorg/jboss/netty/logging/InternalLogger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {p2}, Lorg/jboss/netty/util/internal/StackTraceSimplifier;->simplify(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lorg/jboss/netty/logging/InternalLoggerFactory$1;->val$logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/logging/InternalLogger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/InternalLoggerFactory$1;->val$logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0}, Lorg/jboss/netty/logging/InternalLogger;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lorg/jboss/netty/logging/InternalLogLevel;)Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/InternalLoggerFactory$1;->val$logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0, p1}, Lorg/jboss/netty/logging/InternalLogger;->isEnabled(Lorg/jboss/netty/logging/InternalLogLevel;)Z

    move-result v0

    return v0
.end method

.method public isErrorEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/InternalLoggerFactory$1;->val$logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0}, Lorg/jboss/netty/logging/InternalLogger;->isErrorEnabled()Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/InternalLoggerFactory$1;->val$logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0}, Lorg/jboss/netty/logging/InternalLogger;->isInfoEnabled()Z

    move-result v0

    return v0
.end method

.method public isWarnEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/InternalLoggerFactory$1;->val$logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v0

    return v0
.end method

.method public log(Lorg/jboss/netty/logging/InternalLogLevel;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/InternalLoggerFactory$1;->val$logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/logging/InternalLogger;->log(Lorg/jboss/netty/logging/InternalLogLevel;Ljava/lang/String;)V

    return-void
.end method

.method public log(Lorg/jboss/netty/logging/InternalLogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {p3}, Lorg/jboss/netty/util/internal/StackTraceSimplifier;->simplify(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lorg/jboss/netty/logging/InternalLoggerFactory$1;->val$logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/logging/InternalLogger;->log(Lorg/jboss/netty/logging/InternalLogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/InternalLoggerFactory$1;->val$logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0, p1}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {p2}, Lorg/jboss/netty/util/internal/StackTraceSimplifier;->simplify(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lorg/jboss/netty/logging/InternalLoggerFactory$1;->val$logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
