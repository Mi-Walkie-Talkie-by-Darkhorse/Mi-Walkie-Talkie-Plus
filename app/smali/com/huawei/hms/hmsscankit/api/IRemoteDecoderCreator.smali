.class public interface abstract Lcom/huawei/hms/hmsscankit/api/IRemoteDecoderCreator;
.super Ljava/lang/Object;
.source "IRemoteDecoderCreator.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/hmsscankit/api/IRemoteDecoderCreator$Stub;,
        Lcom/huawei/hms/hmsscankit/api/IRemoteDecoderCreator$Default;
    }
.end annotation


# virtual methods
.method public abstract newRemoteFrameDecoderDelegate()Lcom/huawei/hms/hmsscankit/api/IRemoteFrameDecoderDelegate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
