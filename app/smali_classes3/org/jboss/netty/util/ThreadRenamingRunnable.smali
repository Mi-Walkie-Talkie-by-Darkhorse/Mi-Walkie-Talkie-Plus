.class public Lorg/jboss/netty/util/ThreadRenamingRunnable;
.super Ljava/lang/Object;
.source "ThreadRenamingRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final logger:Lorg/jboss/netty/logging/InternalLogger;

.field private static volatile threadNameDeterminer:Lorg/jboss/netty/util/ThreadNameDeterminer;


# instance fields
.field private final determiner:Lorg/jboss/netty/util/ThreadNameDeterminer;

.field private final proposedThreadName:Ljava/lang/String;

.field private final runnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/jboss/netty/util/ThreadRenamingRunnable;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/util/ThreadRenamingRunnable;->logger:Lorg/jboss/netty/logging/InternalLogger;

    sget-object v0, Lorg/jboss/netty/util/ThreadNameDeterminer;->PROPOSED:Lorg/jboss/netty/util/ThreadNameDeterminer;

    sput-object v0, Lorg/jboss/netty/util/ThreadRenamingRunnable;->threadNameDeterminer:Lorg/jboss/netty/util/ThreadNameDeterminer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jboss/netty/util/ThreadRenamingRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;Lorg/jboss/netty/util/ThreadNameDeterminer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;Lorg/jboss/netty/util/ThreadNameDeterminer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "runnable"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "proposedThreadName"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lorg/jboss/netty/util/ThreadRenamingRunnable;->runnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lorg/jboss/netty/util/ThreadRenamingRunnable;->determiner:Lorg/jboss/netty/util/ThreadNameDeterminer;

    iput-object p2, p0, Lorg/jboss/netty/util/ThreadRenamingRunnable;->proposedThreadName:Ljava/lang/String;

    return-void
.end method

.method private getNewThreadName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/util/ThreadRenamingRunnable;->determiner:Lorg/jboss/netty/util/ThreadNameDeterminer;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/jboss/netty/util/ThreadRenamingRunnable;->getThreadNameDeterminer()Lorg/jboss/netty/util/ThreadNameDeterminer;

    move-result-object v0

    :cond_0
    iget-object v2, p0, Lorg/jboss/netty/util/ThreadRenamingRunnable;->proposedThreadName:Ljava/lang/String;

    invoke-interface {v0, p1, v2}, Lorg/jboss/netty/util/ThreadNameDeterminer;->determineThreadName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    :goto_1
    return-object p1

    :catch_0
    move-exception v0

    sget-object v2, Lorg/jboss/netty/util/ThreadRenamingRunnable;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v3, "Failed to determine the thread name"

    invoke-interface {v2, v3, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object p1, v0

    goto :goto_1
.end method

.method public static getThreadNameDeterminer()Lorg/jboss/netty/util/ThreadNameDeterminer;
    .locals 1

    sget-object v0, Lorg/jboss/netty/util/ThreadRenamingRunnable;->threadNameDeterminer:Lorg/jboss/netty/util/ThreadNameDeterminer;

    return-object v0
.end method

.method public static setThreadNameDeterminer(Lorg/jboss/netty/util/ThreadNameDeterminer;)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "threadNameDeterminer"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sput-object p0, Lorg/jboss/netty/util/ThreadRenamingRunnable;->threadNameDeterminer:Lorg/jboss/netty/util/ThreadNameDeterminer;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/jboss/netty/util/ThreadRenamingRunnable;->getNewThreadName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :try_start_0
    invoke-virtual {v2, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/util/ThreadRenamingRunnable;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :cond_0
    return-void

    :catch_0
    move-exception v1

    sget-object v4, Lorg/jboss/netty/util/ThreadRenamingRunnable;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v5, "Failed to rename a thread due to security restriction."

    invoke-interface {v4, v5, v1}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :cond_2
    throw v0
.end method
