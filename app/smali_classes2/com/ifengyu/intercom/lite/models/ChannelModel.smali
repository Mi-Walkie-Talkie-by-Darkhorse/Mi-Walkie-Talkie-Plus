.class public Lcom/ifengyu/intercom/lite/models/ChannelModel;
.super Ljava/lang/Object;
.source "ChannelModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/room/Entity;
    foreignKeys = {
        .subannotation Landroidx/room/ForeignKey;
            childColumns = {
                "config_id"
            }
            entity = Lcom/ifengyu/intercom/lite/models/ConfigFileModel;
            onDelete = 0x5
            parentColumns = {
                "id"
            }
        .end subannotation
    }
    indices = {
        .subannotation Landroidx/room/Index;
            value = {
                "config_id"
            }
        .end subannotation
    }
    tableName = "channel"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ifengyu/intercom/lite/models/ChannelModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private channelSeq:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "channel_seq"
    .end annotation
.end field

.field private configId:Ljava/lang/Long;
    .annotation build Landroidx/room/ColumnInfo;
        name = "config_id"
    .end annotation
.end field

.field private id:Ljava/lang/Long;
    .annotation build Landroidx/room/PrimaryKey;
        autoGenerate = true
    .end annotation
.end field

.field private receiveFreq:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "receive_freq"
    .end annotation
.end field

.field private receiveToneType:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "receive_tone_type"
    .end annotation
.end field

.field private receiveToneValue:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "receive_tone_value"
    .end annotation
.end field

.field private sendFreq:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "send_freq"
    .end annotation
.end field

.field private sendToneType:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "send_tone_type"
    .end annotation
.end field

.field private sendToneValue:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "send_tone_value"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/lite/models/ChannelModel$1;

    invoke-direct {v0}, Lcom/ifengyu/intercom/lite/models/ChannelModel$1;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 0
    .annotation build Landroidx/room/Ignore;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->channelSeq:I

    .line 4
    iput p2, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->receiveFreq:I

    .line 5
    iput p3, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->sendFreq:I

    .line 6
    iput p4, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->receiveToneType:I

    .line 7
    iput p5, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->receiveToneValue:I

    .line 8
    iput p6, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->sendToneType:I

    .line 9
    iput p7, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->sendToneValue:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 21
    const-class v0, Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iput-object v1, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->id:Ljava/lang/Long;

    .line 23
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->configId:Ljava/lang/Long;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->channelSeq:I

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->receiveFreq:I

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->sendFreq:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->receiveToneType:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->receiveToneValue:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->sendToneType:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->sendToneValue:I

    return-void
.end method

