.class public Lcom/mi/milinkforgame/sdk/base/os/dns/RequestPacket;
.super Ljava/lang/Object;
.source "RequestPacket.java"


# static fields
.field private static header:[B

.field private static question:[B


# instance fields
.field private domain:Ljava/lang/String;

.field private reqId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mi/milinkforgame/sdk/base/os/dns/RequestPacket;->header:[B

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/mi/milinkforgame/sdk/base/os/dns/RequestPacket;->question:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/RequestPacket;->domain:Ljava/lang/String;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/dns/AtomicRequestId;->getInstance()Lcom/mi/milinkforgame/sdk/base/os/dns/AtomicRequestId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/base/os/dns/AtomicRequestId;->getId()I

    move-result v0

    iput v0, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/RequestPacket;->reqId:I

    return-void
.end method

.method private warpReqId([B)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/RequestPacket;->reqId:I

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    const/4 v0, 0x1

    iget v1, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/RequestPacket;->reqId:I

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    return-void
.end method


# virtual methods
.method public getQueryData()[B
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/RequestPacket;->domain:Ljava/lang/String;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/RequestPacket;->domain:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/RequestPacket;->domain:Ljava/lang/String;

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/RequestPacket;->domain:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/dns/RequestPacket;->header:[B

    array-length v0, v0

    sget-object v2, Lcom/mi/milinkforgame/sdk/base/os/dns/RequestPacket;->question:[B

    array-length v2, v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/RequestPacket;->domain:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    new-array v3, v0, [B

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/RequestPacket;->domain:Ljava/lang/String;

    const-string v2, "\\."

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/dns/RequestPacket;->header:[B

    array-length v0, v0

    move v2, v0

    move v0, v1

    :goto_1
    array-length v5, v4

    if-ge v0, v5, :cond_2

    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v6, v5

    invoke-static {v5, v1, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v5

    add-int/2addr v2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/dns/RequestPacket;->header:[B

    sget-object v4, Lcom/mi/milinkforgame/sdk/base/os/dns/RequestPacket;->header:[B

    array-length v4, v4

    invoke-static {v0, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/dns/RequestPacket;->question:[B

    sget-object v4, Lcom/mi/milinkforgame/sdk/base/os/dns/RequestPacket;->question:[B

    array-length v4, v4

    invoke-static {v0, v1, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v3}, Lcom/mi/milinkforgame/sdk/base/os/dns/RequestPacket;->warpReqId([B)V

    move-object v0, v3

    goto :goto_0
.end method

.method public getReqId()I
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/RequestPacket;->reqId:I

    return v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
