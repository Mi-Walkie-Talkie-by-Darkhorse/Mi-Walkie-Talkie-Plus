.class public Lcom/ifengyu/intercom/i/g0;
.super Ljava/lang/Object;
.source "SealCmdUtils.java"


# direct methods
.method public static a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;
    .locals 9
    .param p0    # Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 16
    :try_start_0
    new-instance v1, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-direct {v1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;-><init>()V

    .line 17
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChNo()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChType()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 18
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;->getNumber()I

    move-result v2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChNo()I

    move-result v3

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/i/c0;->a(II)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a(Ljava/lang/Long;)V

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChNo()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChNo()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_0
    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->b(I)V

    .line 20
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChType()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;->getNumber()I

    move-result v2

    goto :goto_1

    :cond_2
    const/4 v2, -0x1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->i(I)V

    .line 21
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChTxPower()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChTxPower()I

    move-result v2

    goto :goto_2

    :cond_3
    const/4 v2, -0x1

    :goto_2
    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->h(I)V

    .line 22
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChRxFreq()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChRxFreq()I

    move-result v2

    goto :goto_3

    :cond_4
    const/4 v2, -0x1

    :goto_3
    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->d(I)V

    .line 23
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChTxFreq()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChTxFreq()I

    move-result v2

    goto :goto_4

    :cond_5
    const/4 v2, -0x1

    :goto_4
    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->g(I)V

    .line 24
    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->n()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "GB2312"

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v2, v5, :cond_7

    .line 25
    :try_start_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChName()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChName()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/protobuf/ByteString;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_6
    move-object v2, v0

    :goto_5
    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a(Ljava/lang/String;)V

    goto :goto_7

    .line 26
    :cond_7
    invoke-static {}, Lcom/ifengyu/intercom/i/c0;->b()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 27
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChName()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChName()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/protobuf/ByteString;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_8
    move-object v2, v0

    :goto_6
    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a(Ljava/lang/String;)V

    goto :goto_7

    .line 28
    :cond_9
    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->n()I

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "Public Channel L%1$02d"

    new-array v4, v7, [Ljava/lang/Object;

    .line 29
    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->f()I

    move-result v8

    add-int/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a(Ljava/lang/String;)V

    goto :goto_7

    .line 30
    :cond_a
    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->n()I

    move-result v2

    if-ne v2, v7, :cond_b

    const-string v2, "Amateur Channel H%1$02d"

    new-array v4, v7, [Ljava/lang/Object;

    .line 31
    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->f()I

    move-result v8

    add-int/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a(Ljava/lang/String;)V

    .line 32
    :cond_b
    :goto_7
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChSq()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChSq()I

    move-result v2

    goto :goto_8

    :cond_c
    const/4 v2, -0x1

    :goto_8
    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e(I)V

    .line 33
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChVox()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChVox()I

    move-result v2

    goto :goto_9

    :cond_d
    const/4 v2, -0x1

    :goto_9
    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->j(I)V

    .line 34
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChRxCss()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChRxCss()I

    move-result v2

    goto :goto_a

    :cond_e
    const/4 v2, -0x1

    :goto_a
    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->c(I)V

    .line 35
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChTxCss()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChTxCss()I

    move-result v2

    goto :goto_b

    :cond_f
    const/4 v2, -0x1

    :goto_b
    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->f(I)V

    .line 36
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChElim()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChElim()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    move-result-object v2

    sget-object v4, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;->SEAL_ON:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    if-ne v2, v4, :cond_10

    const/4 v2, 0x1

    goto :goto_c

    :cond_10
    const/4 v2, 0x0

    :goto_c
    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a(Z)V

    .line 37
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChBand()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChBand()I

    move-result v3

    :cond_11
    invoke-virtual {v1, v3}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a(I)V

    .line 38
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChPolite()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChPolite()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    move-result-object v2

    sget-object v3, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;->SEAL_ON:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    if-ne v2, v3, :cond_12

    const/4 v2, 0x1

    goto :goto_d

    :cond_12
    const/4 v2, 0x0

    :goto_d
    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->c(Z)V

    .line 39
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChType()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 40
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;->getNumber()I

    move-result p0

    if-eq p0, v5, :cond_13

    const/4 v6, 0x1

    :cond_13
    invoke-virtual {v1, v6}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->b(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_14
    return-object v1

    :catch_0
    move-exception p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static a()V
    .locals 3

    .line 9
    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;->SEAL_CH_QUERY:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;

    invoke-static {v0}, Lcom/ifengyu/intercom/node/transport/f;->a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;

    move-result-object v0

    const/4 v1, 0x5

    const/16 v2, 0x4e29

    invoke-static {v1, v0, v2}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/ifengyu/intercom/i/g0;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)V

    return-void
.end method

.method public static a(I)V
    .locals 2

    .line 5
    invoke-static {p0}, Lcom/ifengyu/intercom/node/transport/f;->a(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object p0

    const/4 v0, 0x5

    const/16 v1, 0x4e24

    invoke-static {v0, p0, v1}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object p0

    .line 6
    invoke-static {p0}, Lcom/ifengyu/intercom/i/g0;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)V

    return-void
.end method

.method public static a(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V
    .locals 2

    .line 11
    invoke-static {p0}, Lcom/ifengyu/intercom/node/transport/f;->a(Lcom/ifengyu/intercom/bean/BeanUserLocation;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_LocationInfo;

    move-result-object p0

    const/4 v0, 0x5

    const/16 v1, 0x4e30

    invoke-static {v0, p0, v1}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object p0

    .line 12
    invoke-static {p0}, Lcom/ifengyu/intercom/i/g0;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)V

    return-void
.end method

.method public static a(Lcom/ifengyu/intercom/bean/BtEarBean;)V
    .locals 2

    .line 13
    invoke-static {p0}, Lcom/ifengyu/intercom/node/transport/f;->a(Lcom/ifengyu/intercom/bean/BtEarBean;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;

    move-result-object p0

    const/4 v0, 0x5

    const/16 v1, 0x4e32

    invoke-static {v0, p0, v1}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object p0

    .line 14
    invoke-static {p0}, Lcom/ifengyu/intercom/i/g0;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)V

    return-void
.end method

.method private static a(Lcom/ifengyu/intercom/node/SendDataWrap;)V
    .locals 1

    .line 15
    invoke-static {}, Lcom/ifengyu/intercom/node/e;->d()Lcom/ifengyu/intercom/node/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/node/e;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)Z

    return-void
.end method

.method public static a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 2

    .line 7
    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;->SEAL_CH_DELETE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;

    invoke-static {p0, v0}, Lcom/ifengyu/intercom/node/transport/f;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;

    move-result-object p0

    const/4 v0, 0x5

    const/16 v1, 0x4e2a

    invoke-static {v0, p0, v1}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object p0

    .line 8
    invoke-static {p0}, Lcom/ifengyu/intercom/i/g0;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/ifengyu/intercom/node/transport/f;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object p0

    const/4 v0, 0x5

    const/16 v1, 0x4e24

    invoke-static {v0, p0, v1}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/ifengyu/intercom/i/g0;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)V

    return-void
.end method

.method public static a(Z)V
    .locals 2

    .line 3
    invoke-static {p0}, Lcom/ifengyu/intercom/node/transport/f;->a(Z)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object p0

    const/4 v0, 0x5

    const/16 v1, 0x4e24

    invoke-static {v0, p0, v1}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object p0

    .line 4
    invoke-static {p0}, Lcom/ifengyu/intercom/i/g0;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)V

    return-void
.end method

.method public static b()V
    .locals 3

    .line 5
    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_STOPTION;->SEAL_ST_QUERY:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_STOPTION;

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/node/transport/f;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_STOPTION;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;

    move-result-object v0

    const/4 v1, 0x5

    const/16 v2, 0x4e26

    invoke-static {v1, v0, v2}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/ifengyu/intercom/i/g0;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)V

    return-void
