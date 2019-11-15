.class public abstract Lorg/jboss/netty/handler/execution/ChannelEventRunnable;
.super Ljava/lang/Object;
.source "ChannelEventRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lorg/jboss/netty/util/EstimatableObjectWrapper;


# static fields
.field protected static final PARENT:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

.field protected final e:Lorg/jboss/netty/channel/ChannelEvent;

.field estimatedSize:I

.field private final executor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->PARENT:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    iput-object p2, p0, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->e:Lorg/jboss/netty/channel/ChannelEvent;

    iput-object p3, p0, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method protected abstract doRun()V
.end method

.method public getContext()Lorg/jboss/netty/channel/ChannelHandlerContext;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    return-object v0
.end method

.method public getEvent()Lorg/jboss/netty/channel/ChannelEvent;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->e:Lorg/jboss/netty/channel/ChannelEvent;

    return-object v0
.end method

.method public final run()V
    .locals 0

    invoke-virtual {p0}, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->doRun()V

    return-void
.end method

.method public unwrap()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->e:Lorg/jboss/netty/channel/ChannelEvent;

    return-object v0
.end method
