.class public abstract Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;
.super Lorg/bouncycastle/asn1/ASN1Primitive;


# instance fields
.field protected final isConstructed:Z

.field protected final octets:[B

.field protected final tag:I


# direct methods
.method constructor <init>(ZI[B)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    iput-boolean p1, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->isConstructed:Z

    iput p2, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->tag:I

    iput-object p3, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->octets:[B

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;
    .locals 4

    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;

    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    :try_start_0
    check-cast p0, [B

    check-cast p0, [B

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to construct object from byte[]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static getLengthOfHeader([B)I
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x80

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v2, 0x7f

    if-le v1, v2, :cond_0

    and-int/lit8 v0, v1, 0x7f

    const/4 v1, 0x4

    if-le v0, v1, :cond_2

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DER length more than 4 bytes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private replaceTagNumber(I[B)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v4, 0x0

    aget-byte v0, p2, v4

    and-int/lit8 v0, v0, 0x1f

    const/16 v2, 0x1f

    if-ne v0, v2, :cond_0

    const/4 v2, 0x2

    aget-byte v0, p2, v1

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v3, v0, 0x7f

    if-nez v3, :cond_2

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ParsingException;

    const-string v1, "corrupted stream - invalid high tag number found"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    if-ltz v2, :cond_1

    and-int/lit16 v5, v2, 0x80

    if-eqz v5, :cond_1

    and-int/lit8 v2, v2, 0x7f

    or-int/2addr v2, v3

    shl-int/lit8 v3, v2, 0x7

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    move v6, v0

    move v0, v2

    move v2, v6

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    array-length v2, p2

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [B

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    invoke-static {p2, v0, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-byte v0, p1

    aput-byte v0, v2, v4

    return-object v2

    :cond_2
    move v3, v4

    move v6, v2

    move v2, v0

    move v0, v6

    goto :goto_0
.end method


# virtual methods
.method asn1Equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;

    iget-boolean v1, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->isConstructed:Z

    iget-boolean v2, p1, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->isConstructed:Z

    if-ne v1, v2, :cond_0

    iget v1, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->tag:I

    iget v2, p1, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->tag:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->octets:[B

    iget-object v2, p1, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->octets:[B

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method encode(Lorg/bouncycastle/asn1/ASN1OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x40

    iget-boolean v1, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->isConstructed:Z

    if-eqz v1, :cond_0

    const/16 v0, 0x60

    :cond_0
    iget v1, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->tag:I

    iget-object v2, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->octets:[B

    invoke-virtual {p1, v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(II[B)V

    return-void
.end method

.method encodedLength()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->tag:I

    invoke-static {v0}, Lorg/bouncycastle/asn1/StreamUtil;->calculateTagLength(I)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->octets:[B

    array-length v1, v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->octets:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getApplicationTag()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->tag:I

    return v0
.end method

.method public getContents()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->octets:[B

    return-object v0
.end method

.method public getObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->getContents()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public getObject(I)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/16 v0, 0x1f

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "unsupported tag number"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->getEncoded()[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->replaceTagNumber(I[B)[B

    move-result-object v1

    aget-byte v0, v0, v2

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_1

    aget-byte v0, v1, v2

    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    :cond_1
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->isConstructed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->tag:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->octets:[B

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConstructed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->isConstructed:Z

    return v0
.end method
