.class public Lorg/jboss/netty/util/HashedWheelTimer;
.super Ljava/lang/Object;
.source "HashedWheelTimer.java"

# interfaces
.implements Lorg/jboss/netty/util/Timer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;,
        Lorg/jboss/netty/util/HashedWheelTimer$Worker;
    }
.end annotation


# static fields
.field public static final WORKER_STATE_INIT:I = 0x0

.field public static final WORKER_STATE_SHUTDOWN:I = 0x2

.field public static final WORKER_STATE_STARTED:I = 0x1

.field private static final id:Ljava/util/concurrent/atomic/AtomicInteger;

.field static final logger:Lorg/jboss/netty/logging/InternalLogger;

.field private static final misuseDetector:Lorg/jboss/netty/util/internal/SharedResourceMisuseDetector;


# instance fields
.field final iterators:[Lorg/jboss/netty/util/internal/ReusableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/jboss/netty/util/internal/ReusableIterator",
            "<",
            "Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;",
            ">;"
        }
    .end annotation
.end field

.field final lock:Ljava/util/concurrent/locks/ReadWriteLock;

.field final mask:I

.field final tickDuration:J

.field final wheel:[Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Set",
            "<",
            "Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;",
            ">;"
        }
    .end annotation
.end field

.field volatile wheelCursor:I

.field private final worker:Lorg/jboss/netty/util/HashedWheelTimer$Worker;

.field final workerState:Ljava/util/concurrent/atomic/AtomicInteger;

.field final workerThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/jboss/netty/util/HashedWheelTimer;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/util/HashedWheelTimer;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lorg/jboss/netty/util/HashedWheelTimer;->id:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lorg/jboss/netty/util/internal/SharedResourceMisuseDetector;

    const-class v1, Lorg/jboss/netty/util/HashedWheelTimer;

    invoke-direct {v0, v1}, Lorg/jboss/netty/util/internal/SharedResourceMisuseDetector;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/jboss/netty/util/HashedWheelTimer;->misuseDetector:Lorg/jboss/netty/util/internal/SharedResourceMisuseDetector;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/HashedWheelTimer;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method

