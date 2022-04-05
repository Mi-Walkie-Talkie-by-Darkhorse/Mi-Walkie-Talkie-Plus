.class public Lcom/ifengyu/intercom/node/transport/a;
.super Ljava/lang/Object;


# direct methods
.method private static varargs a([[B)I
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p0, v1

    array-length v3, v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public static a()[B
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [B

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    const/4 v4, 0x1

    aput-byte v4, v1, v4

    sget-object v5, Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam$BTKEY_PARAM_TYPE;->c:Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam$BTKEY_PARAM_TYPE;

    invoke-virtual {v5}, Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam$BTKEY_PARAM_TYPE;->a()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    new-array v2, v4, [[B

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/ifengyu/intercom/node/transport/a;->a([[B)I

    move-result v2

    new-array v2, v2, [B

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDevParamQueryPower:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/ifengyu/intercom/node/transport/b;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtKeyCommandHelper"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public static a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)[B
    .locals 5

    const/4 p0, 0x3

    new-array v0, p0, [B

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v3, 0x1

    aput-byte v3, v0, v3

    sget-object v4, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;->d:Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;

    invoke-virtual {v4}, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;->a()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    new-array v4, p0, [B

    fill-array-data v4, :array_0

    new-array v1, v1, [[B

    aput-object v0, v1, v2

    aput-object v4, v1, v3

    invoke-static {v1}, Lcom/ifengyu/intercom/node/transport/a;->a([[B)I

    move-result v1

    new-array v1, v1, [B

    invoke-static {v0, v2, v1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v4, v2, v1, p0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getConnectReq:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/ifengyu/intercom/node/transport/b;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BtKeyCommandHelper"

    invoke-static {v0, p0}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    nop

    :array_0
    .array-data 1
        0x2t
        0x2t
        0x6t
    .end array-data
.end method
