.class public Lcom/mi/milinkforgame/sdk/session/BufferUtil;
.super Ljava/lang/Object;
.source "BufferUtil.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "BufferUtil"

    sput-object v0, Lcom/mi/milinkforgame/sdk/session/BufferUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy([BI[BII)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int/lit8 v1, p1, 0x1

    add-int v2, p3, v0

    aget-byte v2, p2, v2

    aput-byte v2, p0, p1

    add-int/lit8 v0, v0, 0x1

    move p1, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static findContentLengthFromByte([B)I
    .locals 4

    const/4 v3, 0x0

    const-string v0, "Content-Length:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    const-string v1, "Content-Length:"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "Content-Length:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v3, v1, v3, v2}, Lcom/mi/milinkforgame/sdk/session/BufferUtil;->copy([BI[BII)V

    invoke-static {p0, v0}, Lcom/mi/milinkforgame/sdk/session/BufferUtil;->findFormByte([B[B)I

    move-result v0

    return v0
.end method

.method public static findFormByte([B[B)I
    .locals 8

    const/4 v4, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/mi/milinkforgame/sdk/session/BufferUtil;->TAG:Ljava/lang/String;

    const-string v1, "findFormByte recvData"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    array-length v5, p1

    move v3, v2

    move v1, v4

    :goto_1
    if-ge v3, v5, :cond_1

    sub-int v6, v0, v5

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, 0x1

    aget-byte v6, p0, v6

    aget-byte v7, p1, v3

    invoke-static {v6, v7}, Lcom/mi/milinkforgame/sdk/session/BufferUtil;->isEqualByte(BB)Z

    move-result v6

    if-nez v6, :cond_0

    move v1, v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    if-ne v1, v4, :cond_2

    add-int/lit8 v0, v0, 0x1

    :goto_2
    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    goto :goto_2
.end method

.method public static findFromByteKMP([B[B)I
    .locals 2

    invoke-static {p0, p1}, Lcom/mi/milinkforgame/sdk/session/BufferUtil;->getIndexKMP([B[B)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    array-length v1, p1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public static findHttpHeaderEndFromByte([B)I
    .locals 4

    const/16 v3, 0xd

    const/16 v2, 0xa

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v3, v0, v1

    const/4 v1, 0x1

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    aput-byte v3, v0, v1

    const/4 v1, 0x3

    aput-byte v2, v0, v1

    invoke-static {p0, v0}, Lcom/mi/milinkforgame/sdk/session/BufferUtil;->findFormByte([B[B)I

    move-result v0

    return v0
.end method

.method public static findMNSHeaderFromByte([B)I
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [B

    sget-object v1, Lcom/mi/milinkforgame/sdk/session/util/StreamUtil;->MNS:[B

    aget-byte v1, v1, v2

    aput-byte v1, v0, v2

    sget-object v1, Lcom/mi/milinkforgame/sdk/session/util/StreamUtil;->MNS:[B

    aget-byte v1, v1, v3

    aput-byte v1, v0, v3

    sget-object v1, Lcom/mi/milinkforgame/sdk/session/util/StreamUtil;->MNS:[B

    aget-byte v1, v1, v4

    aput-byte v1, v0, v4

    sget-object v1, Lcom/mi/milinkforgame/sdk/session/util/StreamUtil;->MNS:[B

    aget-byte v1, v1, v5

    aput-byte v1, v0, v5

    invoke-static {p0, v0}, Lcom/mi/milinkforgame/sdk/session/BufferUtil;->findFormByte([B[B)I

    move-result v0

    return v0
.end method

.method public static getIndexKMP([B[B)I
    .locals 8

    const/4 v1, 0x0

    const/4 v0, -0x1

    array-length v3, p0

    array-length v4, p1

    if-ge v3, v4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/mi/milinkforgame/sdk/session/BufferUtil;->getKMPNext([B)[I

    move-result-object v5

    if-eqz v5, :cond_0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_4

    if-ge v1, v4, :cond_4

    aget-byte v6, p0, v2

    aget-byte v7, p1, v1

    invoke-static {v6, v7}, Lcom/mi/milinkforgame/sdk/session/BufferUtil;->isEqualByte(BB)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, -0x1

    aget v1, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    if-ne v1, v4, :cond_0

    sub-int v0, v2, v1

    goto :goto_0
.end method

.method private static getKMPNext([B)[I
    .locals 7

    const/4 v6, -0x1

    array-length v3, p0

    if-nez v3, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    new-array v0, v3, [I

    const/4 v1, 0x0

    aput v6, v0, v1

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    add-int/lit8 v1, v2, -0x1

    aget v1, v0, v1

    :goto_1
    if-ltz v1, :cond_2

    aget-byte v4, p0, v2

    add-int/lit8 v5, v1, 0x1

    aget-byte v5, p0, v5

    invoke-static {v4, v5}, Lcom/mi/milinkforgame/sdk/session/BufferUtil;->isEqualByte(BB)Z

    move-result v4

    if-nez v4, :cond_2

    aget v1, v0, v1

    goto :goto_1

    :cond_2
    aget-byte v4, p0, v2

    add-int/lit8 v5, v1, 0x1

    aget-byte v5, p0, v5

    invoke-static {v4, v5}, Lcom/mi/milinkforgame/sdk/session/BufferUtil;->isEqualByte(BB)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v2

    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_3
    aput v6, v0, v2

    goto :goto_2
.end method

.method public static isEqualByte(BB)Z
    .locals 2

    if-eq p0, p1, :cond_0

    int-to-char v0, p0

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_1

    int-to-char v0, p0

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_1

    sub-int v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHttpHead([B)Z
    .locals 6

    const/16 v5, 0x54

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V

    const/4 v3, 0x4

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    if-eqz p0, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x48

    if-ne v3, v4, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_0

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_0

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x50

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isMNSHead([B)Z
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    array-length v2, p0

    sget-object v3, Lcom/mi/milinkforgame/sdk/session/util/StreamUtil;->MNS:[B

    array-length v3, v3

    if-lt v2, v3, :cond_1

    aget-byte v2, p0, v1

    sget-object v3, Lcom/mi/milinkforgame/sdk/session/util/StreamUtil;->MNS:[B

    aget-byte v3, v3, v1

    if-ne v2, v3, :cond_0

    aget-byte v2, p0, v0

    sget-object v3, Lcom/mi/milinkforgame/sdk/session/util/StreamUtil;->MNS:[B

    aget-byte v3, v3, v0

    if-ne v2, v3, :cond_0

    aget-byte v2, p0, v4

    sget-object v3, Lcom/mi/milinkforgame/sdk/session/util/StreamUtil;->MNS:[B

    aget-byte v3, v3, v4

    if-ne v2, v3, :cond_0

    aget-byte v2, p0, v5

    sget-object v3, Lcom/mi/milinkforgame/sdk/session/util/StreamUtil;->MNS:[B

    aget-byte v3, v3, v5

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
