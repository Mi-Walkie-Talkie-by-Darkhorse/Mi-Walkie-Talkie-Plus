.class public Lorg/bouncycastle/asn1/cms/SignedDataParser;
.super Ljava/lang/Object;


# instance fields
.field private _certsCalled:Z

.field private _crlsCalled:Z

.field private _nextObject:Ljava/lang/Object;

.field private _seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

.field private _version:Lorg/bouncycastle/asn1/ASN1Integer;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1SequenceParser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_version:Lorg/bouncycastle/asn1/ASN1Integer;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/SignedDataParser;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/cms/SignedDataParser;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->parser()Lorg/bouncycastle/asn1/ASN1SequenceParser;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/SignedDataParser;-><init>(Lorg/bouncycastle/asn1/ASN1SequenceParser;)V

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1SequenceParser;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/cms/SignedDataParser;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cms/SignedDataParser;-><init>(Lorg/bouncycastle/asn1/ASN1SequenceParser;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object encountered: "

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

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCertificates()Lorg/bouncycastle/asn1/ASN1SetParser;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_certsCalled:Z

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_nextObject:Ljava/lang/Object;

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_nextObject:Ljava/lang/Object;

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_nextObject:Ljava/lang/Object;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->getTagNo()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_nextObject:Ljava/lang/Object;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->getObjectParser(IZ)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1SetParser;

    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_nextObject:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public getCrls()Lorg/bouncycastle/asn1/ASN1SetParser;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_certsCalled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "getCerts() has not been called."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-boolean v2, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_crlsCalled:Z

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_nextObject:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_nextObject:Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_nextObject:Ljava/lang/Object;

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_nextObject:Ljava/lang/Object;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->getTagNo()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_nextObject:Ljava/lang/Object;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->getObjectParser(IZ)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1SetParser;

    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_nextObject:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public getDigestAlgorithms()Lorg/bouncycastle/asn1/ASN1SetParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Set;->parser()Lorg/bouncycastle/asn1/ASN1SetParser;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lorg/bouncycastle/asn1/ASN1SetParser;

    goto :goto_0
.end method

.method public getEncapContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfoParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Lorg/bouncycastle/asn1/cms/ContentInfoParser;

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/cms/ContentInfoParser;-><init>(Lorg/bouncycastle/asn1/ASN1SequenceParser;)V

    return-object v1
.end method

.method public getSignerInfos()Lorg/bouncycastle/asn1/ASN1SetParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_certsCalled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_crlsCalled:Z

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "getCerts() and/or getCrls() has not been called."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_nextObject:Ljava/lang/Object;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_nextObject:Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_nextObject:Ljava/lang/Object;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1SetParser;

    return-object v0
.end method

.method public getVersion()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedDataParser;->_version:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method
