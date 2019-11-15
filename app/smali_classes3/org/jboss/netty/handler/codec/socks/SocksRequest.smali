.class public abstract Lorg/jboss/netty/handler/codec/socks/SocksRequest;
.super Lorg/jboss/netty/handler/codec/socks/SocksMessage;
.source "SocksRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/codec/socks/SocksRequest$SocksRequestType;
    }
.end annotation


# instance fields
.field private final socksRequestType:Lorg/jboss/netty/handler/codec/socks/SocksRequest$SocksRequestType;


# direct methods
.method protected constructor <init>(Lorg/jboss/netty/handler/codec/socks/SocksRequest$SocksRequestType;)V
    .locals 2

    sget-object v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$MessageType;->REQUEST:Lorg/jboss/netty/handler/codec/socks/SocksMessage$MessageType;

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/socks/SocksMessage;-><init>(Lorg/jboss/netty/handler/codec/socks/SocksMessage$MessageType;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "socksRequestType"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/socks/SocksRequest;->socksRequestType:Lorg/jboss/netty/handler/codec/socks/SocksRequest$SocksRequestType;

    return-void
.end method


# virtual methods
.method public getSocksRequestType()Lorg/jboss/netty/handler/codec/socks/SocksRequest$SocksRequestType;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksRequest;->socksRequestType:Lorg/jboss/netty/handler/codec/socks/SocksRequest$SocksRequestType;

    return-object v0
.end method
