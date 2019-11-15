.class final Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;
.super Ljava/lang/Object;
.source "SpdySession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/codec/spdy/SpdySession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StreamState"
.end annotation


# instance fields
.field private volatile localSideClosed:Z

.field private final pendingWriteQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lorg/jboss/netty/channel/MessageEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final priority:B

.field private final receiveWindowSize:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile receiveWindowSizeLowerBound:I

.field private receivedReply:Z

.field private volatile remoteSideClosed:Z

.field private final sendWindowSize:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(BZZII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->pendingWriteQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-byte p1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->priority:B

    iput-boolean p2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->remoteSideClosed:Z

    iput-boolean p3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->localSideClosed:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->sendWindowSize:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->receiveWindowSize:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method closeLocalSide()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->localSideClosed:Z

    return-void
.end method

.method closeRemoteSide()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->remoteSideClosed:Z

    return-void
.end method

.method getPendingWrite()Lorg/jboss/netty/channel/MessageEvent;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->pendingWriteQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    return-object v0
.end method

.method getPriority()B
    .locals 1

    iget-byte v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->priority:B

    return v0
.end method

.method getReceiveWindowSizeLowerBound()I
    .locals 1

    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->receiveWindowSizeLowerBound:I

    return v0
.end method

.method getSendWindowSize()I
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->sendWindowSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method hasReceivedReply()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->receivedReply:Z

    return v0
.end method

.method isLocalSideClosed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->localSideClosed:Z

    return v0
.end method

.method isRemoteSideClosed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->remoteSideClosed:Z

    return v0
.end method

.method putPendingWrite(Lorg/jboss/netty/channel/MessageEvent;)Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->pendingWriteQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method receivedReply()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->receivedReply:Z

    return-void
.end method

.method removePendingWrite()Lorg/jboss/netty/channel/MessageEvent;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->pendingWriteQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    return-object v0
.end method

.method setReceiveWindowSizeLowerBound(I)V
    .locals 0

    iput p1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->receiveWindowSizeLowerBound:I

    return-void
.end method

.method updateReceiveWindowSize(I)I
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->receiveWindowSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    return v0
.end method

.method updateSendWindowSize(I)I
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->sendWindowSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    return v0
.end method
