.class public Lorg/bouncycastle/asn1/cmp/PKIConfirmContent;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private val:Lorg/bouncycastle/asn1/ASN1Null;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    sget-object v0, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIConfirmContent;->val:Lorg/bouncycastle/asn1/ASN1Null;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Null;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/PKIConfirmContent;->val:Lorg/bouncycastle/asn1/ASN1Null;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PKIConfirmContent;
    .locals 3

    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/PKIConfirmContent;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Lorg/bouncycastle/asn1/cmp/PKIConfirmContent;

    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Null;

    if-eqz v0, :cond_2

    new-instance v0, Lorg/bouncycastle/asn1/cmp/PKIConfirmContent;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Null;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cmp/PKIConfirmContent;-><init>(Lorg/bouncycastle/asn1/ASN1Null;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid object: "

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
.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIConfirmContent;->val:Lorg/bouncycastle/asn1/ASN1Null;

    return-object v0
.end method
