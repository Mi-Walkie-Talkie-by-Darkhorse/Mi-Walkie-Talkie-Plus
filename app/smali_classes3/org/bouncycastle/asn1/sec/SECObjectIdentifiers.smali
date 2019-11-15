.class public interface abstract Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;
.super Ljava/lang/Object;


# static fields
.field public static final dhSinglePass_cofactorDH_sha224kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dhSinglePass_cofactorDH_sha256kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dhSinglePass_cofactorDH_sha384kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dhSinglePass_cofactorDH_sha512kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dhSinglePass_stdDH_sha224kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dhSinglePass_stdDH_sha256kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dhSinglePass_stdDH_sha384kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dhSinglePass_stdDH_sha512kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final ellipticCurve:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final mqvFull_sha224kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final mqvFull_sha256kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final mqvFull_sha384kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final mqvFull_sha512kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final mqvSinglePass_sha224kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final mqvSinglePass_sha256kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final mqvSinglePass_sha384kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final mqvSinglePass_sha512kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final secg_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final secp112r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final secp112r2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final secp128r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final secp128r2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final secp160k1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final secp160r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final secp160r2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final secp192k1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final secp192r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final secp224k1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final secp224r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final secp256k1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final secp256r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final secp384r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final secp521r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sect113r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sect113r2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sect131r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sect131r2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sect163k1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sect163r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sect163r2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sect193r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sect193r2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sect233k1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sect233r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sect239k1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sect283k1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sect283r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sect409k1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sect409r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sect571k1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sect571r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.132.0"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect163k1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect163r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect239k1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect113r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "5"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect113r2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp112r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "7"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp112r2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "8"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp160r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "9"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp160k1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "10"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256k1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "15"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect163r2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "16"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect283k1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "17"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect283r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "22"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect131r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "23"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect131r2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "24"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect193r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "25"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect193r2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "26"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect233k1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "27"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect233r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "28"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp128r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "29"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp128r2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "30"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp160r2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "31"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp192k1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "32"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp224k1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "33"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp224r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "34"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp384r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "35"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp521r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "36"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect409k1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "37"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect409r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "38"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect571k1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "39"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect571r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->prime192v1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp192r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->prime256v1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.132.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secg_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secg_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "11.0"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->dhSinglePass_stdDH_sha224kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secg_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "11.1"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->dhSinglePass_stdDH_sha256kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secg_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "11.2"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->dhSinglePass_stdDH_sha384kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secg_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "11.3"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->dhSinglePass_stdDH_sha512kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secg_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "14.0"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->dhSinglePass_cofactorDH_sha224kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secg_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "14.1"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->dhSinglePass_cofactorDH_sha256kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secg_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "14.2"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->dhSinglePass_cofactorDH_sha384kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secg_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "14.3"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->dhSinglePass_cofactorDH_sha512kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secg_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "15.0"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->mqvSinglePass_sha224kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secg_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "15.1"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->mqvSinglePass_sha256kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secg_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "15.2"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->mqvSinglePass_sha384kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secg_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "15.3"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->mqvSinglePass_sha512kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secg_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "16.0"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->mqvFull_sha224kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secg_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "16.1"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->mqvFull_sha256kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secg_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "16.2"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->mqvFull_sha384kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secg_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "16.3"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->mqvFull_sha512kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method
