.class public Lorg/bouncycastle/crypto/Commitment;
.super Ljava/lang/Object;


# instance fields
.field private final commitment:[B

.field private final secret:[B


# direct methods
.method public constructor <init>([B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/Commitment;->secret:[B

    iput-object p2, p0, Lorg/bouncycastle/crypto/Commitment;->commitment:[B

    return-void
.end method


# virtual methods
.method public getCommitment()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/Commitment;->commitment:[B

    return-object v0
.end method

.method public getSecret()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/Commitment;->secret:[B

    return-object v0
.end method
