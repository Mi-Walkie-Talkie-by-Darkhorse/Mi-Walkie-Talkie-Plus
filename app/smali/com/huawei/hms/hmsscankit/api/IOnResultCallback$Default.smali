.class public Lcom/huawei/hms/hmsscankit/api/IOnResultCallback$Default;
.super Ljava/lang/Object;
.source "IOnResultCallback.java"

# interfaces
.implements Lcom/huawei/hms/hmsscankit/api/IOnResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/hmsscankit/api/IOnResultCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onResult([Lcom/huawei/hms/ml/scan/HmsScan;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
