.class public abstract Lorg/bouncycastle/asn1/ASN1BitString;
.super Lorg/bouncycastle/asn1/ASN1Primitive;

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1String;


# static fields
.field private static final table:[C


# instance fields
.field protected final data:[B

.field protected final padBits:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/asn1/ASN1BitString;->table:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>([BI)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "data cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "zero length data with non-zero pad bits"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x7

    if-gt p2, v0, :cond_2

    if-gez p2, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pad bits cannot be greater than 7 or less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ASN1BitString;->data:[B

    iput p2, p0, Lorg/bouncycastle/asn1/ASN1BitString;->padBits:I

    return-void
.end method

.method protected static derForm([BI)[B
    .locals 4

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    if-lez p1, :cond_0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget-byte v2, v0, v1

    const/16 v3, 0xff

    shl-int/2addr v3, p1

    and-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    :cond_0
    return-object v0
.end method

.method static fromInputStream(ILjava/io/InputStream;)Lorg/bouncycastle/asn1/ASN1BitString;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "truncated BIT STRING detected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    add-int/lit8 v0, p0, -0x1

    new-array v2, v0, [B

    array-length v0, v2

    if-eqz v0, :cond_2

    invoke-static {p1, v2}, Lorg/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result v0

    array-length v3, v2

    if-eq v0, v3, :cond_1

    new-instance v0, Ljava/io/EOFException;

    const-string v1, "EOF encountered in middle of BIT STRING"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-lez v1, :cond_2

    const/16 v0, 0x8

    if-ge v1, v0, :cond_2

    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, v2, v0

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, v2, v3

    const/16 v4, 0xff

    shl-int/2addr v4, v1

    and-int/2addr v3, v4

    int-to-byte v3, v3

    if-eq v0, v3, :cond_2

    new-instance v0, Lorg/bouncycastle/asn1/DLBitString;

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/asn1/DLBitString;-><init>([BI)V

    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Lorg/bouncycastle/asn1/DERBitString;

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/asn1/DERBitString;-><init>([BI)V

    goto :goto_0
.end method

.method protected static getBytes(I)[B
    .locals 5

    const/4 v1, 0x0

    if-nez p0, :cond_1

    new-array v0, v1, [B

    :cond_0
    return-object v0

    :cond_1
    const/4 v2, 0x4

    const/4 v0, 0x3

    :goto_0
    const/4 v3, 0x1

    if-lt v0, v3, :cond_2

    const/16 v3, 0xff

    mul-int/lit8 v4, v0, 0x8

    shl-int/2addr v3, v4

    and-int/2addr v3, p0

    if-eqz v3, :cond_3

    :cond_2
    new-array v0, v2, [B

    :goto_1
    if-ge v1, v2, :cond_0

    mul-int/lit8 v3, v1, 0x8

    shr-int v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method protected static getPadBits(I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    :goto_0
    if-ltz v1, :cond_4

    if-eqz v1, :cond_0

    mul-int/lit8 v2, v1, 0x8

    shr-int v2, p0, v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x8

    shr-int v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    :goto_1
    if-nez v1, :cond_2

    :goto_2
    return v0

    :cond_0
    if-eqz p0, :cond_1

    and-int/lit16 v1, p0, 0xff

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_3
    shl-int/lit8 v1, v1, 0x1

    and-int/lit16 v2, v1, 0xff

    if-eqz v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    rsub-int/lit8 v0, v0, 0x8

    goto :goto_2

    :cond_4
    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method protected asn1Equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lorg/bouncycastle/asn1/ASN1BitString;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lorg/bouncycastle/asn1/ASN1BitString;

    iget v1, p0, Lorg/bouncycastle/asn1/ASN1BitString;->padBits:I

    iget v2, p1, Lorg/bouncycastle/asn1/ASN1BitString;->padBits:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method abstract encode(Lorg/bouncycastle/asn1/ASN1OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getBytes()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1BitString;->data:[B

    iget v1, p0, Lorg/bouncycastle/asn1/ASN1BitString;->padBits:I

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/ASN1BitString;->derForm([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public getLoadedObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1BitString;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public getOctets()[B
    .locals 2

    iget v0, p0, Lorg/bouncycastle/asn1/ASN1BitString;->padBits:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to get non-octet aligned data from BIT STRING"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1BitString;->data:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getPadBits()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/ASN1BitString;->padBits:I

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v0, "#"

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Lorg/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-virtual {v2, p0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-eq v0, v3, :cond_0

    sget-object v3, Lorg/bouncycastle/asn1/ASN1BitString;->table:[C

    aget-byte v4, v2, v0

    ushr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v3, Lorg/bouncycastle/asn1/ASN1BitString;->table:[C

    aget-byte v4, v2, v0

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/asn1/ASN1ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Internal error encoding BitString: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/bouncycastle/asn1/ASN1BitString;->padBits:I

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public intValue()I
    .locals 6

    const/4 v5, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1BitString;->data:[B

    iget v2, p0, Lorg/bouncycastle/asn1/ASN1BitString;->padBits:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/asn1/ASN1BitString;->data:[B

    array-length v2, v2

    if-gt v2, v5, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1BitString;->data:[B

    iget v2, p0, Lorg/bouncycastle/asn1/ASN1BitString;->padBits:I

    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/ASN1BitString;->derForm([BI)[B

    move-result-object v0

    :cond_0
    move v2, v1

    :goto_0
    array-length v3, v0

    if-eq v1, v3, :cond_1

    if-eq v1, v5, :cond_1

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v1, 0x8

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/DERBitString;

    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1BitString;->data:[B

    iget v2, p0, Lorg/bouncycastle/asn1/ASN1BitString;->padBits:I

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERBitString;-><init>([BI)V

    return-object v0
.end method

.method toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/DLBitString;

    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1BitString;->data:[B

    iget v2, p0, Lorg/bouncycastle/asn1/ASN1BitString;->padBits:I

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DLBitString;-><init>([BI)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1BitString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
