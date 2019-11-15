.class final Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;
.super Ljava/lang/Object;
.source "IdleStateHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/timeout/IdleStateHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "State"
.end annotation


# instance fields
.field volatile allIdleTimeout:Lorg/jboss/netty/util/Timeout;

.field volatile lastReadTime:J

.field volatile lastWriteTime:J

.field volatile readerIdleTimeout:Lorg/jboss/netty/util/Timeout;

.field state:I

.field volatile writerIdleTimeout:Lorg/jboss/netty/util/Timeout;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