.end method

.method public static b(I)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/ifengyu/intercom/node/transport/f;->c(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object p0

    const/4 v0, 0x5

    const/16 v1, 0x4e24

    invoke-static {v0, p0, v1}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/ifengyu/intercom/i/g0;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)V

    return-void
.end method

.method public static b(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 2

    .line 7
    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;->SEAL_CH_INSERT:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;

    invoke-static {p0, v0}, Lcom/ifengyu/intercom/node/transport/f;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;

    move-result-object p0

    const/4 v0, 0x5

    const/16 v1, 0x4e2a

    invoke-static {v0, p0, v1}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object p0

    .line 8
    invoke-static {p0}, Lcom/ifengyu/intercom/i/g0;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)V

    return-void
.end method

.method public static b(Z)V
    .locals 2

    .line 3
    invoke-static {p0}, Lcom/ifengyu/intercom/node/transport/f;->c(Z)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object p0

    const/4 v0, 0x5

    const/16 v1, 0x4e24

    invoke-static {v0, p0, v1}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object p0

    .line 4
    invoke-static {p0}, Lcom/ifengyu/intercom/i/g0;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)V

    return-void
.end method

.method public static c()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/node/transport/f;->a()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object v0

    const/4 v1, 0x5

    const/16 v2, 0x4e24

    invoke-static {v1, v0, v2}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/ifengyu/intercom/i/g0;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)V

    return-void
.end method

.method public static c(I)V
    .locals 2

    .line 3
    invoke-static {p0}, Lcom/ifengyu/intercom/node/transport/f;->b(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object p0

    const/4 v0, 0x5

    const/16 v1, 0x4e24

    invoke-static {v0, p0, v1}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object p0

    .line 4
    invoke-static {p0}, Lcom/ifengyu/intercom/i/g0;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)V

    return-void
