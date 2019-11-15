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
.method public constructor <init>(Lcom/ifengyu/intercom/greendao/bean/d;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/greendao/bean/d;->b()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->userID:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/greendao/bean/d;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->imgUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/greendao/bean/d;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/greendao/bean/d;->e()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->longitude:I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/greendao/bean/d;->f()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->latitude:I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/greendao/bean/d;->g()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->altitude:I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/greendao/bean/d;->h()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->time:I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/greendao/bean/d;->i()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->freq:I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/greendao/bean/d;->k()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->fromDevType:I

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->getUserId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->userID:Ljava/lang/String;

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

    :goto_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->getLongitude()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->longitude:I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->getLatitude()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->latitude:I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->getAltitude()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->altitude:I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->getTime()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->time:I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->getFreq()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->freq:I

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_LocationInfo;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_LocationInfo;->getUserId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->userID:Ljava/lang/String;

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

    :goto_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_LocationInfo;->getLongitude()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->longitude:I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_LocationInfo;->getLatitude()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->latitude:I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_LocationInfo;->getAltitude()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->altitude:I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_LocationInfo;->getTimeSync()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->time:I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_LocationInfo;->getUserFreq()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->freq:I

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;->getUserId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->userID:Ljava/lang/String;

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

    :goto_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;->getLongitude()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->longitude:I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;->getLatitude()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->latitude:I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;->getAltitude()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->altitude:I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;->getTimeSync()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->time:I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;->getUserFreq()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->freq:I

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->userID:Ljava/lang/String;

    iput-object p2, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->name:Ljava/lang/String;

    iput p3, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->longitude:I

    iput p4, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->latitude:I

    iput p5, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->altitude:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->time:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAltitude()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->altitude:I

    return v0
.end method

.method public getFreq()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->freq:I

    return v0
.end method

.method public getFromDevType()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->fromDevType:I

    return v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitudeDouble()D
    .locals 4

    iget v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->latitude:I

    int-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getLatitudeInt()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->latitude:I

    return v0
.end method

.method public getLongitudeDouble()D
    .locals 4

    iget v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->longitude:I

    int-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getLongitudeInt()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->longitude:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()Lorg/osmdroid/util/GeoPoint;
    .locals 6

    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getLatitudeDouble()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getLongitudeDouble()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    return-object v0
.end method

.method public getTime()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->time:I

    return v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->userID:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getUserID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setAltitude(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->altitude:I

    return-void
.end method

.method public setBeanUser(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V
    .locals 1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getLongitudeInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->setLongitudeInt(I)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getLatitudeInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->setLatitudeInt(I)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getAltitude()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->setAltitude(I)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getTime()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->setTime(I)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getFreq()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->setFreq(I)V

    return-void
.end method

.method public setFreq(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->freq:I

    return-void
.end method

.method public setFromDevType(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->fromDevType:I

    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->imgUrl:Ljava/lang/String;

    return-void
.end method

.method public setLatitudeInt(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->latitude:I

    return-void
.end method

.method public setLongitudeInt(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->longitude:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->name:Ljava/lang/String;

    return-void
.end method

.method public setTime(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->time:I

    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->userID:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BeanUserLocation{userID=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->userID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imgUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->imgUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->longitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->latitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", altitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->altitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->time:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", freq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/bean/BeanUserLocation;->freq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
