.class public Lcom/amap/api/mapcore/util/fp;
.super Ljava/lang/Object;
.source "AuthConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/fp$b;,
        Lcom/amap/api/mapcore/util/fp$a;
    }
.end annotation


# static fields
.field public static a:I

.field public static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/amap/api/mapcore/util/fp;->a:I

    const-string v0, ""

    sput-object v0, Lcom/amap/api/mapcore/util/fp;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/amap/api/mapcore/util/fx;Ljava/lang/String;Ljava/util/Map;)Lcom/amap/api/mapcore/util/fp$a;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amap/api/mapcore/util/fx;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amap/api/mapcore/util/fp$a;"
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    new-instance v1, Lcom/amap/api/mapcore/util/fp$a;

    invoke-direct {v1}, Lcom/amap/api/mapcore/util/fp$a;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, v1, Lcom/amap/api/mapcore/util/fp$a;->w:Lorg/json/JSONObject;

    :try_start_0
    new-instance v0, Lcom/amap/api/mapcore/util/hp;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/hp;-><init>()V
    :try_end_0
    .catch Lcom/amap/api/mapcore/util/fn; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    new-instance v2, Lcom/amap/api/mapcore/util/fp$b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ";14N"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, p1, v4, p3}, Lcom/amap/api/mapcore/util/fp$b;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/fx;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/fp$b;->d()Z

    move-result v4

    invoke-virtual {v0, v2, v4}, Lcom/amap/api/mapcore/util/hp;->a(Lcom/amap/api/mapcore/util/hv;Z)Lcom/amap/api/mapcore/util/hx;
    :try_end_1
    .catch Lcom/amap/api/mapcore/util/fn; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v2

    if-eqz v2, :cond_f

    :try_start_2
    iget-object v4, v2, Lcom/amap/api/mapcore/util/hx;->a:[B
    :try_end_2
    .catch Lcom/amap/api/mapcore/util/fn; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_9

    :goto_0
    const/16 v0, 0x10

    :try_start_3
    new-array v0, v0, [B

    array-length v6, v4

    add-int/lit8 v6, v6, -0x10

    new-array v6, v6, [B

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x10

    invoke-static {v4, v7, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v7, 0x10

    const/4 v8, 0x0

    array-length v9, v4

    add-int/lit8 v9, v9, -0x10

    invoke-static {v4, v7, v6, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    const-string v8, "AES"

    invoke-direct {v7, v0, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v8, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {}, Lcom/amap/api/mapcore/util/fy;->b()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v9, 0x2

    invoke-virtual {v0, v9, v7, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/fy;->a([B)Ljava/lang/String;
    :try_end_3
    .catch Lcom/amap/api/mapcore/util/fn; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_a

    move-result-object v3

    move-object v0, v3

    move-object v3, v2

    :goto_1
    if-nez v4, :cond_0

    move-object v0, v1

    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    :try_start_4
    throw v0
    :try_end_4
    .catch Lcom/amap/api/mapcore/util/fn; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    :catch_1
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    :goto_3
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/fn;->a()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/amap/api/mapcore/util/fp$a;->a:Ljava/lang/String;

    const-string v6, "/v3/iasdkauth"

    invoke-static {p1, v6, v0}, Lcom/amap/api/mapcore/util/gf;->a(Lcom/amap/api/mapcore/util/fx;Ljava/lang/String;Lcom/amap/api/mapcore/util/fn;)V

    move-object v0, v3

    move-object v3, v2

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_5
    new-instance v0, Lcom/amap/api/mapcore/util/fn;

    const-string v2, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v2}, Lcom/amap/api/mapcore/util/fn;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Lcom/amap/api/mapcore/util/fn; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    :catch_3
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    :goto_4
    move-object v0, v3

    move-object v3, v2

    goto :goto_1

    :catch_4
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    :goto_5
    const-string v6, "at"

    const-string v7, "lc"

    invoke-static {v0, v6, v7}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    move-object v3, v2

    goto :goto_1

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v4}, Lcom/amap/api/mapcore/util/fy;->a([B)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :try_start_6
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "status"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "status"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v10, :cond_5

    const/4 v0, 0x1

    sput v0, Lcom/amap/api/mapcore/util/fp;->a:I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    :cond_2
    :try_start_7
    const-string v0, "ver"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ver"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/amap/api/mapcore/util/fp$a;->b:I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    :cond_3
    :goto_6
    :try_start_8
    const-string v0, "result"

    invoke-static {v4, v0}, Lcom/amap/api/mapcore/util/fy;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v2, Lcom/amap/api/mapcore/util/fp$a$a;

    invoke-direct {v2}, Lcom/amap/api/mapcore/util/fp$a$a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/amap/api/mapcore/util/fp$a$a;->a:Z

    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/amap/api/mapcore/util/fp$a$a;->b:Z

    iput-object v2, v1, Lcom/amap/api/mapcore/util/fp$a;->x:Lcom/amap/api/mapcore/util/fp$a$a;

    const-string v0, "result"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6

    move-result-object v3

    :try_start_9
    const-string v0, ";"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    array-length v0, v4

    if-lez v0, :cond_9

    array-length v6, v4

    move v0, v5

    :goto_7
    if-ge v0, v6, :cond_9

    aget-object v5, v4, v0

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, v1, Lcom/amap/api/mapcore/util/fp$a;->w:Lorg/json/JSONObject;

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_7

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_5
    if-nez v0, :cond_2

    :try_start_a
    const-string v2, "authcsid"

    const-string v0, "authgsid"

    if-eqz v3, :cond_e

    iget-object v2, v3, Lcom/amap/api/mapcore/util/hx;->c:Ljava/lang/String;

    iget-object v0, v3, Lcom/amap/api/mapcore/util/hx;->d:Ljava/lang/String;

    move-object v11, v0

    move-object v0, v2

    move-object v2, v11

    :goto_8
    invoke-static {p0, v0, v2, v4}, Lcom/amap/api/mapcore/util/fy;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 v0, 0x0

    sput v0, Lcom/amap/api/mapcore/util/fp;->a:I

    const-string v0, "info"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "info"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore/util/fp;->b:Ljava/lang/String;

    :cond_6
    const-string v0, ""

    const-string v3, "infocode"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v0, "infocode"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_7
    const-string v3, "/v3/iasdkauth"

    sget-object v6, Lcom/amap/api/mapcore/util/fp;->b:Ljava/lang/String;

    invoke-static {p1, v3, v6, v2, v0}, Lcom/amap/api/mapcore/util/gf;->a(Lcom/amap/api/mapcore/util/fx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/amap/api/mapcore/util/fp;->a:I

    if-nez v0, :cond_2

    sget-object v0, Lcom/amap/api/mapcore/util/fp;->b:Ljava/lang/String;

    iput-object v0, v1, Lcom/amap/api/mapcore/util/fp$a;->a:Ljava/lang/String;

    move-object v0, v1

    goto/16 :goto_2

    :catch_5
    move-exception v0

    const-string v2, "at"

    const-string v3, "lc"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_6

    :catch_6
    move-exception v0

    const-string v2, "at"

    const-string v3, "lc"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_9
    move-object v0, v1

    goto/16 :goto_2

    :catch_7
    move-exception v0

    :try_start_b
    const-string v4, "at"

    const-string v5, "co"

    invoke-static {v0, v4, v5}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const-string v0, "11K"

    invoke-static {v3, v0}, Lcom/amap/api/mapcore/util/fy;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_6

    move-result v0

    if-eqz v0, :cond_a

    :try_start_c
    const-string v0, "11K"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "able"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/amap/api/mapcore/util/fp;->a(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v2, Lcom/amap/api/mapcore/util/fp$a$a;->a:Z

    const-string v4, "off"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "off"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v2, Lcom/amap/api/mapcore/util/fp$a$a;->c:Lorg/json/JSONObject;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_8

    :cond_a
    :goto_a
    :try_start_d
    const-string v0, "001"

    invoke-static {v3, v0}, Lcom/amap/api/mapcore/util/fy;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "001"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v2, Lcom/amap/api/mapcore/util/fp$a$d;

    invoke-direct {v2}, Lcom/amap/api/mapcore/util/fp$a$d;-><init>()V

    invoke-static {v0, v2}, Lcom/amap/api/mapcore/util/fp;->a(Lorg/json/JSONObject;Lcom/amap/api/mapcore/util/fp$a$d;)V

    iput-object v2, v1, Lcom/amap/api/mapcore/util/fp$a;->y:Lcom/amap/api/mapcore/util/fp$a$d;

    :cond_b
    const-string v0, "002"

    invoke-static {v3, v0}, Lcom/amap/api/mapcore/util/fy;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "002"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v2, Lcom/amap/api/mapcore/util/fp$a$c;

    invoke-direct {v2}, Lcom/amap/api/mapcore/util/fp$a$c;-><init>()V

    invoke-static {v0, v2}, Lcom/amap/api/mapcore/util/fp;->a(Lorg/json/JSONObject;Lcom/amap/api/mapcore/util/fp$a$c;)V

    iput-object v2, v1, Lcom/amap/api/mapcore/util/fp$a;->z:Lcom/amap/api/mapcore/util/fp$a$c;

    :cond_c
    invoke-static {v1, v3}, Lcom/amap/api/mapcore/util/fp;->a(Lcom/amap/api/mapcore/util/fp$a;Lorg/json/JSONObject;)V

    const-string v0, "14N"

    invoke-static {v3, v0}, Lcom/amap/api/mapcore/util/fy;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "14N"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v2, Lcom/amap/api/mapcore/util/fp$a$b;

    invoke-direct {v2}, Lcom/amap/api/mapcore/util/fp$a$b;-><init>()V

    const-string v3, "able"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/amap/api/mapcore/util/fp;->a(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/amap/api/mapcore/util/fp$a$b;->a:Z

    const-string v3, "url"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/amap/api/mapcore/util/fp$a$b;->b:Ljava/lang/String;

    const-string v3, "md5"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/amap/api/mapcore/util/fp$a$b;->c:Ljava/lang/String;

    iget-boolean v0, v2, Lcom/amap/api/mapcore/util/fp$a$b;->a:Z

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/amap/api/mapcore/util/ga;->a()Lcom/amap/api/mapcore/util/fx;

    move-result-object v0

    if-eqz v0, :cond_8

    new-instance v3, Lcom/amap/api/mapcore/util/gz;

    iget-object v4, v2, Lcom/amap/api/mapcore/util/fp$a$b;->b:Ljava/lang/String;

    iget-object v2, v2, Lcom/amap/api/mapcore/util/fp$a$b;->c:Ljava/lang/String;

    const-string v5, ""

    invoke-direct {v3, v4, v2, v5}, Lcom/amap/api/mapcore/util/gz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/amap/api/mapcore/util/gy;

    invoke-direct {v2, p0, v3, v0}, Lcom/amap/api/mapcore/util/gy;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/gz;Lcom/amap/api/mapcore/util/fx;)V

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/gy;->a()V

    goto/16 :goto_9

    :catch_8
    move-exception v0

    const-string v2, "AuthConfigManager"

    const-string v4, "loadException"

    invoke-static {v0, v2, v4}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_d
    const-string v0, "aiu"

    invoke-static {p0, v0}, Lcom/amap/api/mapcore/util/ha;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_6

    goto/16 :goto_9

    :catch_9
    move-exception v0

    move-object v4, v3

    goto/16 :goto_5

    :catch_a
    move-exception v0

    goto/16 :goto_5

    :catch_b
    move-exception v0

    move-object v4, v3

    goto/16 :goto_4

    :catch_c
    move-exception v0

    goto/16 :goto_4

    :catch_d
    move-exception v0

    move-object v4, v3

    goto/16 :goto_3

    :catch_e
    move-exception v0

    goto/16 :goto_3

    :cond_e
    move-object v11, v0

    move-object v0, v2

    move-object v2, v11

    goto/16 :goto_8

    :cond_f
    move-object v4, v3

    goto/16 :goto_0
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_1

    const-string v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Lcom/amap/api/mapcore/util/fp$a;Lorg/json/JSONObject;)V
    .locals 3

    :try_start_0
    const-string v0, "11B"

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/fy;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "11B"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fp$a;->h:Lorg/json/JSONObject;

    :cond_0
    const-string v0, "11C"

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/fy;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "11C"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fp$a;->k:Lorg/json/JSONObject;

    :cond_1
    const-string v0, "11I"

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/fy;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "11I"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fp$a;->l:Lorg/json/JSONObject;

    :cond_2
    const-string v0, "11H"

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/fy;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "11H"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fp$a;->m:Lorg/json/JSONObject;

    :cond_3
    const-string v0, "11E"

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/fy;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "11E"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fp$a;->n:Lorg/json/JSONObject;

    :cond_4
    const-string v0, "11F"

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/fy;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "11F"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fp$a;->o:Lorg/json/JSONObject;

    :cond_5
    const-string v0, "13A"

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/fy;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "13A"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fp$a;->q:Lorg/json/JSONObject;

    :cond_6
    const-string v0, "13J"

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/fy;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "13J"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fp$a;->i:Lorg/json/JSONObject;

    :cond_7
    const-string v0, "11G"

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/fy;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "11G"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fp$a;->p:Lorg/json/JSONObject;

    :cond_8
    const-string v0, "006"

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/fy;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "006"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fp$a;->r:Lorg/json/JSONObject;

    :cond_9
    const-string v0, "010"

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/fy;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "010"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fp$a;->s:Lorg/json/JSONObject;

    :cond_a
    const-string v0, "11Z"

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/fy;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "11Z"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lcom/amap/api/mapcore/util/fp$a$b;

    invoke-direct {v1}, Lcom/amap/api/mapcore/util/fp$a$b;-><init>()V

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/fp;->a(Lorg/json/JSONObject;Lcom/amap/api/mapcore/util/fp$a$b;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/fp$a;->A:Lcom/amap/api/mapcore/util/fp$a$b;

    :cond_b
    const-string v0, "135"

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/fy;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "135"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fp$a;->j:Lorg/json/JSONObject;

    :cond_c
    const-string v0, "13S"

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/fy;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "13S"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fp$a;->g:Lorg/json/JSONObject;

    :cond_d
    const-string v0, "121"

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/fy;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "121"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lcom/amap/api/mapcore/util/fp$a$b;

    invoke-direct {v1}, Lcom/amap/api/mapcore/util/fp$a$b;-><init>()V

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/fp;->a(Lorg/json/JSONObject;Lcom/amap/api/mapcore/util/fp$a$b;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/fp$a;->B:Lcom/amap/api/mapcore/util/fp$a$b;

    :cond_e
    const-string v0, "122"

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/fy;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "122"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lcom/amap/api/mapcore/util/fp$a$b;

    invoke-direct {v1}, Lcom/amap/api/mapcore/util/fp$a$b;-><init>()V

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/fp;->a(Lorg/json/JSONObject;Lcom/amap/api/mapcore/util/fp$a$b;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/fp$a;->C:Lcom/amap/api/mapcore/util/fp$a$b;

    :cond_f
    const-string v0, "123"

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/fy;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "123"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lcom/amap/api/mapcore/util/fp$a$b;

    invoke-direct {v1}, Lcom/amap/api/mapcore/util/fp$a$b;-><init>()V

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/fp;->a(Lorg/json/JSONObject;Lcom/amap/api/mapcore/util/fp$a$b;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/fp$a;->D:Lcom/amap/api/mapcore/util/fp$a$b;

    :cond_10
    const-string v0, "011"

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/fy;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "011"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fp$a;->c:Lorg/json/JSONObject;

    :cond_11
    const-string v0, "012"

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/fy;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "012"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fp$a;->d:Lorg/json/JSONObject;

    :cond_12
    const-string v0, "013"

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/fy;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "013"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fp$a;->e:Lorg/json/JSONObject;

    :cond_13
    const-string v0, "014"

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/fy;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "014"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fp$a;->f:Lorg/json/JSONObject;

    :cond_14
    const-string v0, "145"

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/fy;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "145"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fp$a;->t:Lorg/json/JSONObject;

    :cond_15
    const-string v0, "14B"

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/fy;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "14B"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fp$a;->u:Lorg/json/JSONObject;

    :cond_16
    const-string v0, "14D"

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/fy;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "14D"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fp$a;->v:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_17
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "at"

    const-string v2, "pe"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Lcom/amap/api/mapcore/util/fp$a$b;)V
    .locals 5

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "m"

    invoke-static {p0, v0}, Lcom/amap/api/mapcore/util/fp;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "u"

    invoke-static {p0, v1}, Lcom/amap/api/mapcore/util/fp;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "v"

    invoke-static {p0, v2}, Lcom/amap/api/mapcore/util/fp;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "able"

    invoke-static {p0, v3}, Lcom/amap/api/mapcore/util/fp;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "on"

    invoke-static {p0, v4}, Lcom/amap/api/mapcore/util/fp;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v0, p1, Lcom/amap/api/mapcore/util/fp$a$b;->c:Ljava/lang/String;

    iput-object v1, p1, Lcom/amap/api/mapcore/util/fp$a$b;->b:Ljava/lang/String;

    iput-object v2, p1, Lcom/amap/api/mapcore/util/fp$a$b;->d:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v3, v0}, Lcom/amap/api/mapcore/util/fp;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Lcom/amap/api/mapcore/util/fp$a$b;->a:Z

    const/4 v0, 0x1

    invoke-static {v4, v0}, Lcom/amap/api/mapcore/util/fp;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Lcom/amap/api/mapcore/util/fp$a$b;->e:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "at"

    const-string v2, "pe"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Lcom/amap/api/mapcore/util/fp$a$c;)V
    .locals 3

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "md5"

    invoke-static {p0, v0}, Lcom/amap/api/mapcore/util/fp;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "url"

    invoke-static {p0, v1}, Lcom/amap/api/mapcore/util/fp;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v0, p1, Lcom/amap/api/mapcore/util/fp$a$c;->b:Ljava/lang/String;

    iput-object v1, p1, Lcom/amap/api/mapcore/util/fp$a$c;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "At"

    const-string v2, "psc"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Lcom/amap/api/mapcore/util/fp$a$d;)V
    .locals 4

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "md5"

    invoke-static {p0, v0}, Lcom/amap/api/mapcore/util/fp;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "url"

    invoke-static {p0, v1}, Lcom/amap/api/mapcore/util/fp;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdkversion"

    invoke-static {p0, v2}, Lcom/amap/api/mapcore/util/fp;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object v1, p1, Lcom/amap/api/mapcore/util/fp$a$d;->a:Ljava/lang/String;

    iput-object v0, p1, Lcom/amap/api/mapcore/util/fp$a$d;->b:Ljava/lang/String;

    iput-object v2, p1, Lcom/amap/api/mapcore/util/fp$a$d;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "at"

    const-string v2, "psu"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Z)Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return p1

    :cond_0
    invoke-static {p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    rem-int/lit8 v1, v1, 0x2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v0, :cond_1

    :goto_1
    move p1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method
