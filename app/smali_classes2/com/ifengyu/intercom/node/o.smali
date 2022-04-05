.class public Lcom/ifengyu/intercom/node/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;
.implements Lcom/ifengyu/intercom/node/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/ifengyu/intercom/node/i;"
    }
.end annotation


# instance fields
.field private volatile a:Ljava/io/OutputStream;

.field private final b:Lcom/ifengyu/intercom/node/d;

.field private final c:Lcom/ifengyu/intercom/node/transport/j;

.field private final d:Ljava/util/concurrent/locks/Lock;

.field private final e:Lcom/ifengyu/intercom/node/transport/h;

.field private final f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Queue<",
            "Lcom/ifengyu/intercom/node/SendDataWrap;",
            ">;>;"
        }
    .end annotation
.end field

.field private final g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Queue<",
            "Lcom/ifengyu/intercom/node/SendDataWrap;",
            ">;>;"
        }
    .end annotation
.end field

.field private final h:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/d;Lcom/ifengyu/intercom/node/transport/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/node/o;->d:Ljava/util/concurrent/locks/Lock;

    invoke-static {}, Lcom/ifengyu/intercom/node/transport/i;->a()Lcom/ifengyu/intercom/node/transport/h;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/node/o;->e:Lcom/ifengyu/intercom/node/transport/h;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/node/o;->f:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/node/o;->g:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/node/o;->h:Landroid/util/SparseIntArray;

    iput-object p1, p0, Lcom/ifengyu/intercom/node/o;->a:Ljava/io/OutputStream;

    iput-object p2, p0, Lcom/ifengyu/intercom/node/o;->b:Lcom/ifengyu/intercom/node/d;

    iput-object p3, p0, Lcom/ifengyu/intercom/node/o;->c:Lcom/ifengyu/intercom/node/transport/j;

    return-void
.end method

