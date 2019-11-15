.class public Lorg/jboss/netty/handler/queue/BlockingReadTimeoutException;
.super Ljava/io/InterruptedIOException;
.source "BlockingReadTimeoutException.java"


# static fields
.field private static final serialVersionUID:J = 0x4f0cc8170817715L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/io/InterruptedIOException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lorg/jboss/netty/handler/queue/BlockingReadTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InterruptedIOException;-><init>()V

    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/queue/BlockingReadTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method
