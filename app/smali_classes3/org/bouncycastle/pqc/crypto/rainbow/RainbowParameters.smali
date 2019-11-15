.class public Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field private final DEFAULT_VI:[I

.field private vi:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->DEFAULT_VI:[I

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->DEFAULT_VI:[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->vi:[I

    return-void

    :array_0
    .array-data 4
        0x6
        0xc
        0x11
        0x16
        0x21
    .end array-data
.end method

.method public constructor <init>([I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->DEFAULT_VI:[I

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->vi:[I

    :try_start_0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->checkParams()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :array_0
    .array-data 4
        0x6
        0xc
        0x11
        0x16
        0x21
    .end array-data
.end method

.method private checkParams()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->vi:[I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "no layers defined."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->vi:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->vi:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->vi:[I

    aget v1, v1, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->vi:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-lt v1, v2, :cond_1

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "v[i] has to be smaller than v[i+1]"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Rainbow needs at least 1 layer, such that v1 < v2."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method


# virtual methods
.method public getDocLength()I
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->vi:[I

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->vi:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->vi:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public getNumOfLayers()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->vi:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getVi()[I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->vi:[I

    return-object v0
.end method