.method private b()V
    .locals 7

    const-string v0, "TxCallable"

    const-string v1, "clear tx queue"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/ifengyu/intercom/node/o;->f:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v4, p0, Lcom/ifengyu/intercom/node/o;->f:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Queue;

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ifengyu/intercom/node/SendDataWrap;

    if-eqz v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    iget-object v6, v5, Lcom/ifengyu/intercom/node/SendDataWrap;->c:Lcom/google/protobuf/Message;

    if-eqz v6, :cond_1

    invoke-interface {v6}, Lcom/google/protobuf/Message;->toBuilder()Lcom/google/protobuf/Message$Builder;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/protobuf/Message$Builder;->clear()Lcom/google/protobuf/Message$Builder;

    goto :goto_1

    :cond_1
    iget-object v6, v5, Lcom/ifengyu/intercom/node/SendDataWrap;->e:[B

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/ifengyu/intercom/node/SendDataWrap;->e:[B

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "purged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " messages from writer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/node/o;->d:Ljava/util/concurrent/locks/Lock;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ifengyu/intercom/node/o;->d:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private d()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/node/o;->d:Ljava/util/concurrent/locks/Lock;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ifengyu/intercom/node/o;->d:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/node/o;->b:Lcom/ifengyu/intercom/node/d;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/d;->a()Ljava/lang/String;

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

    iget-object v0, p0, Lcom/ifengyu/intercom/node/o;->a:Ljava/io/OutputStream;

    if-eqz v0, :cond_3

    const-string v0, "data was null"

    invoke-static {p2, v0}, Lcom/ifengyu/intercom/i/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ifengyu/intercom/node/o;->f:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ifengyu/intercom/node/o;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/ifengyu/intercom/node/o;->g:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    :goto_0
    iget-object v2, p0, Lcom/ifengyu/intercom/node/o;->g:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/ifengyu/intercom/node/o;->h:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    instance-of p1, v1, Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz p1, :cond_2

    check-cast v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-interface {v1, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/o;->c()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "output stream is closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/o;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "TxCallable"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    check-cast v0, Lcom/ifengyu/intercom/node/n;

    :goto_0
    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/n;->b()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_b

    const-string v1, "TxCallable"

    const-string v3, "waiting for incoming msg to be sent..."

    invoke-static {v1, v3}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/o;->d()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/node/o;->f:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lcom/ifengyu/intercom/node/o;->g:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_1

    iget-object v5, p0, Lcom/ifengyu/intercom/node/o;->f:Landroid/util/SparseArray;

    iget-object v6, p0, Lcom/ifengyu/intercom/node/o;->g:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    iget-object v7, p0, Lcom/ifengyu/intercom/node/o;->g:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/ifengyu/intercom/node/o;->h:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_2

    iget-object v5, p0, Lcom/ifengyu/intercom/node/o;->f:Landroid/util/SparseArray;

    iget-object v6, p0, Lcom/ifengyu/intercom/node/o;->h:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/ifengyu/intercom/node/o;->g:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    iget-object v2, p0, Lcom/ifengyu/intercom/node/o;->h:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/ifengyu/intercom/node/o;->f:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_3
    if-ge v3, v1, :cond_a

    iget-object v4, p0, Lcom/ifengyu/intercom/node/o;->f:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ifengyu/intercom/node/SendDataWrap;

    if-eqz v5, :cond_9

    invoke-static {}, Lcom/ifengyu/intercom/i/z;->c()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, v5, Lcom/ifengyu/intercom/node/SendDataWrap;->c:Lcom/google/protobuf/Message;

    if-eqz v6, :cond_3

    instance-of v6, v6, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    if-eqz v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sending DolphinCommand:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/ifengyu/intercom/node/SendDataWrap;->c:Lcom/google/protobuf/Message;

    check-cast v7, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    invoke-static {v7}, Lcom/ifengyu/intercom/node/p;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "TxCallable"

    invoke-static {v7, v6}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_3
    iget-object v6, v5, Lcom/ifengyu/intercom/node/SendDataWrap;->e:[B

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sending data:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/ifengyu/intercom/node/SendDataWrap;->e:[B

    invoke-static {v7}, Lcom/ifengyu/intercom/node/transport/b;->a([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "TxCallable"

    invoke-static {v7, v6}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_4
    iget-object v6, v5, Lcom/ifengyu/intercom/node/SendDataWrap;->d:[B

    if-eqz v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sending btkey data:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/ifengyu/intercom/node/SendDataWrap;->d:[B

    invoke-static {v7}, Lcom/ifengyu/intercom/node/transport/b;->a([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "TxCallable"

    invoke-static {v7, v6}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_4
    iget-object v6, v5, Lcom/ifengyu/intercom/node/SendDataWrap;->c:Lcom/google/protobuf/Message;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/ifengyu/intercom/node/o;->e:Lcom/ifengyu/intercom/node/transport/h;

    iget-object v7, p0, Lcom/ifengyu/intercom/node/o;->a:Ljava/io/OutputStream;

    iget-object v8, p0, Lcom/ifengyu/intercom/node/o;->c:Lcom/ifengyu/intercom/node/transport/j;

    invoke-static {v6, v7, v5, v8}, Lcom/ifengyu/intercom/node/transport/i;->b(Lcom/ifengyu/intercom/node/transport/h;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/SendDataWrap;Lcom/ifengyu/intercom/node/transport/j;)V

    goto :goto_5

    :cond_6
    iget-object v6, v5, Lcom/ifengyu/intercom/node/SendDataWrap;->e:[B

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/ifengyu/intercom/node/o;->e:Lcom/ifengyu/intercom/node/transport/h;

    iget-object v7, p0, Lcom/ifengyu/intercom/node/o;->a:Ljava/io/OutputStream;

    iget-object v5, v5, Lcom/ifengyu/intercom/node/SendDataWrap;->e:[B

    iget-object v8, p0, Lcom/ifengyu/intercom/node/o;->c:Lcom/ifengyu/intercom/node/transport/j;

    invoke-static {v6, v7, v5, v8}, Lcom/ifengyu/intercom/node/transport/i;->a(Lcom/ifengyu/intercom/node/transport/h;Ljava/io/OutputStream;[BLcom/ifengyu/intercom/node/transport/j;)V

    goto :goto_5

    :cond_7
    iget-object v6, v5, Lcom/ifengyu/intercom/node/SendDataWrap;->d:[B

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/ifengyu/intercom/node/o;->e:Lcom/ifengyu/intercom/node/transport/h;

    iget-object v7, p0, Lcom/ifengyu/intercom/node/o;->a:Ljava/io/OutputStream;

    iget-object v8, p0, Lcom/ifengyu/intercom/node/o;->c:Lcom/ifengyu/intercom/node/transport/j;

    invoke-static {v6, v7, v5, v8}, Lcom/ifengyu/intercom/node/transport/i;->a(Lcom/ifengyu/intercom/node/transport/h;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/SendDataWrap;Lcom/ifengyu/intercom/node/transport/j;)V

    :cond_8
    :goto_5
    add-int/lit8 v2, v2, 0x1

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    :cond_a
    if-nez v2, :cond_0

    const-string v1, "TxCallable"

    const-string v2, "no message found."

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    const-string v0, "TxCallable"

    const-string v1, "TxCallable thread was interrupted"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/o;->b()V

    iget-object v0, p0, Lcom/ifengyu/intercom/node/o;->a:Ljava/io/OutputStream;

    if-eqz v0, :cond_b

    :try_start_3
    iget-object v0, p0, Lcom/ifengyu/intercom/node/o;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close output exception, e="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TxCallable"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    iput-object v2, p0, Lcom/ifengyu/intercom/node/o;->a:Ljava/io/OutputStream;

    :cond_b
    return-object v2
.end method