.method public constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/jboss/netty/util/HashedWheelTimer;-><init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(JLjava/util/concurrent/TimeUnit;I)V
    .locals 7

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/util/HashedWheelTimer;-><init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 3

    const-wide/16 v0, 0x64

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/jboss/netty/util/HashedWheelTimer;-><init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;)V
    .locals 6

    const/16 v5, 0x200

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/util/HashedWheelTimer;-><init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;I)V
    .locals 8

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lorg/jboss/netty/util/HashedWheelTimer;-><init>(Ljava/util/concurrent/ThreadFactory;Lorg/jboss/netty/util/ThreadNameDeterminer;JLjava/util/concurrent/TimeUnit;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;Lorg/jboss/netty/util/ThreadNameDeterminer;JLjava/util/concurrent/TimeUnit;I)V
    .locals 9

    const-wide v6, 0x7fffffffffffffffL

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;

    invoke-direct {v0, p0}, Lorg/jboss/netty/util/HashedWheelTimer$Worker;-><init>(Lorg/jboss/netty/util/HashedWheelTimer;)V

    iput-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer;->worker:Lorg/jboss/netty/util/HashedWheelTimer$Worker;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer;->workerState:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "threadFactory"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p5, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "unit"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tickDuration must be greater than 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-gtz p6, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ticksPerWheel must be greater than 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {p6}, Lorg/jboss/netty/util/HashedWheelTimer;->createWheel(I)[Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer;->wheel:[Ljava/util/Set;

    iget-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer;->wheel:[Ljava/util/Set;

    invoke-static {v0}, Lorg/jboss/netty/util/HashedWheelTimer;->createIterators([Ljava/util/Set;)[Lorg/jboss/netty/util/internal/ReusableIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer;->iterators:[Lorg/jboss/netty/util/internal/ReusableIterator;

    iget-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer;->wheel:[Ljava/util/Set;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jboss/netty/util/HashedWheelTimer;->mask:I

    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jboss/netty/util/HashedWheelTimer;->tickDuration:J

    iget-wide v0, p0, Lorg/jboss/netty/util/HashedWheelTimer;->tickDuration:J

    iget-object v2, p0, Lorg/jboss/netty/util/HashedWheelTimer;->wheel:[Ljava/util/Set;

    array-length v2, v2

    int-to-long v2, v2

    div-long v2, v6, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "tickDuration: %d (expected: 0 < tickDuration in nanos < %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/jboss/netty/util/HashedWheelTimer;->wheel:[Ljava/util/Set;

    array-length v4, v4

    int-to-long v4, v4

    div-long v4, v6, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lorg/jboss/netty/util/ThreadRenamingRunnable;

    iget-object v1, p0, Lorg/jboss/netty/util/HashedWheelTimer;->worker:Lorg/jboss/netty/util/HashedWheelTimer$Worker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hashed wheel timer #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/jboss/netty/util/HashedWheelTimer;->id:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lorg/jboss/netty/util/ThreadRenamingRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;Lorg/jboss/netty/util/ThreadNameDeterminer;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer;->workerThread:Ljava/lang/Thread;

    sget-object v0, Lorg/jboss/netty/util/HashedWheelTimer;->misuseDetector:Lorg/jboss/netty/util/internal/SharedResourceMisuseDetector;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/SharedResourceMisuseDetector;->increase()V

    return-void
.end method

.method private static createIterators([Ljava/util/Set;)[Lorg/jboss/netty/util/internal/ReusableIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Set",
            "<",
            "Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;",
            ">;)[",
            "Lorg/jboss/netty/util/internal/ReusableIterator",
            "<",
            "Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;",
            ">;"
        }
    .end annotation

    array-length v0, p0

    new-array v2, v0, [Lorg/jboss/netty/util/internal/ReusableIterator;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-object v0, p0, v1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/util/internal/ReusableIterator;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private static createWheel(I)[Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Ljava/util/Set",
            "<",
            "Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;",
            ">;"
        }
    .end annotation

    if-gtz p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ticksPerWheel must be greater than 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    if-le p0, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ticksPerWheel may not be greater than 2^30: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p0}, Lorg/jboss/netty/util/HashedWheelTimer;->normalizeTicksPerWheel(I)I

    move-result v0

    new-array v1, v0, [Ljava/util/Set;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    new-instance v2, Lorg/jboss/netty/util/MapBackedSet;

    new-instance v3, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;

    const/16 v4, 0x10

    const v5, 0x3f733333    # 0.95f

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;-><init>(IFI)V

    invoke-direct {v2, v3}, Lorg/jboss/netty/util/MapBackedSet;-><init>(Ljava/util/Map;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private static normalizeTicksPerWheel(I)I
    .locals 1

    const/4 v0, 0x1

    :goto_0
    if-ge v0, p0, :cond_0

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method


# virtual methods
.method public newTimeout(Lorg/jboss/netty/util/TimerTask;JLjava/util/concurrent/TimeUnit;)Lorg/jboss/netty/util/Timeout;
    .locals 6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "task"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p4, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "unit"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lorg/jboss/netty/util/HashedWheelTimer;->start()V

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    new-instance v4, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;

    add-long/2addr v0, v2

    invoke-direct {v4, p0, p1, v0, v1}, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;-><init>(Lorg/jboss/netty/util/HashedWheelTimer;Lorg/jboss/netty/util/TimerTask;J)V

    invoke-virtual {p0, v4, v2, v3}, Lorg/jboss/netty/util/HashedWheelTimer;->scheduleTimeout(Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;J)V

    return-object v4
.end method

.method scheduleTimeout(Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;J)V
    .locals 8

    const-wide/16 v2, 0x1

    const-wide/16 v6, 0x0

    iget-wide v0, p0, Lorg/jboss/netty/util/HashedWheelTimer;->tickDuration:J

    add-long/2addr v0, p2

    sub-long/2addr v0, v2

    iget-wide v4, p0, Lorg/jboss/netty/util/HashedWheelTimer;->tickDuration:J

    div-long/2addr v0, v4

    cmp-long v4, v0, v6

    if-gez v4, :cond_0

    iget-wide v0, p0, Lorg/jboss/netty/util/HashedWheelTimer;->tickDuration:J

    div-long v0, p2, v0

    :cond_0
    cmp-long v4, v0, v6

    if-nez v4, :cond_1

    move-wide v0, v2

    :cond_1
    iget v4, p0, Lorg/jboss/netty/util/HashedWheelTimer;->mask:I

    int-to-long v4, v4

    and-long/2addr v4, v0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    sub-long/2addr v0, v2

    :cond_2
    iget-object v2, p0, Lorg/jboss/netty/util/HashedWheelTimer;->wheel:[Ljava/util/Set;

    array-length v2, v2

    int-to-long v2, v2

    div-long v2, v0, v2

    iget-object v4, p0, Lorg/jboss/netty/util/HashedWheelTimer;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v4, p0, Lorg/jboss/netty/util/HashedWheelTimer;->workerState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot enqueue after shutdown"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/jboss/netty/util/HashedWheelTimer;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_3
    :try_start_1
    iget v4, p0, Lorg/jboss/netty/util/HashedWheelTimer;->wheelCursor:I

    int-to-long v4, v4

    add-long/2addr v0, v4

    iget v4, p0, Lorg/jboss/netty/util/HashedWheelTimer;->mask:I

    int-to-long v4, v4

    and-long/2addr v0, v4

    long-to-int v0, v0

    iput v0, p1, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;->stopIndex:I

    iput-wide v2, p1, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;->remainingRounds:J

    iget-object v1, p0, Lorg/jboss/netty/util/HashedWheelTimer;->wheel:[Ljava/util/Set;

    aget-object v0, v1, v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public start()V
    .locals 3

    iget-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer;->workerState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/Error;

    const-string v1, "Invalid WorkerState"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer;->workerState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    :pswitch_1
    return-void

    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot be started once stopped"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public stop()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/jboss/netty/util/Timeout;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v3, p0, Lorg/jboss/netty/util/HashedWheelTimer;->workerThread:Ljava/lang/Thread;

    if-ne v0, v3, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lorg/jboss/netty/util/HashedWheelTimer;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".stop() cannot be called from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lorg/jboss/netty/util/TimerTask;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer;->workerState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer;->workerState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    move v0, v1

    :goto_1
    iget-object v3, p0, Lorg/jboss/netty/util/HashedWheelTimer;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/jboss/netty/util/HashedWheelTimer;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    :try_start_0
    iget-object v3, p0, Lorg/jboss/netty/util/HashedWheelTimer;->workerThread:Ljava/lang/Thread;

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_3
    sget-object v0, Lorg/jboss/netty/util/HashedWheelTimer;->misuseDetector:Lorg/jboss/netty/util/internal/SharedResourceMisuseDetector;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/SharedResourceMisuseDetector;->decrease()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p0, Lorg/jboss/netty/util/HashedWheelTimer;->wheel:[Ljava/util/Set;

    array-length v3, v2

    :goto_2
    if-ge v1, v3, :cond_4

    aget-object v4, v2, v1

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method
