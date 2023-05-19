.class public interface abstract Lcom/huawei/hms/hmsscankit/api/IOnLightCallback;
.super Ljava/lang/Object;
.source "IOnLightCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/hmsscankit/api/IOnLightCallback$Stub;,
        Lcom/huawei/hms/hmsscankit/api/IOnLightCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onVisibleChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
