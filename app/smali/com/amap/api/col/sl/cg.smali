.class public final Lcom/amap/api/col/sl/cg;
.super Lcom/amap/api/col/sl/cd;
.source "RSAAESEncryptProcessor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/sl/cd;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/col/sl/cd;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/sl/cd;-><init>(Lcom/amap/api/col/sl/cd;)V

    return-void
.end method


# virtual methods
.method protected final a([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    invoke-static {p1}, Lcom/amap/api/col/sl/bv;->a([B)[B

    move-result-object v0

    return-object v0
.end method
