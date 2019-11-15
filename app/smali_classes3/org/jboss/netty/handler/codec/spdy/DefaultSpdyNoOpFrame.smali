.class public Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyNoOpFrame;
.super Ljava/lang/Object;
.source "DefaultSpdyNoOpFrame.java"

# interfaces
.implements Lorg/jboss/netty/handler/codec/spdy/SpdyNoOpFrame;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
