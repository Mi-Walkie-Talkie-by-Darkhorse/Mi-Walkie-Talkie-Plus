.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$MQVwithSHA512CKDF;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MQVwithSHA512CKDF"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/agreement/ECMQVBasicAgreement;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/agreement/ECMQVBasicAgreement;-><init>()V

    new-instance v1, Lorg/bouncycastle/crypto/agreement/kdf/ConcatenationKDFGenerator;

    new-instance v2, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/agreement/kdf/ConcatenationKDFGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    const-string v2, "ECMQVwithSHA512CKDF"

    invoke-direct {p0, v2, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/BasicAgreement;Lorg/bouncycastle/crypto/DerivationFunction;)V

    return-void
.end method
