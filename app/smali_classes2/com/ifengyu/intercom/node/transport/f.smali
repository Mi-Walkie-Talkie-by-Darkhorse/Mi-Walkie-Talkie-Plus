.class public Lcom/ifengyu/intercom/node/transport/f;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/ifengyu/intercom/bean/BtEarBean;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;
    .locals 4

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;->newBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState$Builder;

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState$SEAL_BTEAR_OPTION;->SEAL_BTEAR_CONNECT:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState$SEAL_BTEAR_OPTION;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState$Builder;->setOption(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState$SEAL_BTEAR_OPTION;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState$Builder;->getBtEarBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$Builder;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/bean/BtEarBean;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ifengyu/intercom/node/transport/b;->a(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$Builder;->setMac(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$Builder;

    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/bean/BtEarBean;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$Builder;->setName(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$Builder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/bean/BtEarBean;->getRssi()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$Builder;->setRssi(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$Builder;

    sget-object p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE;->SEAL_BTEAR_NORMAL:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE;

    invoke-virtual {v1, p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$Builder;->setType(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$Builder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState$Builder;->setBtEar(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$Builder;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSealBtEarConnectMessage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SealCommandHelper"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;->newBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;->SEAL_CH_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->setResult(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->setOption(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getChannelInfoOperateReceiveSuccessMessage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SealCommandHelper"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;
    .locals 4

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;->newBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->setOption(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;

    sget-object v2, Lcom/ifengyu/intercom/node/transport/f$a;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    if-eq p1, v1, :cond_6

    const/4 v2, 0x2

    if-eq p1, v2, :cond_6

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->getChBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->n()I

    move-result v2

    if-nez v2, :cond_1

    sget-object p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;->SEAL_PUBLIC:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;

    invoke-virtual {p1, p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;->setChType(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->n()I

    move-result p0

    if-ne p0, v1, :cond_2

    sget-object p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;->SEAL_REMOTE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;

    invoke-virtual {p1, p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;->setChType(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;->SEAL_USERDEF:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;

    invoke-virtual {p1, p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;->setChType(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->setCh(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;

    goto/16 :goto_3

    :cond_3
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->getChBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->f()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;->setChNo(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->n()I

    move-result v2

    if-nez v2, :cond_4

    sget-object p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;->SEAL_PUBLIC:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;

    invoke-virtual {p1, p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;->setChType(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->n()I

    move-result p0

    if-ne p0, v1, :cond_5

    sget-object p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;->SEAL_REMOTE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;

    invoke-virtual {p1, p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;->setChType(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;

    goto :goto_1

    :cond_5
    sget-object p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;->SEAL_USERDEF:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;

    invoke-virtual {p1, p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;->setChType(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;

    :goto_1
    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->setCh(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;

    goto :goto_3

    :cond_6
    if-eqz p0, :cond_9

    :try_start_0
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->getChBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->n()I

    move-result v2

    if-nez v2, :cond_7

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;->SEAL_PUBLIC:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;

    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;->setChType(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->n()I

    move-result v2

    if-ne v2, v1, :cond_8

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;->SEAL_REMOTE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;

    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;->setChType(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;

    goto :goto_2

    :cond_8
    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;->SEAL_USERDEF:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;

    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;->setChType(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;

    :goto_2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->f()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;->setChNo(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->i()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;->setChRxFreq(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->l()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;->setChTxFreq(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GB2312"

    invoke-static {v2, v3}, Lcom/google/protobuf/ByteString;->copyFrom(Ljava/lang/String;Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;->setChName(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->h()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;->setChRxCss(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->k()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;->setChTxCss(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->setCh(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_9
    :goto_3
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getChannelInfoOperateQuery:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SealCommandHelper"

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_STOPTION;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->newBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$Builder;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$Builder;->setOption(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_STOPTION;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$Builder;

    sget-object v2, Lcom/ifengyu/intercom/node/transport/f$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p0, :cond_3

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->newBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->n()I

    move-result v2

    if-nez v2, :cond_1

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;->SEAL_PUBLIC:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;

    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;->setChType(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->n()I

    move-result v2

    if-ne v2, v1, :cond_2

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;->SEAL_REMOTE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;

    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;->setChType(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;->SEAL_USERDEF:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;

    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;->setChType(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;

    :goto_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->f()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;->setChNo(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$Builder;->setCh1(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$Builder;

    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getChannelStateOperateMessage:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SealCommandHelper"

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->newBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$Builder;

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->SEAL_CONNECT:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$Builder;->setConnCode(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$Builder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->e()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$Builder;->setDeviceId(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$Builder;

    :cond_0
    const/4 p0, 0x5

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$Builder;->setDeviceType(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$Builder;

    sget-object p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$SEAL_APPTYPE;->SEAL_OWN_APP:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$SEAL_APPTYPE;

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$Builder;->setAppMode(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$SEAL_APPTYPE;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConnectQuery:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SealCommandHelper"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static a()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->newBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->setActivate(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceParamQuery:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SealCommandHelper"

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static a(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->newBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->newBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;->setChBand(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->setCh(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDeviceParamQuery:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SealCommandHelper"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->newBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;

    :try_start_0
    const-string v1, "GB2312"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->setDeviceName(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->setBleName(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDeviceParamQuery:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SealCommandHelper"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static a(Z)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->newBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;

    if-eqz p0, :cond_0

    sget-object p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;->SEAL_ON:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;->SEAL_OFF:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    :goto_0
    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->setIsAllPublic(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDeviceParamQuery:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SealCommandHelper"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static a(Lcom/ifengyu/intercom/bean/BeanUserLocation;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_LocationInfo;
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_LocationInfo;->newBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_LocationInfo$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_LocationInfo$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_LocationInfo$Builder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getUserID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_LocationInfo$Builder;->setUserId(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_LocationInfo$Builder;

    :try_start_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GB2312"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_LocationInfo$Builder;->setUserName(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_LocationInfo$Builder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getLongitudeInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_LocationInfo$Builder;->setLongitude(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_LocationInfo$Builder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getLatitudeInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_LocationInfo$Builder;->setLatitude(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_LocationInfo$Builder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getAltitude()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_LocationInfo$Builder;->setAltitude(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_LocationInfo$Builder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getTime()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_LocationInfo$Builder;->setTimeSync(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_LocationInfo$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_LocationInfo$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_LocationInfo;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLocationSyncMessage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SealCommandHelper"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static b(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;->newBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->setOption(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->getChBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->n()I

    move-result v2

    if-nez v2, :cond_0

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;->SEAL_PUBLIC:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;

    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;->setChType(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->n()I

    move-result v2

    if-ne v2, v1, :cond_1

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;->SEAL_REMOTE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;

    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;->setChType(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;->SEAL_USERDEF:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;

    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;->setChType(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;

    :goto_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->f()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;->setChNo(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->setCh(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getChannelInfoSingleChannelQueryMessage:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SealCommandHelper"

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static b()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->newBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;->SEAL_ON:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->setFullInquiry(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceParamQuery:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SealCommandHelper"

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static b(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->newBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->newBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;->setChVox(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->setCh(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDeviceParamQuery:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SealCommandHelper"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static b(Z)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->newBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;

    if-eqz p0, :cond_0

    sget-object p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;->SEAL_ON:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;->SEAL_OFF:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    :goto_0
    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->setShareLoc(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDeviceParamQuery:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SealCommandHelper"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static c()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;->newBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState$Builder;

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState$SEAL_BTEAR_OPTION;->SEAL_BTEAR_DISCONNECT:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState$SEAL_BTEAR_OPTION;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState$Builder;->setOption(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState$SEAL_BTEAR_OPTION;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSealBtEarDisConnectMessage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SealCommandHelper"

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static c(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->newBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->setPwsaveMode(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDeviceParamQuery:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SealCommandHelper"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static c(Z)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->newBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->newBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;

    move-result-object v1

    if-eqz p0, :cond_0

    sget-object p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;->SEAL_ON:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;->SEAL_OFF:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    :goto_0
    invoke-virtual {v1, p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;->setChPolite(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->setCh(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDeviceParamQuery:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SealCommandHelper"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static d()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;->newBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;->SEAL_BTEAR_SCAN_START:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->setOption(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSealBtEarScanControlStartMessage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SealCommandHelper"

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static d(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->newBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->newBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;->setChSq(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->setCh(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDeviceParamQuery:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SealCommandHelper"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static d(Z)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->newBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;

    if-eqz p0, :cond_0

    sget-object p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;->SEAL_ON:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;->SEAL_OFF:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    :goto_0
    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->setVoiceAlert(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDeviceParamQuery:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SealCommandHelper"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static e()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;->newBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;->SEAL_BTEAR_SCAN_STOP:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->setOption(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSealBtEarScanControlStopMessage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SealCommandHelper"

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static e(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->newBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    sget-object p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_VOICETYPE;->SEAL_VOICETYPE_ENGLISH:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_VOICETYPE;

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->setVoiceType(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_VOICETYPE;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    sget-object p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_VOICETYPE;->SEAL_VOICETYPE_CHINESE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_VOICETYPE;

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->setVoiceType(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_VOICETYPE;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_VOICETYPE;->SEAL_VOICETYPE_CLOSE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_VOICETYPE;

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->setVoiceType(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_VOICETYPE;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;

    :goto_0
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDeviceParamQuery:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SealCommandHelper"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static f()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->newBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSealUserActionStatisticsQueryMessage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SealCommandHelper"

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static g()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;->newBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState$Builder;

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState$SEAL_BTEAR_OPTION;->SEAL_BTEAR_QUERY:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState$SEAL_BTEAR_OPTION;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState$Builder;->setOption(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState$SEAL_BTEAR_OPTION;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSendSealBtEarConnectStateQueryMessage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SealCommandHelper"

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method
