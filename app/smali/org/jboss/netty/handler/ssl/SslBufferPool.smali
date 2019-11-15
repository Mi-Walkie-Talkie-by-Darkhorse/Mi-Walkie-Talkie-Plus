.class public Lorg/jboss/netty/handler/ssl/SslBufferPool;
.super Ljava/lang/Object;
.source "SslBufferPool.java"


# static fields
.field private static final DEFAULT_POOL_SIZE:I = 0x1246400

.field private static final MAX_PACKET_SIZE:I = 0x4919


# instance fields
.field private index:I

.field private final maxBufferCount:I

.field private final pool:[Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x1246400

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/ssl/SslBufferPool;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxPoolSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    div-int/lit16 v0, p1, 0x4919

    rem-int/lit16 v1, p1, 0x4919

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    new-array v1, v0, [Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lorg/jboss/netty/handler/ssl/SslBufferPool;->pool:[Ljava/nio/ByteBuffer;

    iput v0, p0, Lorg/jboss/netty/handler/ssl/SslBufferPool;->maxBufferCount:I

    return-void
.end method


# virtual methods
.method acquire()Ljava/nio/ByteBuffer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/jboss/netty/handler/ssl/SslBufferPool;->acquireBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized acquireBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/jboss/netty/handler/ssl/SslBufferPool;->index:I

    if-nez v0, :cond_0

    const/16 v0, 0x4919

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslBufferPool;->pool:[Ljava/nio/ByteBuffer;

    iget v1, p0, Lorg/jboss/netty/handler/ssl/SslBufferPool;->index:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jboss/netty/handler/ssl/SslBufferPool;->index:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMaxPoolSize()I
    .locals 1

    iget v0, p0, Lorg/jboss/netty/handler/ssl/SslBufferPool;->maxBufferCount:I

    mul-int/lit16 v0, v0, 0x4919

    return v0
.end method

.method public declared-synchronized getUnacquiredPoolSize()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/jboss/netty/handler/ssl/SslBufferPool;->index:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int/lit16 v0, v0, 0x4919

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method release(Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/ssl/SslBufferPool;->releaseBuffer(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public declared-synchronized releaseBuffer(Ljava/nio/ByteBuffer;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/jboss/netty/handler/ssl/SslBufferPool;->index:I

    iget v1, p0, Lorg/jboss/netty/handler/ssl/SslBufferPool;->maxBufferCount:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslBufferPool;->pool:[Ljava/nio/ByteBuffer;

    iget v1, p0, Lorg/jboss/netty/handler/ssl/SslBufferPool;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jboss/netty/handler/ssl/SslBufferPool;->index:I

    aput-object p1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
