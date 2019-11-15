.class public Lcom/amap/api/mapcore/util/fr;
.super Ljava/lang/Object;
.source "ClientInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/fr$a;
    }
.end annotation


# direct methods
.method public static a()Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    const-string v0, "1"

    invoke-static {}, Lcom/amap/api/mapcore/util/fo;->a()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, "0"

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    add-int/lit8 v5, v2, -0x2

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_1
    const-string v2, "CI"

    const-string v3, "TS"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/amap/api/mapcore/util/fr$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/amap/api/mapcore/util/fr$a;-><init>(Lcom/amap/api/mapcore/util/fr$1;)V

    invoke-static {p0}, Lcom/amap/api/mapcore/util/fo;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/amap/api/mapcore/util/fr$a;->d:Ljava/lang/String;

    invoke-static {p0}, Lcom/amap/api/mapcore/util/fo;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/amap/api/mapcore/util/fr$a;->i:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/amap/api/mapcore/util/fr;->a(Landroid/content/Context;Lcom/amap/api/mapcore/util/fr$a;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "CI"

    const-string v3, "IX"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Lcom/amap/api/mapcore/util/fr$a;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/amap/api/mapcore/util/fr;->b(Landroid/content/Context;Lcom/amap/api/mapcore/util/fr$a;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ft;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/amap/api/mapcore/util/fx;Ljava/util/Map;Z)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amap/api/mapcore/util/fx;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-static {p0, p3}, Lcom/amap/api/mapcore/util/fr;->b(Landroid/content/Context;Z)Lcom/amap/api/mapcore/util/fr$a;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amap/api/mapcore/util/fr;->a(Landroid/content/Context;Lcom/amap/api/mapcore/util/fr$a;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "ci"

    const-string v2, "rsc"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore/util/fo;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/mapcore/util/fu;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "CI"

    const-string v3, "Sco"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-static {p1}, Lcom/amap/api/mapcore/util/fy;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/amap/api/mapcore/util/fy;->a(Ljava/io/ByteArrayOutputStream;B[B)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-byte v0, v0

    goto :goto_0

    :cond_1
    new-array v0, v1, [B

    invoke-static {p0, v1, v0}, Lcom/amap/api/mapcore/util/fy;->a(Ljava/io/ByteArrayOutputStream;B[B)V

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Ljava/io/ByteArrayOutputStream;)[B
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

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/fy;->b([B)[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amap/api/mapcore/util/fr;->c(Landroid/content/Context;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Z)[B
    .locals 3

    :try_start_0
    invoke-static {p0, p1}, Lcom/amap/api/mapcore/util/fr;->b(Landroid/content/Context;Z)Lcom/amap/api/mapcore/util/fr$a;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amap/api/mapcore/util/fr;->b(Landroid/content/Context;Lcom/amap/api/mapcore/util/fr$a;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "CI"

    const-string v2, "gz"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;[B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/lang/NullPointerException;,
            Ljava/io/IOException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v4, 0x0

    const-string v1, "AES"

    invoke-static {v1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Ljavax/crypto/KeyGenerator;->init(I)V

    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-static {p0}, Lcom/amap/api/mapcore/util/fy;->b(Landroid/content/Context;)Ljava/security/PublicKey;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/ft;->a([BLjava/security/Key;)[B

    move-result-object v2

    invoke-static {v1, p1}, Lcom/amap/api/mapcore/util/ft;->a([B[B)[B

    move-result-object v1

    array-length v0, v2

    array-length v3, v1

    add-int/2addr v0, v3

    new-array v0, v0, [B

    array-length v3, v2

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    array-length v3, v1

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Z)Lcom/amap/api/mapcore/util/fr$a;
    .locals 4

    new-instance v1, Lcom/amap/api/mapcore/util/fr$a;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/amap/api/mapcore/util/fr$a;-><init>(Lcom/amap/api/mapcore/util/fr$1;)V

    invoke-static {p0}, Lcom/amap/api/mapcore/util/fs;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/mapcore/util/fr$a;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/amap/api/mapcore/util/fs;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/mapcore/util/fr$a;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/amap/api/mapcore/util/fs;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    iput-object v0, v1, Lcom/amap/api/mapcore/util/fr$a;->c:Ljava/lang/String;

    invoke-static {p0}, Lcom/amap/api/mapcore/util/fo;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/mapcore/util/fr$a;->d:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, v1, Lcom/amap/api/mapcore/util/fr$a;->e:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, v1, Lcom/amap/api/mapcore/util/fr$a;->f:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v0, v1, Lcom/amap/api/mapcore/util/fr$a;->g:Ljava/lang/String;

    invoke-static {p0}, Lcom/amap/api/mapcore/util/fo;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/mapcore/util/fr$a;->h:Ljava/lang/String;

    invoke-static {p0}, Lcom/amap/api/mapcore/util/fo;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/mapcore/util/fr$a;->i:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/mapcore/util/fr$a;->j:Ljava/lang/String;

    invoke-static {p0}, Lcom/amap/api/mapcore/util/fs;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/mapcore/util/fr$a;->k:Ljava/lang/String;

    invoke-static {p0}, Lcom/amap/api/mapcore/util/fs;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/mapcore/util/fr$a;->l:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/amap/api/mapcore/util/fs;->p(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/mapcore/util/fr$a;->m:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/amap/api/mapcore/util/fs;->o(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/mapcore/util/fr$a;->n:Ljava/lang/String;

    invoke-static {p0}, Lcom/amap/api/mapcore/util/fs;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/mapcore/util/fr$a;->o:Ljava/lang/String;

    invoke-static {p0}, Lcom/amap/api/mapcore/util/fs;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/mapcore/util/fr$a;->p:Ljava/lang/String;

    if-eqz p1, :cond_2

    const-string v0, ""

    iput-object v0, v1, Lcom/amap/api/mapcore/util/fr$a;->q:Ljava/lang/String;

    :goto_0
    if-eqz p1, :cond_3

    const-string v0, ""

    iput-object v0, v1, Lcom/amap/api/mapcore/util/fr$a;->r:Ljava/lang/String;

    :goto_1
    if-eqz p1, :cond_4

    const-string v0, ""

    iput-object v0, v1, Lcom/amap/api/mapcore/util/fr$a;->s:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, v1, Lcom/amap/api/mapcore/util/fr$a;->t:Ljava/lang/String;

    :goto_2
    invoke-static {}, Lcom/amap/api/mapcore/util/fs;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/mapcore/util/fr$a;->w:Ljava/lang/String;

    invoke-static {p0}, Lcom/amap/api/mapcore/util/fs;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iput-object v0, v1, Lcom/amap/api/mapcore/util/fr$a;->x:Ljava/lang/String;

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/String;

    const/16 v3, 0xb

    invoke-static {v3}, Lcom/amap/api/mapcore/util/ga;->a(I)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/amap/api/mapcore/util/fs;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    const/16 v3, 0xc

    invoke-static {v3}, Lcom/amap/api/mapcore/util/ga;->a(I)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/amap/api/mapcore/util/fs;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/mapcore/util/fr$a;->y:Ljava/lang/String;

    invoke-static {p0}, Lcom/amap/api/mapcore/util/fs;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/amap/api/mapcore/util/fr$a;->y:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|adiuExtras="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/mapcore/util/fr$a;->y:Ljava/lang/String;

    :cond_1
    return-object v1

    :cond_2
    invoke-static {p0}, Lcom/amap/api/mapcore/util/fs;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/mapcore/util/fr$a;->q:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    invoke-static {p0}, Lcom/amap/api/mapcore/util/fs;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/mapcore/util/fr$a;->r:Ljava/lang/String;

    goto/16 :goto_1

    :cond_4
    invoke-static {p0}, Lcom/amap/api/mapcore/util/fs;->m(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    iput-object v2, v1, Lcom/amap/api/mapcore/util/fr$a;->s:Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    iput-object v0, v1, Lcom/amap/api/mapcore/util/fr$a;->t:Ljava/lang/String;

    goto/16 :goto_2

    :cond_5
    const-string v0, ""

    iput-object v0, v1, Lcom/amap/api/mapcore/util/fr$a;->x:Ljava/lang/String;

    goto/16 :goto_3
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lcom/amap/api/mapcore/util/fr;->b(Landroid/content/Context;Z)Lcom/amap/api/mapcore/util/fr$a;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amap/api/mapcore/util/fr;->a(Landroid/content/Context;Lcom/amap/api/mapcore/util/fr$a;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "CI"

    const-string v2, "gCX"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;[B)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {p0, p1}, Lcom/amap/api/mapcore/util/fr;->d(Landroid/content/Context;[B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "ci"

    const-string v2, "aed"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Lcom/amap/api/mapcore/util/fr$a;)[B
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p1, Lcom/amap/api/mapcore/util/fr$a;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/mapcore/util/fr;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/amap/api/mapcore/util/fr$a;->b:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/mapcore/util/fr;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/amap/api/mapcore/util/fr$a;->c:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/mapcore/util/fr;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/amap/api/mapcore/util/fr$a;->d:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/mapcore/util/fr;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/amap/api/mapcore/util/fr$a;->e:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/mapcore/util/fr;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/amap/api/mapcore/util/fr$a;->f:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/mapcore/util/fr;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/amap/api/mapcore/util/fr$a;->g:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/mapcore/util/fr;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/amap/api/mapcore/util/fr$a;->h:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/mapcore/util/fr;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/amap/api/mapcore/util/fr$a;->i:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/mapcore/util/fr;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/amap/api/mapcore/util/fr$a;->j:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/mapcore/util/fr;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/amap/api/mapcore/util/fr$a;->k:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/mapcore/util/fr;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/amap/api/mapcore/util/fr$a;->l:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/mapcore/util/fr;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/amap/api/mapcore/util/fr$a;->m:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/mapcore/util/fr;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/amap/api/mapcore/util/fr$a;->n:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/mapcore/util/fr;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/amap/api/mapcore/util/fr$a;->o:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/mapcore/util/fr;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/amap/api/mapcore/util/fr$a;->p:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/mapcore/util/fr;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/amap/api/mapcore/util/fr$a;->q:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/mapcore/util/fr;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/amap/api/mapcore/util/fr$a;->r:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/mapcore/util/fr;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/amap/api/mapcore/util/fr$a;->s:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/mapcore/util/fr;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/amap/api/mapcore/util/fr$a;->t:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/mapcore/util/fr;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/amap/api/mapcore/util/fr$a;->u:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/mapcore/util/fr;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/amap/api/mapcore/util/fr$a;->v:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/mapcore/util/fr;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/amap/api/mapcore/util/fr$a;->w:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/mapcore/util/fr;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/amap/api/mapcore/util/fr$a;->x:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/mapcore/util/fr;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/amap/api/mapcore/util/fr$a;->y:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/mapcore/util/fr;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    invoke-static {p0, v2}, Lcom/amap/api/mapcore/util/fr;->a(Landroid/content/Context;Ljava/io/ByteArrayOutputStream;)[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v0

    :goto_1
    :try_start_3
    const-string v3, "ci"

    const-string v4, "gzx"

    invoke-static {v1, v3, v4}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_1
    :goto_3
    throw v0

    :catch_3
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public static c(Landroid/content/Context;[B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/lang/NullPointerException;,
            Ljava/io/IOException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    const/16 v4, 0x80

    const/16 v3, 0x75

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/amap/api/mapcore/util/fy;->b(Landroid/content/Context;)Ljava/security/PublicKey;

    move-result-object v0

    array-length v1, p1

    if-le v1, v3, :cond_0

    new-array v1, v3, [B

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1, v0}, Lcom/amap/api/mapcore/util/ft;->a([BLjava/security/Key;)[B

    move-result-object v1

    array-length v0, p1

    add-int/lit16 v0, v0, 0x80

    add-int/lit8 v0, v0, -0x75

    new-array v0, v0, [B

    invoke-static {v1, v2, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p1

    add-int/lit8 v1, v1, -0x75

    invoke-static {p1, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/ft;->a([BLjava/security/Key;)[B

    move-result-object v0

    goto :goto_0
.end method

.method static d(Landroid/content/Context;[B)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/io/IOException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/amap/api/mapcore/util/fr;->a(Landroid/content/Context;[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/fy;->b([B)[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ft;->a([B)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;[B)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p0, p1}, Lcom/amap/api/mapcore/util/fr;->d(Landroid/content/Context;[B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const-string v0, ""

    goto :goto_0
.end method
