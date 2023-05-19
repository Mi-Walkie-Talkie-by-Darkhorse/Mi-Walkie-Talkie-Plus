.class public Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;
.super Ljava/lang/Object;
.source "SealSharkChannelModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private band:I

.field private elim:Z

.field private isStChannel:Z

.field private name:Ljava/lang/String;

.field private no:I

.field private polite:Z

.field private rxCss:I

.field private rxFreq:I

.field private sq:I

.field private txCss:I

.field private txFreq:I

.field private txPower:I

.field private type:I

.field private vox:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel$1;

    invoke-direct {v0}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel$1;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->no:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->type:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->txPower:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->rxFreq:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->txFreq:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->name:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->sq:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->vox:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->rxCss:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->txCss:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->elim:Z

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->band:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->polite:Z

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->isStChannel:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x1

    if-ne p0, p1, :cond_2

    return v1

    .line 2
    :cond_2
    check-cast p1, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getType()I

    move-result v2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getType()I

    move-result v3

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getNo()I

    move-result v2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getNo()I

    move-result p1

    if-ne v2, p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public getBand()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->band:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNo()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->no:I

    return v0
.end method

.method public getRxCss()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->rxCss:I

    return v0
.end method

.method public getRxFreq()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->rxFreq:I

    return v0
.end method

.method public getSq()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->sq:I

    return v0
.end method

.method public getTxCss()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->txCss:I

    return v0
.end method

.method public getTxFreq()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->txFreq:I

    return v0
.end method

.method public getTxPower()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->txPower:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->type:I

    return v0
.end method

.method public getVox()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->vox:I

    return v0
.end method

.method public isElim()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->elim:Z

    return v0
.end method

.method public isPolite()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->polite:Z

    return v0
.end method

.method public isStChannel()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->isStChannel:Z

    return v0
.end method

.method public setBand(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->band:I

    return-void
.end method

.method public setElim(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->elim:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->name:Ljava/lang/String;

    return-void
.end method

.method public setNo(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->no:I

    return-void
.end method

.method public setPolite(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->polite:Z

    return-void
.end method

.method public setRxCss(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->rxCss:I

    return-void
.end method

.method public setRxFreq(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->rxFreq:I

    return-void
.end method

.method public setSq(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->sq:I

    return-void
.end method

.method public setStChannel(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->isStChannel:Z

    return-void
.end method

.method public setTxCss(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->txCss:I

    return-void
.end method

.method public setTxFreq(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->txFreq:I

    return-void
.end method

.method public setTxPower(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->txPower:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->type:I

    return-void
.end method

.method public setVox(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->vox:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->no:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p2, p0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->txPower:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->rxFreq:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget p2, p0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->txFreq:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget p2, p0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->sq:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget p2, p0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->vox:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget p2, p0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->rxCss:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget p2, p0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->txCss:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    iget-boolean p2, p0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->elim:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 12
    iget p2, p0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->band:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    iget-boolean p2, p0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->polite:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 14
    iget-boolean p2, p0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->isStChannel:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
