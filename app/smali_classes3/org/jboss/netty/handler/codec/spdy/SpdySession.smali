.class final Lorg/jboss/netty/handler/codec/spdy/SpdySession;
.super Ljava/lang/Object;
.source "SpdySession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/codec/spdy/SpdySession$PriorityComparator;,
        Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;
    }
.end annotation


# static fields
.field private static final STREAM_CLOSED:Lorg/jboss/netty/handler/codec/spdy/SpdyProtocolException;


# instance fields
.field private final activeStreams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdyProtocolException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyProtocolException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->STREAM_CLOSED:Lorg/jboss/netty/handler/codec/spdy/SpdyProtocolException;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->activeStreams:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lorg/jboss/netty/handler/codec/spdy/SpdySession;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->activeStreams:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method acceptStream(IBZZII)V
    .locals 8

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    iget-object v6, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->activeStreams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;-><init>(BZZII)V

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method closeLocalSide(I)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->activeStreams:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->closeLocalSide()V

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->isRemoteSideClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->activeStreams:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method closeRemoteSide(I)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->activeStreams:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->closeRemoteSide()V

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->isLocalSideClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->activeStreams:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method getActiveStreams()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lorg/jboss/netty/handler/codec/spdy/SpdySession$PriorityComparator;

    invoke-direct {v1, p0}, Lorg/jboss/netty/handler/codec/spdy/SpdySession$PriorityComparator;-><init>(Lorg/jboss/netty/handler/codec/spdy/SpdySession;)V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->activeStreams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method getPendingWrite(I)Lorg/jboss/netty/channel/MessageEvent;
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->activeStreams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->getPendingWrite()Lorg/jboss/netty/channel/MessageEvent;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getReceiveWindowSizeLowerBound(I)I
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->activeStreams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->getReceiveWindowSizeLowerBound()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getSendWindowSize(I)I
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->activeStreams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->getSendWindowSize()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method hasReceivedReply(I)Z
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->activeStreams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->hasReceivedReply()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isActiveStream(I)Z
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->activeStreams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isLocalSideClosed(I)Z
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->activeStreams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->isLocalSideClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRemoteSideClosed(I)Z
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->activeStreams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->isRemoteSideClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method noActiveStreams()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->activeStreams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method numActiveStreams()I
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->activeStreams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method putPendingWrite(ILorg/jboss/netty/channel/MessageEvent;)Z
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->activeStreams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->putPendingWrite(Lorg/jboss/netty/channel/MessageEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method receivedReply(I)V
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->activeStreams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->receivedReply()V

    :cond_0
    return-void
.end method

.method removePendingWrite(I)Lorg/jboss/netty/channel/MessageEvent;
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->activeStreams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->removePendingWrite()Lorg/jboss/netty/channel/MessageEvent;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method removeStream(I)V
    .locals 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->activeStreams:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->activeStreams:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->removePendingWrite()Lorg/jboss/netty/channel/MessageEvent;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->STREAM_CLOSED:Lorg/jboss/netty/handler/codec/spdy/SpdyProtocolException;

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->removePendingWrite()Lorg/jboss/netty/channel/MessageEvent;

    move-result-object v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method updateAllReceiveWindowSizes(I)V
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->activeStreams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;

    invoke-virtual {v0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->updateReceiveWindowSize(I)I

    if-gez p1, :cond_0

    invoke-virtual {v0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->setReceiveWindowSizeLowerBound(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method updateReceiveWindowSize(II)I
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->activeStreams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;

    if-lez p2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->setReceiveWindowSizeLowerBound(I)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->updateReceiveWindowSize(I)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method updateSendWindowSize(II)I
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->activeStreams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->updateSendWindowSize(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
