.class public abstract Lcom/mi/mimsgsdk/service/aidl/ISendCallback$Stub;
.super Landroid/os/Binder;
.source "ISendCallback.java"

# interfaces
.implements Lcom/mi/mimsgsdk/service/aidl/ISendCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/mimsgsdk/service/aidl/ISendCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/mimsgsdk/service/aidl/ISendCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mi.mimsgsdk.service.aidl.ISendCallback"

.field static final TRANSACTION_onFailed:I = 0x2

.field static final TRANSACTION_onRsponse:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.mi.mimsgsdk.service.aidl.ISendCallback"

    invoke-virtual {p0, p0, v0}, Lcom/mi/mimsgsdk/service/aidl/ISendCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mi/mimsgsdk/service/aidl/ISendCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.mi.mimsgsdk.service.aidl.ISendCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mi/mimsgsdk/service/aidl/ISendCallback;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/mi/mimsgsdk/service/aidl/ISendCallback;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/mi/mimsgsdk/service/aidl/ISendCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/mi/mimsgsdk/service/aidl/ISendCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v0, "com.mi.mimsgsdk.service.aidl.ISendCallback"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v0, "com.mi.mimsgsdk.service.aidl.ISendCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/mi/mimsgsdk/service/aidl/ISendCallback$Stub;->onRsponse(Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_2
    const-string v0, "com.mi.mimsgsdk.service.aidl.ISendCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/mi/mimsgsdk/service/aidl/ISendCallback$Stub;->onFailed(ILjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
