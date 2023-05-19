.class public interface abstract Lcom/huawei/hms/hmsscankit/api/IOnResultCallback;
.super Ljava/lang/Object;
.source "IOnResultCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/hmsscankit/api/IOnResultCallback$Stub;,
        Lcom/huawei/hms/hmsscankit/api/IOnResultCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onResult([Lcom/huawei/hms/ml/scan/HmsScan;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
