.class public Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;
.super Ljava/lang/Object;


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field private static final TWO:Ljava/math/BigInteger;


# instance fields
.field private init_random:Ljava/security/SecureRandom;

.field private size:I

.field private typeproc:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private procedure_A(II[Ljava/math/BigInteger;I)I
    .locals 18

    :goto_0
    if-ltz p1, :cond_0

    const/high16 v2, 0x10000

    move/from16 v0, p1

    if-le v0, v2, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->init_random:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v2

    const v3, 0x8000

    div-int p1, v2, v3

    goto :goto_0

    :cond_1
    :goto_1
    if-ltz p2, :cond_2

    const/high16 v2, 0x10000

    move/from16 v0, p2

    if-gt v0, v2, :cond_2

    div-int/lit8 v2, p2, 0x2

    if-nez v2, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->init_random:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v2

    const v3, 0x8000

    div-int/2addr v2, v3

    add-int/lit8 p2, v2, 0x1

    goto :goto_1

    :cond_3
    new-instance v9, Ljava/math/BigInteger;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/math/BigInteger;

    const-string v2, "19381"

    invoke-direct {v10, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/math/BigInteger;

    const/4 v2, 0x0

    new-instance v3, Ljava/math/BigInteger;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    aput-object v3, v6, v2

    const/4 v2, 0x1

    new-array v4, v2, [I

    const/4 v2, 0x0

    aput p4, v4, v2

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_2
    aget v5, v4, v2

    const/16 v7, 0x11

    if-lt v5, v7, :cond_4

    array-length v3, v4

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [I

    const/4 v5, 0x0

    const/4 v7, 0x0

    array-length v8, v4

    invoke-static {v4, v5, v3, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v3

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v7, 0x0

    array-length v8, v3

    invoke-static {v3, v5, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v2, 0x1

    aget v5, v4, v2

    div-int/lit8 v5, v5, 0x2

    aput v5, v4, v3

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v3, 0x1

    new-array v11, v2, [Ljava/math/BigInteger;

    new-instance v2, Ljava/math/BigInteger;

    const-string v5, "8003"

    const/16 v7, 0x10

    invoke-direct {v2, v5, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v2, v11, v3

    add-int/lit8 v5, v3, -0x1

    const/4 v2, 0x0

    move v7, v2

    move v8, v5

    move-object v2, v6

    :goto_3
    if-ge v7, v3, :cond_b

    aget v5, v4, v8

    div-int/lit8 v12, v5, 0x10

    :cond_5
    array-length v5, v2

    new-array v5, v5, [Ljava/math/BigInteger;

    const/4 v6, 0x0

    const/4 v13, 0x0

    array-length v14, v2

    invoke-static {v2, v6, v5, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v12, 0x1

    new-array v2, v2, [Ljava/math/BigInteger;

    const/4 v6, 0x0

    const/4 v13, 0x0

    array-length v14, v5

    invoke-static {v5, v6, v2, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v12, :cond_6

    add-int/lit8 v6, v5, 0x1

    aget-object v13, v2, v5

    invoke-virtual {v13, v10}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    sget-object v14, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    const/16 v15, 0x10

    invoke-virtual {v14, v15}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    aput-object v13, v2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    new-instance v6, Ljava/math/BigInteger;

    const-string v5, "0"

    invoke-direct {v6, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v12, :cond_7

    aget-object v13, v2, v5

    sget-object v14, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    mul-int/lit8 v15, v5, 0x10

    invoke-virtual {v14, v15}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    aget-object v13, v2, v12

    aput-object v13, v2, v5

    sget-object v5, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    aget v13, v4, v8

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v5, v13}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v5

    add-int/lit8 v13, v8, 0x1

    aget-object v13, v11, v13

    invoke-virtual {v5, v13}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    sget-object v13, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    aget v14, v4, v8

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    add-int/lit8 v13, v8, 0x1

    aget-object v13, v11, v13

    sget-object v14, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    mul-int/lit8 v15, v12, 0x10

    invoke-virtual {v14, v15}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    sget-object v6, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    sget-object v13, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v6, v13}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    if-nez v6, :cond_8

    sget-object v6, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    :cond_8
    const/4 v6, 0x0

    :goto_6
    add-int/lit8 v13, v8, 0x1

    aget-object v13, v11, v13

    int-to-long v14, v6

    invoke-static {v14, v15}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    sget-object v14, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    aput-object v13, v11, v8

    aget-object v13, v11, v8

    sget-object v14, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    aget v15, v4, v8

    invoke-virtual {v14, v15}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_5

    sget-object v13, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    add-int/lit8 v14, v8, 0x1

    aget-object v14, v11, v14

    int-to-long v0, v6

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    aget-object v15, v11, v8

    invoke-virtual {v13, v14, v15}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    sget-object v14, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v13

    if-nez v13, :cond_9

    sget-object v13, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    int-to-long v14, v6

    invoke-static {v14, v15}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    aget-object v15, v11, v8

    invoke-virtual {v13, v14, v15}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    sget-object v14, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v13

    if-eqz v13, :cond_9

    add-int/lit8 v6, v8, -0x1

    if-ltz v6, :cond_a

    add-int/lit8 v5, v7, 0x1

    move v7, v5

    move v8, v6

    goto/16 :goto_3

    :cond_9
    add-int/lit8 v6, v6, 0x2

    goto :goto_6

    :cond_a
    const/4 v3, 0x0

    const/4 v4, 0x0

    aget-object v4, v11, v4

    aput-object v4, p3, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    aget-object v4, v11, v4

    aput-object v4, p3, v3

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    :goto_7
    return v2

    :cond_b
    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    goto :goto_7
.end method

.method private procedure_Aa(JJ[Ljava/math/BigInteger;I)J
    .locals 19

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    const-wide v2, 0x100000000L

    cmp-long v2, p1, v2

    if-lez v2, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->init_random:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-long v0, v2

    move-wide/from16 p1, v0

    goto :goto_0

    :cond_1
    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-ltz v2, :cond_2

    const-wide v2, 0x100000000L

    cmp-long v2, p3, v2

    if-gtz v2, :cond_2

    const-wide/16 v2, 0x2

    div-long v2, p3, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->init_random:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    int-to-long v0, v2

    move-wide/from16 p3, v0

    goto :goto_1

    :cond_3
    new-instance v9, Ljava/math/BigInteger;

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/math/BigInteger;

    const-string v2, "97781173"

    invoke-direct {v10, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/math/BigInteger;

    const/4 v2, 0x0

    new-instance v3, Ljava/math/BigInteger;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    aput-object v3, v6, v2

    const/4 v2, 0x1

    new-array v4, v2, [I

    const/4 v2, 0x0

    aput p6, v4, v2

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_2
    aget v5, v4, v2

    const/16 v7, 0x21

    if-lt v5, v7, :cond_4

    array-length v3, v4

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [I

    const/4 v5, 0x0

    const/4 v7, 0x0

    array-length v8, v4

    invoke-static {v4, v5, v3, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v3

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v7, 0x0

    array-length v8, v3

    invoke-static {v3, v5, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v2, 0x1

    aget v5, v4, v2

    div-int/lit8 v5, v5, 0x2

    aput v5, v4, v3

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v3, 0x1

    new-array v11, v2, [Ljava/math/BigInteger;

    new-instance v2, Ljava/math/BigInteger;

    const-string v5, "8000000B"

    const/16 v7, 0x10

    invoke-direct {v2, v5, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v2, v11, v3

    add-int/lit8 v5, v3, -0x1

    const/4 v2, 0x0

    move v7, v2

    move v8, v5

    move-object v2, v6

    :goto_3
    if-ge v7, v3, :cond_b

    aget v5, v4, v8

    div-int/lit8 v12, v5, 0x20

    :cond_5
    array-length v5, v2

    new-array v5, v5, [Ljava/math/BigInteger;

    const/4 v6, 0x0

    const/4 v13, 0x0

    array-length v14, v2

    invoke-static {v2, v6, v5, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v12, 0x1

    new-array v2, v2, [Ljava/math/BigInteger;

    const/4 v6, 0x0

    const/4 v13, 0x0

    array-length v14, v5

    invoke-static {v5, v6, v2, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v12, :cond_6

    add-int/lit8 v6, v5, 0x1

    aget-object v13, v2, v5

    invoke-virtual {v13, v10}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    sget-object v14, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    const/16 v15, 0x20

    invoke-virtual {v14, v15}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    aput-object v13, v2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    new-instance v6, Ljava/math/BigInteger;

    const-string v5, "0"

    invoke-direct {v6, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v12, :cond_7

    aget-object v13, v2, v5

    sget-object v14, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    mul-int/lit8 v15, v5, 0x20

    invoke-virtual {v14, v15}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    aget-object v13, v2, v12

    aput-object v13, v2, v5

    sget-object v5, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    aget v13, v4, v8

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v5, v13}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v5

    add-int/lit8 v13, v8, 0x1

    aget-object v13, v11, v13

    invoke-virtual {v5, v13}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    sget-object v13, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    aget v14, v4, v8

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    add-int/lit8 v13, v8, 0x1

    aget-object v13, v11, v13

    sget-object v14, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    mul-int/lit8 v15, v12, 0x20

    invoke-virtual {v14, v15}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    sget-object v6, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    sget-object v13, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v6, v13}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    if-nez v6, :cond_8

    sget-object v6, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    :cond_8
    const/4 v6, 0x0

    :goto_6
    add-int/lit8 v13, v8, 0x1

    aget-object v13, v11, v13

    int-to-long v14, v6

    invoke-static {v14, v15}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    sget-object v14, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    aput-object v13, v11, v8

    aget-object v13, v11, v8

    sget-object v14, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    aget v15, v4, v8

    invoke-virtual {v14, v15}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_5

    sget-object v13, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    add-int/lit8 v14, v8, 0x1

    aget-object v14, v11, v14

    int-to-long v0, v6

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    aget-object v15, v11, v8

    invoke-virtual {v13, v14, v15}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    sget-object v14, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v13

    if-nez v13, :cond_9

    sget-object v13, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    int-to-long v14, v6

    invoke-static {v14, v15}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    aget-object v15, v11, v8

    invoke-virtual {v13, v14, v15}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    sget-object v14, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v13

    if-eqz v13, :cond_9

    add-int/lit8 v6, v8, -0x1

    if-ltz v6, :cond_a

    add-int/lit8 v5, v7, 0x1

    move v7, v5

    move v8, v6

    goto/16 :goto_3

    :cond_9
    add-int/lit8 v6, v6, 0x2

    goto :goto_6

    :cond_a
    const/4 v3, 0x0

    const/4 v4, 0x0

    aget-object v4, v11, v4

    aput-object v4, p5, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    aget-object v4, v11, v4

    aput-object v4, p5, v3

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    :goto_7
    return-wide v2

    :cond_b
    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    goto :goto_7
.end method

.method private procedure_B(II[Ljava/math/BigInteger;)V
    .locals 18

    :goto_0
    if-ltz p1, :cond_0

    const/high16 v4, 0x10000

    move/from16 v0, p1

    if-le v0, v4, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->init_random:Ljava/security/SecureRandom;

    invoke-virtual {v4}, Ljava/security/SecureRandom;->nextInt()I

    move-result v4

    const v5, 0x8000

    div-int p1, v4, v5

    goto :goto_0

    :cond_1
    :goto_1
    if-ltz p2, :cond_2

    const/high16 v4, 0x10000

    move/from16 v0, p2

    if-gt v0, v4, :cond_2

    div-int/lit8 v4, p2, 0x2

    if-nez v4, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->init_random:Ljava/security/SecureRandom;

    invoke-virtual {v4}, Ljava/security/SecureRandom;->nextInt()I

    move-result v4

    const v5, 0x8000

    div-int/2addr v4, v5

    add-int/lit8 p2, v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/math/BigInteger;

    new-instance v6, Ljava/math/BigInteger;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/math/BigInteger;

    const-string v5, "19381"

    invoke-direct {v7, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x100

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v4, v5}, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->procedure_A(II[Ljava/math/BigInteger;I)I

    move-result v5

    const/4 v8, 0x0

    aget-object v8, v4, v8

    const/16 v9, 0x200

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v5, v1, v4, v9}, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->procedure_A(II[Ljava/math/BigInteger;I)I

    move-result v5

    const/4 v9, 0x0

    aget-object v9, v4, v9

    const/16 v4, 0x41

    new-array v10, v4, [Ljava/math/BigInteger;

    const/4 v4, 0x0

    new-instance v11, Ljava/math/BigInteger;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v11, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    aput-object v11, v10, v4

    const/16 v11, 0x400

    :cond_4
    const/4 v4, 0x0

    :goto_2
    const/16 v5, 0x40

    if-ge v4, v5, :cond_5

    add-int/lit8 v5, v4, 0x1

    aget-object v12, v10, v4

    invoke-virtual {v12, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    sget-object v13, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    const/16 v14, 0x10

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    aput-object v12, v10, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    new-instance v5, Ljava/math/BigInteger;

    const-string v4, "0"

    invoke-direct {v5, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_3
    const/16 v12, 0x40

    if-ge v4, v12, :cond_6

    aget-object v12, v10, v4

    sget-object v13, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    mul-int/lit8 v14, v4, 0x10

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    const/16 v12, 0x40

    aget-object v12, v10, v12

    aput-object v12, v10, v4

    sget-object v4, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    const/16 v12, 0x3ff

    invoke-virtual {v4, v12}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    sget-object v12, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    const/16 v13, 0x3ff

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    sget-object v13, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    const/16 v14, 0x400

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    sget-object v5, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    sget-object v12, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v5, v12}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-nez v5, :cond_7

    sget-object v5, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    :cond_7
    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    int-to-long v14, v5

    invoke-static {v14, v15}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    sget-object v13, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    sget-object v13, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v13, v11}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_4

    sget-object v13, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    int-to-long v0, v5

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v13, v14, v12}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    sget-object v14, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v13

    if-nez v13, :cond_8

    sget-object v13, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    int-to-long v14, v5

    invoke-static {v14, v15}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v13, v14, v12}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    sget-object v14, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v13

    if-eqz v13, :cond_8

    const/4 v4, 0x0

    aput-object v12, p3, v4

    const/4 v4, 0x1

    aput-object v8, p3, v4

    return-void

    :cond_8
    add-int/lit8 v5, v5, 0x2

    goto :goto_4
.end method

.method private procedure_Bb(JJ[Ljava/math/BigInteger;)V
    .locals 15

    move-wide/from16 v2, p1

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    const-wide v0, 0x100000000L

    cmp-long v0, v2, v0

    if-lez v0, :cond_8

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->init_random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-long v2, v0

    goto :goto_0

    :goto_1
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-ltz v0, :cond_1

    const-wide v0, 0x100000000L

    cmp-long v0, v4, v0

    if-gtz v0, :cond_1

    const-wide/16 v0, 0x2

    div-long v0, v4, v0

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->init_random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    int-to-long v4, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    new-array v6, v0, [Ljava/math/BigInteger;

    new-instance v8, Ljava/math/BigInteger;

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/math/BigInteger;

    const-string v0, "97781173"

    invoke-direct {v9, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x100

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->procedure_Aa(JJ[Ljava/math/BigInteger;I)J

    move-result-wide v2

    const/4 v0, 0x0

    aget-object v10, v6, v0

    const/16 v7, 0x200

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->procedure_Aa(JJ[Ljava/math/BigInteger;I)J

    move-result-wide v0

    const/4 v2, 0x0

    aget-object v2, v6, v2

    const/16 v3, 0x21

    new-array v3, v3, [Ljava/math/BigInteger;

    const/4 v4, 0x0

    new-instance v5, Ljava/math/BigInteger;

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/16 v4, 0x400

    :cond_3
    const/4 v0, 0x0

    :goto_2
    const/16 v1, 0x20

    if-ge v0, v1, :cond_4

    add-int/lit8 v1, v0, 0x1

    aget-object v5, v3, v0

    invoke-virtual {v5, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    sget-object v6, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    aput-object v5, v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/math/BigInteger;

    const-string v0, "0"

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_3
    const/16 v5, 0x20

    if-ge v0, v5, :cond_5

    aget-object v5, v3, v0

    sget-object v6, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    mul-int/lit8 v7, v0, 0x20

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    const/16 v5, 0x20

    aget-object v5, v3, v5

    aput-object v5, v3, v0

    sget-object v0, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    const/16 v5, 0x3ff

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v10, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v5, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    const/16 v6, 0x3ff

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v10, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    sget-object v6, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    const/16 v7, 0x400

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v5, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    :cond_6
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v10, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    int-to-long v6, v1

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    sget-object v6, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    sget-object v6, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v6, v4}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    sget-object v6, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v10, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    int-to-long v12, v1

    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    sget-object v7, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    if-nez v6, :cond_7

    sget-object v6, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    int-to-long v12, v1

    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    sget-object v7, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    if-eqz v6, :cond_7

    const/4 v0, 0x0

    aput-object v5, p5, v0

    const/4 v0, 0x1

    aput-object v10, p5, v0

    return-void

    :cond_7
    add-int/lit8 v1, v1, 0x2

    goto :goto_4

    :cond_8
    move-wide/from16 v4, p3

    goto/16 :goto_1
.end method

.method private procedure_C(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 5

    sget-object v0, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    :cond_0
    new-instance v3, Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->init_random:Ljava/security/SecureRandom;

    invoke-direct {v3, v2, v4}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    sget-object v4, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-gez v4, :cond_0

    invoke-virtual {v3, v1, p1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-eqz v4, :cond_0

    return-object v3
.end method


# virtual methods
.method public generateParameters()Lorg/bouncycastle/crypto/params/GOST3410Parameters;
    .locals 10

    const/16 v7, 0x200

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v0, 0x2

    new-array v6, v0, [Ljava/math/BigInteger;

    iget v0, p0, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->typeproc:I

    if-ne v0, v8, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->init_random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->init_random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v2

    iget v0, p0, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->size:I

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ooops! key size 512 or 1024 bit."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    invoke-direct {p0, v1, v2, v6, v7}, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->procedure_A(II[Ljava/math/BigInteger;I)I

    :goto_0
    aget-object v3, v6, v9

    aget-object v4, v6, v8

    invoke-direct {p0, v3, v4}, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->procedure_C(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    new-instance v0, Lorg/bouncycastle/crypto/params/GOST3410Parameters;

    new-instance v6, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;

    invoke-direct {v6, v1, v2}, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;-><init>(II)V

    invoke-direct {v0, v3, v4, v5, v6}, Lorg/bouncycastle/crypto/params/GOST3410Parameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;)V

    :goto_1
    return-object v0

    :sswitch_1
    invoke-direct {p0, v1, v2, v6}, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->procedure_B(II[Ljava/math/BigInteger;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->init_random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->init_random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v4

    iget v0, p0, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->size:I

    sparse-switch v0, :sswitch_data_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Ooops! key size 512 or 1024 bit."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_2
    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->procedure_Aa(JJ[Ljava/math/BigInteger;I)J

    :goto_2
    aget-object v1, v6, v9

    aget-object v6, v6, v8

    invoke-direct {p0, v1, v6}, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->procedure_C(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    new-instance v0, Lorg/bouncycastle/crypto/params/GOST3410Parameters;

    new-instance v8, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;

    invoke-direct {v8, v2, v3, v4, v5}, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;-><init>(JJ)V

    invoke-direct {v0, v1, v6, v7, v8}, Lorg/bouncycastle/crypto/params/GOST3410Parameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;)V

    goto :goto_1

    :sswitch_3
    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->procedure_Bb(JJ[Ljava/math/BigInteger;)V

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x200 -> :sswitch_0
        0x400 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x200 -> :sswitch_2
        0x400 -> :sswitch_3
    .end sparse-switch
.end method

.method public init(IILjava/security/SecureRandom;)V
    .locals 0

    iput p1, p0, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->size:I

    iput p2, p0, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->typeproc:I

    iput-object p3, p0, Lorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->init_random:Ljava/security/SecureRandom;

    return-void
.end method
