.class public Lcom/ifengyu/intercom/i/q;
.super Ljava/lang/Object;
.source "DolphinCmdUtils.java"


# direct methods
.method public static a(III)I
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v0, :cond_1

    const/4 p2, 0x3

    if-eq p0, p2, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr p1, v1

    return p1

    :cond_1
    if-nez p2, :cond_2

    add-int/lit8 p1, p1, 0x29

    return p1

    :cond_2
    if-ne p2, v1, :cond_3

    add-int/lit8 p1, p1, 0x7d

    return p1

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;
    .locals 5
    .param p0    # Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 11
    :try_start_0
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;-><init>()V

    .line 12
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v1

    sget-object v2, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->RELAY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getNo()I

    move-result v1

    add-int/lit8 v1, v1, 0x64

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getNo()I

    move-result v1

    :goto_0
    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->a(Ljava/lang/Long;)V

    .line 13
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasNo()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getNo()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->c(I)V

    .line 14
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasType()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->getNumber()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, -0x1

    :goto_2
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->f(I)V

    .line 15
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasName()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getName()Lcom/google/protobuf/ByteString;

    move-result-object v1

    const-string v3, "GB2312"

    invoke-virtual {v1, v3}, Lcom/google/protobuf/ByteString;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    const-string v1, ""

    :goto_3
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->a(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasFreq()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->a(I)V

    .line 17
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasCssType()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getCssType()I

    move-result v1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getCssCode()I

    move-result v3

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getCssInvert()I

    move-result v4

    invoke-static {v1, v3, v4}, Lcom/ifengyu/intercom/i/q;->a(III)I

    move-result v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->d(I)V

    .line 18
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasFreq2()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq2()I

    move-result v1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->b(I)V

    .line 19
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasCssType2()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getCssType2()I

    move-result v1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getCssCode2()I

    move-result v2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getCssInvert2()I

    move-result p0

    invoke-static {v1, v2, p0}, Lcom/ifengyu/intercom/i/q;->a(III)I

    move-result v2

    :cond_7
    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->e(I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 20
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;
    .locals 4
    .param p0    # Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 21
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;-><init>()V

    .line 22
    :try_start_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v1

    sget-object v2, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->RELAY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getNo()I

    move-result v1

    add-int/lit8 v1, v1, 0x64

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getNo()I

    move-result v1

    :goto_0
    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->a(Ljava/lang/Long;)V

    .line 23
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasNo()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getNo()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->c(I)V

    .line 24
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasType()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->getNumber()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, -0x1

    :goto_2
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->f(I)V

    .line 25
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasName()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getName()Lcom/google/protobuf/ByteString;

    move-result-object v1

    const-string v3, "GB2312"

    invoke-virtual {v1, v3}, Lcom/google/protobuf/ByteString;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    const-string v1, ""

    :goto_3
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->a(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasFreq()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->a(I)V

    .line 27
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasCssType()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getCssType()I

    move-result v1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getCssCode()I

    move-result v3

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getCssInvert()I

    move-result p0

    invoke-static {v1, v3, p0}, Lcom/ifengyu/intercom/i/q;->a(III)I

    move-result p0

    goto :goto_5

    :cond_5
    const/4 p0, 0x0

    :goto_5
    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->d(I)V

    .line 28
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasFreq()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq()I

    move-result p0

    goto :goto_6

    :cond_6
    const/4 p0, 0x0

    :goto_6
    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->b(I)V

    .line 29
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasCssType()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getCssType()I

    move-result p0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getCssCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getCssInvert()I

    move-result p1

    invoke-static {p0, v1, p1}, Lcom/ifengyu/intercom/i/q;->a(III)I

    move-result v2

    :cond_7
    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->e(I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception p0

    .line 30
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_7
    return-object v0
.end method

.method public static a()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/node/e;->d()Lcom/ifengyu/intercom/node/e;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->ST_QUERY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/ifengyu/intercom/node/e;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;Lcom/ifengyu/intercom/ui/setting/UserChannel;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    return-void
.end method

.method public static a(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V
    .locals 21

    .line 3
    sget v0, Lcom/ifengyu/intercom/i/d0;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->h()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/node/e;->d()Lcom/ifengyu/intercom/node/e;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->CH_INSERT:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    new-instance v11, Lcom/ifengyu/intercom/ui/setting/UserChannel;

    const/4 v3, 0x0

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->e()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->h()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->a()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->f()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/ifengyu/intercom/ui/setting/UserChannel;-><init>(Ljava/lang/Long;IILjava/lang/String;IIII)V

    new-instance v2, Lcom/ifengyu/intercom/ui/setting/UserChannel;

    const/4 v13, 0x0

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->e()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->h()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->d()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->b()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->g()I

    move-result v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v12, v2

    invoke-direct/range {v12 .. v20}, Lcom/ifengyu/intercom/ui/setting/UserChannel;-><init>(Ljava/lang/Long;IILjava/lang/String;IIII)V

    .line 7
    invoke-virtual {v0, v1, v11, v2}, Lcom/ifengyu/intercom/node/e;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;Lcom/ifengyu/intercom/ui/setting/UserChannel;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/node/e;->d()Lcom/ifengyu/intercom/node/e;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->CH_INSERT:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    const/4 v2, 0x0

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v3, v2}, Lcom/ifengyu/intercom/node/e;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;Lcom/ifengyu/intercom/ui/setting/UserChannel;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    :goto_0
    return-void
.end method

.method public static a(Lcom/ifengyu/intercom/ui/setting/UserChannel;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V
    .locals 2

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/node/e;->d()Lcom/ifengyu/intercom/node/e;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->CH_QUERY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    invoke-virtual {v0, v1, p0, p1}, Lcom/ifengyu/intercom/node/e;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;Lcom/ifengyu/intercom/ui/setting/UserChannel;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    return-void
.end method

.method public static a(Lcom/ifengyu/intercom/ui/setting/UserChannel;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 9
    invoke-static {}, Lcom/ifengyu/intercom/node/e;->d()Lcom/ifengyu/intercom/node/e;

    move-result-object p1

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->CH_DELETE:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    invoke-virtual {p1, v1, p0, v0}, Lcom/ifengyu/intercom/node/e;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;Lcom/ifengyu/intercom/ui/setting/UserChannel;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/node/e;->d()Lcom/ifengyu/intercom/node/e;

    move-result-object p1

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->CH_DELETE:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    invoke-virtual {p1, v1, v0, p0}, Lcom/ifengyu/intercom/node/e;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;Lcom/ifengyu/intercom/ui/setting/UserChannel;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    :goto_0
    return-void
.end method

.method public static b(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V
    .locals 21

    .line 3
    sget v0, Lcom/ifengyu/intercom/i/d0;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->h()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/node/e;->d()Lcom/ifengyu/intercom/node/e;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->CH_MODIFY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    new-instance v11, Lcom/ifengyu/intercom/ui/setting/UserChannel;

    const/4 v3, 0x0

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->e()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->h()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->a()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->f()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/ifengyu/intercom/ui/setting/UserChannel;-><init>(Ljava/lang/Long;IILjava/lang/String;IIII)V

    new-instance v2, Lcom/ifengyu/intercom/ui/setting/UserChannel;

    const/4 v13, 0x0

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->e()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->h()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->d()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->b()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->g()I

    move-result v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v12, v2

    invoke-direct/range {v12 .. v20}, Lcom/ifengyu/intercom/ui/setting/UserChannel;-><init>(Ljava/lang/Long;IILjava/lang/String;IIII)V

    .line 7
    invoke-virtual {v0, v1, v11, v2}, Lcom/ifengyu/intercom/node/e;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;Lcom/ifengyu/intercom/ui/setting/UserChannel;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/node/e;->d()Lcom/ifengyu/intercom/node/e;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->CH_MODIFY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    const/4 v2, 0x0

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v3, v2}, Lcom/ifengyu/intercom/node/e;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;Lcom/ifengyu/intercom/ui/setting/UserChannel;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    :goto_0
    return-void
.end method

.method public static b(Lcom/ifengyu/intercom/ui/setting/UserChannel;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/node/e;->d()Lcom/ifengyu/intercom/node/e;

    move-result-object p1

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->ST_UPDATE:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    invoke-virtual {p1, v1, p0, v0}, Lcom/ifengyu/intercom/node/e;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;Lcom/ifengyu/intercom/ui/setting/UserChannel;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/node/e;->d()Lcom/ifengyu/intercom/node/e;

    move-result-object p1

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->ST_UPDATE:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    invoke-virtual {p1, v1, v0, p0}, Lcom/ifengyu/intercom/node/e;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;Lcom/ifengyu/intercom/ui/setting/UserChannel;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    :goto_0
    return-void
.end method

.method public static c(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/node/e;->d()Lcom/ifengyu/intercom/node/e;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->CH_QUERY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/ifengyu/intercom/node/e;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;Lcom/ifengyu/intercom/ui/setting/UserChannel;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    return-void
.end method
