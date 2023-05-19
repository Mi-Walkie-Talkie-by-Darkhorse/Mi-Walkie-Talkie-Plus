.class public interface abstract Lcom/huawei/hms/hmsscankit/api/IRemoteFrameDecoderDelegate;
.super Ljava/lang/Object;
.source "IRemoteFrameDecoderDelegate.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/hmsscankit/api/IRemoteFrameDecoderDelegate$Stub;,
        Lcom/huawei/hms/hmsscankit/api/IRemoteFrameDecoderDelegate$Default;
    }
.end annotation


# virtual methods
.method public abstract decode([BIIIILcom/huawei/hms/feature/dynamic/IObjectWrapper;)[Lcom/huawei/hms/scankit/aiscan/common/x;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
