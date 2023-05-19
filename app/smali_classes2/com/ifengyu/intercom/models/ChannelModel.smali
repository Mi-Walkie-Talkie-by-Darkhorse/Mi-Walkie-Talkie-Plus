.class public Lcom/ifengyu/intercom/models/ChannelModel;
.super Ljava/lang/Object;
.source "ChannelModel.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation build Landroidx/room/Entity;
    foreignKeys = {
        .subannotation Landroidx/room/ForeignKey;
            childColumns = {
                "config_id"
            }
            entity = Lcom/ifengyu/intercom/models/ConfigFileModel;
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

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Lcom/ifengyu/intercom/models/ChannelModel;",
        ">;"
    }
.end annotation


# static fields
.field public static final CHANNEL_TYPE_CUSTOM:I = 0x2

.field public static final CHANNEL_TYPE_REMOTE:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ifengyu/intercom/models/ChannelModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private channelName:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "channel_name"
    .end annotation
.end field

.field private channelSeq:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "channel_seq"
    .end annotation
.end field

.field private channelType:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "channel_type"
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
    new-instance v0, Lcom/ifengyu/intercom/models/ChannelModel$1;

    invoke-direct {v0}, Lcom/ifengyu/intercom/models/ChannelModel$1;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/models/ChannelModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 2
    const-class v0, Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iput-object v1, p0, Lcom/ifengyu/intercom/models/ChannelModel;->id:Ljava/lang/Long;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lcom/ifengyu/intercom/models/ChannelModel;->configId:Ljava/lang/Long;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/models/ChannelModel;->channelSeq:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/models/ChannelModel;->receiveFreq:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/models/ChannelModel;->sendFreq:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/models/ChannelModel;->receiveToneType:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/models/ChannelModel;->receiveToneValue:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/models/ChannelModel;->sendToneType:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/models/ChannelModel;->sendToneValue:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/models/ChannelModel;->channelType:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/models/ChannelModel;->channelName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/ifengyu/intercom/models/ChannelModel;->receiveFreq:I

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/models/ChannelModel;->sendFreq:I

    .line 3
    iput v0, p0, Lcom/ifengyu/intercom/models/ChannelModel;->receiveToneType:I

    .line 4
    iput v0, p0, Lcom/ifengyu/intercom/models/ChannelModel;->receiveToneValue:I

    .line 5
    iput v0, p0, Lcom/ifengyu/intercom/models/ChannelModel;->sendToneType:I

    .line 6
    iput v0, p0, Lcom/ifengyu/intercom/models/ChannelModel;->sendToneValue:I

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/ifengyu/intercom/models/ChannelModel;->channelName:Ljava/lang/String;

    return-void
.end method

