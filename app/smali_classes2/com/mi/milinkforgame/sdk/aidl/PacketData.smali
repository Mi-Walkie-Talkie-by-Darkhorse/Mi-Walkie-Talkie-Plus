.class public Lcom/mi/milinkforgame/sdk/aidl/PacketData;
.super Ljava/lang/Object;
.source "PacketData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mi/milinkforgame/sdk/aidl/PacketData;",
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

    new-instance v0, Lcom/mi/milinkforgame/sdk/aidl/PacketData$1;

    invoke-direct {v0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData$1;-><init>()V

    sput-object v0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mIsPushPacket:Z

    iput-boolean v1, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mNeedResponse:Z

    iput-boolean v1, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mNeedCached:Z

    const v0, 0xea60

    iput v0, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mValidTime:I

    iput-boolean v1, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mNeedClientInfo:Z

    iput-boolean v2, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mHasClientInfo:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mIsPushPacket:Z

    iput-boolean v1, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mNeedResponse:Z

    iput-boolean v1, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mNeedCached:Z

    const v0, 0xea60

    iput v0, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mValidTime:I

    iput-boolean v1, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mNeedClientInfo:Z

    iput-boolean v2, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mHasClientInfo:Z

    invoke-virtual {p0, p1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/mi/milinkforgame/sdk/aidl/PacketData$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBusiCode()I
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mBusiCode:I

    return v0
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mCommand:Ljava/lang/String;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mData:[B

    return-object v0
.end method

.method public getMnsCode()I
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mMnsCode:I

    return v0
.end method

.method public getMnsErrorMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mMnsErrorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseSize()I
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mResponseSize:I

    return v0
.end method

.method public getSeqNo()I
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mSeqNo:I

    return v0
.end method

.method public getValidTime()I
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mValidTime:I

    return v0
.end method

.method public hasClientInfo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mHasClientInfo:Z

    return v0
.end method

.method public isPingPacket()Z
    .locals 2

    const-string v0, "milink.ping"

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mCommand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPushPacket()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mIsPushPacket:Z

    return v0
.end method

.method public needCached()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mNeedCached:Z

    return v0
.end method

.method public needClientInfo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mNeedClientInfo:Z

    return v0
.end method

.method public needResponse()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mNeedResponse:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {p1}, Lcom/mi/milinkforgame/sdk/util/DataUtils;->readParcelBytes(Landroid/os/Parcel;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mData:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mSeqNo:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mCommand:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mMnsCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mBusiCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mMnsErrorMsg:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mIsPushPacket:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mNeedResponse:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mNeedCached:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mValidTime:I

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

    iput p1, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mBusiCode:I

    return-void
.end method

.method public setCommand(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mCommand:Ljava/lang/String;

    return-void
.end method

.method public setData([B)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mData:[B

    return-void
.end method

.method public setHasClientInfo(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mHasClientInfo:Z

    return-void
.end method

.method public setIsPushPacket(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mIsPushPacket:Z

    return-void
.end method

.method public setMnsCode(I)V
    .locals 0

    iput p1, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mMnsCode:I

    return-void
.end method

.method public setMnsErrorMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mMnsErrorMsg:Ljava/lang/String;

    return-void
.end method

.method public setNeedCached(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mNeedCached:Z

    return-void
.end method

.method public setNeedClientInfo(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mNeedClientInfo:Z

    return-void
.end method

.method public setNeedResponse(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mNeedResponse:Z

    return-void
.end method

.method public setResponseSize(I)V
    .locals 0

    iput p1, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mResponseSize:I

    return-void
.end method

.method public setSeqNo(I)V
    .locals 0

    iput p1, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mSeqNo:I

    return-void
.end method

.method public setValidTime(I)V
    .locals 0

    iput p1, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mValidTime:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mData:[B

    invoke-static {p1, v0}, Lcom/mi/milinkforgame/sdk/util/DataUtils;->writeParcelBytes(Landroid/os/Parcel;[B)V

    iget v0, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mSeqNo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mCommand:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mMnsCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mBusiCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mMnsErrorMsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mIsPushPacket:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mNeedResponse:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mNeedCached:Z

    if-eqz v0, :cond_2

    :goto_2
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->mValidTime:I

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
