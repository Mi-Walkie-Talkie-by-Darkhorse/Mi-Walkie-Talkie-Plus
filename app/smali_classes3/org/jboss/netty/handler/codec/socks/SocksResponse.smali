.class public abstract Lorg/jboss/netty/handler/codec/socks/SocksResponse;
.super Lorg/jboss/netty/handler/codec/socks/SocksMessage;
.source "SocksResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/codec/socks/SocksResponse$SocksResponseType;
    }
.end annotation


# instance fields
.field private final socksResponseType:Lorg/jboss/netty/handler/codec/socks/SocksResponse$SocksResponseType;


# direct methods
.method protected constructor <init>(Lorg/jboss/netty/handler/codec/socks/SocksResponse$SocksResponseType;)V
    .locals 2

    sget-object v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$MessageType;->RESPONSE:Lorg/jboss/netty/handler/codec/socks/SocksMessage$MessageType;

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/socks/SocksMessage;-><init>(Lorg/jboss/netty/handler/codec/socks/SocksMessage$MessageType;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "socksResponseType"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/socks/SocksResponse;->socksResponseType:Lorg/jboss/netty/handler/codec/socks/SocksResponse$SocksResponseType;

    return-void
.end method


# virtual methods
.method public getSocksResponseType()Lorg/jboss/netty/handler/codec/socks/SocksResponse$SocksResponseType;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksResponse;->socksResponseType:Lorg/jboss/netty/handler/codec/socks/SocksResponse$SocksResponseType;

    return-object v0
.end method
