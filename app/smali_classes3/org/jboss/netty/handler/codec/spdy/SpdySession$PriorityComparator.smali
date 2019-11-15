.class final Lorg/jboss/netty/handler/codec/spdy/SpdySession$PriorityComparator;
.super Ljava/lang/Object;
.source "SpdySession.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/codec/spdy/SpdySession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PriorityComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jboss/netty/handler/codec/spdy/SpdySession;


# direct methods
.method constructor <init>(Lorg/jboss/netty/handler/codec/spdy/SpdySession;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$PriorityComparator;->this$0:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$PriorityComparator;->this$0:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->access$000(Lorg/jboss/netty/handler/codec/spdy/SpdySession;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$PriorityComparator;->this$0:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-static {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->access$000(Lorg/jboss/netty/handler/codec/spdy/SpdySession;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->getPriority()B

    move-result v0

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->getPriority()B

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/handler/codec/spdy/SpdySession$PriorityComparator;->compare(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method
