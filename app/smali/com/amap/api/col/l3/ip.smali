.class public final Lcom/amap/api/col/l3/ip;
.super Lcom/amap/api/col/l3/iu;


# instance fields
.field private a:Lcom/amap/api/col/l3/gm;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/col/l3/iu;-><init>()V

    new-instance v0, Lcom/amap/api/col/l3/gp;

    invoke-direct {v0}, Lcom/amap/api/col/l3/gp;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/ip;->a:Lcom/amap/api/col/l3/gm;

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/col/l3/iu;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/iu;-><init>(Lcom/amap/api/col/l3/iu;)V

    new-instance p1, Lcom/amap/api/col/l3/gp;

    invoke-direct {p1}, Lcom/amap/api/col/l3/gp;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3/ip;->a:Lcom/amap/api/col/l3/gm;

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

    iget-object v0, p0, Lcom/amap/api/col/l3/ip;->a:Lcom/amap/api/col/l3/gm;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/gm;->b([B)[B

    move-result-object p1

    return-object p1
.end method
