.class public Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;
.super Lorg/bouncycastle/asn1/ASN1Object;

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field final ALPHABETIC_MAXSIZE:I

.field final NUMERIC_MAXSIZE:I

.field final NUMERIC_MINSIZE:I

.field numeric:I

.field obj:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(I)V
    .locals 4

    const/16 v2, 0x3e7

    const/4 v1, 0x1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;->ALPHABETIC_MAXSIZE:I

    iput v1, p0, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;->NUMERIC_MINSIZE:I

    iput v2, p0, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;->NUMERIC_MAXSIZE:I

    if-gt p1, v2, :cond_0

    if-ge p1, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wrong size in numeric code : not in (1..999)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    int-to-long v2, p1

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput v1, p0, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;->ALPHABETIC_MAXSIZE:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;->NUMERIC_MINSIZE:I

    const/16 v0, 0x3e7

    iput v0, p0, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;->NUMERIC_MAXSIZE:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wrong size in alphabetic code : max size is 3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/DERPrintableString;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;
    .locals 2

    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;

    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_2

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    new-instance p0, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;-><init>(I)V

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lorg/bouncycastle/asn1/DERPrintableString;

    if-eqz v0, :cond_3

    invoke-static {p0}, Lorg/bouncycastle/asn1/DERPrintableString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERPrintableString;

    move-result-object v0

    new-instance p0, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERPrintableString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in getInstance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAlphabetic()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/bouncycastle/asn1/DERPrintableString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERPrintableString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumeric()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public isAlphabetic()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lorg/bouncycastle/asn1/DERPrintableString;

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method
