.class public Lorg/bouncycastle/asn1/crmf/PKIArchiveOptions;
.super Lorg/bouncycastle/asn1/ASN1Object;

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final archiveRemGenPrivKey:I = 0x2

.field public static final encryptedPrivKey:I = 0x0

.field public static final keyGenParameters:I = 0x1


# instance fields
.field private value:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1OctetString;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/crmf/PKIArchiveOptions;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown tag number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/crmf/EncryptedKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/EncryptedKey;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/crmf/PKIArchiveOptions;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    :goto_0
    return-void

    :pswitch_1
    invoke-static {p1, v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/crmf/PKIArchiveOptions;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    goto :goto_0

    :pswitch_2
    invoke-static {p1, v1}, Lorg/bouncycastle/asn1/ASN1Boolean;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/crmf/PKIArchiveOptions;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/crmf/EncryptedKey;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/crmf/PKIArchiveOptions;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Boolean;->getInstance(Z)Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/crmf/PKIArchiveOptions;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/PKIArchiveOptions;
    .locals 3

    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/bouncycastle/asn1/crmf/PKIArchiveOptions;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Lorg/bouncycastle/asn1/crmf/PKIArchiveOptions;

    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_2

    new-instance v0, Lorg/bouncycastle/asn1/crmf/PKIArchiveOptions;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/crmf/PKIArchiveOptions;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/PKIArchiveOptions;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lorg/bouncycastle/asn1/crmf/EncryptedKey;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/PKIArchiveOptions;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getValue()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/PKIArchiveOptions;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/PKIArchiveOptions;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lorg/bouncycastle/asn1/crmf/EncryptedKey;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/bouncycastle/asn1/crmf/PKIArchiveOptions;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v2, v3, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/PKIArchiveOptions;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/bouncycastle/asn1/crmf/PKIArchiveOptions;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v3, v2, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/bouncycastle/asn1/crmf/PKIArchiveOptions;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v3, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0
.end method
