.class public Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;
.super Ljava/lang/Object;


# static fields
.field public static final STATE_INITIALIZED:I = 0x0

.field public static final STATE_KEY_CALCULATED:I = 0x32

.field public static final STATE_ROUND_1_CREATED:I = 0xa

.field public static final STATE_ROUND_1_VALIDATED:I = 0x14

.field public static final STATE_ROUND_2_CREATED:I = 0x1e

.field public static final STATE_ROUND_2_VALIDATED:I = 0x28

.field public static final STATE_ROUND_3_CREATED:I = 0x3c

.field public static final STATE_ROUND_3_VALIDATED:I = 0x46


# instance fields
.field private b:Ljava/math/BigInteger;

.field private final digest:Lorg/bouncycastle/crypto/Digest;

.field private final g:Ljava/math/BigInteger;

.field private gx1:Ljava/math/BigInteger;

.field private gx2:Ljava/math/BigInteger;

.field private gx3:Ljava/math/BigInteger;

.field private gx4:Ljava/math/BigInteger;

.field private final p:Ljava/math/BigInteger;

.field private final participantId:Ljava/lang/String;

.field private partnerParticipantId:Ljava/lang/String;

.field private password:[C

.field private final q:Ljava/math/BigInteger;

.field private final random:Ljava/security/SecureRandom;

.field private state:I

.field private x1:Ljava/math/BigInteger;

.field private x2:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/lang/String;[C)V
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEPrimeOrderGroups;->NIST_3072:Lorg/bouncycastle/crypto/agreement/jpake/JPAKEPrimeOrderGroup;

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;-><init>(Ljava/lang/String;[CLorg/bouncycastle/crypto/agreement/jpake/JPAKEPrimeOrderGroup;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[CLorg/bouncycastle/crypto/agreement/jpake/JPAKEPrimeOrderGroup;)V
    .locals 6

    new-instance v4, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v4}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;-><init>(Ljava/lang/String;[CLorg/bouncycastle/crypto/agreement/jpake/JPAKEPrimeOrderGroup;Lorg/bouncycastle/crypto/Digest;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[CLorg/bouncycastle/crypto/agreement/jpake/JPAKEPrimeOrderGroup;Lorg/bouncycastle/crypto/Digest;Ljava/security/SecureRandom;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "participantId"

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p"

    invoke-static {p3, v0}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "digest"

    invoke-static {p4, v0}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "random"

    invoke-static {p5, v0}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Password must not be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    array-length v0, p2

    invoke-static {p2, v0}, Lorg/bouncycastle/util/Arrays;->copyOf([CI)[C

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->password:[C

    invoke-virtual {p3}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEPrimeOrderGroup;->getP()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->p:Ljava/math/BigInteger;

    invoke-virtual {p3}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEPrimeOrderGroup;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->q:Ljava/math/BigInteger;

    invoke-virtual {p3}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEPrimeOrderGroup;->getG()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->g:Ljava/math/BigInteger;

    iput-object p4, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->digest:Lorg/bouncycastle/crypto/Digest;

    iput-object p5, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->random:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    return-void
.end method


# virtual methods
.method public calculateKeyingMaterial()Ljava/math/BigInteger;
    .locals 8

    const/16 v7, 0x32

    const/4 v6, 0x0

    iget v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    if-lt v0, v7, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key already calculated for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    const/16 v1, 0x28

    if-ge v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Round2 payload must be validated prior to creating key for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->password:[C

    invoke-static {v0}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->calculateS([C)Ljava/math/BigInteger;

    move-result-object v4

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->password:[C

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([CC)V

    iput-object v6, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->password:[C

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->p:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx4:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->x2:Ljava/math/BigInteger;

    iget-object v5, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->b:Ljava/math/BigInteger;

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->calculateKeyingMaterial(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v6, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->x1:Ljava/math/BigInteger;

    iput-object v6, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->x2:Ljava/math/BigInteger;

    iput-object v6, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->b:Ljava/math/BigInteger;

    iput v7, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    return-object v0
.end method

.method public createRound1PayloadToSend()Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound1Payload;
    .locals 10

    const/16 v9, 0xa

    iget v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    if-lt v0, v9, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Round1 payload already created for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->q:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->random:Ljava/security/SecureRandom;

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->generateX1(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->x1:Ljava/math/BigInteger;

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->q:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->random:Ljava/security/SecureRandom;

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->generateX2(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->x2:Ljava/math/BigInteger;

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->p:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->g:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->x1:Ljava/math/BigInteger;

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->calculateGx(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx1:Ljava/math/BigInteger;

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->p:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->g:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->x2:Ljava/math/BigInteger;

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->calculateGx(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx2:Ljava/math/BigInteger;

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->p:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->g:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx1:Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->x1:Ljava/math/BigInteger;

    iget-object v5, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    iget-object v6, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v7, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->random:Ljava/security/SecureRandom;

    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->calculateZeroKnowledgeProof(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Lorg/bouncycastle/crypto/Digest;Ljava/security/SecureRandom;)[Ljava/math/BigInteger;

    move-result-object v8

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->p:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->g:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx2:Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->x2:Ljava/math/BigInteger;

    iget-object v5, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    iget-object v6, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v7, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->random:Ljava/security/SecureRandom;

    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->calculateZeroKnowledgeProof(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Lorg/bouncycastle/crypto/Digest;Ljava/security/SecureRandom;)[Ljava/math/BigInteger;

    move-result-object v5

    iput v9, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    new-instance v0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound1Payload;

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx1:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx2:Ljava/math/BigInteger;

    move-object v4, v8

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound1Payload;-><init>(Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;[Ljava/math/BigInteger;[Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public createRound2PayloadToSend()Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound2Payload;
    .locals 9

    const/16 v8, 0x1e

    iget v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    if-lt v0, v8, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Round2 payload already created for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Round1 payload must be validated prior to creating Round2 payload for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->p:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx1:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx3:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx4:Ljava/math/BigInteger;

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->calculateGA(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->password:[C

    invoke-static {v0}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->calculateS([C)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->q:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->x2:Ljava/math/BigInteger;

    invoke-static {v1, v3, v0}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->calculateX2s(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->p:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->q:Ljava/math/BigInteger;

    invoke-static {v0, v1, v2, v4}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->calculateA(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->p:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->q:Ljava/math/BigInteger;

    iget-object v5, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    iget-object v6, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v7, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->random:Ljava/security/SecureRandom;

    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->calculateZeroKnowledgeProof(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Lorg/bouncycastle/crypto/Digest;Ljava/security/SecureRandom;)[Ljava/math/BigInteger;

    move-result-object v0

    iput v8, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    new-instance v1, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound2Payload;

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound2Payload;-><init>(Ljava/lang/String;Ljava/math/BigInteger;[Ljava/math/BigInteger;)V

    return-object v1
.end method

.method public createRound3PayloadToSend(Ljava/math/BigInteger;)Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound3Payload;
    .locals 9

    const/16 v8, 0x3c

    iget v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    if-lt v0, v8, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Round3 payload already created for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    const/16 v1, 0x32

    if-ge v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Keying material must be calculated prior to creating Round3 payload for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->partnerParticipantId:Ljava/lang/String;

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx1:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx2:Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx3:Ljava/math/BigInteger;

    iget-object v5, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx4:Ljava/math/BigInteger;

    iget-object v7, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->digest:Lorg/bouncycastle/crypto/Digest;

    move-object v6, p1

    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->calculateMacTag(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/Digest;)Ljava/math/BigInteger;

    move-result-object v0

    iput v8, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    new-instance v1, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound3Payload;

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound3Payload;-><init>(Ljava/lang/String;Ljava/math/BigInteger;)V

    return-object v1
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    return v0
.end method

.method public validateRound1PayloadReceived(Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound1Payload;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;
        }
    .end annotation

    const/16 v8, 0x14

    iget v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    if-lt v0, v8, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Validation already attempted for round1 payload for"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound1Payload;->getParticipantId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->partnerParticipantId:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound1Payload;->getGx1()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx3:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound1Payload;->getGx2()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx4:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound1Payload;->getKnowledgeProofForX1()[Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound1Payload;->getKnowledgeProofForX2()[Ljava/math/BigInteger;

    move-result-object v7

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound1Payload;->getParticipantId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->validateParticipantIdsDiffer(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx4:Ljava/math/BigInteger;

    invoke-static {v0}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->validateGx4(Ljava/math/BigInteger;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->p:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->g:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx3:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound1Payload;->getParticipantId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->validateZeroKnowledgeProof(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/lang/String;Lorg/bouncycastle/crypto/Digest;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->p:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->g:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx4:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound1Payload;->getParticipantId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->digest:Lorg/bouncycastle/crypto/Digest;

    move-object v4, v7

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->validateZeroKnowledgeProof(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/lang/String;Lorg/bouncycastle/crypto/Digest;)V

    iput v8, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    return-void
.end method

.method public validateRound2PayloadReceived(Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound2Payload;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;
        }
    .end annotation

    const/16 v7, 0x28

    iget v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    if-lt v0, v7, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Validation already attempted for round2 payload for"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Round1 payload must be validated prior to validating Round2 payload for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->p:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx3:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx1:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx2:Ljava/math/BigInteger;

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->calculateGA(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound2Payload;->getA()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->b:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound2Payload;->getKnowledgeProofForX2s()[Ljava/math/BigInteger;

    move-result-object v4

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound2Payload;->getParticipantId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->validateParticipantIdsDiffer(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->partnerParticipantId:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound2Payload;->getParticipantId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->validateParticipantIdsEqual(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->validateGa(Ljava/math/BigInteger;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->p:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->q:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->b:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound2Payload;->getParticipantId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->validateZeroKnowledgeProof(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/lang/String;Lorg/bouncycastle/crypto/Digest;)V

    iput v7, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    return-void
.end method

.method public validateRound3PayloadReceived(Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound3Payload;Ljava/math/BigInteger;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;
        }
    .end annotation

    const/16 v10, 0x46

    const/4 v9, 0x0

    iget v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    if-lt v0, v10, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Validation already attempted for round3 payload for"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    const/16 v1, 0x32

    if-ge v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Keying material must be calculated validated prior to validating Round3 payload for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound3Payload;->getParticipantId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->validateParticipantIdsDiffer(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->partnerParticipantId:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound3Payload;->getParticipantId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->validateParticipantIdsEqual(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->partnerParticipantId:Ljava/lang/String;

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx1:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx2:Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx3:Ljava/math/BigInteger;

    iget-object v5, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx4:Ljava/math/BigInteger;

    iget-object v7, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound3Payload;->getMacTag()Ljava/math/BigInteger;

    move-result-object v8

    move-object v6, p2

    invoke-static/range {v0 .. v8}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->validateMacTag(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;)V

    iput-object v9, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx1:Ljava/math/BigInteger;

    iput-object v9, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx2:Ljava/math/BigInteger;

    iput-object v9, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx3:Ljava/math/BigInteger;

    iput-object v9, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx4:Ljava/math/BigInteger;

    iput v10, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    return-void
.end method
