.class public Lorg/bouncycastle/crypto/commitments/GeneralHashCommitter;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/Committer;


# instance fields
.field private final byteLength:I

.field private final digest:Lorg/bouncycastle/crypto/Digest;

.field private final random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/ExtendedDigest;Ljava/security/SecureRandom;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/commitments/GeneralHashCommitter;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/ExtendedDigest;->getByteLength()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/commitments/GeneralHashCommitter;->byteLength:I

    iput-object p2, p0, Lorg/bouncycastle/crypto/commitments/GeneralHashCommitter;->random:Ljava/security/SecureRandom;

    return-void
.end method

.method private calculateCommitment([B[B)[B
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/commitments/GeneralHashCommitter;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/commitments/GeneralHashCommitter;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v2, p1

    invoke-interface {v1, p1, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/commitments/GeneralHashCommitter;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v2, p2

    invoke-interface {v1, p2, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/commitments/GeneralHashCommitter;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v2, p2

    ushr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    invoke-interface {v1, v2}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/commitments/GeneralHashCommitter;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v2, p2

    int-to-byte v2, v2

    invoke-interface {v1, v2}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/commitments/GeneralHashCommitter;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1, v0, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-object v0
.end method


# virtual methods
.method public commit([B)Lorg/bouncycastle/crypto/Commitment;
    .locals 3

    array-length v0, p1

    iget v1, p0, Lorg/bouncycastle/crypto/commitments/GeneralHashCommitter;->byteLength:I

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "Message to be committed to too large for digest."

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/commitments/GeneralHashCommitter;->byteLength:I

    array-length v1, p1

    sub-int/2addr v0, v1

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/commitments/GeneralHashCommitter;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v1, Lorg/bouncycastle/crypto/Commitment;

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/commitments/GeneralHashCommitter;->calculateCommitment([B[B)[B

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/crypto/Commitment;-><init>([B[B)V

    return-object v1
.end method

.method public isRevealed(Lorg/bouncycastle/crypto/Commitment;[B)Z
    .locals 2

    array-length v0, p2

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/Commitment;->getSecret()[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/commitments/GeneralHashCommitter;->byteLength:I

    if-eq v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "Message and witness secret lengths do not match."

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/Commitment;->getSecret()[B

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/crypto/commitments/GeneralHashCommitter;->calculateCommitment([B[B)[B

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/Commitment;->getCommitment()[B

    move-result-object v1

    invoke-static {v1, v0}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    return v0
.end method
