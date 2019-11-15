.class public abstract Lorg/jboss/netty/channel/AbstractChannel;
.super Ljava/lang/Object;
.source "AbstractChannel.java"

# interfaces
.implements Lorg/jboss/netty/channel/Channel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/AbstractChannel$ChannelCloseFuture;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final allChannels:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/jboss/netty/channel/Channel;",
            ">;"
        }
    .end annotation
.end field

.field private static final random:Ljava/util/Random;


# instance fields
.field private volatile attachment:Ljava/lang/Object;

.field private final closeFuture:Lorg/jboss/netty/channel/AbstractChannel$ChannelCloseFuture;

.field private final factory:Lorg/jboss/netty/channel/ChannelFactory;

.field private final id:Ljava/lang/Integer;

.field private volatile interestOps:I

.field private final parent:Lorg/jboss/netty/channel/Channel;

.field private final pipeline:Lorg/jboss/netty/channel/ChannelPipeline;

.field private strVal:Ljava/lang/String;

.field private strValConnected:Z

.field private final succeededFuture:Lorg/jboss/netty/channel/ChannelFuture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/jboss/netty/channel/AbstractChannel;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jboss/netty/channel/AbstractChannel;->$assertionsDisabled:Z

    new-instance v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/jboss/netty/channel/AbstractChannel;->allChannels:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/jboss/netty/channel/AbstractChannel;->random:Ljava/util/Random;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/lang/Integer;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/jboss/netty/channel/SucceededChannelFuture;

    invoke-direct {v0, p0}, Lorg/jboss/netty/channel/SucceededChannelFuture;-><init>(Lorg/jboss/netty/channel/Channel;)V

    iput-object v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->succeededFuture:Lorg/jboss/netty/channel/ChannelFuture;

    new-instance v0, Lorg/jboss/netty/channel/AbstractChannel$ChannelCloseFuture;

    invoke-direct {v0, p0}, Lorg/jboss/netty/channel/AbstractChannel$ChannelCloseFuture;-><init>(Lorg/jboss/netty/channel/AbstractChannel;)V

    iput-object v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->closeFuture:Lorg/jboss/netty/channel/AbstractChannel$ChannelCloseFuture;

    const/4 v0, 0x1

    iput v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->interestOps:I

    iput-object p1, p0, Lorg/jboss/netty/channel/AbstractChannel;->id:Ljava/lang/Integer;

    iput-object p2, p0, Lorg/jboss/netty/channel/AbstractChannel;->parent:Lorg/jboss/netty/channel/Channel;

    iput-object p3, p0, Lorg/jboss/netty/channel/AbstractChannel;->factory:Lorg/jboss/netty/channel/ChannelFactory;

    iput-object p4, p0, Lorg/jboss/netty/channel/AbstractChannel;->pipeline:Lorg/jboss/netty/channel/ChannelPipeline;

    invoke-interface {p4, p0, p5}, Lorg/jboss/netty/channel/ChannelPipeline;->attach(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelSink;)V

    return-void
.end method

