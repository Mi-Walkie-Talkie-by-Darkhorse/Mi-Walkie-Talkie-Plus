.class public Lcom/ifengyu/intercom/p/k$b;
.super Ljava/lang/Object;
.source "ACache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/p/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicLong;

.field private final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final c:J

.field private final d:I

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/io/File;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected f:Ljava/io/File;


# direct methods
.method private constructor <init>(Lcom/ifengyu/intercom/p/k;Ljava/io/File;JI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/p/k$b;->e:Ljava/util/Map;

    .line 4
    iput-object p2, p0, Lcom/ifengyu/intercom/p/k$b;->f:Ljava/io/File;

    .line 5
    iput-wide p3, p0, Lcom/ifengyu/intercom/p/k$b;->c:J

    .line 6
    iput p5, p0, Lcom/ifengyu/intercom/p/k$b;->d:I

    .line 7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/p/k$b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 8
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/p/k$b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    invoke-direct {p0}, Lcom/ifengyu/intercom/p/k$b;->i()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ifengyu/intercom/p/k;Ljava/io/File;JILcom/ifengyu/intercom/p/k$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/ifengyu/intercom/p/k$b;-><init>(Lcom/ifengyu/intercom/p/k;Ljava/io/File;JI)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/p/k$b;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/p/k$b;->l(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/p/k$b;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/p/k$b;->n(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/p/k$b;Ljava/io/File;)J
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/p/k$b;->j(Ljava/io/File;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/p/k$b;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/p/k$b;->e:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/p/k$b;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/p/k$b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/p/k$b;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/p/k$b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic g(Lcom/ifengyu/intercom/p/k$b;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/p/k$b;->m(Ljava/io/File;)V

    return-void
.end method

.method static synthetic h(Lcom/ifengyu/intercom/p/k$b;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/p/k$b;->k(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private i()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ifengyu/intercom/p/k$b$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/p/k$b$a;-><init>(Lcom/ifengyu/intercom/p/k$b;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private j(Ljava/io/File;)J
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method private k(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/p/k$b;->l(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/p/k$b;->e:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method private l(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ifengyu/intercom/p/k$b;->f:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private m(Ljava/io/File;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/p/k$b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 2
    iget v2, p0, Lcom/ifengyu/intercom/p/k$b;->d:I

    if-le v0, v2, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/p/k$b;->o()J

    move-result-wide v0

    .line 4
    iget-object v2, p0, Lcom/ifengyu/intercom/p/k$b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v0, v0

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/p/k$b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/p/k$b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 7
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/p/k$b;->j(Ljava/io/File;)J

    move-result-wide v0

    .line 8
    iget-object v2, p0, Lcom/ifengyu/intercom/p/k$b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    :goto_1
    add-long/2addr v2, v0

    .line 9
    iget-wide v4, p0, Lcom/ifengyu/intercom/p/k$b;->c:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 10
    invoke-direct {p0}, Lcom/ifengyu/intercom/p/k$b;->o()J

    move-result-wide v2

    .line 11
    iget-object v4, p0, Lcom/ifengyu/intercom/p/k$b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v2, v2

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v2

    goto :goto_1

    .line 12
    :cond_1
    iget-object v2, p0, Lcom/ifengyu/intercom/p/k$b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    .line 15
    iget-object v1, p0, Lcom/ifengyu/intercom/p/k$b;->e:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private n(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/p/k$b;->k(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    return p1
.end method

.method private o()J
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/p/k$b;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/p/k$b;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/p/k$b;->e:Ljava/util/Map;

    monitor-enter v1

    .line 4
    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    if-nez v2, :cond_2

    .line 5
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 6
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    goto :goto_0

    .line 7
    :cond_2
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 8
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-gez v10, :cond_1

    .line 9
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    move-object v3, v5

    goto :goto_0

    .line 10
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-direct {p0, v2}, Lcom/ifengyu/intercom/p/k$b;->j(Ljava/io/File;)J

    move-result-wide v0

    .line 12
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 13
    iget-object v3, p0, Lcom/ifengyu/intercom/p/k$b;->e:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-wide v0

    :catchall_0
    move-exception v0

    .line 14
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method