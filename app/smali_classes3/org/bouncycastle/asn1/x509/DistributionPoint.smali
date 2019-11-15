.class public Lorg/bouncycastle/asn1/x509/DistributionPoint;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field cRLIssuer:Lorg/bouncycastle/asn1/x509/GeneralNames;

.field distributionPoint:Lorg/bouncycastle/asn1/x509/DistributionPointName;

.field reasons:Lorg/bouncycastle/asn1/x509/ReasonFlags;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    move v0, v1

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-eq v0, v2, :cond_0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/x509/DistributionPoint;->distributionPoint:Lorg/bouncycastle/asn1/x509/DistributionPointName;

    goto :goto_1

    :pswitch_1
    new-instance v3, Lorg/bouncycastle/asn1/x509/ReasonFlags;

    invoke-static {v2, v1}, Lorg/bouncycastle/asn1/DERBitString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/DERBitString;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/bouncycastle/asn1/x509/ReasonFlags;-><init>(Lorg/bouncycastle/asn1/DERBitString;)V

    iput-object v3, p0, Lorg/bouncycastle/asn1/x509/DistributionPoint;->reasons:Lorg/bouncycastle/asn1/x509/ReasonFlags;

    goto :goto_1

    :pswitch_2
    invoke-static {v2, v1}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/x509/DistributionPoint;->cRLIssuer:Lorg/bouncycastle/asn1/x509/GeneralNames;

    goto :goto_1

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/DistributionPointName;Lorg/bouncycastle/asn1/x509/ReasonFlags;Lorg/bouncycastle/asn1/x509/GeneralNames;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/DistributionPoint;->distributionPoint:Lorg/bouncycastle/asn1/x509/DistributionPointName;

    iput-object p2, p0, Lorg/bouncycastle/asn1/x509/DistributionPoint;->reasons:Lorg/bouncycastle/asn1/x509/ReasonFlags;

    iput-object p3, p0, Lorg/bouncycastle/asn1/x509/DistributionPoint;->cRLIssuer:Lorg/bouncycastle/asn1/x509/GeneralNames;

    return-void
.end method

.method private appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .locals 3

    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/DistributionPoint;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Lorg/bouncycastle/asn1/x509/DistributionPoint;

    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    new-instance v0, Lorg/bouncycastle/asn1/x509/DistributionPoint;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/DistributionPoint;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid DistributionPoint: "

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

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .locals 1

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/DistributionPoint;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCRLIssuer()Lorg/bouncycastle/asn1/x509/GeneralNames;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/DistributionPoint;->cRLIssuer:Lorg/bouncycastle/asn1/x509/GeneralNames;

    return-object v0
.end method

.method public getDistributionPoint()Lorg/bouncycastle/asn1/x509/DistributionPointName;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/DistributionPoint;->distributionPoint:Lorg/bouncycastle/asn1/x509/DistributionPointName;

    return-object v0
.end method

.method public getReasons()Lorg/bouncycastle/asn1/x509/ReasonFlags;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/DistributionPoint;->reasons:Lorg/bouncycastle/asn1/x509/ReasonFlags;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/DistributionPoint;->distributionPoint:Lorg/bouncycastle/asn1/x509/DistributionPointName;

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/DistributionPoint;->distributionPoint:Lorg/bouncycastle/asn1/x509/DistributionPointName;

    invoke-direct {v1, v4, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/DistributionPoint;->reasons:Lorg/bouncycastle/asn1/x509/ReasonFlags;

    if-eqz v1, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/DistributionPoint;->reasons:Lorg/bouncycastle/asn1/x509/ReasonFlags;

    invoke-direct {v1, v4, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/DistributionPoint;->cRLIssuer:Lorg/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v1, :cond_2

    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/DistributionPoint;->cRLIssuer:Lorg/bouncycastle/asn1/x509/GeneralNames;

    invoke-direct {v1, v4, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lorg/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "DistributionPoint: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/DistributionPoint;->distributionPoint:Lorg/bouncycastle/asn1/x509/DistributionPointName;

    if-eqz v2, :cond_0

    const-string v2, "distributionPoint"

    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/DistributionPoint;->distributionPoint:Lorg/bouncycastle/asn1/x509/DistributionPointName;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v0, v2, v3}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/DistributionPoint;->reasons:Lorg/bouncycastle/asn1/x509/ReasonFlags;

    if-eqz v2, :cond_1

    const-string v2, "reasons"

    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/DistributionPoint;->reasons:Lorg/bouncycastle/asn1/x509/ReasonFlags;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/ReasonFlags;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v0, v2, v3}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/DistributionPoint;->cRLIssuer:Lorg/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v2, :cond_2

    const-string v2, "cRLIssuer"

    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/DistributionPoint;->cRLIssuer:Lorg/bouncycastle/asn1/x509/GeneralNames;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/GeneralNames;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v0, v2, v3}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
