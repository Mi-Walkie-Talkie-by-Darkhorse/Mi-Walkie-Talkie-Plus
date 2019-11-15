.class public Lcom/mi/mimsgsdk/service/SendListener;
.super Lcom/mi/mimsgsdk/service/aidl/ISendCallback$Stub;
.source "SendListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mi/mimsgsdk/service/aidl/ISendCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onRsponse(Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
