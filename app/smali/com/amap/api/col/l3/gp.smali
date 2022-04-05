.class public final Lcom/amap/api/col/l3/gp;
.super Lcom/amap/api/col/l3/gm;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/l3/gm;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/col/l3/gm;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/gm;-><init>(Lcom/amap/api/col/l3/gm;)V

    return-void
.end method


# virtual methods
.method protected final a([B)[B
    .locals 0
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

    invoke-static {p1}, Lcom/amap/api/col/l3/gc;->a([B)[B

    move-result-object p1

    return-object p1
.end method
