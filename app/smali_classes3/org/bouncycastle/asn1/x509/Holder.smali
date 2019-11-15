.class public Lorg/bouncycastle/asn1/x509/Holder;
.super Lorg/bouncycastle/asn1/ASN1Object;


# static fields
.field public static final V1_CERTIFICATE_HOLDER:I = 0x0

.field public static final V2_CERTIFICATE_HOLDER:I = 0x1


# instance fields
.field baseCertificateID:Lorg/bouncycastle/asn1/x509/IssuerSerial;

.field entityName:Lorg/bouncycastle/asn1/x509/GeneralNames;

.field objectDigestInfo:Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;

.field private version:I


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput v4, p0, Lorg/bouncycastle/asn1/x509/Holder;->version:I

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_0

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
    move v0, v1

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown tag in Holder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {v2, v1}, Lorg/bouncycastle/asn1/x509/IssuerSerial;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lorg/bouncycastle/asn1/x509/IssuerSerial;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_1
    invoke-static {v2, v1}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/x509/Holder;->entityName:Lorg/bouncycastle/asn1/x509/GeneralNames;

    goto :goto_1

    :pswitch_2
    invoke-static {v2, v1}, Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/x509/Holder;->objectDigestInfo:Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    goto :goto_1

    :cond_1
    iput v4, p0, Lorg/bouncycastle/asn1/x509/Holder;->version:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput v1, p0, Lorg/bouncycastle/asn1/x509/Holder;->version:I

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown tag in Holder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {p1, v1}, Lorg/bouncycastle/asn1/x509/IssuerSerial;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lorg/bouncycastle/asn1/x509/IssuerSerial;

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/asn1/x509/Holder;->version:I

    return-void

    :pswitch_1
    invoke-static {p1, v1}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/Holder;->entityName:Lorg/bouncycastle/asn1/x509/GeneralNames;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/GeneralNames;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/x509/Holder;-><init>(Lorg/bouncycastle/asn1/x509/GeneralNames;I)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/GeneralNames;I)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/asn1/x509/Holder;->version:I

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/Holder;->entityName:Lorg/bouncycastle/asn1/x509/GeneralNames;

    iput p2, p0, Lorg/bouncycastle/asn1/x509/Holder;->version:I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/IssuerSerial;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/x509/Holder;-><init>(Lorg/bouncycastle/asn1/x509/IssuerSerial;I)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/IssuerSerial;I)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/asn1/x509/Holder;->version:I

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lorg/bouncycastle/asn1/x509/IssuerSerial;

    iput p2, p0, Lorg/bouncycastle/asn1/x509/Holder;->version:I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/asn1/x509/Holder;->version:I

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/Holder;->objectDigestInfo:Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Holder;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/Holder;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/x509/Holder;

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/x509/Holder;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/Holder;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    new-instance v0, Lorg/bouncycastle/asn1/x509/Holder;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/Holder;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBaseCertificateID()Lorg/bouncycastle/asn1/x509/IssuerSerial;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lorg/bouncycastle/asn1/x509/IssuerSerial;

    return-object v0
.end method

.method public getEntityName()Lorg/bouncycastle/asn1/x509/GeneralNames;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/Holder;->entityName:Lorg/bouncycastle/asn1/x509/GeneralNames;

    return-object v0
.end method

.method public getObjectDigestInfo()Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/Holder;->objectDigestInfo:Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/x509/Holder;->version:I

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget v0, p0, Lorg/bouncycastle/asn1/x509/Holder;->version:I

    if-ne v0, v3, :cond_3

    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lorg/bouncycastle/asn1/x509/IssuerSerial;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lorg/bouncycastle/asn1/x509/IssuerSerial;

    invoke-direct {v0, v4, v4, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/Holder;->entityName:Lorg/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/Holder;->entityName:Lorg/bouncycastle/asn1/x509/GeneralNames;

    invoke-direct {v0, v4, v3, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/Holder;->objectDigestInfo:Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    if-eqz v0, :cond_2

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/Holder;->objectDigestInfo:Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    invoke-direct {v0, v4, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_2
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    :goto_0
    return-object v0

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/Holder;->entityName:Lorg/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v0, :cond_4

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/Holder;->entityName:Lorg/bouncycastle/asn1/x509/GeneralNames;

    invoke-direct {v0, v3, v3, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :cond_4
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lorg/bouncycastle/asn1/x509/IssuerSerial;

    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0
.end method
