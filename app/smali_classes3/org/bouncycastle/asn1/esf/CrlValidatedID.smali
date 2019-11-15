.class public Lorg/bouncycastle/asn1/esf/CrlValidatedID;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private crlHash:Lorg/bouncycastle/asn1/esf/OtherHash;

.field private crlIdentifier:Lorg/bouncycastle/asn1/esf/CrlIdentifier;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-lt v0, v2, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    :cond_0
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

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/esf/OtherHash;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/OtherHash;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/CrlValidatedID;->crlHash:Lorg/bouncycastle/asn1/esf/OtherHash;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-le v0, v2, :cond_2

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/esf/CrlIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/CrlIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/CrlValidatedID;->crlIdentifier:Lorg/bouncycastle/asn1/esf/CrlIdentifier;

    :cond_2
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/esf/OtherHash;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/esf/CrlValidatedID;-><init>(Lorg/bouncycastle/asn1/esf/OtherHash;Lorg/bouncycastle/asn1/esf/CrlIdentifier;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/esf/OtherHash;Lorg/bouncycastle/asn1/esf/CrlIdentifier;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/esf/CrlValidatedID;->crlHash:Lorg/bouncycastle/asn1/esf/OtherHash;

    iput-object p2, p0, Lorg/bouncycastle/asn1/esf/CrlValidatedID;->crlIdentifier:Lorg/bouncycastle/asn1/esf/CrlIdentifier;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/CrlValidatedID;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/esf/CrlValidatedID;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/esf/CrlValidatedID;

    :goto_0
    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/esf/CrlValidatedID;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/esf/CrlValidatedID;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCrlHash()Lorg/bouncycastle/asn1/esf/OtherHash;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/CrlValidatedID;->crlHash:Lorg/bouncycastle/asn1/esf/OtherHash;

    return-object v0
.end method

.method public getCrlIdentifier()Lorg/bouncycastle/asn1/esf/CrlIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/CrlValidatedID;->crlIdentifier:Lorg/bouncycastle/asn1/esf/CrlIdentifier;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/CrlValidatedID;->crlHash:Lorg/bouncycastle/asn1/esf/OtherHash;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/esf/OtherHash;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/CrlValidatedID;->crlIdentifier:Lorg/bouncycastle/asn1/esf/CrlIdentifier;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/CrlValidatedID;->crlIdentifier:Lorg/bouncycastle/asn1/esf/CrlIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/esf/CrlIdentifier;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
