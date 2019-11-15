.class public Lorg/bouncycastle/asn1/mozilla/PublicKeyAndChallenge;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private challenge:Lorg/bouncycastle/asn1/DERIA5String;

.field private pkacSeq:Lorg/bouncycastle/asn1/ASN1Sequence;

.field private spki:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/mozilla/PublicKeyAndChallenge;->pkacSeq:Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/mozilla/PublicKeyAndChallenge;->spki:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/DERIA5String;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERIA5String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/mozilla/PublicKeyAndChallenge;->challenge:Lorg/bouncycastle/asn1/DERIA5String;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/mozilla/PublicKeyAndChallenge;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/mozilla/PublicKeyAndChallenge;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/mozilla/PublicKeyAndChallenge;

    :goto_0
    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/mozilla/PublicKeyAndChallenge;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/mozilla/PublicKeyAndChallenge;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getChallenge()Lorg/bouncycastle/asn1/DERIA5String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/mozilla/PublicKeyAndChallenge;->challenge:Lorg/bouncycastle/asn1/DERIA5String;

    return-object v0
.end method

.method public getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/mozilla/PublicKeyAndChallenge;->spki:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/mozilla/PublicKeyAndChallenge;->pkacSeq:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
