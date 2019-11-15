.class public Lorg/bouncycastle/asn1/esf/RevocationValues;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private crlVals:Lorg/bouncycastle/asn1/ASN1Sequence;

.field private ocspVals:Lorg/bouncycastle/asn1/ASN1Sequence;

.field private otherRevVals:Lorg/bouncycastle/asn1/esf/OtherRevVals;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERTaggedObject;->getTagNo()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERTaggedObject;->getTagNo()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERTaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/CertificateList;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CertificateList;

    goto :goto_1

    :cond_1
    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->crlVals:Lorg/bouncycastle/asn1/ASN1Sequence;

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERTaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    goto :goto_2

    :cond_2
    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->ocspVals:Lorg/bouncycastle/asn1/ASN1Sequence;

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERTaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/esf/OtherRevVals;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/OtherRevVals;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->otherRevVals:Lorg/bouncycastle/asn1/esf/OtherRevVals;

    goto :goto_0

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/x509/CertificateList;[Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;Lorg/bouncycastle/asn1/esf/OtherRevVals;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    if-eqz p1, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->crlVals:Lorg/bouncycastle/asn1/ASN1Sequence;

    :cond_0
    if-eqz p2, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->ocspVals:Lorg/bouncycastle/asn1/ASN1Sequence;

    :cond_1
    iput-object p3, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->otherRevVals:Lorg/bouncycastle/asn1/esf/OtherRevVals;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/RevocationValues;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/esf/RevocationValues;

    :goto_0
    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/esf/RevocationValues;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/esf/RevocationValues;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCrlVals()[Lorg/bouncycastle/asn1/x509/CertificateList;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->crlVals:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-nez v1, :cond_0

    new-array v0, v0, [Lorg/bouncycastle/asn1/x509/CertificateList;

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->crlVals:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-array v1, v1, [Lorg/bouncycastle/asn1/x509/CertificateList;

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->crlVals:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/CertificateList;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CertificateList;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getOcspVals()[Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->ocspVals:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-nez v1, :cond_0

    new-array v0, v0, [Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->ocspVals:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-array v1, v1, [Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->ocspVals:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getOtherRevVals()Lorg/bouncycastle/asn1/esf/OtherRevVals;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->otherRevVals:Lorg/bouncycastle/asn1/esf/OtherRevVals;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->crlVals:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->crlVals:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v4, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->ocspVals:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->ocspVals:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v4, v4, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->otherRevVals:Lorg/bouncycastle/asn1/esf/OtherRevVals;

    if-eqz v1, :cond_2

    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->otherRevVals:Lorg/bouncycastle/asn1/esf/OtherRevVals;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/esf/OtherRevVals;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-direct {v1, v4, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
