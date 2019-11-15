.class public Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/prng/drbg/SP80090DRBG;


# static fields
.field private static final MAX_ADDITIONAL_INPUT:I = 0x1000

.field private static final MAX_ENTROPY_LENGTH:I = 0x1000

.field private static final MAX_PERSONALIZATION_STRING:I = 0x1000

.field private static final RESEED_MAX:J = 0x80000000L

.field private static final nistPoints:[Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;

.field private static final p256_Px:Ljava/math/BigInteger;

.field private static final p256_Py:Ljava/math/BigInteger;

.field private static final p256_Qx:Ljava/math/BigInteger;

.field private static final p256_Qy:Ljava/math/BigInteger;

.field private static final p384_Px:Ljava/math/BigInteger;

.field private static final p384_Py:Ljava/math/BigInteger;

.field private static final p384_Qx:Ljava/math/BigInteger;

.field private static final p384_Qy:Ljava/math/BigInteger;

.field private static final p521_Px:Ljava/math/BigInteger;

.field private static final p521_Py:Ljava/math/BigInteger;

.field private static final p521_Qx:Ljava/math/BigInteger;

.field private static final p521_Qy:Ljava/math/BigInteger;


# instance fields
.field private _P:Lorg/bouncycastle/math/ec/ECPoint;

.field private _Q:Lorg/bouncycastle/math/ec/ECPoint;

.field private _curve:Lorg/bouncycastle/math/ec/ECCurve$Fp;

.field private _digest:Lorg/bouncycastle/crypto/Digest;

.field private _entropySource:Lorg/bouncycastle/crypto/prng/EntropySource;

.field private _fixedPointMultiplier:Lorg/bouncycastle/math/ec/ECMultiplier;

.field private _outlen:I

.field private _reseedCounter:J

.field private _s:[B

.field private _sLength:I

.field private _securityStrength:I

.field private _seedlen:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x1

    const/16 v2, 0x10

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "6b17d1f2e12c4247f8bce6e563a440f277037d812deb33a0f4a13945d898c296"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p256_Px:Ljava/math/BigInteger;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "4fe342e2fe1a7f9b8ee7eb4a7c0f9e162bce33576b315ececbb6406837bf51f5"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p256_Py:Ljava/math/BigInteger;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "c97445f45cdef9f0d3e05e1e585fc297235b82b5be8ff3efca67c59852018192"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p256_Qx:Ljava/math/BigInteger;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "b28ef557ba31dfcbdd21ac46e2a91e3c304f44cb87058ada2cb815151e610046"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p256_Qy:Ljava/math/BigInteger;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "aa87ca22be8b05378eb1c71ef320ad746e1d3b628ba79b9859f741e082542a385502f25dbf55296c3a545e3872760ab7"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p384_Px:Ljava/math/BigInteger;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "3617de4a96262c6f5d9e98bf9292dc29f8f41dbd289a147ce9da3113b5f0b8c00a60b1ce1d7e819d7a431d7c90ea0e5f"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p384_Py:Ljava/math/BigInteger;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "8e722de3125bddb05580164bfe20b8b432216a62926c57502ceede31c47816edd1e89769124179d0b695106428815065"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p384_Qx:Ljava/math/BigInteger;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "023b1660dd701d0839fd45eec36f9ee7b32e13b315dc02610aa1b636e346df671f790f84c5e09b05674dbb7e45c803dd"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p384_Qy:Ljava/math/BigInteger;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "c6858e06b70404e9cd9e3ecb662395b4429c648139053fb521f828af606b4d3dbaa14b5e77efe75928fe1dc127a2ffa8de3348b3c1856a429bf97e7e31c2e5bd66"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p521_Px:Ljava/math/BigInteger;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "11839296a789a3bc0045c8a5fb42c7d1bd998f54449579b446817afbd17273e662c97ee72995ef42640c550b9013fad0761353c7086a272c24088be94769fd16650"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p521_Py:Ljava/math/BigInteger;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "1b9fa3e518d683c6b65763694ac8efbaec6fab44f2276171a42726507dd08add4c3b3f4c1ebc5b1222ddba077f722943b24c3edfa0f85fe24d0c8c01591f0be6f63"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p521_Qx:Ljava/math/BigInteger;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "1f3bdba585295d9a1110d1df1f9430ef8442c5018976ff3437ef91b81dc0b8132c8d5c39c32d0e004a3092b7d327c0e7a4d26d2c7b69b58f9066652911e457779de"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p521_Qy:Ljava/math/BigInteger;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;

    sput-object v0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->nistPoints:[Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;

    const-string v0, "P-256"

    invoke-static {v0}, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->getByName(Ljava/lang/String;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/ec/ECCurve$Fp;

    sget-object v1, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->nistPoints:[Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;

    const/4 v2, 0x0

    new-instance v3, Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;

    const/16 v4, 0x80

    sget-object v5, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p256_Px:Ljava/math/BigInteger;

    sget-object v6, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p256_Py:Ljava/math/BigInteger;

    invoke-virtual {v0, v5, v6}, Lorg/bouncycastle/math/ec/ECCurve$Fp;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    sget-object v6, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p256_Qx:Ljava/math/BigInteger;

    sget-object v7, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p256_Qy:Ljava/math/BigInteger;

    invoke-virtual {v0, v6, v7}, Lorg/bouncycastle/math/ec/ECCurve$Fp;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-direct {v3, v4, v5, v0, v8}, Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;-><init>(ILorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPoint;I)V

    aput-object v3, v1, v2

    const-string v0, "P-384"

    invoke-static {v0}, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->getByName(Ljava/lang/String;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/ec/ECCurve$Fp;

    sget-object v1, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->nistPoints:[Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;

    new-instance v2, Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;

    const/16 v3, 0xc0

    sget-object v4, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p384_Px:Ljava/math/BigInteger;

    sget-object v5, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p384_Py:Ljava/math/BigInteger;

    invoke-virtual {v0, v4, v5}, Lorg/bouncycastle/math/ec/ECCurve$Fp;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    sget-object v5, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p384_Qx:Ljava/math/BigInteger;

    sget-object v6, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p384_Qy:Ljava/math/BigInteger;

    invoke-virtual {v0, v5, v6}, Lorg/bouncycastle/math/ec/ECCurve$Fp;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0, v8}, Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;-><init>(ILorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPoint;I)V

    aput-object v2, v1, v8

    const-string v0, "P-521"

    invoke-static {v0}, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->getByName(Ljava/lang/String;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/ec/ECCurve$Fp;

    sget-object v1, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->nistPoints:[Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;

    const/4 v2, 0x2

    new-instance v3, Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;

    const/16 v4, 0x100

    sget-object v5, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p521_Px:Ljava/math/BigInteger;

    sget-object v6, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p521_Py:Ljava/math/BigInteger;

    invoke-virtual {v0, v5, v6}, Lorg/bouncycastle/math/ec/ECCurve$Fp;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    sget-object v6, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p521_Qx:Ljava/math/BigInteger;

    sget-object v7, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p521_Qy:Ljava/math/BigInteger;

    invoke-virtual {v0, v6, v7}, Lorg/bouncycastle/math/ec/ECCurve$Fp;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-direct {v3, v4, v5, v0, v8}, Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;-><init>(ILorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPoint;I)V

    aput-object v3, v1, v2

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/prng/EntropySource;[B[B)V
    .locals 7

    sget-object v1, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->nistPoints:[Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;-><init>([Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/prng/EntropySource;[B[B)V

    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/prng/EntropySource;[B[B)V
    .locals 4

    const/16 v3, 0x1000

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;

    invoke-direct {v0}, Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_fixedPointMultiplier:Lorg/bouncycastle/math/ec/ECMultiplier;

    iput-object p2, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_digest:Lorg/bouncycastle/crypto/Digest;

    iput-object p4, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_entropySource:Lorg/bouncycastle/crypto/prng/EntropySource;

    iput p3, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_securityStrength:I

    const/16 v0, 0x200

    invoke-static {p5, v0}, Lorg/bouncycastle/crypto/prng/drbg/Utils;->isTooLarge([BI)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Personalization string too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p4}, Lorg/bouncycastle/crypto/prng/EntropySource;->entropySize()I

    move-result v0

    if-lt v0, p3, :cond_1

    invoke-interface {p4}, Lorg/bouncycastle/crypto/prng/EntropySource;->entropySize()I

    move-result v0

    if-le v0, v3, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EntropySource must provide between "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bits"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->getEntropy()[B

    move-result-object v0

    invoke-static {v0, p6, p5}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-eq v0, v2, :cond_4

    aget-object v2, p1, v0

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;->getSecurityStrength()I

    move-result v2

    if-gt p3, v2, :cond_5

    invoke-static {p2}, Lorg/bouncycastle/crypto/prng/drbg/Utils;->getMaxSecurityStrength(Lorg/bouncycastle/crypto/Digest;)I

    move-result v2

    aget-object v3, p1, v0

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;->getSecurityStrength()I

    move-result v3

    if-ge v2, v3, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Requested security strength is not supported by digest"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    aget-object v2, p1, v0

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;->getSeedLen()I

    move-result v2

    iput v2, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_seedlen:I

    aget-object v2, p1, v0

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;->getMaxOutlen()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    iput v2, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_outlen:I

    aget-object v2, p1, v0

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;->getP()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_P:Lorg/bouncycastle/math/ec/ECPoint;

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;->getQ()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_Q:Lorg/bouncycastle/math/ec/ECPoint;

    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_P:Lorg/bouncycastle/math/ec/ECPoint;

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "security strength cannot be greater than 256 bits"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_digest:Lorg/bouncycastle/crypto/Digest;

    iget v2, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_seedlen:I

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/crypto/prng/drbg/Utils;->hash_df(Lorg/bouncycastle/crypto/Digest;[BI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_s:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_s:[B

    array-length v0, v0

    iput v0, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_sLength:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_reseedCounter:J

    return-void
.end method

.method private getEntropy()[B
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_entropySource:Lorg/bouncycastle/crypto/prng/EntropySource;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/prng/EntropySource;->getEntropy()[B

    move-result-object v0

    array-length v1, v0

    iget v2, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_securityStrength:I

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    if-ge v1, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Insufficient entropy provided by entropy source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method private getScalarMultipleXCoord(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_fixedPointMultiplier:Lorg/bouncycastle/math/ec/ECMultiplier;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/math/ec/ECMultiplier;->multiply(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private pad8([BI)[B
    .locals 6

    rem-int/lit8 v0, p2, 0x8

    if-nez v0, :cond_1

    :cond_0
    return-object p1

    :cond_1
    rem-int/lit8 v0, p2, 0x8

    rsub-int/lit8 v3, v0, 0x8

    const/4 v1, 0x0

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    shl-int v4, v2, v3

    rsub-int/lit8 v5, v3, 0x8

    shr-int/2addr v1, v5

    or-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, -0x1

    move v1, v2

    goto :goto_0
.end method

.method private xor([B[B)[B
    .locals 4

    if-nez p2, :cond_0

    :goto_0
    return-object p1

    :cond_0
    array-length v0, p1

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-eq v0, v2, :cond_1

    aget-byte v2, p1, v0

    aget-byte v3, p2, v0

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object p1, v1

    goto :goto_0
.end method


# virtual methods
.method public generate([B[BZ)I
    .locals 12

    const-wide/16 v10, 0x1

    const/4 v7, 0x1

    const/4 v3, 0x0

    array-length v0, p1

    mul-int/lit8 v1, v0, 0x8

    array-length v0, p1

    iget v2, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_outlen:I

    div-int v6, v0, v2

    const/16 v0, 0x200

    invoke-static {p2, v0}, Lorg/bouncycastle/crypto/prng/drbg/Utils;->isTooLarge([BI)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Additional input too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v4, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_reseedCounter:J

    int-to-long v8, v6

    add-long/2addr v4, v8

    const-wide v8, 0x80000000L

    cmp-long v0, v4, v8

    if-lez v0, :cond_1

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->reseed([B)V

    const/4 p2, 0x0

    :cond_2
    if-eqz p2, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_digest:Lorg/bouncycastle/crypto/Digest;

    iget v2, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_seedlen:I

    invoke-static {v0, p2, v2}, Lorg/bouncycastle/crypto/prng/drbg/Utils;->hash_df(Lorg/bouncycastle/crypto/Digest;[BI)[B

    move-result-object v2

    new-instance v0, Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_s:[B

    invoke-direct {p0, v4, v2}, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->xor([B[B)[B

    move-result-object v2

    invoke-direct {v0, v7, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    :goto_1
    invoke-static {p1, v3}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    move v2, v3

    move v4, v3

    :goto_2
    if-ge v2, v6, :cond_5

    iget-object v5, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_P:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-direct {p0, v5, v0}, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->getScalarMultipleXCoord(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_Q:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-direct {p0, v0, v5}, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->getScalarMultipleXCoord(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    array-length v7, v0

    iget v8, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_outlen:I

    if-le v7, v8, :cond_4

    array-length v7, v0

    iget v8, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_outlen:I

    sub-int/2addr v7, v8

    iget v8, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_outlen:I

    invoke-static {v0, v7, p1, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_3
    iget v0, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_outlen:I

    add-int/2addr v4, v0

    iget-wide v8, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_reseedCounter:J

    add-long/2addr v8, v10

    iput-wide v8, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_reseedCounter:J

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v0, v5

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_s:[B

    invoke-direct {v0, v7, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    goto :goto_1

    :cond_4
    iget v7, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_outlen:I

    array-length v8, v0

    sub-int/2addr v7, v8

    add-int/2addr v7, v4

    array-length v8, v0

    invoke-static {v0, v3, p1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_5
    array-length v2, p1

    if-ge v4, v2, :cond_6

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_P:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-direct {p0, v2, v0}, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->getScalarMultipleXCoord(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_Q:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-direct {p0, v2, v0}, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->getScalarMultipleXCoord(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    array-length v5, p1

    sub-int/2addr v5, v4

    array-length v6, v2

    iget v7, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_outlen:I

    if-le v6, v7, :cond_7

    array-length v3, v2

    iget v6, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_outlen:I

    sub-int/2addr v3, v6

    invoke-static {v2, v3, p1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_4
    iget-wide v2, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_reseedCounter:J

    add-long/2addr v2, v10

    iput-wide v2, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_reseedCounter:J

    :cond_6
    iget v2, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_sLength:I

    iget-object v3, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_P:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-direct {p0, v3, v0}, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->getScalarMultipleXCoord(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_s:[B

    move v0, v1

    goto/16 :goto_0

    :cond_7
    iget v6, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_outlen:I

    array-length v7, v2

    sub-int/2addr v6, v7

    add-int/2addr v4, v6

    invoke-static {v2, v3, p1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4
.end method

.method public getBlockSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_outlen:I

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public reseed([B)V
    .locals 3

    const/16 v0, 0x200

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/prng/drbg/Utils;->isTooLarge([BI)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Additional input string too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->getEntropy()[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_s:[B

    iget v2, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_seedlen:I

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->pad8([BI)[B

    move-result-object v1

    invoke-static {v1, v0, p1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_digest:Lorg/bouncycastle/crypto/Digest;

    iget v2, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_seedlen:I

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/crypto/prng/drbg/Utils;->hash_df(Lorg/bouncycastle/crypto/Digest;[BI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_s:[B

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_reseedCounter:J

    return-void
.end method
