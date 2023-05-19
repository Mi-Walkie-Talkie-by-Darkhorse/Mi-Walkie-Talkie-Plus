.class public Lcom/autonavi/amap/mapcore/Convert;
.super Ljava/lang/Object;
.source "Convert.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final bytesToHexString([B)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 3
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 6
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convert1bString([BILcom/autonavi/amap/mapcore/ConvertString;)V
    .locals 3

    .line 1
    :try_start_0
    aget-byte v0, p0, p1

    iput v0, p2, Lcom/autonavi/amap/mapcore/ConvertString;->byteLength:I

    .line 2
    new-instance v0, Ljava/lang/String;

    add-int/lit8 p1, p1, 0x1

    iget v1, p2, Lcom/autonavi/amap/mapcore/ConvertString;->byteLength:I

    const-string v2, "UTF-8"

    invoke-direct {v0, p0, p1, v1, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v0, p2, Lcom/autonavi/amap/mapcore/ConvertString;->value:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    .line 4
    iput p0, p2, Lcom/autonavi/amap/mapcore/ConvertString;->byteLength:I

    const-string p0, ""

    .line 5
    iput-object p0, p2, Lcom/autonavi/amap/mapcore/ConvertString;->value:Ljava/lang/String;

    return-void
.end method

.method public static convert2bString([BILcom/autonavi/amap/mapcore/ConvertString;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lcom/autonavi/amap/mapcore/Convert;->getShort([BI)S

    move-result v0

    iput v0, p2, Lcom/autonavi/amap/mapcore/ConvertString;->byteLength:I

    .line 2
    new-instance v0, Ljava/lang/String;

    add-int/lit8 p1, p1, 0x2

    iget v1, p2, Lcom/autonavi/amap/mapcore/ConvertString;->byteLength:I

    const-string v2, "UTF-8"

    invoke-direct {v0, p0, p1, v1, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v0, p2, Lcom/autonavi/amap/mapcore/ConvertString;->value:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    .line 4
    iput p0, p2, Lcom/autonavi/amap/mapcore/ConvertString;->byteLength:I

    const-string p0, ""

    .line 5
    iput-object p0, p2, Lcom/autonavi/amap/mapcore/ConvertString;->value:Ljava/lang/String;

    return-void
.end method

.method public static convertDouble([BI)D
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    add-int v3, v2, p1

    .line 1
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    mul-int/lit8 v5, v2, 0x8

    shl-long/2addr v3, v5

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static convertInt(I)[B
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x3

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static convertShort(I)[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 p0, p0, 0x8

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x1

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static copyString([BII)[B
    .locals 2

    .line 1
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static covertBytes(B)[B
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static get1BString(Ljava/lang/String;)[B
    .locals 5

    const/4 v0, 0x1

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const-string v2, "UTF-8"

    .line 2
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    new-array v2, v0, [B

    const/4 v3, 0x0

    .line 3
    array-length v4, p0

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 4
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 5
    invoke-virtual {v1, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    new-array p0, v0, [B

    return-object p0
.end method

.method public static get2BString(Ljava/lang/String;)[B
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const-string v1, "UTF-8"

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 3
    array-length v1, p0

    invoke-static {v1}, Lcom/autonavi/amap/mapcore/Convert;->convertShort(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 4
    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x1

    new-array p0, p0, [B

    return-object p0
.end method

.method public static getBit(BI)Z
    .locals 1

    rsub-int/lit8 v0, p1, 0x20

    shl-int/2addr p0, v0

    ushr-int/2addr p0, v0

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    ushr-int/2addr p0, p1

    if-lez p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getDouble(D)[B
    .locals 5

    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_0

    mul-int/lit8 v2, p1, 0x2

    add-int/lit8 v3, v2, 0x2

    .line 3
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    rsub-int/lit8 v3, p1, 0x7

    const/16 v4, 0x10

    .line 4
    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static getInt([BI)I
    .locals 3

    add-int/lit8 v0, p1, 0x3

    .line 1
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x2

    .line 2
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x1

    .line 3
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 p1, p1, 0x0

    .line 4
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p1, v0, 0x18

    shl-int/lit8 v0, v1, 0x10

    add-int/2addr p1, v0

    shl-int/lit8 v0, v2, 0x8

    add-int/2addr p1, v0

    shl-int/lit8 p0, p0, 0x0

    add-int/2addr p1, p0

    return p1
.end method

.method public static getNum(BII)I
    .locals 0

    rsub-int/lit8 p2, p2, 0x20

    add-int/lit8 p2, p2, -0x1

    shl-int/2addr p0, p2

    ushr-int/2addr p0, p2

    ushr-int/2addr p0, p1

    return p0
.end method

.method public static getNum(SII)I
    .locals 0

    rsub-int/lit8 p2, p2, 0x20

    shl-int/2addr p0, p2

    ushr-int/2addr p0, p2

    add-int/lit8 p1, p1, -0x1

    ushr-int/2addr p0, p1

    return p0
.end method

.method public static getShort([BI)S
    .locals 1

    add-int/lit8 v0, p1, 0x1

    .line 1
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x0

    .line 2
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p1, v0, 0x8

    shl-int/lit8 p0, p0, 0x0

    add-int/2addr p1, p0

    int-to-short p0, p1

    return p0
.end method

.method public static getString([BII)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method public static getSubBytes([BII)[B
    .locals 2

    .line 1
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static getUShort([BI)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    .line 1
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x0

    .line 2
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p1, v0, 0x8

    shl-int/lit8 p0, p0, 0x0

    add-int/2addr p1, p0

    return p1
.end method

.method public static moveArray([BI[BII)V
    .locals 2

    .line 1
    new-array v0, p4, [B

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, p1, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    invoke-static {v0, v1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static writeInt([BII)V
    .locals 2

    .line 1
    invoke-static {p2}, Lcom/autonavi/amap/mapcore/Convert;->convertInt(I)[B

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 2
    invoke-static {p2, v0, p0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static writeShort([BIS)V
    .locals 2

    .line 1
    invoke-static {p2}, Lcom/autonavi/amap/mapcore/Convert;->convertShort(I)[B

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 2
    invoke-static {p2, v0, p0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
