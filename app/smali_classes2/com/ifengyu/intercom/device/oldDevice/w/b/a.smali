.class public Lcom/ifengyu/intercom/device/oldDevice/w/b/a;
.super Ljava/lang/Object;
.source "DolphinCommandHelper.java"


# direct methods
.method public static a()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;
    .locals 4

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    move-result-object v1

    .line 3
    sget v2, Lcom/ifengyu/intercom/p/d0;->a:I

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->setActivateChannel(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "paramUpdate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/AbstractMessage$Builder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DolphinCommandHelper"

    invoke-static {v3, v2}, Lcom/ifengyu/intercom/p/y;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->setParamUpdate(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    .line 7
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getNo()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->setNo(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->valueOf(I)Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->setType(Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getFreq()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->setFreq(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GB2312"

    invoke-static {v1, v2}, Lcom/google/protobuf/ByteString;->copyFrom(Ljava/lang/String;Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->setName(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getTone()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/p/b0;->t(I)[I

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getTone2()I

    move-result v1

    invoke-static {v1}, Lcom/ifengyu/intercom/p/b0;->t(I)[I

    move-result-object v1

    .line 8
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getFreq2()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->setFreq2(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    const/4 p0, 0x0

    .line 9
    aget v2, v0, p0

    invoke-virtual {p1, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->setCssType(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    const/4 v2, 0x1

    .line 10
    aget v3, v0, v2

    invoke-virtual {p1, v3}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->setCssCode(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    const/4 v3, 0x2

    .line 11
    aget v0, v0, v3

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->setCssInvert(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    .line 12
    aget p0, v1, p0

    invoke-virtual {p1, p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->setCssType2(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    .line 13
    aget p0, v1, v2

    invoke-virtual {p1, p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->setCssCode2(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    .line 14
    aget p0, v1, v3

    invoke-virtual {p1, p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->setCssInvert2(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object p1
.end method

.method public static c(Ljava/lang/String;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;

    move-result-object v1

    .line 3
    sget v2, Lcom/ifengyu/intercom/p/d0;->a:I

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;

    .line 4
    sget-object v2, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;->CONNECT:Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->setConnCode(Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;)Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->setDeviceId(I)Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/AbstractMessage$Builder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "DolphinCommandHelper"

    invoke-static {v2, p0}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->setConnectQuery(Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    .line 9
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lcom/ifengyu/intercom/bean/BeanUserLocation;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;
    .locals 4

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    move-result-object v1

    .line 3
    sget v2, Lcom/ifengyu/intercom/p/d0;->a:I

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getTime()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->setTime(I)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getLongitudeInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->setLongitude(I)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    .line 6
    invoke-virtual {p0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getLatitudeInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->setLatitude(I)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    .line 7
    invoke-virtual {p0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getAltitude()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->setAltitude(I)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GB2312"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->setUserName(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 9
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 10
    :goto_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getUserID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->setUserId(I)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    .line 11
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "locationSync: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/AbstractMessage$Builder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "DolphinCommandHelper"

    invoke-static {v2, p0}, Lcom/ifengyu/intercom/p/y;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->setLocationSync(Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    .line 13
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object p0

    return-object p0
.end method

.method public static e()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;
    .locals 4

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    move-result-object v1

    .line 3
    sget v2, Lcom/ifengyu/intercom/p/d0;->a:I

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "paramUpdate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/AbstractMessage$Builder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DolphinCommandHelper"

    invoke-static {v3, v2}, Lcom/ifengyu/intercom/p/y;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->setParamQuery(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    .line 6
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v0

    return-object v0
.end method

.method public static f(Ljava/lang/String;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;
    .locals 8

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    move-result-object v1

    .line 3
    sget v2, Lcom/ifengyu/intercom/p/d0;->a:I

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    :try_start_0
    const-string v2, "UTF-8"

    .line 4
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "GB2312"

    .line 5
    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 6
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    new-array v4, v3, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 7
    :goto_0
    array-length v7, v2

    if-ge v6, v7, :cond_0

    .line 8
    aget-byte v7, v2, v6

    aput-byte v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v3, -0x1

    .line 9
    aput-byte v5, v4, v3

    .line 10
    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->setDevNameGBK(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    .line 11
    invoke-static {v4}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->setDevNameUTF8(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 12
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 13
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "paramUpdate: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/AbstractMessage$Builder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "DolphinCommandHelper"

    invoke-static {v2, p0}, Lcom/ifengyu/intercom/p/y;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->setParamUpdate(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    .line 15
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object p0

    return-object p0
.end method

.method public static g(ILjava/lang/String;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    move-result-object v1

    .line 3
    sget v2, Lcom/ifengyu/intercom/p/d0;->a:I

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    .line 4
    :try_start_0
    invoke-virtual {v1, p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->setUserId(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    const-string p0, "GB2312"

    .line 5
    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->setUserName(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 7
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "paramUpdate: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/AbstractMessage$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DolphinCommandHelper"

    invoke-static {p1, p0}, Lcom/ifengyu/intercom/p/y;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->setParamUpdate(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    .line 9
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object p0

    return-object p0
.end method

.method public static h(Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    move-result-object v1

    .line 3
    sget v2, Lcom/ifengyu/intercom/p/d0;->a:I

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    .line 4
    invoke-virtual {v1, p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->setStateMode(Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "paramUpdate: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/AbstractMessage$Builder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "DolphinCommandHelper"

    invoke-static {v2, p0}, Lcom/ifengyu/intercom/p/y;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->setParamUpdate(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    .line 7
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object p0

    return-object p0
.end method

.method public static i(I)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    move-result-object v1

    .line 3
    sget v2, Lcom/ifengyu/intercom/p/d0;->a:I

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    .line 4
    invoke-virtual {v1, p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->setShareLoc(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "paramUpdate: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/AbstractMessage$Builder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "DolphinCommandHelper"

    invoke-static {v2, p0}, Lcom/ifengyu/intercom/p/y;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->setParamUpdate(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    .line 7
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object p0

    return-object p0
.end method

.method public static j(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;

    move-result-object v1

    .line 3
    invoke-virtual {v1, p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;->setOption(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;)Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;

    .line 4
    sget v2, Lcom/ifengyu/intercom/p/d0;->a:I

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;

    .line 5
    sget-object v2, Lcom/ifengyu/intercom/device/oldDevice/w/b/a$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v2, p2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_4

    const/4 v2, 0x2

    if-eq p2, v2, :cond_4

    const/4 v2, 0x3

    if-eq p2, v2, :cond_0

    const/4 v2, 0x4

    if-eq p2, v2, :cond_0

    const/4 v2, 0x5

    if-eq p2, v2, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p0, :cond_2

    .line 6
    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;->getCh1Builder()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    move-result-object p2

    .line 7
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getType()I

    move-result v2

    invoke-static {v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->valueOf(I)Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v2

    .line 8
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getNo()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->setNo(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    move-result-object p0

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->SCAN:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    :goto_0
    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->setType(Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    .line 9
    invoke-virtual {v1, p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;->setCh1(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;

    :cond_2
    if-eqz p1, :cond_6

    .line 10
    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;->getCh2Builder()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    move-result-object p0

    .line 11
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getType()I

    move-result p2

    invoke-static {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->valueOf(I)Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object p2

    .line 12
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getNo()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->setNo(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    move-result-object p1

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    sget-object p2, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->SCAN:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    :goto_1
    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->setType(Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    .line 13
    invoke-virtual {v1, p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;->setCh2(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;

    goto :goto_2

    :cond_4
    if-eqz p0, :cond_5

    .line 14
    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;->getCh1Builder()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/ifengyu/intercom/device/oldDevice/w/b/a;->b(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    invoke-virtual {v1, p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;->setCh1(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;

    :cond_5
    if-eqz p1, :cond_6

    .line 15
    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;->getCh2Builder()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/ifengyu/intercom/device/oldDevice/w/b/a;->b(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    invoke-virtual {v1, p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;->setCh2(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;

    .line 16
    :cond_6
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "stateUpdate:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/AbstractMessage$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DolphinCommandHelper"

    invoke-static {p1, p0}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->setStateQuery(Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    .line 18
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object p0

    return-object p0
.end method
