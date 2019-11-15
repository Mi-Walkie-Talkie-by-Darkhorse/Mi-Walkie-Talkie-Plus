.class Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESCipher$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/KeyEncoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESCipher;->engineDoFinal([BII)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESCipher;

.field final synthetic val$usePointCompression:Z


# direct methods
.method constructor <init>(Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESCipher;Z)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESCipher$1;->this$0:Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESCipher;

    iput-boolean p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESCipher$1;->val$usePointCompression:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEncoded(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B
    .locals 2

    check-cast p1, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    iget-boolean v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESCipher$1;->val$usePointCompression:Z

    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v0

    return-object v0
.end method
