.class public Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/MacDerivationFunction;


# static fields
.field private static final INTEGER_MAX:Ljava/math/BigInteger;

.field private static final TWO:Ljava/math/BigInteger;


# instance fields
.field private fixedInputData:[B

.field private generatedBytes:I

.field private final h:I

.field private ios:[B

.field private iv:[B

.field private k:[B

.field private maxSizeExcl:I

.field private final prf:Lorg/bouncycastle/crypto/Mac;

.field private useCounter:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, 0x7fffffff

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->INTEGER_MAX:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/Mac;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->prf:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->h:I

    iget v0, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->h:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->k:[B

    return-void
.end method

.method private generateNext()V
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->generatedBytes:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->prf:Lorg/bouncycastle/crypto/Mac;

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->iv:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->iv:[B

    array-length v2, v2

    invoke-interface {v0, v1, v4, v2}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    :goto_0
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->useCounter:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->generatedBytes:I

    iget v1, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->h:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->ios:[B

    array-length v1, v1

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unsupported size of counter i"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->prf:Lorg/bouncycastle/crypto/Mac;

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->k:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->k:[B

    array-length v2, v2

    invoke-interface {v0, v1, v4, v2}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->ios:[B

    ushr-int/lit8 v2, v0, 0x18

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    :pswitch_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->ios:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->ios:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x3

    ushr-int/lit8 v3, v0, 0x10

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    :pswitch_2
    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->ios:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->ios:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    ushr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    :pswitch_3
    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->ios:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->ios:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->prf:Lorg/bouncycastle/crypto/Mac;

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->ios:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->ios:[B

    array-length v2, v2

    invoke-interface {v0, v1, v4, v2}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->prf:Lorg/bouncycastle/crypto/Mac;

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->fixedInputData:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->fixedInputData:[B

    array-length v2, v2

    invoke-interface {v0, v1, v4, v2}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->prf:Lorg/bouncycastle/crypto/Mac;

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->k:[B

    invoke-interface {v0, v1, v4}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public generateBytes([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->generatedBytes:I

    add-int/2addr v0, p3

    if-ltz v0, :cond_0

    iget v1, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->maxSizeExcl:I

    if-lt v0, v1, :cond_1

    :cond_0
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current KDFCTR may only be used for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->maxSizeExcl:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->generatedBytes:I

    iget v1, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->h:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->generateNext()V

    :cond_2
    iget v0, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->generatedBytes:I

    iget v1, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->h:I

    rem-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->h:I

    iget v2, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->generatedBytes:I

    iget v3, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->h:I

    rem-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->k:[B

    invoke-static {v2, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->generatedBytes:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->generatedBytes:I

    sub-int v0, p3, v1

    add-int/2addr v1, p2

    :goto_0
    if-lez v0, :cond_3

    invoke-direct {p0}, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->generateNext()V

    iget v2, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->h:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->k:[B

    const/4 v4, 0x0

    invoke-static {v3, v4, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->generatedBytes:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->generatedBytes:I

    sub-int/2addr v0, v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_3
    return p3
.end method

.method public getMac()Lorg/bouncycastle/crypto/Mac;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->prf:Lorg/bouncycastle/crypto/Mac;

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/DerivationParameters;)V
    .locals 4

    const v0, 0x7fffffff

    instance-of v1, p1, Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong type of arguments given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->prf:Lorg/bouncycastle/crypto/Mac;

    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;->getKI()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v1, v2}, Lorg/bouncycastle/crypto/Mac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;->getFixedInputData()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->fixedInputData:[B

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;->getR()I

    move-result v1

    div-int/lit8 v2, v1, 0x8

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->ios:[B

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;->useCounter()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->h:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->INTEGER_MAX:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    :goto_0
    iput v0, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->maxSizeExcl:I

    :goto_1
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->iv:[B

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;->useCounter()Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->useCounter:Z

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->generatedBytes:I

    return-void

    :cond_1
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    goto :goto_0

    :cond_2
    iput v0, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->maxSizeExcl:I

    goto :goto_1
.end method
