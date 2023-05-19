.class public Lcom/ifengyu/intercom/bean/BeanUserLocation;
.super Ljava/lang/Object;
.source "BeanUserLocation.java"


# instance fields
.field private altitude:I

.field private freq:I

.field private fromDevType:I

.field private imgUrl:Ljava/lang/String;

.field private latitude:I

.field private longitude:I

.field private name:Ljava/lang/String;

.field private time:I

.field private userID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;Z)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 38
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->getUserId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->userID:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->getImgUrl()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->imgUrl:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->name:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->getLongitude()I

    move-result p2

    iput p2, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->longitude:I

    .line 42
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->getLatitude()I

    move-result p2

    iput p2, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->latitude:I

    .line 43
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->getAltitude()I

    move-result p2

    iput p2, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->altitude:I

    .line 44
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->getTime()I

    move-result p2

    iput p2, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->time:I

    .line 45
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->getFreq()I

    move-result p2

    iput p2, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->freq:I

    .line 46
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;->getFromDevType()I

    move-result p1

    iput p1, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->fromDevType:I

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;)V
    .locals 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->getUserId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->userID:Ljava/lang/String;

    .line 30
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->getUserName()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    const-string v2, "GB2312"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 32
    :goto_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->getLongitude()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->longitude:I

    .line 33
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->getLatitude()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->latitude:I

    .line 34
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->getAltitude()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->altitude:I

    .line 35
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->getTimestamp()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->time:I

    .line 36
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->getUserFreq()I

    move-result p1

    iput p1, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->freq:I

    return-void
.end method

.method public constructor <init>(Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->getUserId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->userID:Ljava/lang/String;

    .line 3
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->getUserName()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    const-string v2, "GB2312"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 5
    :goto_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->getLongitude()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->longitude:I

    .line 6
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->getLatitude()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->latitude:I

    .line 7
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->getAltitude()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->altitude:I

    .line 8
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->getTime()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->time:I

    .line 9
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->getFreq()I

    move-result p1

    iput p1, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->freq:I

    return-void
.end method

.method public constructor <init>(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_LocationInfo;)V
    .locals 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_LocationInfo;->getUserId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->userID:Ljava/lang/String;

    .line 12
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_LocationInfo;->getUserName()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    const-string v2, "GB2312"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 14
    :goto_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_LocationInfo;->getLongitude()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->longitude:I

    .line 15
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_LocationInfo;->getLatitude()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->latitude:I

    .line 16
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_LocationInfo;->getAltitude()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->altitude:I

    .line 17
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_LocationInfo;->getTimeSync()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->time:I

    .line 18
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_LocationInfo;->getUserFreq()I

    move-result p1

    iput p1, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->freq:I

    return-void
.end method

.method public constructor <init>(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;)V
    .locals 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;->getUserId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->userID:Ljava/lang/String;

    .line 21
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;->getUserName()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    const-string v2, "GB2312"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 23
    :goto_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;->getLongitude()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->longitude:I

    .line 24
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;->getLatitude()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->latitude:I

    .line 25
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;->getAltitude()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->altitude:I

    .line 26
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;->getTimeSync()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->time:I

    .line 27
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;->getUserFreq()I

    move-result p1

    iput p1, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->freq:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->userID:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->name:Ljava/lang/String;

    .line 50
    iput p3, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->longitude:I

    .line 51
    iput p4, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->latitude:I

    .line 52
    iput p5, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->altitude:I

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/16 p3, 0x3e8

    div-long/2addr p1, p3

    long-to-int p2, p1

    iput p2, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->time:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getAltitude()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->altitude:I

    return v0
.end method

.method public getFreq()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->freq:I

    return v0
.end method

.method public getFromDevType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->fromDevType:I

    return v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitudeDouble()D
    .locals 4

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->latitude:I

    int-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getLatitudeInt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->latitude:I

    return v0
.end method

.method public getLongitudeDouble()D
    .locals 4

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->longitude:I

    int-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getLongitudeInt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->longitude:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->time:I

    return v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->userID:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getUserID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setAltitude(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->altitude:I

    return-void
.end method

.method public setBeanUser(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->setName(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getLongitudeInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->setLongitudeInt(I)V

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getLatitudeInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->setLatitudeInt(I)V

    .line 4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getAltitude()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->setAltitude(I)V

    .line 5
    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getTime()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->setTime(I)V

    .line 6
    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getFreq()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->setFreq(I)V

    return-void
.end method

.method public setFreq(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->freq:I

    return-void
.end method

.method public setFromDevType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->fromDevType:I

    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->imgUrl:Ljava/lang/String;

    return-void
.end method

.method public setLatitudeInt(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->latitude:I

    return-void
.end method

.method public setLongitudeInt(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->longitude:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->name:Ljava/lang/String;

    return-void
.end method

.method public setTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->time:I

    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->userID:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BeanUserLocation{userID=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->userID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", imgUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->imgUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->longitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->latitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", altitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->altitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->time:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", freq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->freq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
