.class public interface abstract Lcom/mi/mimsgsdk/service/MnsPacketDispatcher$PacketDataHandler;
.super Ljava/lang/Object;
.source "MnsPacketDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/mimsgsdk/service/MnsPacketDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PacketDataHandler"
.end annotation


# virtual methods
.method public abstract isAcceptPacket(Lcom/mi/milinkforgame/sdk/aidl/PacketData;)Z
    .param p1    # Lcom/mi/milinkforgame/sdk/aidl/PacketData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract processPacketData(Lcom/mi/milinkforgame/sdk/aidl/PacketData;)Z
    .param p1    # Lcom/mi/milinkforgame/sdk/aidl/PacketData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
