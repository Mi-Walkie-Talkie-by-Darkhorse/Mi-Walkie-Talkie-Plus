.class public Lorg/bouncycastle/jcajce/provider/digest/Tiger$PBEWithMacKeyFactory;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/digest/Tiger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithMacKeyFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 8

    const/4 v3, 0x0

    const-string v1, "PBEwithHmacTiger"

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/16 v6, 0xc0

    move-object v0, p0

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;-><init>(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ZIIII)V

    return-void
.end method
