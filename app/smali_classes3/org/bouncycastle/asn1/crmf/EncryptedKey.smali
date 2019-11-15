.class public Lorg/bouncycastle/asn1/crmf/EncryptedKey;
.super Lorg/bouncycastle/asn1/ASN1Object;

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private encryptedValue:Lorg/bouncycastle/asn1/crmf/EncryptedValue;

.field private envelopedData:Lorg/bouncycastle/asn1/cms/EnvelopedData;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/cms/EnvelopedData;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/crmf/EncryptedKey;->envelopedData:Lorg/bouncycastle/asn1/cms/EnvelopedData;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/crmf/EncryptedValue;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/crmf/EncryptedKey;->encryptedValue:Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/EncryptedKey;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/crmf/EncryptedKey;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/crmf/EncryptedKey;

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/crmf/EncryptedKey;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lorg/bouncycastle/asn1/cms/EnvelopedData;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cms/EnvelopedData;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/crmf/EncryptedKey;-><init>(Lorg/bouncycastle/asn1/cms/EnvelopedData;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    if-eqz v0, :cond_2

    new-instance v0, Lorg/bouncycastle/asn1/crmf/EncryptedKey;

    check-cast p0, Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/crmf/EncryptedKey;-><init>(Lorg/bouncycastle/asn1/crmf/EncryptedValue;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/bouncycastle/asn1/crmf/EncryptedKey;

    invoke-static {p0}, Lorg/bouncycastle/asn1/crmf/EncryptedValue;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/crmf/EncryptedKey;-><init>(Lorg/bouncycastle/asn1/crmf/EncryptedValue;)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public getValue()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/EncryptedKey;->encryptedValue:Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/EncryptedKey;->encryptedValue:Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/EncryptedKey;->envelopedData:Lorg/bouncycastle/asn1/cms/EnvelopedData;

    goto :goto_0
.end method

.method public isEncryptedValue()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/EncryptedKey;->encryptedValue:Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/EncryptedKey;->encryptedValue:Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/EncryptedKey;->encryptedValue:Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/EncryptedValue;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/bouncycastle/asn1/crmf/EncryptedKey;->envelopedData:Lorg/bouncycastle/asn1/cms/EnvelopedData;

    invoke-direct {v0, v2, v2, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0
.end method
