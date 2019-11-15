.class Lorg/bouncycastle/asn1/BERFactory;
.super Ljava/lang/Object;


# static fields
.field static final EMPTY_SEQUENCE:Lorg/bouncycastle/asn1/BERSequence;

.field static final EMPTY_SET:Lorg/bouncycastle/asn1/BERSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/BERSequence;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/BERSequence;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/BERFactory;->EMPTY_SEQUENCE:Lorg/bouncycastle/asn1/BERSequence;

    new-instance v0, Lorg/bouncycastle/asn1/BERSet;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/BERSet;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/BERFactory;->EMPTY_SET:Lorg/bouncycastle/asn1/BERSet;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createSequence(Lorg/bouncycastle/asn1/ASN1EncodableVector;)Lorg/bouncycastle/asn1/BERSequence;
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object v0, Lorg/bouncycastle/asn1/BERFactory;->EMPTY_SEQUENCE:Lorg/bouncycastle/asn1/BERSequence;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/BERSequence;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/BERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    goto :goto_0
.end method

.method static createSet(Lorg/bouncycastle/asn1/ASN1EncodableVector;)Lorg/bouncycastle/asn1/BERSet;
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object v0, Lorg/bouncycastle/asn1/BERFactory;->EMPTY_SET:Lorg/bouncycastle/asn1/BERSet;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/BERSet;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/BERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    goto :goto_0
.end method
