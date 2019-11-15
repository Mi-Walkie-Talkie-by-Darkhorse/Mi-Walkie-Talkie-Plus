.class public final Lcom/amap/api/col/sl/ef;
.super Lcom/amap/api/col/sl/ek;
.source "EncryptRsaDataStrategy.java"


# instance fields
.field private a:Lcom/amap/api/col/sl/cd;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/col/sl/ek;-><init>()V

    new-instance v0, Lcom/amap/api/col/sl/cg;

    invoke-direct {v0}, Lcom/amap/api/col/sl/cg;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/sl/ef;->a:Lcom/amap/api/col/sl/cd;

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/col/sl/ek;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/amap/api/col/sl/ek;-><init>(Lcom/amap/api/col/sl/ek;)V

    new-instance v0, Lcom/amap/api/col/sl/cg;

    invoke-direct {v0}, Lcom/amap/api/col/sl/cg;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/sl/ef;->a:Lcom/amap/api/col/sl/cd;

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

    iget-object v0, p0, Lcom/amap/api/col/sl/ef;->a:Lcom/amap/api/col/sl/cd;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/sl/cd;->b([B)[B

    move-result-object v0

    return-object v0
.end method
