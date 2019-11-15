.class public final Lorg/jboss/netty/util/NetUtil;
.super Ljava/lang/Object;
.source "NetUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertToBytes(Ljava/lang/String;[BI)V
    .locals 5

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    aput-byte v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    aput-byte v0, p1, v1

    const/4 v1, 0x3

    if-le v3, v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/jboss/netty/util/NetUtil;->getIntValue(C)I

    move-result v0

    aget-byte v1, p1, p2

    shl-int/lit8 v0, v0, 0x4

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    move v0, v2

    :cond_0
    const/4 v1, 0x2

    if-le v3, v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/jboss/netty/util/NetUtil;->getIntValue(C)I

    move-result v0

    aget-byte v4, p1, p2

    or-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    :goto_0
    if-le v3, v2, :cond_1

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/jboss/netty/util/NetUtil;->getIntValue(C)I

    move-result v1

    add-int/lit8 v2, p2, 0x1

    aget-byte v3, p1, v2

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p1, v2

    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/jboss/netty/util/NetUtil;->getIntValue(C)I

    move-result v0

    add-int/lit8 v1, p2, 0x1

    aget-byte v2, p1, v1

    and-int/lit8 v0, v0, 0xf

    or-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    return-void

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public static createByteArrayFromIpAddressString(Ljava/lang/String;)[B
    .locals 10

    const/4 v5, 0x4

    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v4, 0x0

    invoke-static {p0}, Lorg/jboss/netty/util/NetUtil;->isValidIpV4Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/StringTokenizer;

    const-string v0, "."

    invoke-direct {v1, p0, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v5, [B

    :goto_0
    if-ge v4, v5, :cond_c

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/jboss/netty/util/NetUtil;->isValidIpV6Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x5b

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v0, ":."

    invoke-direct {v5, p0, v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-string v3, ""

    const-string v0, ""

    move-object v2, v0

    move v0, v1

    :goto_1
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    const-string v8, ":"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, ":"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    move-object v9, v3

    move-object v3, v2

    move-object v2, v9

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_e

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v9, v3

    move-object v3, v2

    move-object v2, v9

    goto :goto_1

    :cond_3
    const-string v8, "."

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v9, v3

    move-object v3, v2

    move-object v2, v9

    goto :goto_1

    :cond_4
    const-string v5, ":"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v2, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_5
    :goto_2
    const/16 v2, 0x8

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v2, 0x6

    :cond_6
    if-eq v0, v1, :cond_9

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v2, v1

    move v1, v4

    :goto_3
    if-ge v1, v2, :cond_9

    const-string v3, "0"

    invoke-virtual {v6, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    const-string v5, "."

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    const/16 v0, 0x10

    new-array v2, v0, [B

    move v1, v4

    :goto_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    mul-int/lit8 v3, v1, 0x2

    invoke-static {v0, v2, v3}, Lorg/jboss/netty/util/NetUtil;->convertToBytes(Ljava/lang/String;[BI)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_a
    :goto_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_b

    add-int/lit8 v1, v4, 0xc

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v2, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_b
    move-object v0, v2

    :cond_c
    :goto_6
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_6

    :cond_e
    move-object v9, v3

    move-object v3, v2

    move-object v2, v9

    goto/16 :goto_1
.end method

.method static getIntValue(C)I
    .locals 2

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    packed-switch v1, :pswitch_data_1

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_9
    const/16 v0, 0x9

    goto :goto_0

    :pswitch_a
    const/16 v0, 0xa

    goto :goto_0

    :pswitch_b
    const/16 v0, 0xb

    goto :goto_0

    :pswitch_c
    const/16 v0, 0xc

    goto :goto_0

    :pswitch_d
    const/16 v0, 0xd

    goto :goto_0

    :pswitch_e
    const/16 v0, 0xe

    goto :goto_0

    :pswitch_f
    const/16 v0, 0xf

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x61
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method static isValidHexChar(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_3

    const/16 v0, 0x66

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidIp4Word(Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x3

    if-le v0, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_0

    const/16 v4, 0x39

    if-gt v3, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0xff

    if-gt v0, v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public static isValidIpV4Address(Ljava/lang/String;)Z
    .locals 10

    const/16 v9, 0xff

    const/4 v8, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v0, 0xf

    if-le v3, v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v1

    move v0, v1

    :goto_1
    if-ge v2, v3, :cond_7

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_4

    add-int/lit8 v0, v0, 0x1

    if-le v0, v8, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-le v5, v9, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v4, v1, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-le v2, v9, :cond_9

    :cond_8
    move v0, v1

    goto :goto_0

    :cond_9
    if-eq v0, v8, :cond_a

    move v0, v1

    goto :goto_0

    :cond_a
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isValidIpV6Address(Ljava/lang/String;)Z
    .locals 13

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x2

    if-ge v8, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    move v12, v0

    move v0, v6

    move v6, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v12

    :goto_1
    if-ge v5, v8, :cond_13

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    sparse-switch v7, :sswitch_data_0

    if-nez v2, :cond_11

    if-eqz v9, :cond_10

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const/4 v10, 0x3

    if-le v6, v10, :cond_10

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_0
    if-eqz v5, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v8, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v6, 0x5d

    if-eq v1, v6, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    const/4 v6, 0x4

    if-ge v8, v6, :cond_12

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    add-int/lit8 v6, v8, -0x1

    if-eq v5, v6, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v10, 0x5b

    if-eq v6, v10, :cond_12

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_2
    add-int/lit8 v3, v3, 0x1

    const/4 v6, 0x3

    if-le v3, v6, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/jboss/netty/util/NetUtil;->isValidIp4Word(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    const/4 v6, 0x6

    if-eq v4, v6, :cond_6

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    const/4 v6, 0x7

    if-ne v4, v6, :cond_7

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v10, 0x3a

    if-eq v6, v10, :cond_7

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v10, 0x3a

    if-eq v6, v10, :cond_7

    const/4 v0, 0x0

    goto :goto_0

    :cond_7
    const/4 v6, 0x0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    invoke-virtual {v9, v6, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move v12, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v0

    move v0, v12

    :goto_2
    add-int/lit8 v5, v5, 0x1

    move v6, v7

    move v12, v0

    move v0, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v12

    goto/16 :goto_1

    :sswitch_3
    if-ne v5, v1, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v5, :cond_8

    add-int/lit8 v10, v5, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x3a

    if-eq v10, v11, :cond_9

    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_9
    add-int/lit8 v4, v4, 0x1

    const/4 v10, 0x7

    if-le v4, v10, :cond_a

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_a
    if-lez v3, :cond_b

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_b
    const/16 v10, 0x3a

    if-ne v6, v10, :cond_d

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_c
    const/4 v0, 0x1

    :cond_d
    const/4 v6, 0x0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    invoke-virtual {v9, v6, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move v12, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v0

    move v0, v12

    goto :goto_2

    :sswitch_4
    if-nez v4, :cond_e

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_e
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v6, v5, 0x1

    if-lt v6, v8, :cond_f

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_f
    add-int/lit8 v6, v5, 0x1

    :try_start_0
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v12, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v0

    move v0, v12

    goto :goto_2

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_10
    invoke-static {v7}, Lorg/jboss/netty/util/NetUtil;->isValidHexChar(C)Z

    move-result v6

    if-nez v6, :cond_11

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_11
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_12
    move v12, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v0

    move v0, v12

    goto :goto_2

    :cond_13
    if-lez v3, :cond_15

    const/4 v0, 0x3

    if-ne v3, v0, :cond_14

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/util/NetUtil;->isValidIp4Word(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x7

    if-lt v4, v0, :cond_17

    :cond_14
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_15
    const/4 v3, 0x7

    if-eq v4, v3, :cond_16

    if-nez v0, :cond_16

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_16
    if-nez v2, :cond_17

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_17

    add-int/lit8 v0, v8, -0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x3a

    if-ne v0, v2, :cond_17

    add-int/lit8 v0, v8, -0x2

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_17

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_17
    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_4
        0x2e -> :sswitch_2
        0x3a -> :sswitch_3
        0x5b -> :sswitch_0
        0x5d -> :sswitch_1
    .end sparse-switch
.end method
