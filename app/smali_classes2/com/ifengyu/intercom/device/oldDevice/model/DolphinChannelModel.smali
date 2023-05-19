.class public Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;
.super Ljava/lang/Object;
.source "DolphinChannelModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private freq:I

.field private freq2:I

.field private name:Ljava/lang/String;

.field private no:I

.field private tone:I

.field private tone2:I

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel$1;

    invoke-direct {v0}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel$1;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->no:I

    .line 4
    iput p2, p0, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->type:I

    .line 5
    iput-object p3, p0, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->name:Ljava/lang/String;

    .line 6
    iput p4, p0, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->freq:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;IIII)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->no:I

    .line 9
    iput p2, p0, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->type:I

    .line 10
    iput-object p3, p0, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->name:Ljava/lang/String;

    .line 11
    iput p4, p0, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->freq:I

    .line 12
    iput p5, p0, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->tone:I

    .line 13
    iput p6, p0, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->freq2:I

    .line 14
    iput p7, p0, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->tone2:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->no:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->type:I

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->name:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->freq:I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->tone:I

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->freq2:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->tone2:I

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

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 2
    :cond_2
    check-cast p1, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getType()I

    move-result v2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getType()I

    move-result v3

    if-eq v2, v3, :cond_3

    return v1

    .line 4
    :cond_3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getNo()I

    move-result v2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getNo()I

    move-result p1

    if-eq v2, p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public getFreq()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->freq:I

    return v0
.end method

.method public getFreq2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->freq2:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNo()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->no:I

    return v0
.end method

.method public getTone()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->tone:I

    return v0
.end method

.method public getTone2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->tone2:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->type:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->no:I

    add-int/2addr v1, v0

    return v1
.end method

.method public setFreq(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->freq:I

    return-void
.end method

.method public setFreq2(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->freq2:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->name:Ljava/lang/String;

    return-void
.end method

.method public setNo(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->no:I

    return-void
.end method

.method public setTone(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->tone:I

    return-void
.end method

.method public setTone2(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->tone2:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->type:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->no:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p2, p0, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget p2, p0, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->freq:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget p2, p0, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->tone:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget p2, p0, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->freq2:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget p2, p0, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->tone2:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
