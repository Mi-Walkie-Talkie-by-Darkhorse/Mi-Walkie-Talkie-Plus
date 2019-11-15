.class public Lorg/bouncycastle/jcajce/provider/symmetric/Twofish$Poly1305KeyGen;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/Twofish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Poly1305KeyGen"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, "Poly1305-Twofish"

    const/16 v1, 0x100

    new-instance v2, Lorg/bouncycastle/crypto/generators/Poly1305KeyGenerator;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/generators/Poly1305KeyGenerator;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;-><init>(Ljava/lang/String;ILorg/bouncycastle/crypto/CipherKeyGenerator;)V

    return-void
.end method