.end method

.method public static c(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 2

    .line 7
    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;->SEAL_CH_MODIFY:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;

    invoke-static {p0, v0}, Lcom/ifengyu/intercom/node/transport/f;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;

    move-result-object p0

    const/4 v0, 0x5

    const/16 v1, 0x4e2a

    invoke-static {v0, p0, v1}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object p0

    .line 8
    invoke-static {p0}, Lcom/ifengyu/intercom/i/g0;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)V

    return-void
.end method

.method public static c(Z)V
    .locals 2

    .line 5
    invoke-static {p0}, Lcom/ifengyu/intercom/node/transport/f;->d(Z)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object p0

    const/4 v0, 0x5

    const/16 v1, 0x4e24

    invoke-static {v0, p0, v1}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object p0

    .line 6
    invoke-static {p0}, Lcom/ifengyu/intercom/i/g0;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)V

    return-void
.end method

.method public static d()V
    .locals 3

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/node/transport/f;->g()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;

    move-result-object v0

    const/4 v1, 0x5

    const/16 v2, 0x4e31

    invoke-static {v1, v0, v2}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/ifengyu/intercom/i/g0;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)V

    return-void
.end method

.method public static d(I)V
    .locals 2

    .line 3
    invoke-static {p0}, Lcom/ifengyu/intercom/node/transport/f;->d(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object p0

    const/4 v0, 0x5

    const/16 v1, 0x4e24

    invoke-static {v0, p0, v1}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object p0

    .line 4
    invoke-static {p0}, Lcom/ifengyu/intercom/i/g0;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)V

    return-void
.end method

.method public static d(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 2

    .line 5
    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;->SEAL_CH_QUERY:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;

    invoke-static {p0, v0}, Lcom/ifengyu/intercom/node/transport/f;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;

    move-result-object p0

    const/4 v0, 0x5

    const/16 v1, 0x4e29

    invoke-static {v0, p0, v1}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object p0

    .line 6
    invoke-static {p0}, Lcom/ifengyu/intercom/i/g0;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)V

    return-void
.end method

.method public static d(Z)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/ifengyu/intercom/node/transport/f;->b(Z)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object p0

    const/4 v0, 0x5

    const/16 v1, 0x4e24

    invoke-static {v0, p0, v1}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/ifengyu/intercom/i/g0;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)V

    return-void
.end method

.method public static e()V
    .locals 3

    .line 5
    invoke-static {}, Lcom/ifengyu/intercom/node/transport/f;->c()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;

    move-result-object v0

    const/4 v1, 0x5

    const/16 v2, 0x4e32

    invoke-static {v1, v0, v2}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/ifengyu/intercom/i/g0;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)V

    return-void
.end method

.method public static e(I)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/ifengyu/intercom/node/transport/f;->e(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object p0

    const/4 v0, 0x5

    const/16 v1, 0x4e24

    invoke-static {v0, p0, v1}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/ifengyu/intercom/i/g0;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)V

    return-void
.end method

.method public static e(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 2

    .line 3
    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;->SEAL_CH_QUERY:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;

    invoke-static {p0, v0}, Lcom/ifengyu/intercom/node/transport/f;->b(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;

    move-result-object p0

    const/4 v0, 0x5

    const/16 v1, 0x4e29

    invoke-static {v0, p0, v1}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object p0

    .line 4
    invoke-static {p0}, Lcom/ifengyu/intercom/i/g0;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)V

    return-void
.end method

.method public static f()V
    .locals 3

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/node/transport/f;->d()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;

    move-result-object v0

    const/4 v1, 0x5

    const/16 v2, 0x4e34

    invoke-static {v1, v0, v2}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/ifengyu/intercom/i/g0;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)V

    return-void
.end method

.method public static f(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_STOPTION;->SEAL_ST_UPDATE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_STOPTION;

    invoke-static {p0, v0}, Lcom/ifengyu/intercom/node/transport/f;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_STOPTION;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;

    move-result-object p0

    const/4 v0, 0x5

    const/16 v1, 0x4e27

    invoke-static {v0, p0, v1}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/ifengyu/intercom/i/g0;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)V

    return-void
.end method

.method public static g()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/node/transport/f;->e()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;

    move-result-object v0

    const/4 v1, 0x5

    const/16 v2, 0x4e34

    invoke-static {v1, v0, v2}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/ifengyu/intercom/i/g0;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)V

    return-void
.end method

.method public static h()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/node/transport/f;->b()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object v0

    const/4 v1, 0x5

    const/16 v2, 0x4e23

    invoke-static {v1, v0, v2}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/ifengyu/intercom/i/g0;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)V

    return-void
.end method

.method public static i()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/node/transport/f;->f()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;

    move-result-object v0

    const/4 v1, 0x5

    const/16 v2, 0x4e38

    invoke-static {v1, v0, v2}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/ifengyu/intercom/i/g0;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)V

    return-void
.end method
