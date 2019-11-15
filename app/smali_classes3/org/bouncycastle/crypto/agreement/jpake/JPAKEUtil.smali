.class public Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;
.super Ljava/lang/Object;


# static fields
.field static final ONE:Ljava/math/BigInteger;

.field static final ZERO:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->ZERO:Ljava/math/BigInteger;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateA(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p2, p3, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static calculateGA(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static calculateGx(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p1, p2, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private static calculateHashForZeroKnowledgeProof(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Lorg/bouncycastle/crypto/Digest;)Ljava/math/BigInteger;
    .locals 2

    invoke-interface {p4}, Lorg/bouncycastle/crypto/Digest;->reset()V

    invoke-static {p4, p0}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->updateDigestIncludingSize(Lorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;)V

    invoke-static {p4, p1}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->updateDigestIncludingSize(Lorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;)V

    invoke-static {p4, p2}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->updateDigestIncludingSize(Lorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;)V

    invoke-static {p4, p3}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->updateDigestIncludingSize(Lorg/bouncycastle/crypto/Digest;Ljava/lang/String;)V

    invoke-interface {p4}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-interface {p4, v0, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    return-object v1
.end method

.method public static calculateKeyingMaterial(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p3, p4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p2, v0, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p3, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private static calculateMacKey(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/Digest;)[B
    .locals 2

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->reset()V

    invoke-static {p1, p0}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->updateDigest(Lorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;)V

    const-string v0, "JPAKE_KC"

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->updateDigest(Lorg/bouncycastle/crypto/Digest;Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-object v0
.end method

.method public static calculateMacTag(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/Digest;)Ljava/math/BigInteger;
    .locals 5

    const/4 v4, 0x0

    invoke-static {p6, p7}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->calculateMacKey(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/Digest;)[B

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/crypto/macs/HMac;

    invoke-direct {v1, p7}, Lorg/bouncycastle/crypto/macs/HMac;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result v2

    new-array v2, v2, [B

    new-instance v3, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v3, v0}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v1, v3}, Lorg/bouncycastle/crypto/macs/HMac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    const-string v3, "KC_1_U"

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->updateMac(Lorg/bouncycastle/crypto/Mac;Ljava/lang/String;)V

    invoke-static {v1, p0}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->updateMac(Lorg/bouncycastle/crypto/Mac;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->updateMac(Lorg/bouncycastle/crypto/Mac;Ljava/lang/String;)V

    invoke-static {v1, p2}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->updateMac(Lorg/bouncycastle/crypto/Mac;Ljava/math/BigInteger;)V

    invoke-static {v1, p3}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->updateMac(Lorg/bouncycastle/crypto/Mac;Ljava/math/BigInteger;)V

    invoke-static {v1, p4}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->updateMac(Lorg/bouncycastle/crypto/Mac;Ljava/math/BigInteger;)V

    invoke-static {v1, p5}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->updateMac(Lorg/bouncycastle/crypto/Mac;Ljava/math/BigInteger;)V

    invoke-virtual {v1, v2, v4}, Lorg/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    invoke-static {v0, v4}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v2}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public static calculateS([C)Ljava/math/BigInteger;
    .locals 2

    new-instance v0, Ljava/math/BigInteger;

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toUTF8ByteArray([C)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public static calculateX2s(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static calculateZeroKnowledgeProof(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Lorg/bouncycastle/crypto/Digest;Ljava/security/SecureRandom;)[Ljava/math/BigInteger;
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/math/BigInteger;

    sget-object v1, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->ZERO:Ljava/math/BigInteger;

    sget-object v2, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v1, v2, p7}, Lorg/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2, v1, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {p2, v2, p3, p5, p6}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->calculateHashForZeroKnowledgeProof(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Lorg/bouncycastle/crypto/Digest;)Ljava/math/BigInteger;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v2, v0, v4

    const/4 v2, 0x1

    invoke-virtual {p4, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static generateX1(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 2

    sget-object v0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->ZERO:Ljava/math/BigInteger;

    sget-object v1, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static generateX2(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 2

    sget-object v0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->ONE:Ljava/math/BigInteger;

    sget-object v1, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private static intToByteArray(I)[B
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    ushr-int/lit8 v2, p0, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    ushr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    ushr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    return-object v0
.end method

.method private static updateDigest(Lorg/bouncycastle/crypto/Digest;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toUTF8ByteArray(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    invoke-interface {p0, v0, v2, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-static {v0, v2}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    return-void
.end method

.method private static updateDigest(Lorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {p1}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    array-length v1, v0

    invoke-interface {p0, v0, v2, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-static {v0, v2}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    return-void
.end method

.method private static updateDigestIncludingSize(Lorg/bouncycastle/crypto/Digest;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toUTF8ByteArray(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    invoke-static {v1}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->intToByteArray(I)[B

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {p0, v1, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    array-length v1, v0

    invoke-interface {p0, v0, v3, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-static {v0, v3}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    return-void
.end method

.method private static updateDigestIncludingSize(Lorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    array-length v1, v0

    invoke-static {v1}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->intToByteArray(I)[B

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {p0, v1, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    array-length v1, v0

    invoke-interface {p0, v0, v3, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-static {v0, v3}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    return-void
.end method

.method private static updateMac(Lorg/bouncycastle/crypto/Mac;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toUTF8ByteArray(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    invoke-interface {p0, v0, v2, v1}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    invoke-static {v0, v2}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    return-void
.end method

.method private static updateMac(Lorg/bouncycastle/crypto/Mac;Ljava/math/BigInteger;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {p1}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    array-length v1, v0

    invoke-interface {p0, v0, v2, v1}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    invoke-static {v0, v2}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    return-void
.end method

.method public static validateGa(Ljava/math/BigInteger;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/CryptoException;

    const-string v1, "ga is equal to 1.  It should not be.  The chances of this happening are on the order of 2^160 for a 160-bit q.  Try again."

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/CryptoException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static validateGx4(Ljava/math/BigInteger;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/CryptoException;

    const-string v1, "g^x validation failed.  g^x should not be 1."

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/CryptoException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static validateMacTag(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;
        }
    .end annotation

    move-object v1, p1

    move-object v2, p0

    move-object v3, p4

    move-object v4, p5

    move-object v5, p2

    move-object v6, p3

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v1 .. v8}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->calculateMacTag(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/Digest;)Ljava/math/BigInteger;

    move-result-object v1

    move-object/from16 v0, p8

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/bouncycastle/crypto/CryptoException;

    const-string v2, "Partner MacTag validation failed. Therefore, the password, MAC, or digest algorithm of each participant does not match."

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/CryptoException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method public static validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static validateParticipantIdsDiffer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/CryptoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Both participants are using the same participantId ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). This is not allowed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Each participant must use a unique participantId."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/CryptoException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static validateParticipantIdsEqual(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/CryptoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received payload from incorrect partner ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). Expected to receive payload from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/CryptoException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static validateZeroKnowledgeProof(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/lang/String;Lorg/bouncycastle/crypto/Digest;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v0, 0x0

    aget-object v0, p4, v0

    aget-object v1, p4, v4

    invoke-static {p2, v0, p3, p5, p6}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->calculateHashForZeroKnowledgeProof(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Lorg/bouncycastle/crypto/Digest;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p3, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-ne v3, v4, :cond_0

    invoke-virtual {p3, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {p3, p1, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p2, v1, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p3, v2, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lorg/bouncycastle/crypto/CryptoException;

    const-string v1, "Zero-knowledge proof validation failed"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/CryptoException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method
