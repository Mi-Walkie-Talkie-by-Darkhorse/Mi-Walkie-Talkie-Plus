.class public Lorg/bouncycastle/asn1/crmf/POPOPrivKey;
.super Lorg/bouncycastle/asn1/ASN1Object;

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final agreeMAC:I = 0x3

.field public static final dhMAC:I = 0x2

.field public static final encryptedKey:I = 0x4

.field public static final subsequentMessage:I = 0x1

.field public static final thisMessage:I


# instance fields
.field private obj:Lorg/bouncycastle/asn1/ASN1Encodable;

.field private tagNo:I


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/asn1/crmf/POPOPrivKey;->tagNo:I

    iget v0, p0, Lorg/bouncycastle/asn1/crmf/POPOPrivKey;->tagNo:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown tag in POPOPrivKey"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {p1, v1}, Lorg/bouncycastle/asn1/DERBitString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/DERBitString;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/crmf/POPOPrivKey;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    :goto_0
    return-void

    :pswitch_1
    invoke-static {p1, v1}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/crmf/SubsequentMessage;->valueOf(I)Lorg/bouncycastle/asn1/crmf/SubsequentMessage;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/crmf/POPOPrivKey;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    goto :goto_0

    :pswitch_2
    invoke-static {p1, v1}, Lorg/bouncycastle/asn1/DERBitString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/DERBitString;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/crmf/POPOPrivKey;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    goto :goto_0

    :pswitch_3
    invoke-static {p1, v1}, Lorg/bouncycastle/asn1/crmf/PKMACValue;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/crmf/PKMACValue;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/crmf/POPOPrivKey;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    goto :goto_0

    :pswitch_4
    invoke-static {p1, v1}, Lorg/bouncycastle/asn1/cms/EnvelopedData;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cms/EnvelopedData;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/crmf/POPOPrivKey;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/crmf/SubsequentMessage;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/asn1/crmf/POPOPrivKey;->tagNo:I

    iput-object p1, p0, Lorg/bouncycastle/asn1/crmf/POPOPrivKey;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/POPOPrivKey;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/crmf/POPOPrivKey;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/crmf/POPOPrivKey;

    :goto_0
    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/crmf/POPOPrivKey;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/crmf/POPOPrivKey;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/crmf/POPOPrivKey;
    .locals 1

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/crmf/POPOPrivKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/POPOPrivKey;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/crmf/POPOPrivKey;->tagNo:I

    return v0
.end method

.method public getValue()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/POPOPrivKey;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    iget v2, p0, Lorg/bouncycastle/asn1/crmf/POPOPrivKey;->tagNo:I

    iget-object v3, p0, Lorg/bouncycastle/asn1/crmf/POPOPrivKey;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
