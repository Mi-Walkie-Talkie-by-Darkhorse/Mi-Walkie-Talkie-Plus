.class public Lorg/bouncycastle/asn1/eac/CertificateBody;
.super Lorg/bouncycastle/asn1/ASN1Object;


# static fields
.field private static final CAR:I = 0x2

.field private static final CEfD:I = 0x20

.field private static final CExD:I = 0x40

.field private static final CHA:I = 0x10

.field private static final CHR:I = 0x8

.field private static final CPI:I = 0x1

.field private static final PK:I = 0x4

.field public static final profileType:I = 0x7f

.field public static final requestType:I = 0xd


# instance fields
.field private certificateEffectiveDate:Lorg/bouncycastle/asn1/DERApplicationSpecific;

.field private certificateExpirationDate:Lorg/bouncycastle/asn1/DERApplicationSpecific;

.field private certificateHolderAuthorization:Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;

.field private certificateHolderReference:Lorg/bouncycastle/asn1/DERApplicationSpecific;

.field private certificateProfileIdentifier:Lorg/bouncycastle/asn1/DERApplicationSpecific;

.field private certificateType:I

.field private certificationAuthorityReference:Lorg/bouncycastle/asn1/DERApplicationSpecific;

.field private publicKey:Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;

.field seq:Lorg/bouncycastle/asn1/ASN1InputStream;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateType:I

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/eac/CertificateBody;->setIso7816CertificateBody(Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/DERApplicationSpecific;Lorg/bouncycastle/asn1/eac/CertificationAuthorityReference;Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;Lorg/bouncycastle/asn1/eac/CertificateHolderReference;Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;Lorg/bouncycastle/asn1/eac/PackedDate;Lorg/bouncycastle/asn1/eac/PackedDate;)V
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput v0, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateType:I

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/eac/CertificateBody;->setCertificateProfileIdentifier(Lorg/bouncycastle/asn1/DERApplicationSpecific;)V

    new-instance v0, Lorg/bouncycastle/asn1/DERApplicationSpecific;

    const/4 v1, 0x2

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/eac/CertificationAuthorityReference;->getEncoded()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERApplicationSpecific;-><init>(I[B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/eac/CertificateBody;->setCertificationAuthorityReference(Lorg/bouncycastle/asn1/DERApplicationSpecific;)V

    invoke-direct {p0, p3}, Lorg/bouncycastle/asn1/eac/CertificateBody;->setPublicKey(Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;)V

    new-instance v0, Lorg/bouncycastle/asn1/DERApplicationSpecific;

    const/16 v1, 0x20

    invoke-virtual {p4}, Lorg/bouncycastle/asn1/eac/CertificateHolderReference;->getEncoded()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERApplicationSpecific;-><init>(I[B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/eac/CertificateBody;->setCertificateHolderReference(Lorg/bouncycastle/asn1/DERApplicationSpecific;)V

    invoke-direct {p0, p5}, Lorg/bouncycastle/asn1/eac/CertificateBody;->setCertificateHolderAuthorization(Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;)V

    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/DERApplicationSpecific;

    const/4 v1, 0x0

    const/16 v2, 0x25

    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p6}, Lorg/bouncycastle/asn1/eac/PackedDate;->getEncoding()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/asn1/DERApplicationSpecific;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/eac/CertificateBody;->setCertificateEffectiveDate(Lorg/bouncycastle/asn1/DERApplicationSpecific;)V

    new-instance v0, Lorg/bouncycastle/asn1/DERApplicationSpecific;

    const/4 v1, 0x0

    const/16 v2, 0x24

    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p7}, Lorg/bouncycastle/asn1/eac/PackedDate;->getEncoding()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/asn1/DERApplicationSpecific;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/eac/CertificateBody;->setCertificateExpirationDate(Lorg/bouncycastle/asn1/DERApplicationSpecific;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to encode dates: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/eac/CertificateBody;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/eac/CertificateBody;

    :goto_0
    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/eac/CertificateBody;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/eac/CertificateBody;-><init>(Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private profileToASN1Object()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateProfileIdentifier:Lorg/bouncycastle/asn1/DERApplicationSpecific;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificationAuthorityReference:Lorg/bouncycastle/asn1/DERApplicationSpecific;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DERApplicationSpecific;

    const/4 v2, 0x0

    const/16 v3, 0x49

    iget-object v4, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->publicKey:Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/DERApplicationSpecific;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateHolderReference:Lorg/bouncycastle/asn1/DERApplicationSpecific;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateHolderAuthorization:Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateEffectiveDate:Lorg/bouncycastle/asn1/DERApplicationSpecific;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateExpirationDate:Lorg/bouncycastle/asn1/DERApplicationSpecific;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DERApplicationSpecific;

    const/16 v2, 0x4e

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/asn1/DERApplicationSpecific;-><init>(ILorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.method private requestToASN1Object()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateProfileIdentifier:Lorg/bouncycastle/asn1/DERApplicationSpecific;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DERApplicationSpecific;

    const/4 v2, 0x0

    const/16 v3, 0x49

    iget-object v4, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->publicKey:Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/DERApplicationSpecific;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateHolderReference:Lorg/bouncycastle/asn1/DERApplicationSpecific;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DERApplicationSpecific;

    const/16 v2, 0x4e

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/asn1/DERApplicationSpecific;-><init>(ILorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.method private setCertificateEffectiveDate(Lorg/bouncycastle/asn1/DERApplicationSpecific;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DERApplicationSpecific;->getApplicationTag()I

    move-result v0

    const/16 v1, 0x25

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateEffectiveDate:Lorg/bouncycastle/asn1/DERApplicationSpecific;

    iget v0, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateType:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateType:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not an Iso7816Tags.APPLICATION_EFFECTIVE_DATE tag :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lorg/bouncycastle/asn1/eac/EACTags;->encodeTag(Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setCertificateExpirationDate(Lorg/bouncycastle/asn1/DERApplicationSpecific;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DERApplicationSpecific;->getApplicationTag()I

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateExpirationDate:Lorg/bouncycastle/asn1/DERApplicationSpecific;

    iget v0, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateType:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateType:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not an Iso7816Tags.APPLICATION_EXPIRATION_DATE tag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setCertificateHolderAuthorization(Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;)V
    .locals 1

    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateHolderAuthorization:Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;

    iget v0, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateType:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateType:I

    return-void
.end method

.method private setCertificateHolderReference(Lorg/bouncycastle/asn1/DERApplicationSpecific;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DERApplicationSpecific;->getApplicationTag()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateHolderReference:Lorg/bouncycastle/asn1/DERApplicationSpecific;

    iget v0, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateType:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateType:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not an Iso7816Tags.CARDHOLDER_NAME tag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setCertificateProfileIdentifier(Lorg/bouncycastle/asn1/DERApplicationSpecific;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DERApplicationSpecific;->getApplicationTag()I

    move-result v0

    const/16 v1, 0x29

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateProfileIdentifier:Lorg/bouncycastle/asn1/DERApplicationSpecific;

    iget v0, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateType:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateType:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not an Iso7816Tags.INTERCHANGE_PROFILE tag :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lorg/bouncycastle/asn1/eac/EACTags;->encodeTag(Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setCertificationAuthorityReference(Lorg/bouncycastle/asn1/DERApplicationSpecific;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DERApplicationSpecific;->getApplicationTag()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificationAuthorityReference:Lorg/bouncycastle/asn1/DERApplicationSpecific;

    iget v0, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateType:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateType:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not an Iso7816Tags.ISSUER_IDENTIFICATION_NUMBER tag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setIso7816CertificateBody(Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->getApplicationTag()I

    move-result v0

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->getContents()[B

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    :goto_0
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v2, v0, Lorg/bouncycastle/asn1/DERApplicationSpecific;

    if-eqz v2, :cond_1

    check-cast v0, Lorg/bouncycastle/asn1/DERApplicationSpecific;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERApplicationSpecific;->getApplicationTag()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    const/4 v1, 0x0

    iput v1, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateType:I

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a valid iso7816 DERApplicationSpecific tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERApplicationSpecific;->getApplicationTag()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad tag : not an iso7816 CERTIFICATE_CONTENT_TEMPLATE"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a valid iso7816 content : not a DERApplicationSpecific Object :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lorg/bouncycastle/asn1/eac/EACTags;->encodeTag(Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/eac/CertificateBody;->setCertificateProfileIdentifier(Lorg/bouncycastle/asn1/DERApplicationSpecific;)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/eac/CertificateBody;->setCertificationAuthorityReference(Lorg/bouncycastle/asn1/DERApplicationSpecific;)V

    goto :goto_0

    :sswitch_2
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/DERApplicationSpecific;->getObject(I)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/eac/CertificateBody;->setPublicKey(Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;)V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/eac/CertificateBody;->setCertificateHolderReference(Lorg/bouncycastle/asn1/DERApplicationSpecific;)V

    goto :goto_0

    :sswitch_4
    new-instance v2, Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;-><init>(Lorg/bouncycastle/asn1/DERApplicationSpecific;)V

    invoke-direct {p0, v2}, Lorg/bouncycastle/asn1/eac/CertificateBody;->setCertificateHolderAuthorization(Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;)V

    goto/16 :goto_0

    :sswitch_5
    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/eac/CertificateBody;->setCertificateEffectiveDate(Lorg/bouncycastle/asn1/DERApplicationSpecific;)V

    goto/16 :goto_0

    :sswitch_6
    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/eac/CertificateBody;->setCertificateExpirationDate(Lorg/bouncycastle/asn1/DERApplicationSpecific;)V

    goto/16 :goto_0

    :cond_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x20 -> :sswitch_3
        0x24 -> :sswitch_6
        0x25 -> :sswitch_5
        0x29 -> :sswitch_0
        0x49 -> :sswitch_2
        0x4c -> :sswitch_4
    .end sparse-switch
.end method

.method private setPublicKey(Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;)V
    .locals 1

    invoke-static {p1}, Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->publicKey:Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;

    iget v0, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateType:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateType:I

    return-void
.end method


# virtual methods
.method public getCertificateEffectiveDate()Lorg/bouncycastle/asn1/eac/PackedDate;
    .locals 2

    iget v0, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateType:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/eac/PackedDate;

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateEffectiveDate:Lorg/bouncycastle/asn1/DERApplicationSpecific;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/DERApplicationSpecific;->getContents()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/eac/PackedDate;-><init>([B)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCertificateExpirationDate()Lorg/bouncycastle/asn1/eac/PackedDate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateType:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/eac/PackedDate;

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateExpirationDate:Lorg/bouncycastle/asn1/DERApplicationSpecific;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/DERApplicationSpecific;->getContents()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/eac/PackedDate;-><init>([B)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "certificate Expiration Date not set"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCertificateHolderAuthorization()Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateType:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateHolderAuthorization:Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Certificate Holder Authorisation not set"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCertificateHolderReference()Lorg/bouncycastle/asn1/eac/CertificateHolderReference;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/eac/CertificateHolderReference;

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateHolderReference:Lorg/bouncycastle/asn1/DERApplicationSpecific;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/DERApplicationSpecific;->getContents()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/eac/CertificateHolderReference;-><init>([B)V

    return-object v0
.end method

.method public getCertificateProfileIdentifier()Lorg/bouncycastle/asn1/DERApplicationSpecific;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateProfileIdentifier:Lorg/bouncycastle/asn1/DERApplicationSpecific;

    return-object v0
.end method

.method public getCertificateType()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateType:I

    return v0
.end method

.method public getCertificationAuthorityReference()Lorg/bouncycastle/asn1/eac/CertificationAuthorityReference;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateType:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/eac/CertificationAuthorityReference;

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificationAuthorityReference:Lorg/bouncycastle/asn1/DERApplicationSpecific;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/DERApplicationSpecific;->getContents()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/eac/CertificationAuthorityReference;-><init>([B)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Certification authority reference not set"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPublicKey()Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->publicKey:Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget v1, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateType:I

    const/16 v2, 0x7f

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/eac/CertificateBody;->profileToASN1Object()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget v1, p0, Lorg/bouncycastle/asn1/eac/CertificateBody;->certificateType:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/eac/CertificateBody;->requestToASN1Object()Lorg/bouncycastle/asn1/ASN1Primitive;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
