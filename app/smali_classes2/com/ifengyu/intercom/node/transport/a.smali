.class public Lcom/ifengyu/intercom/node/transport/a;
.super Ljava/lang/Object;
.source "BtKeyCommandHelper.java"


# direct methods
.method private static varargs a([[B)I
    .locals 4

    const/4 v0, 0x0

    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p0, v0

    array-length v3, v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static a()[B
    .locals 5

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [B

    aput-byte v4, v0, v3

    aput-byte v2, v0, v2

    sget-object v1, Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam$BTKEY_PARAM_TYPE;->b:Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam$BTKEY_PARAM_TYPE;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam$BTKEY_PARAM_TYPE;->a()I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    new-array v1, v2, [[B

    aput-object v0, v1, v3

    invoke-static {v1}, Lcom/ifengyu/intercom/node/transport/a;->a([[B)I

    move-result v1

    new-array v1, v1, [B

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v0, "BtKeyCommandHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDevParamQueryPower:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/ifengyu/intercom/node/transport/b;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)[B
    .locals 6

    const/4 v2, 0x3

    const/4 v5, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    new-array v0, v2, [B

    aput-byte v3, v0, v4

    aput-byte v5, v0, v5

    sget-object v1, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;->c:Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;->a()I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    new-array v1, v2, [B

    aput-byte v3, v1, v4

    aput-byte v3, v1, v5

    const/4 v2, 0x6

    aput-byte v2, v1, v3

    new-array v2, v3, [[B

    aput-object v0, v2, v4

    aput-object v1, v2, v5

    invoke-static {v2}, Lcom/ifengyu/intercom/node/transport/a;->a([[B)I

    move-result v2

    new-array v2, v2, [B

    array-length v3, v0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    array-length v3, v1

    invoke-static {v1, v4, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v0, "BtKeyCommandHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConnectReq:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Lcom/ifengyu/intercom/node/transport/b;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method
