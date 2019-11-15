.class public final Lorg/bouncycastle/jcajce/provider/symmetric/AES;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/symmetric/AES$AESCMAC;,
        Lorg/bouncycastle/jcajce/provider/symmetric/AES$AESGMAC;,
        Lorg/bouncycastle/jcajce/provider/symmetric/AES$AlgParamGen;,
        Lorg/bouncycastle/jcajce/provider/symmetric/AES$AlgParamGenCCM;,
        Lorg/bouncycastle/jcajce/provider/symmetric/AES$AlgParamGenGCM;,
        Lorg/bouncycastle/jcajce/provider/symmetric/AES$AlgParams;,
        Lorg/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsCCM;,
        Lorg/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;,
        Lorg/bouncycastle/jcajce/provider/symmetric/AES$CBC;,
        Lorg/bouncycastle/jcajce/provider/symmetric/AES$CCM;,
        Lorg/bouncycastle/jcajce/provider/symmetric/AES$CFB;,
        Lorg/bouncycastle/jcajce/provider/symmetric/AES$ECB;,
        Lorg/bouncycastle/jcajce/provider/symmetric/AES$GCM;,
        Lorg/bouncycastle/jcajce/provider/symmetric/AES$KeyGen;,
        Lorg/bouncycastle/jcajce/provider/symmetric/AES$KeyGen128;,
        Lorg/bouncycastle/jcajce/provider/symmetric/AES$KeyGen192;,
        Lorg/bouncycastle/jcajce/provider/symmetric/AES$KeyGen256;,
        Lorg/bouncycastle/jcajce/provider/symmetric/AES$Mappings;,
        Lorg/bouncycastle/jcajce/provider/symmetric/AES$OFB;,
        Lorg/bouncycastle/jcajce/provider/symmetric/AES$PBEWithAESCBC;,
        Lorg/bouncycastle/jcajce/provider/symmetric/AES$PBEWithMD5And128BitAESCBCOpenSSL;,
        Lorg/bouncycastle/jcajce/provider/symmetric/AES$PBEWithMD5And192BitAESCBCOpenSSL;,
        Lorg/bouncycastle/jcajce/provider/symmetric/AES$PBEWithMD5And256BitAESCBCOpenSSL;,
        Lorg/bouncycastle/jcajce/provider/symmetric/AES$PBEWithSHA1AESCBC128;,
        Lorg/bouncycastle/jcajce/provider/symmetric/AES$PBEWithSHA1AESCBC192;,
        Lorg/bouncycastle/jcajce/provider/symmetric/AES$PBEWithSHA1AESCBC256;,
        Lorg/bouncycastle/jcajce/provider/symmetric/AES$PBEWithSHA256AESCBC128;,
        Lorg/bouncycastle/jcajce/provider/symmetric/AES$PBEWithSHA256AESCBC192;,
        Lorg/bouncycastle/jcajce/provider/symmetric/AES$PBEWithSHA256AESCBC256;,
        Lorg/bouncycastle/jcajce/provider/symmetric/AES$PBEWithSHA256And128BitAESBC;,
        Lorg/bouncycastle/jcajce/provider/symmetric/AES$PBEWithSHA256And192BitAESBC;,
        Lorg/bouncycastle/jcajce/provider/symmetric/AES$PBEWithSHA256And256BitAESBC;,
        Lorg/bouncycastle/jcajce/provider/symmetric/AES$PBEWithSHAAnd128BitAESBC;,
        Lorg/bouncycastle/jcajce/provider/symmetric/AES$PBEWithSHAAnd192BitAESBC;,
        Lorg/bouncycastle/jcajce/provider/symmetric/AES$PBEWithSHAAnd256BitAESBC;,
        Lorg/bouncycastle/jcajce/provider/symmetric/AES$Poly1305;,
        Lorg/bouncycastle/jcajce/provider/symmetric/AES$Poly1305KeyGen;,
        Lorg/bouncycastle/jcajce/provider/symmetric/AES$RFC3211Wrap;,
        Lorg/bouncycastle/jcajce/provider/symmetric/AES$RFC5649Wrap;,
        Lorg/bouncycastle/jcajce/provider/symmetric/AES$Wrap;
    }
.end annotation


# static fields
.field private static final gcmSpecClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "javax.crypto.spec.GCMParameterSpec"

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/symmetric/AES;->lookup(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/symmetric/AES;->gcmSpecClass:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static lookup(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    const-class v0, Lorg/bouncycastle/jcajce/provider/symmetric/AES;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
