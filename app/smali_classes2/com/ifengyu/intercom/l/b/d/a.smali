.class public Lcom/ifengyu/intercom/l/b/d/a;
.super Ljava/lang/Object;
.source "Mi3CmdHelper.java"


# direct methods
.method public static a()Lcom/google/protobuf/Message;
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$ImportConfigFile;->newBuilder()Lcom/ifengyu/intercom/protos/BleProtos$ImportConfigFile$Builder;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/BleProtos$ImportState;->ImportFINISH:Lcom/ifengyu/intercom/protos/BleProtos$ImportState;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/BleProtos$ImportConfigFile$Builder;->setState(Lcom/ifengyu/intercom/protos/BleProtos$ImportState;)Lcom/ifengyu/intercom/protos/BleProtos$ImportConfigFile$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/BleProtos$ImportConfigFile$Builder;->build()Lcom/ifengyu/intercom/protos/BleProtos$ImportConfigFile;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lcom/google/protobuf/Message;
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$ImportConfigFile;->newBuilder()Lcom/ifengyu/intercom/protos/BleProtos$ImportConfigFile$Builder;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/BleProtos$ImportState;->ImportSTART:Lcom/ifengyu/intercom/protos/BleProtos$ImportState;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/BleProtos$ImportConfigFile$Builder;->setState(Lcom/ifengyu/intercom/protos/BleProtos$ImportState;)Lcom/ifengyu/intercom/protos/BleProtos$ImportConfigFile$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/BleProtos$ImportConfigFile$Builder;->build()Lcom/ifengyu/intercom/protos/BleProtos$ImportConfigFile;

    move-result-object v0

    return-object v0
.end method

