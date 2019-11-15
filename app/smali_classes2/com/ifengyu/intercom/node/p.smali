.class public Lcom/ifengyu/intercom/node/p;
.super Ljava/lang/Object;
.source "TxCallable.java"

# interfaces
.implements Lcom/ifengyu/intercom/node/j;
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ifengyu/intercom/node/j;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile a:Ljava/io/OutputStream;

.field private final b:Lcom/ifengyu/intercom/node/e;

.field private final c:Lcom/ifengyu/intercom/node/transport/j;

.field private final d:Ljava/util/concurrent/locks/Lock;

.field private final e:Lcom/ifengyu/intercom/node/transport/h;

.field private final f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Queue",
            "<",
            "Lcom/ifengyu/intercom/node/SendDataWrap;",
            ">;>;"
        }
    .end annotation
.end field

.field private final g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Queue",
            "<",
            "Lcom/ifengyu/intercom/node/SendDataWrap;",
            ">;>;"
        }
    .end annotation
.end field

.field private final h:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/e;Lcom/ifengyu/intercom/node/transport/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/node/p;->d:Ljava/util/concurrent/locks/Lock;

    invoke-static {}, Lcom/ifengyu/intercom/node/transport/i;->a()Lcom/ifengyu/intercom/node/transport/h;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/node/p;->e:Lcom/ifengyu/intercom/node/transport/h;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/node/p;->f:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/node/p;->g:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/node/p;->h:Landroid/util/SparseIntArray;

    iput-object p1, p0, Lcom/ifengyu/intercom/node/p;->a:Ljava/io/OutputStream;

    iput-object p2, p0, Lcom/ifengyu/intercom/node/p;->b:Lcom/ifengyu/intercom/node/e;

    iput-object p3, p0, Lcom/ifengyu/intercom/node/p;->c:Lcom/ifengyu/intercom/node/transport/j;

    return-void
.end method