.method protected constructor <init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/jboss/netty/channel/SucceededChannelFuture;

    invoke-direct {v0, p0}, Lorg/jboss/netty/channel/SucceededChannelFuture;-><init>(Lorg/jboss/netty/channel/Channel;)V

    iput-object v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->succeededFuture:Lorg/jboss/netty/channel/ChannelFuture;

    new-instance v0, Lorg/jboss/netty/channel/AbstractChannel$ChannelCloseFuture;

    invoke-direct {v0, p0}, Lorg/jboss/netty/channel/AbstractChannel$ChannelCloseFuture;-><init>(Lorg/jboss/netty/channel/AbstractChannel;)V

    iput-object v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->closeFuture:Lorg/jboss/netty/channel/AbstractChannel$ChannelCloseFuture;

    const/4 v0, 0x1

    iput v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->interestOps:I

    iput-object p1, p0, Lorg/jboss/netty/channel/AbstractChannel;->parent:Lorg/jboss/netty/channel/Channel;

    iput-object p2, p0, Lorg/jboss/netty/channel/AbstractChannel;->factory:Lorg/jboss/netty/channel/ChannelFactory;

    iput-object p3, p0, Lorg/jboss/netty/channel/AbstractChannel;->pipeline:Lorg/jboss/netty/channel/ChannelPipeline;

    invoke-static {p0}, Lorg/jboss/netty/channel/AbstractChannel;->allocateId(Lorg/jboss/netty/channel/Channel;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->id:Ljava/lang/Integer;

    invoke-interface {p3, p0, p4}, Lorg/jboss/netty/channel/ChannelPipeline;->attach(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelSink;)V

    return-void
.end method

.method private static allocateId(Lorg/jboss/netty/channel/Channel;)Ljava/lang/Integer;
    .locals 2

    sget-object v0, Lorg/jboss/netty/channel/AbstractChannel;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    sget-object v1, Lorg/jboss/netty/channel/AbstractChannel;->allChannels:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0, p0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method private getIdString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->id:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "00000000"

    goto :goto_0

    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0000000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "000000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "00000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public bind(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1

    invoke-static {p0, p1}, Lorg/jboss/netty/channel/Channels;->bind(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public close()Lorg/jboss/netty/channel/ChannelFuture;
    .locals 2

    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->close(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    sget-boolean v1, Lorg/jboss/netty/channel/AbstractChannel;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/jboss/netty/channel/AbstractChannel;->closeFuture:Lorg/jboss/netty/channel/AbstractChannel$ChannelCloseFuture;

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->closeFuture:Lorg/jboss/netty/channel/AbstractChannel$ChannelCloseFuture;

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/jboss/netty/channel/Channel;

    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/AbstractChannel;->compareTo(Lorg/jboss/netty/channel/Channel;)I

    move-result v0

    return v0
.end method

.method public final compareTo(Lorg/jboss/netty/channel/Channel;)I
    .locals 2

    invoke-virtual {p0}, Lorg/jboss/netty/channel/AbstractChannel;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1}, Lorg/jboss/netty/channel/Channel;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public connect(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1

    invoke-static {p0, p1}, Lorg/jboss/netty/channel/Channels;->connect(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public disconnect()Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1

    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->disconnect(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAttachment()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->attachment:Ljava/lang/Object;

    return-object v0
.end method

.method public getCloseFuture()Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->closeFuture:Lorg/jboss/netty/channel/AbstractChannel$ChannelCloseFuture;

    return-object v0
.end method

.method public getFactory()Lorg/jboss/netty/channel/ChannelFactory;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->factory:Lorg/jboss/netty/channel/ChannelFactory;

    return-object v0
.end method

.method public final getId()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getInterestOps()I
    .locals 1

    iget v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->interestOps:I

    return v0
.end method

.method public getParent()Lorg/jboss/netty/channel/Channel;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->parent:Lorg/jboss/netty/channel/Channel;

    return-object v0
.end method

.method public getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->pipeline:Lorg/jboss/netty/channel/ChannelPipeline;

    return-object v0
.end method

.method protected getSucceededFuture()Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->succeededFuture:Lorg/jboss/netty/channel/ChannelFuture;

    return-object v0
.end method

.method protected getUnsupportedOperationFuture()Lorg/jboss/netty/channel/ChannelFuture;
    .locals 2

    new-instance v0, Lorg/jboss/netty/channel/FailedChannelFuture;

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    invoke-direct {v0, p0, v1}, Lorg/jboss/netty/channel/FailedChannelFuture;-><init>(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->id:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->closeFuture:Lorg/jboss/netty/channel/AbstractChannel$ChannelCloseFuture;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/AbstractChannel$ChannelCloseFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReadable()Z
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/channel/AbstractChannel;->getInterestOps()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWritable()Z
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/channel/AbstractChannel;->getInterestOps()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAttachment(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/channel/AbstractChannel;->attachment:Ljava/lang/Object;

    return-void
.end method

.method protected setClosed()Z
    .locals 2

    sget-object v0, Lorg/jboss/netty/channel/AbstractChannel;->allChannels:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p0, Lorg/jboss/netty/channel/AbstractChannel;->id:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->closeFuture:Lorg/jboss/netty/channel/AbstractChannel$ChannelCloseFuture;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/AbstractChannel$ChannelCloseFuture;->setClosed()Z

    move-result v0

    return v0
.end method

.method public setInterestOps(I)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1

    invoke-static {p0, p1}, Lorg/jboss/netty/channel/Channels;->setInterestOps(Lorg/jboss/netty/channel/Channel;I)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method protected setInterestOpsNow(I)V
    .locals 0

    iput p1, p0, Lorg/jboss/netty/channel/AbstractChannel;->interestOps:I

    return-void
.end method

.method public setReadable(Z)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/jboss/netty/channel/AbstractChannel;->getInterestOps()I

    move-result v0

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/AbstractChannel;->setInterestOps(I)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/AbstractChannel;->getInterestOps()I

    move-result v0

    and-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/AbstractChannel;->setInterestOps(I)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lorg/jboss/netty/channel/AbstractChannel;->isConnected()Z

    move-result v1

    iget-boolean v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->strValConnected:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->strVal:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->strVal:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "[id: 0x"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/jboss/netty/channel/AbstractChannel;->getIdString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/channel/AbstractChannel;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v3

    invoke-virtual {p0}, Lorg/jboss/netty/channel/AbstractChannel;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v4

    if-eqz v4, :cond_5

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/channel/AbstractChannel;->getParent()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    const-string v0, " => "

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_2
    const/16 v0, 0x5d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/channel/AbstractChannel;->strVal:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/jboss/netty/channel/AbstractChannel;->strValConnected:Z

    goto :goto_0

    :cond_2
    const-string v0, " :> "

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_4

    const-string v0, " => "

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const-string v0, " :> "

    goto :goto_3

    :cond_5
    if-eqz v3, :cond_1

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public unbind()Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1

    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->unbind(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1

    invoke-static {p0, p1}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1

    invoke-static {p0, p1, p2}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method
