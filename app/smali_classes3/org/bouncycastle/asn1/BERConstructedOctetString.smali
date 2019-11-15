.class public Lorg/bouncycastle/asn1/BERConstructedOctetString;
.super Lorg/bouncycastle/asn1/BEROctetString;


# static fields
.field private static final MAX_LENGTH:I = 0x3e8


# instance fields
.field private octs:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Ljava/util/Vector;)V
    .locals 1

    invoke-static {p1}, Lorg/bouncycastle/asn1/BERConstructedOctetString;->toBytes(Ljava/util/Vector;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/BEROctetString;-><init>([B)V

    iput-object p1, p0, Lorg/bouncycastle/asn1/BERConstructedOctetString;->octs:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/BERConstructedOctetString;-><init>(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Primitive;)V
    .locals 1

    invoke-static {p1}, Lorg/bouncycastle/asn1/BERConstructedOctetString;->toByteArray(Lorg/bouncycastle/asn1/ASN1Primitive;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/BEROctetString;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/BEROctetString;-><init>([B)V

    return-void
.end method

.method public static fromSequence(Lorg/bouncycastle/asn1/ASN1Sequence;)Lorg/bouncycastle/asn1/BEROctetString;
    .locals 3

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/BERConstructedOctetString;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/BERConstructedOctetString;-><init>(Ljava/util/Vector;)V

    return-object v1
.end method

.method private generateOcts()Ljava/util/Vector;
    .locals 6

    const/4 v1, 0x0

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/asn1/BERConstructedOctetString;->string:[B

    array-length v2, v2

    if-ge v0, v2, :cond_1

    add-int/lit16 v2, v0, 0x3e8

    iget-object v4, p0, Lorg/bouncycastle/asn1/BERConstructedOctetString;->string:[B

    array-length v4, v4

    if-le v2, v4, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/asn1/BERConstructedOctetString;->string:[B

    array-length v2, v2

    :goto_1
    sub-int/2addr v2, v0

    new-array v2, v2, [B

    iget-object v4, p0, Lorg/bouncycastle/asn1/BERConstructedOctetString;->string:[B

    array-length v5, v2

    invoke-static {v4, v0, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v4, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit16 v0, v0, 0x3e8

    goto :goto_0

    :cond_0
    add-int/lit16 v2, v0, 0x3e8

    goto :goto_1

    :cond_1
    return-object v3
.end method

.method private static toByteArray(Lorg/bouncycastle/asn1/ASN1Primitive;)[B
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to encode object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static toBytes(Ljava/util/Vector;)[B
    .locals 4

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eq v1, v0, :cond_0

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " found in input should only contain DEROctetString"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception converting octets "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getObjects()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/BERConstructedOctetString;->octs:Ljava/util/Vector;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/BERConstructedOctetString;->generateOcts()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/BERConstructedOctetString;->octs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0
.end method

.method public getOctets()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/BERConstructedOctetString;->string:[B

    return-object v0
.end method
