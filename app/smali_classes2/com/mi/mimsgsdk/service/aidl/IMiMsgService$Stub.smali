.class public abstract Lcom/mi/mimsgsdk/service/aidl/IMiMsgService$Stub;
.super Landroid/os/Binder;
.source "IMiMsgService.java"

# interfaces
.implements Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/mimsgsdk/service/aidl/IMiMsgService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mi.mimsgsdk.service.aidl.IMiMsgService"

.field static final TRANSACTION_destroy:I = 0x15

.field static final TRANSACTION_downloadMediaFile:I = 0xb

.field static final TRANSACTION_getConferenceMember:I = 0xd

.field static final TRANSACTION_getGuidfromMediaId:I = 0xe

.field static final TRANSACTION_getProcessPid:I = 0x13

.field static final TRANSACTION_init:I = 0x1

.field static final TRANSACTION_isAlive:I = 0x14

.field static final TRANSACTION_pullOldGroupMessage:I = 0x11

.field static final TRANSACTION_pullOldUserMessage:I = 0x10

.field static final TRANSACTION_scribe:I = 0x16

.field static final TRANSACTION_sendAsyncWithResponse:I = 0x17

.field static final TRANSACTION_sendAudioMessage:I = 0x6

.field static final TRANSACTION_sendChannelCheckMessage:I = 0xc

.field static final TRANSACTION_sendGroupMessage:I = 0x4

.field static final TRANSACTION_sendRoomMessage:I = 0x5

.field static final TRANSACTION_sendUserMessage:I = 0x3

.field static final TRANSACTION_sendVideoMessage:I = 0x7

.field static final TRANSACTION_setMessageListener:I = 0x2

.field static final TRANSACTION_setSyncLimit:I = 0x12

.field static final TRANSACTION_syncGroupMessage:I = 0xf

.field static final TRANSACTION_uploadImage:I = 0x8

.field static final TRANSACTION_uploadLogs:I = 0xa

.field static final TRANSACTION_uploadVideo:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.mi.mimsgsdk.service.aidl.IMiMsgService"

    invoke-virtual {p0, p0, v0}, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.mi.mimsgsdk.service.aidl.IMiMsgService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    :sswitch_0
    const-string v0, "com.mi.mimsgsdk.service.aidl.IMiMsgService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v0, "com.mi.mimsgsdk.service.aidl.IMiMsgService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mi/mimsgsdk/service/aidl/IMessageListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mi/mimsgsdk/service/aidl/IMessageListener;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService$Stub;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mi/mimsgsdk/service/aidl/IMessageListener;)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_0

    move v0, v8

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    move v0, v7

    goto :goto_1

    :sswitch_2
    const-string v0, "com.mi.mimsgsdk.service.aidl.IMiMsgService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mi/mimsgsdk/service/aidl/IMessageListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mi/mimsgsdk/service/aidl/IMessageListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService$Stub;->setMessageListener(Lcom/mi/mimsgsdk/service/aidl/IMessageListener;)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_1

    move v7, v8

    :cond_1
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_3
    const-string v1, "com.mi.mimsgsdk.service.aidl.IMiMsgService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService$Stub;->sendUserMessage(Lcom/mi/mimsgsdk/service/aidl/MiMessage;I)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_3

    move v7, v8

    :cond_3
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_4
    const-string v1, "com.mi.mimsgsdk.service.aidl.IMiMsgService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    sget-object v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService$Stub;->sendGroupMessage(Lcom/mi/mimsgsdk/service/aidl/MiMessage;I)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_5

    move v7, v8

    :cond_5
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "com.mi.mimsgsdk.service.aidl.IMiMsgService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    sget-object v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService$Stub;->sendRoomMessage(Lcom/mi/mimsgsdk/service/aidl/MiMessage;I)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_7

    move v7, v8

    :cond_7
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "com.mi.mimsgsdk.service.aidl.IMiMsgService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    sget-object v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    :cond_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService$Stub;->sendAudioMessage(ILcom/mi/mimsgsdk/service/aidl/MiMessage;I)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_9

    move v7, v8

    :cond_9
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "com.mi.mimsgsdk.service.aidl.IMiMsgService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a

    sget-object v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    :cond_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService$Stub;->sendVideoMessage(ILcom/mi/mimsgsdk/service/aidl/MiMessage;I)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_b

    move v7, v8

    :cond_b
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "com.mi.mimsgsdk.service.aidl.IMiMsgService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/mi/mimsgsdk/service/aidl/ICustomCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mi/mimsgsdk/service/aidl/ICustomCallback;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService$Stub;->uploadImage(Ljava/lang/String;Lcom/mi/mimsgsdk/service/aidl/ICustomCallback;)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_c

    move v7, v8

    :cond_c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "com.mi.mimsgsdk.service.aidl.IMiMsgService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d

    sget-object v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    :cond_d
    invoke-virtual {p0, v0}, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService$Stub;->uploadVideo(Lcom/mi/mimsgsdk/service/aidl/MiMessage;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "com.mi.mimsgsdk.service.aidl.IMiMsgService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    move v6, v8

    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService$Stub;->uploadLogs(Ljava/lang/String;IJZLjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_e
    move v6, v7

    goto :goto_2

    :sswitch_b
    const-string v0, "com.mi.mimsgsdk.service.aidl.IMiMsgService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService$Stub;->downloadMediaFile(ILjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "com.mi.mimsgsdk.service.aidl.IMiMsgService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService$Stub;->sendChannelCheckMessage(JILjava/lang/String;)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_f

    move v7, v8

    :cond_f
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "com.mi.mimsgsdk.service.aidl.IMiMsgService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService$Stub;->getConferenceMember(J)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_10

    move v7, v8

    :cond_10
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "com.mi.mimsgsdk.service.aidl.IMiMsgService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService$Stub;->getGuidfromMediaId(II)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_11

    move v7, v8

    :cond_11
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "com.mi.mimsgsdk.service.aidl.IMiMsgService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService$Stub;->syncGroupMessage(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_12

    move v7, v8

    :cond_12
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "com.mi.mimsgsdk.service.aidl.IMiMsgService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService$Stub;->pullOldUserMessage(JI)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_13

    move v7, v8

    :cond_13
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "com.mi.mimsgsdk.service.aidl.IMiMsgService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService$Stub;->pullOldGroupMessage(Ljava/lang/String;JI)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_14

    move v7, v8

    :cond_14
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "com.mi.mimsgsdk.service.aidl.IMiMsgService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService$Stub;->setSyncLimit(I)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_15

    move v7, v8

    :cond_15
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "com.mi.mimsgsdk.service.aidl.IMiMsgService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService$Stub;->getProcessPid()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "com.mi.mimsgsdk.service.aidl.IMiMsgService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService$Stub;->isAlive()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_16

    move v7, v8

    :cond_16
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "com.mi.mimsgsdk.service.aidl.IMiMsgService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService$Stub;->destroy()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_17

    move v7, v8

    :cond_17
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "com.mi.mimsgsdk.service.aidl.IMiMsgService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService$Stub;->scribe(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_17
    const-string v1, "com.mi.mimsgsdk.service.aidl.IMiMsgService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_18

    sget-object v0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;

    :cond_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mi/mimsgsdk/service/aidl/ISendCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mi/mimsgsdk/service/aidl/ISendCallback;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService$Stub;->sendAsyncWithResponse(Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;ILcom/mi/mimsgsdk/service/aidl/ISendCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

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
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
