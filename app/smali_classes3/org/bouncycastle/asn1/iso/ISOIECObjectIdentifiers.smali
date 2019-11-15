.class public interface abstract Lorg/bouncycastle/asn1/iso/ISOIECObjectIdentifiers;
.super Ljava/lang/Object;


# static fields
.field public static final hash_algorithms:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_ac_generic_hybrid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_kem_rsa:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final is18033_2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final iso_encryption_algorithms:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final ripemd128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final ripemd160:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final whirlpool:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.0.10118"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/iso/ISOIECObjectIdentifiers;->iso_encryption_algorithms:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/iso/ISOIECObjectIdentifiers;->iso_encryption_algorithms:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "3.0"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/iso/ISOIECObjectIdentifiers;->hash_algorithms:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/iso/ISOIECObjectIdentifiers;->hash_algorithms:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "49"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/iso/ISOIECObjectIdentifiers;->ripemd160:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/iso/ISOIECObjectIdentifiers;->hash_algorithms:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "50"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/iso/ISOIECObjectIdentifiers;->ripemd128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/iso/ISOIECObjectIdentifiers;->hash_algorithms:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "55"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/iso/ISOIECObjectIdentifiers;->whirlpool:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.0.18033.2"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/iso/ISOIECObjectIdentifiers;->is18033_2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/iso/ISOIECObjectIdentifiers;->is18033_2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.2"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/iso/ISOIECObjectIdentifiers;->id_ac_generic_hybrid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/iso/ISOIECObjectIdentifiers;->is18033_2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.4"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/iso/ISOIECObjectIdentifiers;->id_kem_rsa:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method