.method private c()V
    .locals 2

    iget-object v1, p0, Lcom/ifengyu/intercom/node/p;->d:Ljava/util/concurrent/locks/Lock;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/p;->d:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private d()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v1, p0, Lcom/ifengyu/intercom/node/p;->d:Ljava/util/concurrent/locks/Lock;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/p;->d:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private e()V
    .locals 6

    const/4 v0, 0x0

    const-string v1, "TxCallable"

    const-string v2, "clear tx queue"

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/ifengyu/intercom/node/p;->f:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v3, v0

    move v1, v0

    :goto_0
    if-ge v3, v4, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/node/p;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    move v2, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/node/SendDataWrap;

    if-eqz v1, :cond_1

    add-int/lit8 v2, v2, 0x1

    iget-object v5, v1, Lcom/ifengyu/intercom/node/SendDataWrap;->a:Lcom/google/protobuf/Message;

    if-eqz v5, :cond_0

    iget-object v1, v1, Lcom/ifengyu/intercom/node/SendDataWrap;->a:Lcom/google/protobuf/Message;

    invoke-interface {v1}, Lcom/google/protobuf/Message;->toBuilder()Lcom/google/protobuf/Message$Builder;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/protobuf/Message$Builder;->clear()Lcom/google/protobuf/Message$Builder;

    move v1, v2

    :goto_2
    move v2, v1

    goto :goto_1

    :cond_0
    iget-object v5, v1, Lcom/ifengyu/intercom/node/SendDataWrap;->c:[B

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    iput-object v5, v1, Lcom/ifengyu/intercom/node/SendDataWrap;->c:[B

    :cond_1
    move v1, v2

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v1, v2

    goto :goto_0

    :cond_3
    const-string v0, "TxCallable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "purged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " messages from writer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/node/p;->b:Lcom/ifengyu/intercom/node/e;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/e;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(ILcom/ifengyu/intercom/node/SendDataWrap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/node/p;->a:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "output stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "data was null"

    invoke-static {p2, v0}, Lcom/ifengyu/intercom/b/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ifengyu/intercom/node/p;->f:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/p;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/node/p;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v2, 0xa

    invoke-direct {v0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    :goto_0
    iget-object v2, p0, Lcom/ifengyu/intercom/node/p;->g:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/ifengyu/intercom/node/p;->h:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    instance-of v1, v0, Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v1, :cond_3

    check-cast v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    :goto_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/p;->c()V

    return-void

    :cond_2
    :try_start_1
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    invoke-interface {v0, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public b()Ljava/lang/Void;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "TxCallable"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    check-cast v0, Lcom/ifengyu/intercom/node/o;

    :goto_0
    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/o;->a()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "TxCallable"

    const-string v2, "waiting for incoming msg to be sent..."

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/p;->d()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v2, p0, Lcom/ifengyu/intercom/node/p;->f:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Lcom/ifengyu/intercom/node/p;->g:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    move v1, v6

    :goto_1
    if-ge v1, v3, :cond_2

    iget-object v4, p0, Lcom/ifengyu/intercom/node/p;->f:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/ifengyu/intercom/node/p;->g:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    iget-object v7, p0, Lcom/ifengyu/intercom/node/p;->g:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, "TxCallable"

    const-string v1, "TxCallable thread was interrupted"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/p;->e()V

    iget-object v0, p0, Lcom/ifengyu/intercom/node/p;->a:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    :try_start_2
    iget-object v0, p0, Lcom/ifengyu/intercom/node/p;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    iput-object v10, p0, Lcom/ifengyu/intercom/node/p;->a:Ljava/io/OutputStream;

    :cond_1
    return-object v10

    :catch_1
    move-exception v0

    const-string v1, "TxCallable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close output exception, e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/ifengyu/intercom/node/p;->h:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    move v1, v6

    :goto_3
    if-ge v1, v3, :cond_3

    iget-object v4, p0, Lcom/ifengyu/intercom/node/p;->f:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/ifengyu/intercom/node/p;->h:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/ifengyu/intercom/node/p;->g:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    iget-object v1, p0, Lcom/ifengyu/intercom/node/p;->h:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v1, p0, Lcom/ifengyu/intercom/node/p;->f:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v7

    move v5, v6

    move v4, v6

    :goto_4
    if-ge v5, v7, :cond_a

    iget-object v1, p0, Lcom/ifengyu/intercom/node/p;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/ifengyu/intercom/node/SendDataWrap;

    if-eqz v3, :cond_b

    invoke-static {}, Lcom/ifengyu/intercom/b/s;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v3, Lcom/ifengyu/intercom/node/SendDataWrap;->a:Lcom/google/protobuf/Message;

    if-eqz v1, :cond_6

    iget-object v1, v3, Lcom/ifengyu/intercom/node/SendDataWrap;->a:Lcom/google/protobuf/Message;

    instance-of v1, v1, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    if-eqz v1, :cond_4

    const-string v8, "TxCallable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sending DolphinCommand:"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v1, v3, Lcom/ifengyu/intercom/node/SendDataWrap;->a:Lcom/google/protobuf/Message;

    check-cast v1, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    invoke-static {v1}, Lcom/ifengyu/intercom/node/q;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_5
    iget-object v1, v3, Lcom/ifengyu/intercom/node/SendDataWrap;->a:Lcom/google/protobuf/Message;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/ifengyu/intercom/node/p;->e:Lcom/ifengyu/intercom/node/transport/h;

    iget-object v8, p0, Lcom/ifengyu/intercom/node/p;->a:Ljava/io/OutputStream;

    iget-object v9, p0, Lcom/ifengyu/intercom/node/p;->c:Lcom/ifengyu/intercom/node/transport/j;

    invoke-static {v1, v8, v3, v9}, Lcom/ifengyu/intercom/node/transport/i;->a(Lcom/ifengyu/intercom/node/transport/h;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/SendDataWrap;Lcom/ifengyu/intercom/node/transport/j;)V

    :cond_5
    :goto_6
    add-int/lit8 v1, v4, 0x1

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    :goto_7
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v4, v1

    goto :goto_4

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_6
    iget-object v1, v3, Lcom/ifengyu/intercom/node/SendDataWrap;->c:[B

    if-eqz v1, :cond_7

    const-string v1, "TxCallable"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sending data:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/ifengyu/intercom/node/SendDataWrap;->c:[B

    invoke-static {v9}, Lcom/ifengyu/intercom/node/transport/b;->a([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_7
    iget-object v1, v3, Lcom/ifengyu/intercom/node/SendDataWrap;->b:[B

    if-eqz v1, :cond_4

    const-string v1, "TxCallable"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sending btkey data:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/ifengyu/intercom/node/SendDataWrap;->b:[B

    invoke-static {v9}, Lcom/ifengyu/intercom/node/transport/b;->a([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_8
    iget-object v1, v3, Lcom/ifengyu/intercom/node/SendDataWrap;->c:[B

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/ifengyu/intercom/node/p;->e:Lcom/ifengyu/intercom/node/transport/h;

    iget-object v8, p0, Lcom/ifengyu/intercom/node/p;->a:Ljava/io/OutputStream;

    iget-object v3, v3, Lcom/ifengyu/intercom/node/SendDataWrap;->c:[B

    iget-object v9, p0, Lcom/ifengyu/intercom/node/p;->c:Lcom/ifengyu/intercom/node/transport/j;

    invoke-static {v1, v8, v3, v9}, Lcom/ifengyu/intercom/node/transport/i;->a(Lcom/ifengyu/intercom/node/transport/h;Ljava/io/OutputStream;[BLcom/ifengyu/intercom/node/transport/j;)V

    goto :goto_6

    :cond_9
    iget-object v1, v3, Lcom/ifengyu/intercom/node/SendDataWrap;->b:[B

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/ifengyu/intercom/node/p;->e:Lcom/ifengyu/intercom/node/transport/h;

    iget-object v8, p0, Lcom/ifengyu/intercom/node/p;->a:Ljava/io/OutputStream;

    iget-object v9, p0, Lcom/ifengyu/intercom/node/p;->c:Lcom/ifengyu/intercom/node/transport/j;

    invoke-static {v1, v8, v3, v9}, Lcom/ifengyu/intercom/node/transport/i;->b(Lcom/ifengyu/intercom/node/transport/h;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/SendDataWrap;Lcom/ifengyu/intercom/node/transport/j;)V

    goto :goto_6

    :cond_a
    if-nez v4, :cond_0

    const-string v1, "TxCallable"

    const-string v2, "no message found."

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    move v1, v4

    goto :goto_7
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/p;->b()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
