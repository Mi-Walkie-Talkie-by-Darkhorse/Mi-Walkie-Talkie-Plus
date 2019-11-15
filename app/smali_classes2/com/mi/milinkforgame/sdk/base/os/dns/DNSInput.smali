.class public Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;
.super Ljava/lang/Object;
.source "DNSInput.java"


# instance fields
.field private array:[B

.field private end:I

.field private pos:I

.field private saved_end:I

.field private saved_pos:I


# direct methods
.method public constructor <init>([B)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->array:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->pos:I

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->array:[B

    array-length v0, v0

    iput v0, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->end:I

    iput v1, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->saved_pos:I

    iput v1, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->saved_end:I

    return-void
.end method

.method private require(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mi/milinkforgame/sdk/base/os/dns/WireParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->remaining()I

    move-result v0

    if-le p1, v0, :cond_0

    new-instance v0, Lcom/mi/milinkforgame/sdk/base/os/dns/WireParseException;

    const-string v1, "end of input"

    invoke-direct {v0, v1}, Lcom/mi/milinkforgame/sdk/base/os/dns/WireParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public clearActive()V
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->array:[B

    array-length v0, v0

    iput v0, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->end:I

    return-void
.end method

.method public current()I
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->pos:I

    return v0
.end method

.method public jump(I)V
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->array:[B

    array-length v0, v0

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot jump past end of input"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->pos:I

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->array:[B

    array-length v0, v0

    iput v0, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->end:I

    return-void
.end method

.method public readByteArray([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mi/milinkforgame/sdk/base/os/dns/WireParseException;
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->require(I)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->array:[B

    iget v1, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->pos:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->pos:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->pos:I

    return-void
.end method

.method public readByteArray()[B
    .locals 5

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->remaining()I

    move-result v0

    new-array v1, v0, [B

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->array:[B

    iget v3, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->pos:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->pos:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->pos:I

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->array:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->end:I

    return-object v1
.end method

.method public readByteArray(I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mi/milinkforgame/sdk/base/os/dns/WireParseException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->require(I)V

    new-array v0, p1, [B

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->array:[B

    iget v2, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->pos:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->pos:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->pos:I

    return-object v0
.end method

.method public readCountedString()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mi/milinkforgame/sdk/base/os/dns/WireParseException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->require(I)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->array:[B

    iget v1, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->readByteArray(I)[B

    move-result-object v0

    return-object v0
.end method

.method public readU16()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mi/milinkforgame/sdk/base/os/dns/WireParseException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->require(I)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->array:[B

    iget v1, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->array:[B

    iget v2, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->pos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v1

    return v0
.end method

.method public readU32()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mi/milinkforgame/sdk/base/os/dns/WireParseException;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->require(I)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->array:[B

    iget v1, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->array:[B

    iget v2, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->pos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->array:[B

    iget v3, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->pos:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    iget-object v3, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->array:[B

    iget v4, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->pos:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-long v4, v0

    const/16 v0, 0x18

    shl-long/2addr v4, v0

    shl-int/lit8 v0, v1, 0x10

    int-to-long v0, v0

    add-long/2addr v0, v4

    shl-int/lit8 v2, v2, 0x8

    int-to-long v4, v2

    add-long/2addr v0, v4

    int-to-long v2, v3

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public readU8()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mi/milinkforgame/sdk/base/os/dns/WireParseException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->require(I)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->array:[B

    iget v1, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public remaining()I
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->end:I

    iget v1, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->pos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public restore()V
    .locals 2

    const/4 v1, -0x1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->saved_pos:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no previous state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->saved_pos:I

    iput v0, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->pos:I

    iget v0, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->saved_end:I

    iput v0, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->end:I

    iput v1, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->saved_pos:I

    iput v1, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->saved_end:I

    return-void
.end method

.method public save()V
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->pos:I

    iput v0, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->saved_pos:I

    iget v0, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->end:I

    iput v0, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->saved_end:I

    return-void
.end method

.method public setActive(I)V
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->array:[B

    array-length v0, v0

    iget v1, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->pos:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot set active region past end of input"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->pos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;->end:I

    return-void
.end method
