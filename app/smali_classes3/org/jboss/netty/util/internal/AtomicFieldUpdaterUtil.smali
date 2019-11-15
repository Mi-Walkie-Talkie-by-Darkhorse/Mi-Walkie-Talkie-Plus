.class final Lorg/jboss/netty/util/internal/AtomicFieldUpdaterUtil;
.super Ljava/lang/Object;
.source "AtomicFieldUpdaterUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/util/internal/AtomicFieldUpdaterUtil$Node;
    }
.end annotation


# static fields
.field private static final AVAILABLE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lorg/jboss/netty/util/internal/AtomicFieldUpdaterUtil$Node;

    const-class v2, Lorg/jboss/netty/util/internal/AtomicFieldUpdaterUtil$Node;

    const-string v3, "next"

    invoke-static {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    new-instance v2, Lorg/jboss/netty/util/internal/AtomicFieldUpdaterUtil$Node;

    invoke-direct {v2}, Lorg/jboss/netty/util/internal/AtomicFieldUpdaterUtil$Node;-><init>()V

    invoke-virtual {v1, v2, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, v2, Lorg/jboss/netty/util/internal/AtomicFieldUpdaterUtil$Node;->next:Lorg/jboss/netty/util/internal/AtomicFieldUpdaterUtil$Node;

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    :goto_0
    sput-boolean v0, Lorg/jboss/netty/util/internal/AtomicFieldUpdaterUtil;->AVAILABLE:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isAvailable()Z
    .locals 1

    sget-boolean v0, Lorg/jboss/netty/util/internal/AtomicFieldUpdaterUtil;->AVAILABLE:Z

    return v0
.end method

.method static newIntUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater",
            "<TT;>;"
        }
    .end annotation

    sget-boolean v0, Lorg/jboss/netty/util/internal/AtomicFieldUpdaterUtil;->AVAILABLE:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static newRefUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TV;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater",
            "<TT;TV;>;"
        }
    .end annotation

    sget-boolean v0, Lorg/jboss/netty/util/internal/AtomicFieldUpdaterUtil;->AVAILABLE:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