.method public compareTo(Lcom/ifengyu/intercom/models/ChannelModel;)I
    .locals 3

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelType()I

    move-result v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelType()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelType()I

    move-result v0

    if-ne v0, v1, :cond_0

    return v2

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelType()I

    move-result p1

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelType()I

    move-result p1

    if-ne p1, v2, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelSeq()I

    move-result v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelSeq()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/ifengyu/intercom/models/ChannelModel;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/models/ChannelModel;->compareTo(Lcom/ifengyu/intercom/models/ChannelModel;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getChannelName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/models/ChannelModel;->channelName:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelSeq()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/models/ChannelModel;->channelSeq:I

    return v0
.end method

.method public getChannelType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/models/ChannelModel;->channelType:I

    return v0
.end method

.method public getConfigId()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/models/ChannelModel;->configId:Ljava/lang/Long;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/models/ChannelModel;->getDisplayNamePrefix()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/models/ChannelModel;->getDisplayNameSuffix()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0x7f11009a

    invoke-static {v1, v0}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayNamePrefix()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/models/ChannelModel;->channelType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const v0, 0x7f11033e

    new-array v2, v2, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/models/ChannelModel;->getDisplaySeq()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    const v0, 0x7f11010b

    new-array v2, v2, [Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/models/ChannelModel;->getDisplaySeq()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public getDisplayNameSuffix()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/models/ChannelModel;->channelType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f1100a2

    .line 2
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/models/ChannelModel;->channelName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/models/ChannelModel;->channelName:Ljava/lang/String;

    return-object v0

    :cond_1
    const v0, 0x7f110090

    .line 5
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, ""

    return-object v0
.end method

.method public getDisplayReceiveFreq()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/models/ChannelModel;->receiveFreq:I

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
    iget v0, p0, Lcom/ifengyu/intercom/models/ChannelModel;->receiveFreq:I

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

    sget-object v2, Lcom/ifengyu/intercom/l/a/c/b;->b:[[Ljava/lang/String;

    iget v3, p0, Lcom/ifengyu/intercom/models/ChannelModel;->receiveToneType:I

    aget-object v2, v2, v3

    iget v3, p0, Lcom/ifengyu/intercom/models/ChannelModel;->receiveToneValue:I

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
    sget-object v0, Lcom/ifengyu/intercom/l/a/c/b;->b:[[Ljava/lang/String;

    iget v1, p0, Lcom/ifengyu/intercom/models/ChannelModel;->receiveToneType:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/ifengyu/intercom/models/ChannelModel;->receiveToneValue:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getDisplaySendFreq()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/models/ChannelModel;->sendFreq:I

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
    iget v0, p0, Lcom/ifengyu/intercom/models/ChannelModel;->sendFreq:I

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

    sget-object v2, Lcom/ifengyu/intercom/l/a/c/b;->b:[[Ljava/lang/String;

    iget v3, p0, Lcom/ifengyu/intercom/models/ChannelModel;->sendToneType:I

    aget-object v2, v2, v3

    iget v3, p0, Lcom/ifengyu/intercom/models/ChannelModel;->sendToneValue:I

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
    sget-object v0, Lcom/ifengyu/intercom/l/a/c/b;->b:[[Ljava/lang/String;

    iget v1, p0, Lcom/ifengyu/intercom/models/ChannelModel;->sendToneType:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/ifengyu/intercom/models/ChannelModel;->sendToneValue:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getDisplaySeq()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget v1, p0, Lcom/ifengyu/intercom/models/ChannelModel;->channelSeq:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%02d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/models/ChannelModel;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getIsCustomCh()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/models/ChannelModel;->channelType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getIsRemoteCh()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/models/ChannelModel;->channelType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getLiteDisplaySeq()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 1
    iget v2, p0, Lcom/ifengyu/intercom/models/ChannelModel;->channelSeq:I

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

.method public getReceiveFreq()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/models/ChannelModel;->receiveFreq:I

    return v0
.end method

.method public getReceiveToneType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/models/ChannelModel;->receiveToneType:I

    return v0
.end method

.method public getReceiveToneValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/models/ChannelModel;->receiveToneValue:I

    return v0
.end method

.method public getSendFreq()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/models/ChannelModel;->sendFreq:I

    return v0
.end method

.method public getSendToneType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/models/ChannelModel;->sendToneType:I

    return v0
.end method

.method public getSendToneValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/models/ChannelModel;->sendToneValue:I

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/models/ChannelModel;->receiveFreq:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/models/ChannelModel;->sendFreq:I

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

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    const-class v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iput-object v1, p0, Lcom/ifengyu/intercom/models/ChannelModel;->id:Ljava/lang/Long;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lcom/ifengyu/intercom/models/ChannelModel;->configId:Ljava/lang/Long;

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/models/ChannelModel;->channelSeq:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/models/ChannelModel;->receiveFreq:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/models/ChannelModel;->sendFreq:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/models/ChannelModel;->receiveToneType:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/models/ChannelModel;->receiveToneValue:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/models/ChannelModel;->sendToneType:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/models/ChannelModel;->sendToneValue:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/models/ChannelModel;->channelType:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/models/ChannelModel;->channelName:Ljava/lang/String;

    return-void
.end method

.method public setChannelName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/models/ChannelModel;->channelName:Ljava/lang/String;

    return-void
.end method

.method public setChannelSeq(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/models/ChannelModel;->channelSeq:I

    return-void
.end method

.method public setChannelType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/models/ChannelModel;->channelType:I

    return-void
.end method

.method public setConfigId(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/models/ChannelModel;->configId:Ljava/lang/Long;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/models/ChannelModel;->id:Ljava/lang/Long;

    return-void
.end method

.method public setReceiveFreq(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/models/ChannelModel;->receiveFreq:I

    return-void
.end method

.method public setReceiveToneType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/models/ChannelModel;->receiveToneType:I

    return-void
.end method

.method public setReceiveToneValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/models/ChannelModel;->receiveToneValue:I

    return-void
.end method

.method public setSendFreq(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/models/ChannelModel;->sendFreq:I

    return-void
.end method

.method public setSendToneType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/models/ChannelModel;->sendToneType:I

    return-void
.end method

.method public setSendToneValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/models/ChannelModel;->sendToneValue:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChannelModel{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ifengyu/intercom/models/ChannelModel;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", configId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ifengyu/intercom/models/ChannelModel;->configId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", channelSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/models/ChannelModel;->channelSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", receiveFreq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/models/ChannelModel;->receiveFreq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sendFreq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/models/ChannelModel;->sendFreq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", receiveToneType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/models/ChannelModel;->receiveToneType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", receiveToneValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/models/ChannelModel;->receiveToneValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sendToneType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/models/ChannelModel;->sendToneType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sendToneValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/models/ChannelModel;->sendToneValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", channelType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/models/ChannelModel;->channelType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", channelName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ifengyu/intercom/models/ChannelModel;->channelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/ifengyu/intercom/models/ChannelModel;->id:Ljava/lang/Long;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 2
    iget-object p2, p0, Lcom/ifengyu/intercom/models/ChannelModel;->configId:Ljava/lang/Long;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 3
    iget p2, p0, Lcom/ifengyu/intercom/models/ChannelModel;->channelSeq:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Lcom/ifengyu/intercom/models/ChannelModel;->receiveFreq:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget p2, p0, Lcom/ifengyu/intercom/models/ChannelModel;->sendFreq:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget p2, p0, Lcom/ifengyu/intercom/models/ChannelModel;->receiveToneType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget p2, p0, Lcom/ifengyu/intercom/models/ChannelModel;->receiveToneValue:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget p2, p0, Lcom/ifengyu/intercom/models/ChannelModel;->sendToneType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget p2, p0, Lcom/ifengyu/intercom/models/ChannelModel;->sendToneValue:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget p2, p0, Lcom/ifengyu/intercom/models/ChannelModel;->channelType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    iget-object p2, p0, Lcom/ifengyu/intercom/models/ChannelModel;->channelName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
