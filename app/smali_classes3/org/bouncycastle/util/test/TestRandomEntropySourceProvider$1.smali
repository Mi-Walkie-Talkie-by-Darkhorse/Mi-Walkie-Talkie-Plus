.class Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/prng/EntropySource;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider;->get(I)Lorg/bouncycastle/crypto/prng/EntropySource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider;

.field final synthetic val$bitsRequired:I


# direct methods
.method constructor <init>(Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider;I)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider$1;->this$0:Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider;

    iput p2, p0, Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider$1;->val$bitsRequired:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public entropySize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider$1;->val$bitsRequired:I

    return v0
.end method

.method public getEntropy()[B
    .locals 2

    iget v0, p0, Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider$1;->val$bitsRequired:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider$1;->this$0:Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider;

    invoke-static {v1}, Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider;->access$100(Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider;)Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method public isPredictionResistant()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider$1;->this$0:Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider;

    invoke-static {v0}, Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider;->access$000(Lorg/bouncycastle/util/test/TestRandomEntropySourceProvider;)Z

    move-result v0

    return v0
.end method
