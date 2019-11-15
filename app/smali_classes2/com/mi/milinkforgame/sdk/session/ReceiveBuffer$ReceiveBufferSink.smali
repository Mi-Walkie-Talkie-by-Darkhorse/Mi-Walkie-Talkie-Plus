.class public interface abstract Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer$ReceiveBufferSink;
.super Ljava/lang/Object;
.source "ReceiveBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ReceiveBufferSink"
.end annotation


# virtual methods
.method public abstract onAddTimeout(II)Z
.end method

.method public abstract onRecvDownStream(I[B)Z
.end method
