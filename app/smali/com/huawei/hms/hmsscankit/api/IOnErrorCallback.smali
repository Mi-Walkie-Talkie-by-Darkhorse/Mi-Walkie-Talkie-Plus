.class public interface abstract Lcom/huawei/hms/hmsscankit/api/IOnErrorCallback;
.super Ljava/lang/Object;
.source "IOnErrorCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/hmsscankit/api/IOnErrorCallback$Stub;,
        Lcom/huawei/hms/hmsscankit/api/IOnErrorCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onError(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
