.class public Lorg/bouncycastle/asn1/cms/SignedData;
.super Lorg/bouncycastle/asn1/ASN1Object;


# static fields
.field private static final VERSION_1:Lorg/bouncycastle/asn1/ASN1Integer;

.field private static final VERSION_3:Lorg/bouncycastle/asn1/ASN1Integer;

.field private static final VERSION_4:Lorg/bouncycastle/asn1/ASN1Integer;

.field private static final VERSION_5:Lorg/bouncycastle/asn1/ASN1Integer;


# instance fields
.field private certificates:Lorg/bouncycastle/asn1/ASN1Set;

.field private certsBer:Z

.field private contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

.field private crls:Lorg/bouncycastle/asn1/ASN1Set;

.field private crlsBer:Z

.field private digestAlgorithms:Lorg/bouncycastle/asn1/ASN1Set;

.field private signerInfos:Lorg/bouncycastle/asn1/ASN1Set;

.field private version:Lorg/bouncycastle/asn1/ASN1Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    sput-object v0, Lorg/bouncycastle/asn1/cms/SignedData;->VERSION_1:Lorg/bouncycastle/asn1/ASN1Integer;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x3

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    sput-object v0, Lorg/bouncycastle/asn1/cms/SignedData;->VERSION_3:Lorg/bouncycastle/asn1/ASN1Integer;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x4

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    sput-object v0, Lorg/bouncycastle/asn1/cms/SignedData;->VERSION_4:Lorg/bouncycastle/asn1/ASN1Integer;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x5

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    sput-object v0, Lorg/bouncycastle/asn1/cms/SignedData;->VERSION_5:Lorg/bouncycastle/asn1/ASN1Integer;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedData;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Set;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedData;->digestAlgorithms:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Primitive;

    instance-of v2, v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v2, :cond_0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown tag value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    instance-of v2, v0, Lorg/bouncycastle/asn1/BERTaggedObject;

    iput-boolean v2, p0, Lorg/bouncycastle/asn1/cms/SignedData;->certsBer:Z

    invoke-static {v0, v3}, Lorg/bouncycastle/asn1/ASN1Set;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedData;->certificates:Lorg/bouncycastle/asn1/ASN1Set;

    goto :goto_0

    :pswitch_1
    instance-of v2, v0, Lorg/bouncycastle/asn1/BERTaggedObject;

    iput-boolean v2, p0, Lorg/bouncycastle/asn1/cms/SignedData;->crlsBer:Z

    invoke-static {v0, v3}, Lorg/bouncycastle/asn1/ASN1Set;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedData;->crls:Lorg/bouncycastle/asn1/ASN1Set;

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/bouncycastle/asn1/ASN1Set;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedData;->signerInfos:Lorg/bouncycastle/asn1/ASN1Set;

    goto :goto_0

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/cms/ContentInfo;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/ASN1Set;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4, p5}, Lorg/bouncycastle/asn1/cms/SignedData;->calculateVersion(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/ASN1Set;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedData;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/SignedData;->digestAlgorithms:Lorg/bouncycastle/asn1/ASN1Set;

    iput-object p2, p0, Lorg/bouncycastle/asn1/cms/SignedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    iput-object p3, p0, Lorg/bouncycastle/asn1/cms/SignedData;->certificates:Lorg/bouncycastle/asn1/ASN1Set;

    iput-object p4, p0, Lorg/bouncycastle/asn1/cms/SignedData;->crls:Lorg/bouncycastle/asn1/ASN1Set;

    iput-object p5, p0, Lorg/bouncycastle/asn1/cms/SignedData;->signerInfos:Lorg/bouncycastle/asn1/ASN1Set;

    instance-of v0, p4, Lorg/bouncycastle/asn1/BERSet;

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/cms/SignedData;->crlsBer:Z

    instance-of v0, p3, Lorg/bouncycastle/asn1/BERSet;

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/cms/SignedData;->certsBer:Z

    return-void
.end method

.method private calculateVersion(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/ASN1Set;)Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 9

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v5

    move v0, v1

    move v2, v1

    move v3, v1

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v7, :cond_0

    invoke-static {v6}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v7

    if-ne v7, v4, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    move v3, v4

    goto :goto_0

    :cond_3
    move v0, v1

    move v2, v1

    move v3, v1

    :cond_4
    if-eqz v3, :cond_5

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x5

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    :goto_1
    return-object v0

    :cond_5
    if-eqz p3, :cond_7

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v5, :cond_6

    move v1, v4

    goto :goto_2

    :cond_7
    if-eqz v1, :cond_8

    sget-object v0, Lorg/bouncycastle/asn1/cms/SignedData;->VERSION_5:Lorg/bouncycastle/asn1/ASN1Integer;

    goto :goto_1

    :cond_8
    if-eqz v0, :cond_9

    sget-object v0, Lorg/bouncycastle/asn1/cms/SignedData;->VERSION_4:Lorg/bouncycastle/asn1/ASN1Integer;

    goto :goto_1

    :cond_9
    if-eqz v2, :cond_a

    sget-object v0, Lorg/bouncycastle/asn1/cms/SignedData;->VERSION_3:Lorg/bouncycastle/asn1/ASN1Integer;

    goto :goto_1

    :cond_a
    invoke-direct {p0, p4}, Lorg/bouncycastle/asn1/cms/SignedData;->checkForVersion3(Lorg/bouncycastle/asn1/ASN1Set;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lorg/bouncycastle/asn1/cms/SignedData;->VERSION_3:Lorg/bouncycastle/asn1/ASN1Integer;

    goto :goto_1

    :cond_b
    sget-object v0, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->data:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lorg/bouncycastle/asn1/cms/SignedData;->VERSION_3:Lorg/bouncycastle/asn1/ASN1Integer;

    goto :goto_1

    :cond_c
    sget-object v0, Lorg/bouncycastle/asn1/cms/SignedData;->VERSION_1:Lorg/bouncycastle/asn1/ASN1Integer;

    goto :goto_1
.end method

.method private checkForVersion3(Lorg/bouncycastle/asn1/ASN1Set;)Z
    .locals 3

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getVersion()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/SignedData;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/cms/SignedData;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/cms/SignedData;

    :goto_0
    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/SignedData;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCRLs()Lorg/bouncycastle/asn1/ASN1Set;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedData;->crls:Lorg/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getCertificates()Lorg/bouncycastle/asn1/ASN1Set;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedData;->certificates:Lorg/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getDigestAlgorithms()Lorg/bouncycastle/asn1/ASN1Set;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedData;->digestAlgorithms:Lorg/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getEncapContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfo;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    return-object v0
.end method

.method public getSignerInfos()Lorg/bouncycastle/asn1/ASN1Set;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedData;->signerInfos:Lorg/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getVersion()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedData;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/SignedData;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/SignedData;->digestAlgorithms:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/SignedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/SignedData;->certificates:Lorg/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/bouncycastle/asn1/cms/SignedData;->certsBer:Z

    if-eqz v1, :cond_2

    new-instance v1, Lorg/bouncycastle/asn1/BERTaggedObject;

    iget-object v2, p0, Lorg/bouncycastle/asn1/cms/SignedData;->certificates:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v3, v3, v2}, Lorg/bouncycastle/asn1/BERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/SignedData;->crls:Lorg/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/bouncycastle/asn1/cms/SignedData;->crlsBer:Z

    if-eqz v1, :cond_3

    new-instance v1, Lorg/bouncycastle/asn1/BERTaggedObject;

    iget-object v2, p0, Lorg/bouncycastle/asn1/cms/SignedData;->crls:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v3, v4, v2}, Lorg/bouncycastle/asn1/BERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/SignedData;->signerInfos:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/BERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/BERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1

    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/bouncycastle/asn1/cms/SignedData;->certificates:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v3, v3, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :cond_3
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/bouncycastle/asn1/cms/SignedData;->crls:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v3, v4, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_1
.end method
