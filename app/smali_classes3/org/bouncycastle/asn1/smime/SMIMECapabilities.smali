.class public Lorg/bouncycastle/asn1/smime/SMIMECapabilities;
.super Lorg/bouncycastle/asn1/ASN1Object;


# static fields
.field public static final aes128_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final aes192_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final aes256_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final canNotDecryptAny:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final cast5_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dES_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dES_EDE3_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final idea_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final preferSignedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final rC2_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sMIMECapabilitesVersions:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# instance fields
.field private capabilities:Lorg/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->preferSignedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/smime/SMIMECapabilities;->preferSignedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->canNotDecryptAny:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/smime/SMIMECapabilities;->canNotDecryptAny:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sMIMECapabilitiesVersions:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/smime/SMIMECapabilities;->sMIMECapabilitesVersions:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/smime/SMIMECapabilities;->aes256_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/smime/SMIMECapabilities;->aes192_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/smime/SMIMECapabilities;->aes128_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.4.1.188.7.1.1.2"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/smime/SMIMECapabilities;->idea_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.2.840.113533.7.66.10"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/smime/SMIMECapabilities;->cast5_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.14.3.2.7"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/smime/SMIMECapabilities;->dES_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/smime/SMIMECapabilities;->dES_EDE3_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->RC2_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/smime/SMIMECapabilities;->rC2_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/smime/SMIMECapabilities;->capabilities:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/smime/SMIMECapabilities;
    .locals 3

    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/bouncycastle/asn1/smime/SMIMECapabilities;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Lorg/bouncycastle/asn1/smime/SMIMECapabilities;

    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    new-instance v0, Lorg/bouncycastle/asn1/smime/SMIMECapabilities;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/smime/SMIMECapabilities;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lorg/bouncycastle/asn1/cms/Attribute;

    if-eqz v0, :cond_3

    new-instance v1, Lorg/bouncycastle/asn1/smime/SMIMECapabilities;

    check-cast p0, Lorg/bouncycastle/asn1/cms/Attribute;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cms/Attribute;->getAttrValues()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/smime/SMIMECapabilities;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

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


# virtual methods
.method public getCapabilities(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/util/Vector;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/asn1/smime/SMIMECapabilities;->capabilities:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    if-nez p1, :cond_0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/smime/SMIMECapability;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/smime/SMIMECapability;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/smime/SMIMECapability;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/smime/SMIMECapability;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/smime/SMIMECapability;->getCapabilityID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/smime/SMIMECapabilities;->capabilities:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
