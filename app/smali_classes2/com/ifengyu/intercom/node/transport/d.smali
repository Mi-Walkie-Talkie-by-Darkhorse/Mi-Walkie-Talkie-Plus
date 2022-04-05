.class public Lcom/ifengyu/intercom/node/transport/d;
.super Ljava/lang/Object;


# direct methods
.method private static a(Lcom/ifengyu/intercom/ui/setting/UserChannel;Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->e()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->setNo(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->h()I

    move-result v1

    invoke-static {v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->valueOf(I)Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->setType(Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->setFreq(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GB2312"

    invoke-static {v1, v2}, Lcom/google/protobuf/ByteString;->copyFrom(Ljava/lang/String;Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->setName(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->h()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->f()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/i/c0;->e(I)[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->g()I

    move-result v1

    invoke-static {v1}, Lcom/ifengyu/intercom/i/c0;->e(I)[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->b()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->setFreq2(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    const/4 p0, 0x0

    aget v2, v0, p0

    invoke-virtual {p1, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->setCssType(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    const/4 v2, 0x1

    aget v3, v0, v2

    invoke-virtual {p1, v3}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->setCssCode(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    const/4 v3, 0x2

    aget v0, v0, v3

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->setCssInvert(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    aget p0, v1, p0

    invoke-virtual {p1, p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->setCssType2(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    aget p0, v1, v2

    invoke-virtual {p1, p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->setCssCode2(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    aget p0, v1, v3

    invoke-virtual {p1, p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->setCssInvert2(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object p1
.end method

.method public static a(Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    move-result-object v0

    sget v1, Lcom/ifengyu/intercom/i/d0;->a:I

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->setActivateChannel(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "paramUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/AbstractMessage$Builder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DolphinCommandHelper"

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->setParamUpdate(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;I)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    move-result-object v0

    sget v1, Lcom/ifengyu/intercom/i/d0;->a:I

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->setShareLoc(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "paramUpdate: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/AbstractMessage$Builder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DolphinCommandHelper"

    invoke-static {v1, p1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->setParamUpdate(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;ILjava/lang/String;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    move-result-object v0

    sget v1, Lcom/ifengyu/intercom/i/d0;->a:I

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->setUserId(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    const-string p1, "GB2312"

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->setUserName(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "paramUpdate: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/AbstractMessage$Builder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DolphinCommandHelper"

    invoke-static {p2, p1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->setParamUpdate(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;Lcom/ifengyu/intercom/bean/BeanUserLocation;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    move-result-object v0

    sget v1, Lcom/ifengyu/intercom/i/d0;->a:I

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getTime()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->setTime(I)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getLongitudeInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->setLongitude(I)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getLatitudeInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->setLatitude(I)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getAltitude()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->setAltitude(I)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    :try_start_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GB2312"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->setUserName(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getUserID()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->setUserId(I)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "locationSync: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/AbstractMessage$Builder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DolphinCommandHelper"

    invoke-static {v1, p1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->setLocationSync(Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;Lcom/ifengyu/intercom/node/ConnectionConfiguration;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;

    move-result-object v0

    sget v1, Lcom/ifengyu/intercom/i/d0;->a:I

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;->CONNECT:Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->setConnCode(Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;)Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->e()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->setDeviceId(I)Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/AbstractMessage$Builder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DolphinCommandHelper"

    invoke-static {v1, p1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->setConnectQuery(Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    move-result-object v0

    sget v1, Lcom/ifengyu/intercom/i/d0;->a:I

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->setStateMode(Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "paramUpdate: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/AbstractMessage$Builder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DolphinCommandHelper"

    invoke-static {v1, p1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->setParamUpdate(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;Lcom/ifengyu/intercom/ui/setting/UserChannel;Lcom/ifengyu/intercom/ui/setting/UserChannel;Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;->setOption(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;)Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;

    sget v1, Lcom/ifengyu/intercom/i/d0;->a:I

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;

    sget-object v1, Lcom/ifengyu/intercom/node/transport/d$a;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v1, p3

    const/4 v1, 0x1

    if-eq p3, v1, :cond_4

    const/4 v1, 0x2

    if-eq p3, v1, :cond_4

    const/4 v1, 0x3

    if-eq p3, v1, :cond_0

    const/4 v1, 0x4

    if-eq p3, v1, :cond_0

    const/4 v1, 0x5

    if-eq p3, v1, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;->getCh1Builder()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    move-result-object p3

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->h()I

    move-result v1

    invoke-static {v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->valueOf(I)Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->e()I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->setNo(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    move-result-object p1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->SCAN:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    :goto_0
    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->setType(Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    invoke-virtual {v0, p3}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;->setCh1(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;

    :cond_2
    if-eqz p2, :cond_6

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;->getCh2Builder()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->h()I

    move-result p3

    invoke-static {p3}, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->valueOf(I)Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object p3

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->e()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->setNo(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    move-result-object p2

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    sget-object p3, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->SCAN:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    :goto_1
    invoke-virtual {p2, p3}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->setType(Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;->setCh2(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;->getCh1Builder()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/ifengyu/intercom/node/transport/d;->a(Lcom/ifengyu/intercom/ui/setting/UserChannel;Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    invoke-virtual {v0, p3}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;->setCh1(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;

    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;->getCh2Builder()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ifengyu/intercom/node/transport/d;->a(Lcom/ifengyu/intercom/ui/setting/UserChannel;Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;->setCh2(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;

    :cond_6
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "stateUpdate:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/AbstractMessage$Builder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DolphinCommandHelper"

    invoke-static {p2, p1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->setStateQuery(Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;Ljava/lang/String;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;
    .locals 7

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    move-result-object v0

    sget v1, Lcom/ifengyu/intercom/i/d0;->a:I

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "GB2312"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    array-length v2, v1

    add-int/lit8 v2, v2, 0x1

    new-array v3, v2, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_0

    aget-byte v6, v1, v5

    aput-byte v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, -0x1

    aput-byte v4, v3, v2

    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->setDevNameGBK(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    invoke-static {v3}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->setDevNameUTF8(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "paramUpdate: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/AbstractMessage$Builder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DolphinCommandHelper"

    invoke-static {v1, p1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->setParamUpdate(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    move-result-object v0

    sget v1, Lcom/ifengyu/intercom/i/d0;->a:I

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "paramUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/AbstractMessage$Builder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DolphinCommandHelper"

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->setParamQuery(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object p0

    return-object p0
.end method
