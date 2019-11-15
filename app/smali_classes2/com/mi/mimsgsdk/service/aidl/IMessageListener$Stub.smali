.class public abstract Lcom/mi/mimsgsdk/service/aidl/IMessageListener$Stub;
.super Landroid/os/Binder;
.source "IMessageListener.java"

# interfaces
.implements Lcom/mi/mimsgsdk/service/aidl/IMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/mimsgsdk/service/aidl/IMessageListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/mimsgsdk/service/aidl/IMessageListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mi.mimsgsdk.service.aidl.IMessageListener"

.field static final TRANSACTION_onConnectionStateChanged:I = 0x3

.field static final TRANSACTION_onDataSendResponse:I = 0x6

.field static final TRANSACTION_onDownloadMediaFileResponse:I = 0xb

.field static final TRANSACTION_onInitResult:I = 0x1

.field static final TRANSACTION_onReceiveConferenceMembers:I = 0x8

.field static final TRANSACTION_onReceiveMessage:I = 0x2

.field static final TRANSACTION_onReceiveOldGroupMessage:I = 0x5

.field static final TRANSACTION_onReceiveOldUserMessage:I = 0x4

.field static final TRANSACTION_onReceiveSignalMessage:I = 0x7

.field static final TRANSACTION_onUploadLogsResponse:I = 0xa

.field static final TRANSACTION_onUploadVideoResponse:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.mi.mimsgsdk.service.aidl.IMessageListener"

    invoke-virtual {p0, p0, v0}, Lcom/mi/mimsgsdk/service/aidl/IMessageListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mi/mimsgsdk/service/aidl/IMessageListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.mi.mimsgsdk.service.aidl.IMessageListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mi/mimsgsdk/service/aidl/IMessageListener;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/mi/mimsgsdk/service/aidl/IMessageListener;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/mi/mimsgsdk/service/aidl/IMessageListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/mi/mimsgsdk/service/aidl/IMessageListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v9, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_0
    return v9

    :sswitch_0
    const-string v0, "com.mi.mimsgsdk.service.aidl.IMessageListener"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v0, "com.mi.mimsgsdk.service.aidl.IMessageListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mi/mimsgsdk/service/aidl/RetValue;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/service/aidl/RetValue;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/mi/mimsgsdk/service/aidl/IMessageListener$Stub;->onInitResult(Lcom/mi/mimsgsdk/service/aidl/RetValue;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_1

    :sswitch_2
    const-string v0, "com.mi.mimsgsdk.service.aidl.IMessageListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    :goto_2
    invoke-virtual {p0, v3, v0}, Lcom/mi/mimsgsdk/service/aidl/IMessageListener$Stub;->onReceiveMessage(ILcom/mi/mimsgsdk/service/aidl/MiMessage;)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_2

    move v0, v9

    :goto_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_3

    :sswitch_3
    const-string v0, "com.mi.mimsgsdk.service.aidl.IMessageListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mi/mimsgsdk/service/aidl/IMessageListener$Stub;->onConnectionStateChanged(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_4
    const-string v0, "com.mi.mimsgsdk.service.aidl.IMessageListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/mimsgsdk/service/aidl/IMessageListener$Stub;->onReceiveOldUserMessage(Ljava/util/List;)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_3

    move v2, v9

    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_5
    const-string v0, "com.mi.mimsgsdk.service.aidl.IMessageListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mi/mimsgsdk/service/aidl/IMessageListener$Stub;->onReceiveOldGroupMessage(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_4

    move v2, v9

    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "com.mi.mimsgsdk.service.aidl.IMessageListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/mi/mimsgsdk/service/aidl/RetValue;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/service/aidl/RetValue;

    move-object v2, v0

    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    :goto_5
    invoke-virtual {p0, v3, v2, v0}, Lcom/mi/mimsgsdk/service/aidl/IMessageListener$Stub;->onDataSendResponse(ILcom/mi/mimsgsdk/service/aidl/RetValue;Lcom/mi/mimsgsdk/service/aidl/MiMessage;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_5
    move-object v2, v1

    goto :goto_4

    :cond_6
    move-object v0, v1

    goto :goto_5

    :sswitch_7
    const-string v0, "com.mi.mimsgsdk.service.aidl.IMessageListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/mi/mimsgsdk/service/aidl/RetValue;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/service/aidl/RetValue;

    move-object v3, v0

    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/mi/mimsgsdk/service/aidl/IMessageListener$Stub;->onReceiveSignalMessage(ILcom/mi/mimsgsdk/service/aidl/RetValue;JJI)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_7
    move-object v3, v1

    goto :goto_6

    :sswitch_8
    const-string v0, "com.mi.mimsgsdk.service.aidl.IMessageListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/mi/mimsgsdk/service/aidl/RetValue;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/service/aidl/RetValue;

    :goto_7
    sget-object v1, Lcom/mi/mimsgsdk/service/aidl/ConferenceMember;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/mi/mimsgsdk/service/aidl/IMessageListener$Stub;->onReceiveConferenceMembers(IILcom/mi/mimsgsdk/service/aidl/RetValue;Ljava/util/List;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_8
    move-object v0, v1

    goto :goto_7

    :sswitch_9
    const-string v0, "com.mi.mimsgsdk.service.aidl.IMessageListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/mi/mimsgsdk/service/aidl/RetValue;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/service/aidl/RetValue;

    move-object v2, v0

    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    :goto_9
    invoke-virtual {p0, v2, v0}, Lcom/mi/mimsgsdk/service/aidl/IMessageListener$Stub;->onUploadVideoResponse(Lcom/mi/mimsgsdk/service/aidl/RetValue;Lcom/mi/mimsgsdk/service/aidl/MiMessage;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_9
    move-object v2, v1

    goto :goto_8

    :cond_a
    move-object v0, v1

    goto :goto_9

    :sswitch_a
    const-string v0, "com.mi.mimsgsdk.service.aidl.IMessageListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/mi/mimsgsdk/service/aidl/RetValue;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/service/aidl/RetValue;

    :goto_a
    invoke-virtual {p0, v0}, Lcom/mi/mimsgsdk/service/aidl/IMessageListener$Stub;->onUploadLogsResponse(Lcom/mi/mimsgsdk/service/aidl/RetValue;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_b
    move-object v0, v1

    goto :goto_a

    :sswitch_b
    const-string v0, "com.mi.mimsgsdk.service.aidl.IMessageListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/mi/mimsgsdk/service/aidl/RetValue;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/service/aidl/RetValue;

    :goto_b
    invoke-virtual {p0, v2, v0}, Lcom/mi/mimsgsdk/service/aidl/IMessageListener$Stub;->onDownloadMediaFileResponse(ILcom/mi/mimsgsdk/service/aidl/RetValue;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_c
    move-object v0, v1

    goto :goto_b

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