.method public static c([B)Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo;
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo;->newBuilder()Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 2
    array-length v1, p0

    if-lez v1, :cond_0

    .line 3
    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->setToken(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->build()Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo;

    move-result-object p0

    return-object p0
.end method

.method public static d(II)Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency;->newBuilder()Lcom/ifengyu/intercom/protos/BleProtos$Frequency$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency$Builder;->setType(I)Lcom/ifengyu/intercom/protos/BleProtos$Frequency$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency$Builder;->setSeq(I)Lcom/ifengyu/intercom/protos/BleProtos$Frequency$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency$Builder;->build()Lcom/ifengyu/intercom/protos/BleProtos$Frequency;

    move-result-object p0

    return-object p0
.end method

.method public static e()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->newBuilder()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->build()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static f(Lcom/ifengyu/intercom/bean/BeanUserLocation;)Lcom/google/protobuf/Message;
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->newBuilder()Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getUserID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->setUserId(I)Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GB2312"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->setUserName(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getLongitudeInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->setLongitude(I)Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;

    .line 6
    invoke-virtual {p0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getLatitudeInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->setLatitude(I)Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;

    .line 7
    invoke-virtual {p0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getAltitude()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->setAltitude(I)Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;

    .line 8
    invoke-virtual {p0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getTime()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->setTimestamp(I)Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;

    .line 9
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->build()Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;

    move-result-object p0

    return-object p0
.end method

.method public static g()Lcom/ifengyu/intercom/protos/BleProtos$OtaInfo;
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$OtaInfo;->newBuilder()Lcom/ifengyu/intercom/protos/BleProtos$OtaInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/BleProtos$OtaState;->END:Lcom/ifengyu/intercom/protos/BleProtos$OtaState;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/BleProtos$OtaInfo$Builder;->setState(Lcom/ifengyu/intercom/protos/BleProtos$OtaState;)Lcom/ifengyu/intercom/protos/BleProtos$OtaInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/BleProtos$OtaInfo$Builder;->build()Lcom/ifengyu/intercom/protos/BleProtos$OtaInfo;

    move-result-object v0

    return-object v0
.end method

.method public static h(I)Lcom/ifengyu/intercom/protos/BleProtos$OtaInfo;
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$OtaInfo;->newBuilder()Lcom/ifengyu/intercom/protos/BleProtos$OtaInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/BleProtos$OtaState;->START:Lcom/ifengyu/intercom/protos/BleProtos$OtaState;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/BleProtos$OtaInfo$Builder;->setState(Lcom/ifengyu/intercom/protos/BleProtos$OtaState;)Lcom/ifengyu/intercom/protos/BleProtos$OtaInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/BleProtos$OtaInfo$Builder;->setFSize(I)Lcom/ifengyu/intercom/protos/BleProtos$OtaInfo$Builder;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$OtaInfo$Builder;->build()Lcom/ifengyu/intercom/protos/BleProtos$OtaInfo;

    move-result-object p0

    return-object p0
.end method

.method public static i([B)Lcom/ifengyu/intercom/protos/BleProtos$PublicKey;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$PublicKey;->newBuilder()Lcom/ifengyu/intercom/protos/BleProtos$PublicKey$Builder;

    move-result-object v0

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/BleProtos$PublicKey$Builder;->setValue(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/BleProtos$PublicKey$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$PublicKey$Builder;->build()Lcom/ifengyu/intercom/protos/BleProtos$PublicKey;

    move-result-object p0

    return-object p0
.end method

.method public static j()Lcom/google/protobuf/Message;
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency;->newBuilder()Lcom/ifengyu/intercom/protos/BleProtos$Frequency$Builder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency$Builder;->setType(I)Lcom/ifengyu/intercom/protos/BleProtos$Frequency$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency$Builder;->build()Lcom/ifengyu/intercom/protos/BleProtos$Frequency;

    move-result-object v0

    return-object v0
.end method

.method public static k()Lcom/google/protobuf/Message;
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency;->newBuilder()Lcom/ifengyu/intercom/protos/BleProtos$Frequency$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency$Builder;->setType(I)Lcom/ifengyu/intercom/protos/BleProtos$Frequency$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency$Builder;->build()Lcom/ifengyu/intercom/protos/BleProtos$Frequency;

    move-result-object v0

    return-object v0
.end method

.method public static l()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$Channel;->newBuilder()Lcom/ifengyu/intercom/protos/BleProtos$Channel$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/BleProtos$Channel$Builder;->build()Lcom/ifengyu/intercom/protos/BleProtos$Channel;

    move-result-object v0

    return-object v0
.end method

.method public static m(II)Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency;->newBuilder()Lcom/ifengyu/intercom/protos/BleProtos$Frequency$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency$Builder;->setSeq(I)Lcom/ifengyu/intercom/protos/BleProtos$Frequency$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency$Builder;->setType(I)Lcom/ifengyu/intercom/protos/BleProtos$Frequency$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency$Builder;->build()Lcom/ifengyu/intercom/protos/BleProtos$Frequency;

    move-result-object p0

    return-object p0
.end method

.method public static n(Z)Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->newBuilder()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 2
    sget-object p0, Lcom/ifengyu/intercom/protos/BleProtos$Switch;->ON:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/ifengyu/intercom/protos/BleProtos$Switch;->OFF:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    :goto_0
    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->setShareLoc(Lcom/ifengyu/intercom/protos/BleProtos$Switch;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->build()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    move-result-object p0

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->newBuilder()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->setConfigInfo(Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->build()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method public static o(Lcom/ifengyu/intercom/models/ChannelModel;I)Lcom/google/protobuf/Message;
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$Channel;->newBuilder()Lcom/ifengyu/intercom/protos/BleProtos$Channel$Builder;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 2
    invoke-static {p0}, Lcom/ifengyu/intercom/l/a/d/a;->j(Lcom/ifengyu/intercom/models/ChannelModel;)Lcom/ifengyu/intercom/protos/BleProtos$Frequency;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/BleProtos$Channel$Builder;->setCh1(Lcom/ifengyu/intercom/protos/BleProtos$Frequency;)Lcom/ifengyu/intercom/protos/BleProtos$Channel$Builder;

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency;->newBuilder()Lcom/ifengyu/intercom/protos/BleProtos$Frequency$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency$Builder;->build()Lcom/ifengyu/intercom/protos/BleProtos$Frequency;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/BleProtos$Channel$Builder;->setCh2(Lcom/ifengyu/intercom/protos/BleProtos$Frequency;)Lcom/ifengyu/intercom/protos/BleProtos$Channel$Builder;

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency;->newBuilder()Lcom/ifengyu/intercom/protos/BleProtos$Frequency$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency$Builder;->build()Lcom/ifengyu/intercom/protos/BleProtos$Frequency;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/protos/BleProtos$Channel$Builder;->setCh1(Lcom/ifengyu/intercom/protos/BleProtos$Frequency;)Lcom/ifengyu/intercom/protos/BleProtos$Channel$Builder;

    .line 5
    invoke-static {p0}, Lcom/ifengyu/intercom/l/a/d/a;->j(Lcom/ifengyu/intercom/models/ChannelModel;)Lcom/ifengyu/intercom/protos/BleProtos$Frequency;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/BleProtos$Channel$Builder;->setCh2(Lcom/ifengyu/intercom/protos/BleProtos$Frequency;)Lcom/ifengyu/intercom/protos/BleProtos$Channel$Builder;

    .line 6
    :goto_0
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/BleProtos$Channel$Builder;->build()Lcom/ifengyu/intercom/protos/BleProtos$Channel;

    move-result-object p0

    return-object p0
.end method

.method public static p(Lcom/ifengyu/intercom/models/ChannelModel;)Lcom/google/protobuf/Message;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ifengyu/intercom/l/a/d/a;->j(Lcom/ifengyu/intercom/models/ChannelModel;)Lcom/ifengyu/intercom/protos/BleProtos$Frequency;

    move-result-object p0

    return-object p0
.end method

.method public static q(Ljava/lang/String;)Lcom/google/protobuf/Message;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->newBuilder()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;

    move-result-object v0

    const-string v1, "GB2312"

    .line 2
    invoke-static {p0, v1}, Lcom/google/protobuf/ByteString;->copyFrom(Ljava/lang/String;Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->setName(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;

    move-result-object v0

    .line 3
    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->setAdvName(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->build()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 p0, 0x0

    .line 6
    :goto_0
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->newBuilder()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->setConfigInfo(Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->build()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method public static r(Lcom/ifengyu/intercom/protos/BleProtos$VoxType;)Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->newBuilder()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->setVox(Lcom/ifengyu/intercom/protos/BleProtos$VoxType;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->build()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    move-result-object p0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->newBuilder()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->setTalkInfo(Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->build()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;

    move-result-object p0

    return-object p0
.end method
