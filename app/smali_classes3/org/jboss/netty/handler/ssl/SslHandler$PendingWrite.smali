.class final Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;
.super Ljava/lang/Object;
.source "SslHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/ssl/SslHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PendingWrite"
.end annotation


# instance fields
.field final future:Lorg/jboss/netty/channel/ChannelFuture;

.field final outAppBuf:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/ChannelFuture;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;->future:Lorg/jboss/netty/channel/ChannelFuture;

    iput-object p2, p0, Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;->outAppBuf:Ljava/nio/ByteBuffer;

    return-void
.end method
