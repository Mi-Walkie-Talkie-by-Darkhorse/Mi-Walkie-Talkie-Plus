.class public Lorg/bouncycastle/jcajce/provider/digest/Skein$SkeinMac_512_128;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/digest/Skein;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SkeinMac_512_128"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/macs/SkeinMac;

    const/16 v1, 0x200

    const/16 v2, 0x80

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/macs/SkeinMac;-><init>(II)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;-><init>(Lorg/bouncycastle/crypto/Mac;)V

    return-void
.end method
