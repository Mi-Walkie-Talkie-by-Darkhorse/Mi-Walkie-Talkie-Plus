.class public Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;
.super Lorg/bouncycastle/asn1/ASN1Object;

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private id:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1OctetString;)V
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;-><init>(Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Primitive;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v0, v1, v1, p1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;
    .locals 4

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;

    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    if-nez v0, :cond_2

    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_3

    :cond_2
    new-instance v0, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;

    invoke-static {p0}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;-><init>(Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;)V

    move-object p0, v0

    goto :goto_0

    :cond_3
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_5

    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    if-nez v1, :cond_4

    new-instance p0, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;

    invoke-static {v0, v3}, Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;-><init>(Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    new-instance p0, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;

    invoke-static {v0, v3}, Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;-><init>(Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;)V

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid OriginatorIdentifierOrKey: "

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

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t implicitly tag OriginatorIdentifierOrKey"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getId()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public getIssuerAndSerialNumber()Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lorg/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOriginatorKey()Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lorg/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lorg/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubjectKeyIdentifier()Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lorg/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lorg/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method
