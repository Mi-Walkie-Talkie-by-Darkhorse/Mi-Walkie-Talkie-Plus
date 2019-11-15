.class public Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricBlockCipher;


# static fields
.field private static ONE:Ljava/math/BigInteger;

.field private static ZERO:Ljava/math/BigInteger;


# instance fields
.field private debug:Z

.field private forEncryption:Z

.field private key:Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;

.field private lookup:[Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->ZERO:Ljava/math/BigInteger;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->lookup:[Ljava/util/Vector;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->debug:Z

    return-void
.end method

.method private static chineseRemainder(Ljava/util/Vector;Ljava/util/Vector;)Ljava/math/BigInteger;
    .locals 5

    const/4 v2, 0x0

    sget-object v4, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->ZERO:Ljava/math/BigInteger;

    sget-object v0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->ONE:Ljava/math/BigInteger;

    move v1, v2

    move-object v3, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move-object v1, v4

    :goto_1
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addCryptedBlocks([B[B)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v6, 0x0

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->forEncryption:Z

    if-eqz v0, :cond_1

    array-length v0, p1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->getOutputBlockSize()I

    move-result v1

    if-gt v0, v1, :cond_0

    array-length v0, p2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->getOutputBlockSize()I

    move-result v1

    if-le v0, v1, :cond_3

    :cond_0
    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "BlockLength too large for simple addition.\n"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    array-length v0, p1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->getInputBlockSize()I

    move-result v1

    if-gt v0, v1, :cond_2

    array-length v0, p2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->getInputBlockSize()I

    move-result v1

    if-le v0, v1, :cond_3

    :cond_2
    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "BlockLength too large for simple addition.\n"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v2, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->key:Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget-boolean v3, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->debug:Z

    if-eqz v3, :cond_4

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "c(m1) as BigInteger:....... "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "c(m2) as BigInteger:....... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "c(m1)*c(m2)%n = c(m1+m2)%n: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->key:Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {v0, v6}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    array-length v3, v0

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    array-length v4, v4

    sub-int/2addr v3, v4

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v1, v6, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public encrypt(Ljava/math/BigInteger;)[B
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->key:Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {v0, v4}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->key:Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;->getG()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->key:Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    array-length v2, v0

    array-length v3, v1

    sub-int/2addr v2, v3

    array-length v3, v1

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->debug:Z

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encrypted value is:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v0}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getInputBlockSize()I
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->forEncryption:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->key:Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;->getLowerSigmaBound()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->key:Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    array-length v0, v0

    goto :goto_0
.end method

.method public getOutputBlockSize()I
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->forEncryption:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->key:Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->key:Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;->getLowerSigmaBound()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 11

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->forEncryption:Z

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_4

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    :goto_0
    check-cast v0, Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->key:Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->forEncryption:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->debug:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Constructing lookup Array"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->key:Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;

    check-cast v0, Lorg/bouncycastle/crypto/params/NaccacheSternPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/NaccacheSternPrivateKeyParameters;->getSmallPrimes()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/util/Vector;

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->lookup:[Ljava/util/Vector;

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    invoke-virtual {v5, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->lookup:[Ljava/util/Vector;

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    aput-object v4, v3, v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->lookup:[Ljava/util/Vector;

    aget-object v3, v3, v2

    sget-object v4, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-boolean v3, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->debug:Z

    if-eqz v3, :cond_1

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Constructing lookup ArrayList for "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    sget-object v4, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->ZERO:Ljava/math/BigInteger;

    const/4 v3, 0x1

    :goto_2
    if-ge v3, v6, :cond_2

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/NaccacheSternPrivateKeyParameters;->getPhi_n()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->lookup:[Ljava/util/Vector;

    aget-object v8, v8, v2

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/NaccacheSternPrivateKeyParameters;->getG()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/NaccacheSternPrivateKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    move-object v0, p2

    goto/16 :goto_0
.end method

.method public processBlock([BII)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->key:Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "NaccacheStern engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->getInputBlockSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-le p3, v0, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input too large for Naccache-Stern cipher.\n"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->forEncryption:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->getInputBlockSize()I

    move-result v0

    if-ge p3, v0, :cond_2

    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "BlockLength does not match modulus for Naccache-Stern cipher.\n"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p2, :cond_3

    array-length v0, p1

    if-eq p3, v0, :cond_4

    :cond_3
    new-array v0, p3, [B

    invoke-static {p1, p2, v0, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    :cond_4
    new-instance v4, Ljava/math/BigInteger;

    const/4 v0, 0x1

    invoke-direct {v4, v0, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->debug:Z

    if-eqz v0, :cond_5

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "input as BigInteger: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->forEncryption:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0, v4}, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->encrypt(Ljava/math/BigInteger;)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_6
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->key:Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;

    check-cast v0, Lorg/bouncycastle/crypto/params/NaccacheSternPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/NaccacheSternPrivateKeyParameters;->getSmallPrimes()Ljava/util/Vector;

    move-result-object v6

    move v2, v3

    :goto_1
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v2, v1, :cond_b

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/NaccacheSternPrivateKeyParameters;->getPhi_n()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    invoke-virtual {v7, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/NaccacheSternPrivateKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v4, v1, v7}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->lookup:[Ljava/util/Vector;

    aget-object v8, v1, v2

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->lookup:[Ljava/util/Vector;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v9

    invoke-virtual {v6, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    if-eq v9, v1, :cond_8

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->debug:Z

    if-eqz v0, :cond_7

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Prime is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", lookup table has size "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_7
    new-instance v1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in lookup Array for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": Size mismatch. Expected ArrayList with length "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " but found ArrayList of length "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->lookup:[Ljava/util/Vector;

    aget-object v2, v3, v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    invoke-virtual {v8, v7}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v8, -0x1

    if-ne v1, v8, :cond_a

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->debug:Z

    if-eqz v0, :cond_9

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Actual prime is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Decrypted value is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LookupList for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " with size "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->lookup:[Ljava/util/Vector;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " is: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->lookup:[Ljava/util/Vector;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_9

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->lookup:[Ljava/util/Vector;

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_9
    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "Lookup failed"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    int-to-long v8, v1

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_1

    :cond_b
    invoke-static {v5, v6}, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->chineseRemainder(Ljava/util/Vector;Ljava/util/Vector;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    goto/16 :goto_0
.end method

.method public processData([B)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->debug:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    :cond_0
    array-length v0, p1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->getInputBlockSize()I

    move-result v2

    if-le v0, v2, :cond_8

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->getInputBlockSize()I

    move-result v4

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->getOutputBlockSize()I

    move-result v0

    iget-boolean v2, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->debug:Z

    if-eqz v2, :cond_1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Input blocksize is:  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " bytes"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Output blocksize is: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " bytes"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Data has length:.... "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v5, p1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " bytes"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    array-length v2, p1

    div-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v0, v2

    new-array v5, v0, [B

    move v0, v1

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_6

    add-int v3, v2, v4

    array-length v6, p1

    if-ge v3, v6, :cond_3

    invoke-virtual {p0, p1, v2, v4}, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->processBlock([BII)[B

    move-result-object v3

    add-int/2addr v2, v4

    :goto_1
    iget-boolean v6, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->debug:Z

    if-eqz v6, :cond_2

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "new datapos is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    if-eqz v3, :cond_4

    array-length v6, v3

    invoke-static {v3, v1, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v3

    add-int/2addr v0, v3

    goto :goto_0

    :cond_3
    array-length v3, p1

    sub-int/2addr v3, v2

    invoke-virtual {p0, p1, v2, v3}, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->processBlock([BII)[B

    move-result-object v3

    array-length v6, p1

    sub-int/2addr v6, v2

    add-int/2addr v2, v6

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->debug:Z

    if-eqz v0, :cond_5

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "cipher returned null"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "cipher returned null"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-array v2, v0, [B

    invoke-static {v5, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->debug:Z

    if-eqz v0, :cond_7

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "returning "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " bytes"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_7
    move-object v0, v2

    :goto_2
    return-object v0

    :cond_8
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->debug:Z

    if-eqz v0, :cond_9

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "data size is less then input block size, processing directly"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_9
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->processBlock([BII)[B

    move-result-object v0

    goto :goto_2
.end method

.method public setDebug(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->debug:Z

    return-void
.end method
