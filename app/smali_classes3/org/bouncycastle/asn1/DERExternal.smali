.class public Lorg/bouncycastle/asn1/DERExternal;
.super Lorg/bouncycastle/asn1/ASN1Primitive;


# instance fields
.field private dataValueDescriptor:Lorg/bouncycastle/asn1/ASN1Primitive;

.field private directReference:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private encoding:I

.field private externalContent:Lorg/bouncycastle/asn1/ASN1Primitive;

.field private indirectReference:Lorg/bouncycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/asn1/DERExternal;->getObjFromVector(Lorg/bouncycastle/asn1/ASN1EncodableVector;I)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    instance-of v2, v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v2, :cond_0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lorg/bouncycastle/asn1/DERExternal;->directReference:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/asn1/DERExternal;->getObjFromVector(Lorg/bouncycastle/asn1/ASN1EncodableVector;I)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    :cond_0
    instance-of v2, v0, Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v2, :cond_1

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lorg/bouncycastle/asn1/DERExternal;->indirectReference:Lorg/bouncycastle/asn1/ASN1Integer;

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/asn1/DERExternal;->getObjFromVector(Lorg/bouncycastle/asn1/ASN1EncodableVector;I)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    :cond_1
    instance-of v2, v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-nez v2, :cond_2

    iput-object v0, p0, Lorg/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lorg/bouncycastle/asn1/ASN1Primitive;

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/asn1/DERExternal;->getObjFromVector(Lorg/bouncycastle/asn1/ASN1EncodableVector;I)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    :cond_2
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    if-eq v2, v1, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input vector too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-nez v1, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No tagged object found in vector. Structure doesn\'t seem to be of type External"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/asn1/DERExternal;->setEncoding(I)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/DERExternal;->externalContent:Lorg/bouncycastle/asn1/ASN1Primitive;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1Primitive;ILorg/bouncycastle/asn1/ASN1Primitive;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/DERExternal;->setDirectReference(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-direct {p0, p2}, Lorg/bouncycastle/asn1/DERExternal;->setIndirectReference(Lorg/bouncycastle/asn1/ASN1Integer;)V

    invoke-direct {p0, p3}, Lorg/bouncycastle/asn1/DERExternal;->setDataValueDescriptor(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    invoke-direct {p0, p4}, Lorg/bouncycastle/asn1/DERExternal;->setEncoding(I)V

    invoke-virtual {p5}, Lorg/bouncycastle/asn1/ASN1Primitive;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/DERExternal;->setExternalContent(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1Primitive;Lorg/bouncycastle/asn1/DERTaggedObject;)V
    .locals 6

    invoke-virtual {p4}, Lorg/bouncycastle/asn1/DERTaggedObject;->getTagNo()I

    move-result v4

    invoke-virtual {p4}, Lorg/bouncycastle/asn1/DERTaggedObject;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/asn1/DERExternal;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1Primitive;ILorg/bouncycastle/asn1/ASN1Primitive;)V

    return-void
.end method

.method private getObjFromVector(Lorg/bouncycastle/asn1/ASN1EncodableVector;I)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    if-gt v0, p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "too few objects in input vector"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1, p2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method private setDataValueDescriptor(Lorg/bouncycastle/asn1/ASN1Primitive;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lorg/bouncycastle/asn1/ASN1Primitive;

    return-void
.end method

.method private setDirectReference(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/DERExternal;->directReference:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method private setEncoding(I)V
    .locals 3

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid encoding value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lorg/bouncycastle/asn1/DERExternal;->encoding:I

    return-void
.end method

.method private setExternalContent(Lorg/bouncycastle/asn1/ASN1Primitive;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/DERExternal;->externalContent:Lorg/bouncycastle/asn1/ASN1Primitive;

    return-void
.end method

.method private setIndirectReference(Lorg/bouncycastle/asn1/ASN1Integer;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/DERExternal;->indirectReference:Lorg/bouncycastle/asn1/ASN1Integer;

    return-void
.end method


# virtual methods
.method asn1Equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lorg/bouncycastle/asn1/DERExternal;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p0, p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    check-cast p1, Lorg/bouncycastle/asn1/DERExternal;

    iget-object v1, p0, Lorg/bouncycastle/asn1/DERExternal;->directReference:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lorg/bouncycastle/asn1/DERExternal;->directReference:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lorg/bouncycastle/asn1/DERExternal;->directReference:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v2, p0, Lorg/bouncycastle/asn1/DERExternal;->directReference:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    iget-object v1, p0, Lorg/bouncycastle/asn1/DERExternal;->indirectReference:Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lorg/bouncycastle/asn1/DERExternal;->indirectReference:Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lorg/bouncycastle/asn1/DERExternal;->indirectReference:Lorg/bouncycastle/asn1/ASN1Integer;

    iget-object v2, p0, Lorg/bouncycastle/asn1/DERExternal;->indirectReference:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    iget-object v1, p0, Lorg/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lorg/bouncycastle/asn1/ASN1Primitive;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lorg/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lorg/bouncycastle/asn1/ASN1Primitive;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lorg/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lorg/bouncycastle/asn1/ASN1Primitive;

    iget-object v2, p0, Lorg/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lorg/bouncycastle/asn1/ASN1Primitive;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    iget-object v0, p0, Lorg/bouncycastle/asn1/DERExternal;->externalContent:Lorg/bouncycastle/asn1/ASN1Primitive;

    iget-object v1, p1, Lorg/bouncycastle/asn1/DERExternal;->externalContent:Lorg/bouncycastle/asn1/ASN1Primitive;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method encode(Lorg/bouncycastle/asn1/ASN1OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/DERExternal;->directReference:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/asn1/DERExternal;->directReference:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/DERExternal;->indirectReference:Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/asn1/DERExternal;->indirectReference:Lorg/bouncycastle/asn1/ASN1Integer;

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lorg/bouncycastle/asn1/ASN1Primitive;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lorg/bouncycastle/asn1/ASN1Primitive;

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    iget v3, p0, Lorg/bouncycastle/asn1/DERExternal;->encoding:I

    iget-object v4, p0, Lorg/bouncycastle/asn1/DERExternal;->externalContent:Lorg/bouncycastle/asn1/ASN1Primitive;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/16 v1, 0x20

    const/16 v2, 0x8

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(II[B)V

    return-void
.end method

.method encodedLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DERExternal;->getEncoded()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getDataValueDescriptor()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lorg/bouncycastle/asn1/ASN1Primitive;

    return-object v0
.end method

.method public getDirectReference()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/DERExternal;->directReference:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getEncoding()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/DERExternal;->encoding:I

    return v0
.end method

.method public getExternalContent()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/DERExternal;->externalContent:Lorg/bouncycastle/asn1/ASN1Primitive;

    return-object v0
.end method

.method public getIndirectReference()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/DERExternal;->indirectReference:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/bouncycastle/asn1/DERExternal;->directReference:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/DERExternal;->directReference:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->hashCode()I

    move-result v0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/DERExternal;->indirectReference:Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/asn1/DERExternal;->indirectReference:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lorg/bouncycastle/asn1/ASN1Primitive;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lorg/bouncycastle/asn1/ASN1Primitive;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/asn1/DERExternal;->externalContent:Lorg/bouncycastle/asn1/ASN1Primitive;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method isConstructed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
