.class public Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;
.super Ljava/lang/Object;
.source "MsgPacketData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mBusiCode:I

.field protected mCommand:Ljava/lang/String;

.field protected mData:[B

.field protected mHasClientInfo:Z

.field protected mIsPushPacket:Z

.field protected mMnsCode:I

.field protected mMnsErrorMsg:Ljava/lang/String;

.field protected mNeedCached:Z

.field protected mNeedClientInfo:Z

.field protected mNeedResponse:Z

.field private mResponseSize:I

.field private mSeqNo:I

.field protected mValidTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData$1;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData$1;-><init>()V

    sput-object v0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mIsPushPacket:Z

    iput-boolean v1, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mNeedResponse:Z

    iput-boolean v1, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mNeedCached:Z

    const v0, 0xea60

    iput v0, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mValidTime:I

    iput-boolean v1, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mNeedClientInfo:Z

    iput-boolean v2, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mHasClientInfo:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mIsPushPacket:Z

    iput-boolean v1, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mNeedResponse:Z

    iput-boolean v1, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mNeedCached:Z

    const v0, 0xea60

    iput v0, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mValidTime:I

    iput-boolean v1, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mNeedClientInfo:Z

    iput-boolean v2, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mHasClientInfo:Z

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/mi/mimsgsdk/service/aidl/MsgPacketData$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static parseFromMilink(Lcom/mi/milinkforgame/sdk/aidl/PacketData;)Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;
    .locals 2

    new-instance v0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;-><init>()V

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getData()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->setData([B)V

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getSeqNo()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->setSeqNo(I)V

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->setCommand(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getMnsCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->setMnsCode(I)V

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getBusiCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->setBusiCode(I)V

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getMnsErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->setMnsErrorMsg(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->isPushPacket()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->setIsPushPacket(Z)V

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->needClientInfo()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->setNeedClientInfo(Z)V

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->needCached()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->setNeedCached(Z)V

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getValidTime()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->setValidTime(I)V

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->hasClientInfo()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->setHasClientInfo(Z)V

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->needClientInfo()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->setNeedClientInfo(Z)V

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getResponseSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->setResponseSize(I)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBusiCode()I
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mBusiCode:I

    return v0
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mCommand:Ljava/lang/String;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mData:[B

    return-object v0
.end method

.method public getMnsCode()I
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mMnsCode:I

    return v0
.end method

.method public getMnsErrorMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mMnsErrorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseSize()I
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mResponseSize:I

    return v0
.end method

.method public getSeqNo()I
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mSeqNo:I

    return v0
.end method

.method public getValidTime()I
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mValidTime:I

    return v0
.end method

.method public hasClientInfo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mHasClientInfo:Z

    return v0
.end method

.method public isPingPacket()Z
    .locals 2

    const-string v0, "milink.ping"

    iget-object v1, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mCommand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPushPacket()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mIsPushPacket:Z

    return v0
.end method

.method public needCached()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mNeedCached:Z

    return v0
.end method

.method public needClientInfo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mNeedClientInfo:Z

    return v0
.end method

.method public needResponse()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mNeedResponse:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {p1}, Lcom/mi/milinkforgame/sdk/util/DataUtils;->readParcelBytes(Landroid/os/Parcel;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mData:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mSeqNo:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mCommand:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mMnsCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mBusiCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mMnsErrorMsg:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mIsPushPacket:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mNeedResponse:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mNeedCached:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mValidTime:I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public setBusiCode(I)V
    .locals 0

    iput p1, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mBusiCode:I

    return-void
.end method

.method public setCommand(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mCommand:Ljava/lang/String;

    return-void
.end method

.method public setData([B)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mData:[B

    return-void
.end method

.method public setHasClientInfo(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mHasClientInfo:Z

    return-void
.end method

.method public setIsPushPacket(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mIsPushPacket:Z

    return-void
.end method

.method public setMnsCode(I)V
    .locals 0

    iput p1, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mMnsCode:I

    return-void
.end method

.method public setMnsErrorMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mMnsErrorMsg:Ljava/lang/String;

    return-void
.end method

.method public setNeedCached(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mNeedCached:Z

    return-void
.end method

.method public setNeedClientInfo(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mNeedClientInfo:Z

    return-void
.end method

.method public setNeedResponse(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mNeedResponse:Z

    return-void
.end method

.method public setResponseSize(I)V
    .locals 0

    iput p1, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mResponseSize:I

    return-void
.end method

.method public setSeqNo(I)V
    .locals 0

    iput p1, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mSeqNo:I

    return-void
.end method

.method public setValidTime(I)V
    .locals 0

    iput p1, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mValidTime:I

    return-void
.end method

.method public toService()Lcom/mi/milinkforgame/sdk/aidl/PacketData;
    .locals 2

    new-instance v0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    invoke-direct {v0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;-><init>()V

    iget-object v1, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mData:[B

    invoke-virtual {v0, v1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setData([B)V

    iget v1, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mSeqNo:I

    invoke-virtual {v0, v1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setSeqNo(I)V

    iget-object v1, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mCommand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setCommand(Ljava/lang/String;)V

    iget v1, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mMnsCode:I

    invoke-virtual {v0, v1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setMnsCode(I)V

    iget v1, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mBusiCode:I

    invoke-virtual {v0, v1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setBusiCode(I)V

    iget-object v1, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mMnsErrorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setMnsErrorMsg(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mIsPushPacket:Z

    invoke-virtual {v0, v1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setIsPushPacket(Z)V

    iget-boolean v1, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mNeedResponse:Z

    invoke-virtual {v0, v1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setNeedClientInfo(Z)V

    iget-boolean v1, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mNeedCached:Z

    invoke-virtual {v0, v1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setNeedCached(Z)V

    iget v1, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mValidTime:I

    invoke-virtual {v0, v1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setValidTime(I)V

    iget-boolean v1, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mHasClientInfo:Z

    invoke-virtual {v0, v1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setHasClientInfo(Z)V

    iget-boolean v1, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mNeedClientInfo:Z

    invoke-virtual {v0, v1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setNeedClientInfo(Z)V

    iget v1, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mResponseSize:I

    invoke-virtual {v0, v1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setResponseSize(I)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mData:[B

    invoke-static {p1, v0}, Lcom/mi/milinkforgame/sdk/util/DataUtils;->writeParcelBytes(Landroid/os/Parcel;[B)V

    iget v0, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mSeqNo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mCommand:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mMnsCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mBusiCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mMnsErrorMsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mIsPushPacket:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mNeedResponse:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mNeedCached:Z

    if-eqz v0, :cond_2

    :goto_2
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->mValidTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method
