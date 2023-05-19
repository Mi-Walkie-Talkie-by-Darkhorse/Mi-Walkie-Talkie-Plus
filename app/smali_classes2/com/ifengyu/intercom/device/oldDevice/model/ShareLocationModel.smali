.class public Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;
.super Ljava/lang/Object;
.source "ShareLocationModel.java"


# annotations
.annotation build Landroidx/room/Entity;
    indices = {
        .subannotation Landroidx/room/Index;
            unique = true
            value = {
                "user_id"
            }
        .end subannotation
    }
    tableName = "share_location"
.end annotation


# instance fields
.field private altitude:I

.field private freq:I

.field private fromDevType:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "from_dev_type"
    .end annotation
.end field

.field private id:Ljava/lang/Long;
    .annotation build Landroidx/room/PrimaryKey;
        autoGenerate = true
    .end annotation
.end field

.field private imgUrl:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "img_url"
    .end annotation
.end field

.field private latitude:I

.field private longitude:I

.field private name:Ljava/lang/String;

.field private rxCss:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "rx_css"
    .end annotation
.end field

.field private time:I

.field private userId:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "user_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;ILjava/lang/String;Ljava/lang/String;IIIIIII)V
    .locals 0
    .annotation build Landroidx/room/Ignore;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->id:Ljava/lang/Long;

    .line 4
    iput p2, p0, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->userId:I

    .line 5
    iput-object p3, p0, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->name:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->imgUrl:Ljava/lang/String;

    .line 7
    iput p5, p0, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->longitude:I

    .line 8
    iput p6, p0, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->latitude:I

    .line 9
    iput p7, p0, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->altitude:I

    .line 10
    iput p8, p0, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->time:I

    .line 11
    iput p9, p0, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->freq:I

    .line 12
    iput p10, p0, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->rxCss:I

    .line 13
    iput p11, p0, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->fromDevType:I

    return-void
.end method


# virtual methods
.method public getAltitude()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->altitude:I

    return v0
.end method

.method public getFreq()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->freq:I

    return v0
.end method

.method public getFromDevType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->fromDevType:I

    return v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->latitude:I

    return v0
.end method

.method public getLongitude()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->longitude:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRxCss()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->rxCss:I

    return v0
.end method

.method public getTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->time:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->userId:I

    return v0
.end method

.method public setAltitude(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->altitude:I

    return-void
.end method

.method public setFreq(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->freq:I

    return-void
.end method

.method public setFromDevType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->fromDevType:I

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->id:Ljava/lang/Long;

    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->imgUrl:Ljava/lang/String;

    return-void
.end method

.method public setLatitude(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->latitude:I

    return-void
.end method

.method public setLongitude(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->longitude:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->name:Ljava/lang/String;

    return-void
.end method

.method public setRxCss(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->rxCss:I

    return-void
.end method

.method public setTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->time:I

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->userId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShareLocationModel{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", imgUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->imgUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->longitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->latitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", altitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->altitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->time:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", freq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->freq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rxCss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->rxCss:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fromDevType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->fromDevType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