.method public constructor <init>(Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;->getSeq()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 12
    :cond_0
    iput v0, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->channelSeq:I

    .line 13
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;->getRxFreq()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->receiveFreq:I

    .line 14
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;->getTxFreq()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->sendFreq:I

    .line 15
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;->getRxCss()I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    const/4 v0, 0x0

    .line 16
    :cond_1
    iput v0, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->receiveToneType:I

    .line 17
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;->getRxCss()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->receiveToneValue:I

    .line 18
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;->getTxCss()I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    .line 19
    :goto_0
    iput v1, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->sendToneType:I

    .line 20
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;->getTxCss()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->sendToneValue:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->receiveFreq:I

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->sendFreq:I

    .line 3
    iput v0, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->receiveToneType:I

    .line 4
    iput v0, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->receiveToneValue:I

    .line 5
    iput v0, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->sendToneType:I

    .line 6
    iput v0, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->sendToneValue:I

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getChannelSeq()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->channelSeq:I

    return v0
.end method

.method public getConfigId()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->configId:Ljava/lang/Long;

    return-object v0
.end method

.method public getDisplayReceiveFreq()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->receiveFreq:I

    if-gtz v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    int-to-float v0, v0

    const v3, 0x49742400    # 1000000.0f

    div-float/2addr v0, v3

    .line 2
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "%.4f"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayReceiveFreqWithTone()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->receiveFreq:I

    if-gtz v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    int-to-float v0, v0

    const v3, 0x49742400    # 1000000.0f

    div-float/2addr v0, v3

    .line 2
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    sget-object v2, Lcom/ifengyu/intercom/lite/b/a;->b:[[Ljava/lang/String;

    iget v3, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->receiveToneType:I

    aget-object v2, v2, v3

    iget v3, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->receiveToneValue:I

    aget-object v2, v2, v3

    aput-object v2, v1, v0

    const-string v0, "%.4f/%s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayReceiveTone()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/lite/b/a;->b:[[Ljava/lang/String;

    iget v1, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->receiveToneType:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->receiveToneValue:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getDisplaySendFreq()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->sendFreq:I

    if-gtz v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    int-to-float v0, v0

    const v3, 0x49742400    # 1000000.0f

    div-float/2addr v0, v3

    .line 2
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "%.4f"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplaySendFreqWithTone()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->sendFreq:I

    if-gtz v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    int-to-float v0, v0

    const v3, 0x49742400    # 1000000.0f

    div-float/2addr v0, v3

    .line 2
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    sget-object v2, Lcom/ifengyu/intercom/lite/b/a;->b:[[Ljava/lang/String;

    iget v3, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->sendToneType:I

    aget-object v2, v2, v3

    iget v3, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->sendToneValue:I

    aget-object v2, v2, v3

    aput-object v2, v1, v0

    const-string v0, "%.4f/%s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplaySendTone()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/lite/b/a;->b:[[Ljava/lang/String;

    iget v1, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->sendToneType:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->sendToneValue:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getDisplaySeq()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 1
    iget v2, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->channelSeq:I

    add-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "%02d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getReceiveFreq()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->receiveFreq:I

    return v0
.end method

.method public getReceiveToneType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->receiveToneType:I

    return v0
.end method

.method public getReceiveToneValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->receiveToneValue:I

    return v0
.end method

.method public getSendFreq()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->sendFreq:I

    return v0
.end method

.method public getSendToneType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->sendToneType:I

    return v0
.end method

.method public getSendToneValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->sendToneValue:I

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->receiveFreq:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->sendFreq:I

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public setChannelSeq(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->channelSeq:I

    return-void
.end method

.method public setConfigId(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->configId:Ljava/lang/Long;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->id:Ljava/lang/Long;

    return-void
.end method

.method public setReceiveFreq(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->receiveFreq:I

    return-void
.end method

.method public setReceiveToneType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->receiveToneType:I

    return-void
.end method

.method public setReceiveToneValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->receiveToneValue:I

    return-void
.end method

.method public setSendFreq(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->sendFreq:I

    return-void
.end method

.method public setSendToneType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->sendToneType:I

    return-void
.end method

.method public setSendToneValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->sendToneValue:I

    return-void
.end method

.method public toChannelInfo()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;
    .locals 4

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;->newBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->channelSeq:I

    add-int/lit8 v1, v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->setSeq(I)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->receiveFreq:I

    .line 3
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->setRxFreq(I)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->receiveToneValue:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->receiveToneType:I

    add-int/lit8 v3, v3, 0x1

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v1

    .line 4
    :goto_0
    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->setRxCss(I)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->sendFreq:I

    .line 5
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->setTxFreq(I)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->sendToneValue:I

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->sendToneType:I

    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v1

    .line 6
    :goto_1
    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->setTxCss(I)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->build()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChannelModel{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", configId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->configId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", channelSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->channelSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", receiveFreq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->receiveFreq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sendFreq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->sendFreq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", receiveToneType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->receiveToneType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", receiveToneValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->receiveToneValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sendToneType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->sendToneType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sendToneValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->sendToneValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->id:Ljava/lang/Long;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 2
    iget-object p2, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->configId:Ljava/lang/Long;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 3
    iget p2, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->channelSeq:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->receiveFreq:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget p2, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->sendFreq:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget p2, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->receiveToneType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget p2, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->receiveToneValue:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget p2, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->sendToneType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget p2, p0, Lcom/ifengyu/intercom/lite/models/ChannelModel;->sendToneValue:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
