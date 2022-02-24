.class public final Lcom/amap/api/col/l3/fx;
.super Ljava/lang/Object;
.source "AuthConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3/fx$b;,
        Lcom/amap/api/col/l3/fx$a;
    }
.end annotation


# static fields
.field public static a:I = -0x1

.field public static b:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/amap/api/col/l3/gh;Ljava/lang/String;Ljava/util/Map;)Lcom/amap/api/col/l3/fx$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amap/api/col/l3/gh;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amap/api/col/l3/fx$a;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 9
    invoke-static {p0, p1, p2, p3, v0}, Lcom/amap/api/col/l3/fx;->a(Landroid/content/Context;Lcom/amap/api/col/l3/gh;Ljava/lang/String;Ljava/util/Map;Z)Lcom/amap/api/col/l3/fx$a;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/amap/api/col/l3/gh;Ljava/lang/String;Ljava/util/Map;Z)Lcom/amap/api/col/l3/fx$a;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amap/api/col/l3/gh;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/amap/api/col/l3/fx$a;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "14Z"

    const-string v4, "off"

    const-string v5, "14S"

    const-string v6, "002"

    const-string v7, "001"

    const-string v8, "11K"

    const-string v9, "16H"

    const-string v10, "infocode"

    const-string v11, "info"

    const-string v12, "result"

    const-string v13, "ver"

    const-string v14, "status"

    const-string v15, "/v3/iasdkauth"

    move-object/from16 v16, v3

    const-string v3, "lc"

    move-object/from16 v17, v5

    const-string v5, "at"

    move-object/from16 v18, v6

    .line 10
    new-instance v6, Lcom/amap/api/col/l3/fx$a;

    invoke-direct {v6}, Lcom/amap/api/col/l3/fx$a;-><init>()V

    .line 11
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, v6, Lcom/amap/api/col/l3/fx$a;->w:Lorg/json/JSONObject;

    .line 12
    sget-object v0, Lcom/amap/api/col/l3/gd$a;->a:Lcom/amap/api/col/l3/gd;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/gd;->a(Landroid/content/Context;)V

    const/16 v19, 0x0

    move-object/from16 v20, v7

    .line 13
    :try_start_0
    new-instance v0, Lcom/amap/api/col/l3/hx;

    invoke-direct {v0}, Lcom/amap/api/col/l3/hx;-><init>()V
    :try_end_0
    .catch Lcom/amap/api/col/l3/fv; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_e
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 14
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v7, p2

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ";14N;15K;16H"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Lcom/amap/api/col/l3/fv; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 15
    :try_start_2
    new-instance v0, Lcom/amap/api/col/l3/fx$b;
    :try_end_2
    .catch Lcom/amap/api/col/l3/fv; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-object/from16 v21, v4

    move-object/from16 v4, p3

    :try_start_3
    invoke-direct {v0, v1, v2, v7, v4}, Lcom/amap/api/col/l3/fx$b;-><init>(Landroid/content/Context;Lcom/amap/api/col/l3/gh;Ljava/lang/String;Ljava/util/Map;)V

    .line 16
    invoke-virtual {v0}, Lcom/amap/api/col/l3/fx$b;->d()Z

    move-result v4

    invoke-static {v0, v4}, Lcom/amap/api/col/l3/hx;->a(Lcom/amap/api/col/l3/ic;Z)Lcom/amap/api/col/l3/ie;

    move-result-object v4
    :try_end_3
    .catch Lcom/amap/api/col/l3/fv; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    if-eqz v4, :cond_0

    .line 17
    :try_start_4
    iget-object v0, v4, Lcom/amap/api/col/l3/ie;->a:[B
    :try_end_4
    .catch Lcom/amap/api/col/l3/fv; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 p2, v4

    move-object v4, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v25, v12

    move-object v7, v0

    move-object v0, v4

    move-object/from16 v4, v19

    goto/16 :goto_c

    :catch_0
    move-object v0, v4

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v25, v12

    move-object/from16 v4, v19

    goto/16 :goto_f

    :catch_1
    move-exception v0

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v25, v12

    move-object v7, v0

    move-object v0, v4

    move-object/from16 v4, v19

    goto/16 :goto_e

    :cond_0
    move-object/from16 p2, v4

    move-object/from16 v4, v19

    :goto_0
    const/16 v0, 0x10

    move-object/from16 v22, v7

    :try_start_5
    new-array v7, v0, [B
    :try_end_5
    .catch Lcom/amap/api/col/l3/fv; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-object/from16 v23, v8

    .line 18
    :try_start_6
    array-length v8, v4

    sub-int/2addr v8, v0

    new-array v8, v8, [B
    :try_end_6
    .catch Lcom/amap/api/col/l3/fv; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object/from16 v24, v9

    const/4 v9, 0x0

    .line 19
    :try_start_7
    invoke-static {v4, v9, v7, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    array-length v9, v4
    :try_end_7
    .catch Lcom/amap/api/col/l3/fv; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    sub-int/2addr v9, v0

    move-object/from16 v25, v12

    const/4 v12, 0x0

    :try_start_8
    invoke-static {v4, v0, v8, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v9, "AES"

    invoke-direct {v0, v7, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v7, "AES/CBC/PKCS5Padding"

    .line 22
    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v7

    .line 23
    new-instance v9, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {}, Lcom/amap/api/col/l3/gi;->c()[B

    move-result-object v12

    invoke-direct {v9, v12}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v12, 0x2

    .line 24
    invoke-virtual {v7, v12, v0, v9}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 25
    invoke-virtual {v7, v8}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/amap/api/col/l3/gi;->a([B)Ljava/lang/String;

    move-result-object v19
    :try_end_8
    .catch Lcom/amap/api/col/l3/fv; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catch_2
    :goto_1
    move-object/from16 v0, p2

    goto/16 :goto_f

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_6

    :catchall_3
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object/from16 v23, v8

    :goto_2
    move-object/from16 v24, v9

    :goto_3
    move-object/from16 v25, v12

    :goto_4
    move-object v7, v0

    move-object/from16 v0, p2

    goto/16 :goto_c

    :catch_6
    move-object/from16 v23, v8

    :catch_7
    move-object/from16 v24, v9

    :catch_8
    move-object/from16 v25, v12

    goto :goto_1

    :catch_9
    move-exception v0

    move-object/from16 v23, v8

    :goto_5
    move-object/from16 v24, v9

    :goto_6
    move-object/from16 v25, v12

    :goto_7
    move-object v7, v0

    move-object/from16 v0, p2

    goto/16 :goto_e

    :catch_a
    move-exception v0

    goto :goto_8

    :catchall_5
    move-object/from16 v21, v4

    :catchall_6
    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v25, v12

    goto :goto_9

    :catch_b
    move-exception v0

    move-object/from16 v21, v4

    :goto_8
    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v25, v12

    goto :goto_a

    :catchall_7
    move-object/from16 v21, v4

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v25, v12

    move-object/from16 v22, p2

    .line 27
    :goto_9
    :try_start_9
    new-instance v0, Lcom/amap/api/col/l3/fv;

    const-string v4, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v4}, Lcom/amap/api/col/l3/fv;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_c
    move-exception v0

    move-object/from16 v21, v4

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v25, v12

    move-object/from16 v22, p2

    .line 28
    :goto_a
    throw v0
    :try_end_9
    .catch Lcom/amap/api/col/l3/fv; {:try_start_9 .. :try_end_9} :catch_d
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_9 .. :try_end_9} :catch_f
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    :catchall_8
    move-exception v0

    goto :goto_b

    :catch_d
    move-exception v0

    goto :goto_d

    :catchall_9
    move-exception v0

    move-object/from16 v21, v4

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v25, v12

    move-object/from16 v22, p2

    :goto_b
    move-object v7, v0

    move-object/from16 v0, v19

    move-object v4, v0

    .line 29
    :goto_c
    invoke-static {v7, v5, v3}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :catch_e
    move-object/from16 v21, v4

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v25, v12

    move-object/from16 v22, p2

    :catch_f
    move-object/from16 v0, v19

    move-object v4, v0

    goto :goto_f

    :catch_10
    move-exception v0

    move-object/from16 v21, v4

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v25, v12

    move-object/from16 v22, p2

    :goto_d
    move-object v7, v0

    move-object/from16 v0, v19

    move-object v4, v0

    .line 30
    :goto_e
    invoke-virtual {v7}, Lcom/amap/api/col/l3/fv;->a()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/amap/api/col/l3/fx$a;->a:Ljava/lang/String;

    .line 31
    invoke-static {v2, v15, v7}, Lcom/amap/api/col/l3/gv;->a(Lcom/amap/api/col/l3/gh;Ljava/lang/String;Lcom/amap/api/col/l3/fv;)V

    :goto_f
    move-object/from16 v7, v22

    if-nez v4, :cond_1

    return-object v6

    .line 32
    :cond_1
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 33
    invoke-static {v4}, Lcom/amap/api/col/l3/gi;->a([B)Ljava/lang/String;

    move-result-object v19

    :cond_2
    move-object/from16 v4, v19

    .line 34
    :try_start_a
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 36
    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/4 v9, 0x1

    if-ne v4, v9, :cond_3

    .line 37
    sput v9, Lcom/amap/api/col/l3/fx;->a:I

    goto :goto_10

    :cond_3
    if-nez v4, :cond_7

    const-string v4, "authcsid"

    const-string v9, "authgsid"

    if-eqz v0, :cond_4

    .line 38
    iget-object v4, v0, Lcom/amap/api/col/l3/ie;->c:Ljava/lang/String;

    .line 39
    iget-object v9, v0, Lcom/amap/api/col/l3/ie;->d:Ljava/lang/String;

    .line 40
    :cond_4
    invoke-static {v1, v4, v9, v8}, Lcom/amap/api/col/l3/gi;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 v4, 0x0

    .line 41
    sput v4, Lcom/amap/api/col/l3/fx;->a:I

    .line 42
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 43
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/col/l3/fx;->b:Ljava/lang/String;

    :cond_5
    const-string v0, ""

    .line 44
    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 45
    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    :cond_6
    sget-object v4, Lcom/amap/api/col/l3/fx;->b:Ljava/lang/String;

    invoke-static {v2, v15, v4, v9, v0}, Lcom/amap/api/col/l3/gv;->a(Lcom/amap/api/col/l3/gh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    sget v0, Lcom/amap/api/col/l3/fx;->a:I

    if-nez v0, :cond_7

    .line 48
    sget-object v0, Lcom/amap/api/col/l3/fx;->b:Ljava/lang/String;

    iput-object v0, v6, Lcom/amap/api/col/l3/fx$a;->a:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_10

    return-object v6

    .line 49
    :cond_7
    :goto_10
    :try_start_b
    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 50
    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v6, Lcom/amap/api/col/l3/fx$a;->b:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    goto :goto_11

    :catchall_a
    move-exception v0

    .line 51
    :try_start_c
    invoke-static {v0, v5, v3}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_11
    move-object/from16 v2, v25

    .line 52
    invoke-static {v8, v2}, Lcom/amap/api/col/l3/gi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 53
    new-instance v4, Lcom/amap/api/col/l3/fx$a$a;

    invoke-direct {v4}, Lcom/amap/api/col/l3/fx$a$a;-><init>()V

    const/4 v9, 0x0

    .line 54
    iput-boolean v9, v4, Lcom/amap/api/col/l3/fx$a$a;->a:Z

    .line 55
    iput-boolean v9, v4, Lcom/amap/api/col/l3/fx$a$a;->b:Z

    .line 56
    iput-object v4, v6, Lcom/amap/api/col/l3/fx$a;->x:Lcom/amap/api/col/l3/fx$a$a;

    .line 57
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_10

    :try_start_d
    const-string v0, ";"

    .line 58
    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 59
    array-length v7, v0

    if-lez v7, :cond_a

    .line 60
    array-length v7, v0

    const/4 v8, 0x0

    :goto_12
    if-ge v8, v7, :cond_a

    aget-object v9, v0, v8

    .line 61
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 62
    iget-object v10, v6, Lcom/amap/api/col/l3/fx$a;->w:Lorg/json/JSONObject;

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_12

    :catchall_b
    move-exception v0

    :try_start_e
    const-string v7, "co"

    .line 63
    invoke-static {v0, v5, v7}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    move-object/from16 v7, v24

    .line 64
    invoke-static {v2, v7}, Lcom/amap/api/col/l3/gi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_10

    const-string v8, "able"

    if-eqz v0, :cond_b

    .line 65
    :try_start_f
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 66
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    invoke-static {v0, v7}, Lcom/amap/api/col/l3/fx;->a(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v6, v0}, Lcom/amap/api/col/l3/fx$a;->a(Lcom/amap/api/col/l3/fx$a;Z)Z

    :cond_b
    move-object/from16 v7, v23

    .line 67
    invoke-static {v2, v7}, Lcom/amap/api/col/l3/gi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_10

    if-eqz v0, :cond_c

    .line 68
    :try_start_10
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 69
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    .line 70
    invoke-static {v7, v9}, Lcom/amap/api/col/l3/fx;->a(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v4, Lcom/amap/api/col/l3/fx$a$a;->a:Z

    move-object/from16 v7, v21

    .line 71
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 72
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v4, Lcom/amap/api/col/l3/fx$a$a;->c:Lorg/json/JSONObject;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_c

    goto :goto_13

    :catchall_c
    move-exception v0

    :try_start_11
    const-string v4, "AuthConfigManager"

    const-string v7, "loadException"

    .line 73
    invoke-static {v0, v4, v7}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_13
    move-object/from16 v4, v20

    .line 74
    invoke-static {v2, v4}, Lcom/amap/api/col/l3/gi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_10

    const-string v7, "url"

    const-string v9, "md5"

    if-eqz v0, :cond_f

    .line 75
    :try_start_12
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 76
    new-instance v4, Lcom/amap/api/col/l3/fx$a$d;

    invoke-direct {v4}, Lcom/amap/api/col/l3/fx$a$d;-><init>()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_10

    if-eqz v0, :cond_e

    .line 77
    :try_start_13
    invoke-static {v0, v9}, Lcom/amap/api/col/l3/fx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v7}, Lcom/amap/api/col/l3/fx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "sdkversion"

    invoke-static {v0, v12}, Lcom/amap/api/col/l3/fx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_e

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_e

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_d

    goto :goto_14

    :cond_d
    iput-object v11, v4, Lcom/amap/api/col/l3/fx$a$d;->a:Ljava/lang/String;

    iput-object v10, v4, Lcom/amap/api/col/l3/fx$a$d;->b:Ljava/lang/String;

    iput-object v0, v4, Lcom/amap/api/col/l3/fx$a$d;->c:Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_d

    goto :goto_14

    :catchall_d
    move-exception v0

    :try_start_14
    const-string v10, "psu"

    invoke-static {v0, v5, v10}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_e
    :goto_14
    iput-object v4, v6, Lcom/amap/api/col/l3/fx$a;->y:Lcom/amap/api/col/l3/fx$a$d;

    :cond_f
    move-object/from16 v4, v18

    .line 79
    invoke-static {v2, v4}, Lcom/amap/api/col/l3/gi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 80
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 81
    new-instance v4, Lcom/amap/api/col/l3/fx$a$c;

    invoke-direct {v4}, Lcom/amap/api/col/l3/fx$a$c;-><init>()V

    .line 82
    invoke-static {v0, v4}, Lcom/amap/api/col/l3/fx;->a(Lorg/json/JSONObject;Lcom/amap/api/col/l3/fx$a$c;)V

    .line 83
    iput-object v4, v6, Lcom/amap/api/col/l3/fx$a;->A:Lcom/amap/api/col/l3/fx$a$c;

    :cond_10
    move-object/from16 v4, v17

    .line 84
    invoke-static {v2, v4}, Lcom/amap/api/col/l3/gi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 85
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 86
    new-instance v4, Lcom/amap/api/col/l3/fx$a$c;

    invoke-direct {v4}, Lcom/amap/api/col/l3/fx$a$c;-><init>()V

    .line 87
    invoke-static {v0, v4}, Lcom/amap/api/col/l3/fx;->a(Lorg/json/JSONObject;Lcom/amap/api/col/l3/fx$a$c;)V

    .line 88
    iput-object v4, v6, Lcom/amap/api/col/l3/fx$a;->B:Lcom/amap/api/col/l3/fx$a$c;

    .line 89
    :cond_11
    invoke-static {v6, v2}, Lcom/amap/api/col/l3/fx;->a(Lcom/amap/api/col/l3/fx$a;Lorg/json/JSONObject;)V

    move-object/from16 v4, v16

    .line 90
    invoke-static {v2, v4}, Lcom/amap/api/col/l3/gi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 91
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 92
    new-instance v4, Lcom/amap/api/col/l3/fx$a$f;

    invoke-direct {v4}, Lcom/amap/api/col/l3/fx$a$f;-><init>()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_10

    .line 93
    :try_start_15
    invoke-static {v0, v9}, Lcom/amap/api/col/l3/fx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "md5info"

    invoke-static {v0, v11}, Lcom/amap/api/col/l3/fx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v7}, Lcom/amap/api/col/l3/fx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v8}, Lcom/amap/api/col/l3/fx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "on"

    invoke-static {v0, v14}, Lcom/amap/api/col/l3/fx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "mobileable"

    invoke-static {v0, v15}, Lcom/amap/api/col/l3/fx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v10, v4, Lcom/amap/api/col/l3/fx$a$f;->e:Ljava/lang/String;

    iput-object v11, v4, Lcom/amap/api/col/l3/fx$a$f;->f:Ljava/lang/String;

    iput-object v12, v4, Lcom/amap/api/col/l3/fx$a$f;->d:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v13, v10}, Lcom/amap/api/col/l3/fx;->a(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, v4, Lcom/amap/api/col/l3/fx$a$f;->a:Z

    invoke-static {v14, v10}, Lcom/amap/api/col/l3/fx;->a(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, v4, Lcom/amap/api/col/l3/fx$a$f;->b:Z

    invoke-static {v0, v10}, Lcom/amap/api/col/l3/fx;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v4, Lcom/amap/api/col/l3/fx$a$f;->c:Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_e

    goto :goto_15

    :catchall_e
    move-exception v0

    :try_start_16
    const-string v10, "pes"

    invoke-static {v0, v5, v10}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :goto_15
    iput-object v4, v6, Lcom/amap/api/col/l3/fx$a;->G:Lcom/amap/api/col/l3/fx$a$f;

    :cond_12
    const-string v0, "151"

    .line 95
    invoke-static {v2, v0}, Lcom/amap/api/col/l3/gi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "151"

    .line 96
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 97
    new-instance v4, Lcom/amap/api/col/l3/fx$a$e;

    invoke-direct {v4}, Lcom/amap/api/col/l3/fx$a$e;-><init>()V

    if-eqz v0, :cond_13

    .line 98
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x0

    invoke-static {v0, v10}, Lcom/amap/api/col/l3/fx;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v4, Lcom/amap/api/col/l3/fx$a$e;->a:Z

    .line 99
    :cond_13
    iput-object v4, v6, Lcom/amap/api/col/l3/fx$a;->z:Lcom/amap/api/col/l3/fx$a$e;

    .line 100
    :cond_14
    invoke-static {v6, v2}, Lcom/amap/api/col/l3/fx;->a(Lcom/amap/api/col/l3/fx$a;Lorg/json/JSONObject;)V

    const-string v0, "14N"

    .line 101
    invoke-static {v2, v0}, Lcom/amap/api/col/l3/gi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "14N"

    .line 102
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 103
    new-instance v4, Lcom/amap/api/col/l3/fx$a$b;

    invoke-direct {v4}, Lcom/amap/api/col/l3/fx$a$b;-><init>()V

    .line 104
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/amap/api/col/l3/fx;->a(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, v4, Lcom/amap/api/col/l3/fx$a$b;->a:Z

    .line 105
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/amap/api/col/l3/fx$a$b;->b:Ljava/lang/String;

    .line 106
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/amap/api/col/l3/fx$a$b;->c:Ljava/lang/String;

    .line 107
    iget-boolean v0, v4, Lcom/amap/api/col/l3/fx$a$b;->a:Z

    if-eqz v0, :cond_15

    .line 108
    invoke-static {}, Lcom/amap/api/col/l3/gq;->a()Lcom/amap/api/col/l3/gh;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 109
    new-instance v7, Lcom/amap/api/col/l3/hg;

    iget-object v9, v4, Lcom/amap/api/col/l3/fx$a$b;->b:Ljava/lang/String;

    iget-object v4, v4, Lcom/amap/api/col/l3/fx$a$b;->c:Ljava/lang/String;

    invoke-static {v6}, Lcom/amap/api/col/l3/fx$a;->a(Lcom/amap/api/col/l3/fx$a;)Z

    move-result v10

    invoke-direct {v7, v9, v4, v10}, Lcom/amap/api/col/l3/hg;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move/from16 v4, p4

    .line 110
    invoke-virtual {v7, v4}, Lcom/amap/api/col/l3/hg;->a(Z)V

    .line 111
    new-instance v4, Lcom/amap/api/col/l3/hf;

    invoke-direct {v4, v1, v7, v0}, Lcom/amap/api/col/l3/hf;-><init>(Landroid/content/Context;Lcom/amap/api/col/l3/hg;Lcom/amap/api/col/l3/gh;)V

    .line 112
    invoke-virtual {v4}, Lcom/amap/api/col/l3/hf;->a()V

    goto :goto_16

    :cond_15
    const-string v0, "aiu"

    .line 113
    invoke-static {v1, v0}, Lcom/amap/api/col/l3/hl;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_10

    :cond_16
    :goto_16
    :try_start_17
    const-string v0, "15K"

    .line 114
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "isTargetAble"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/amap/api/col/l3/fx;->a(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/amap/api/col/l3/fx;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lcom/amap/api/col/l3/gd$a;->a:Lcom/amap/api/col/l3/gd;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/gd;->b(Landroid/content/Context;)V

    goto :goto_17

    :cond_17
    sget-object v0, Lcom/amap/api/col/l3/gd$a;->a:Lcom/amap/api/col/l3/gd;

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/col/l3/gd;->a(Landroid/content/Context;Z)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_f

    goto :goto_17

    :catchall_f
    move-exception v0

    :try_start_18
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_10

    goto :goto_17

    :catchall_10
    move-exception v0

    .line 115
    invoke-static {v0, v5, v3}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    :goto_17
    return-object v6
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 116
    :cond_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 117
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/amap/api/col/l3/fw;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Lcom/amap/api/col/l3/fx$a;Lorg/json/JSONObject;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "145"

    const-string v3, "014"

    const-string v4, "013"

    const-string v5, "012"

    const-string v6, "011"

    const-string v7, "123"

    const-string v8, "122"

    const-string v9, "121"

    const-string v10, "13S"

    const-string v11, "135"

    const-string v12, "11Z"

    const-string v13, "010"

    const-string v14, "006"

    const-string v15, "11G"

    move-object/from16 v16, v2

    const-string v2, "13J"

    move-object/from16 v17, v3

    const-string v3, "13A"

    move-object/from16 v18, v4

    const-string v4, "11F"

    move-object/from16 v19, v5

    const-string v5, "11E"

    move-object/from16 v20, v6

    const-string v6, "11H"

    move-object/from16 v21, v7

    const-string v7, "11I"

    move-object/from16 v22, v8

    const-string v8, "11C"

    move-object/from16 v23, v9

    const-string v9, "11B"

    .line 134
    :try_start_0
    invoke-static {v1, v9}, Lcom/amap/api/col/l3/gi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 135
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    iput-object v9, v0, Lcom/amap/api/col/l3/fx$a;->h:Lorg/json/JSONObject;

    .line 136
    :cond_0
    invoke-static {v1, v8}, Lcom/amap/api/col/l3/gi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 137
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    iput-object v8, v0, Lcom/amap/api/col/l3/fx$a;->k:Lorg/json/JSONObject;

    .line 138
    :cond_1
    invoke-static {v1, v7}, Lcom/amap/api/col/l3/gi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 139
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    iput-object v7, v0, Lcom/amap/api/col/l3/fx$a;->l:Lorg/json/JSONObject;

    .line 140
    :cond_2
    invoke-static {v1, v6}, Lcom/amap/api/col/l3/gi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 141
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    iput-object v6, v0, Lcom/amap/api/col/l3/fx$a;->m:Lorg/json/JSONObject;

    .line 142
    :cond_3
    invoke-static {v1, v5}, Lcom/amap/api/col/l3/gi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 143
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    iput-object v5, v0, Lcom/amap/api/col/l3/fx$a;->n:Lorg/json/JSONObject;

    .line 144
    :cond_4
    invoke-static {v1, v4}, Lcom/amap/api/col/l3/gi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 145
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    iput-object v4, v0, Lcom/amap/api/col/l3/fx$a;->o:Lorg/json/JSONObject;

    .line 146
    :cond_5
    invoke-static {v1, v3}, Lcom/amap/api/col/l3/gi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 147
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, v0, Lcom/amap/api/col/l3/fx$a;->q:Lorg/json/JSONObject;

    .line 148
    :cond_6
    invoke-static {v1, v2}, Lcom/amap/api/col/l3/gi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 149
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/col/l3/fx$a;->i:Lorg/json/JSONObject;

    .line 150
    :cond_7
    invoke-static {v1, v15}, Lcom/amap/api/col/l3/gi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 151
    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/col/l3/fx$a;->p:Lorg/json/JSONObject;

    .line 152
    :cond_8
    invoke-static {v1, v14}, Lcom/amap/api/col/l3/gi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 153
    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 154
    iput-object v2, v0, Lcom/amap/api/col/l3/fx$a;->r:Lorg/json/JSONObject;

    .line 155
    :cond_9
    invoke-static {v1, v13}, Lcom/amap/api/col/l3/gi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 156
    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 157
    iput-object v2, v0, Lcom/amap/api/col/l3/fx$a;->s:Lorg/json/JSONObject;

    .line 158
    :cond_a
    invoke-static {v1, v12}, Lcom/amap/api/col/l3/gi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 159
    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 160
    new-instance v3, Lcom/amap/api/col/l3/fx$a$b;

    invoke-direct {v3}, Lcom/amap/api/col/l3/fx$a$b;-><init>()V

    .line 161
    invoke-static {v2, v3}, Lcom/amap/api/col/l3/fx;->a(Lorg/json/JSONObject;Lcom/amap/api/col/l3/fx$a$b;)V

    .line 162
    iput-object v3, v0, Lcom/amap/api/col/l3/fx$a;->C:Lcom/amap/api/col/l3/fx$a$b;

    .line 163
    :cond_b
    invoke-static {v1, v11}, Lcom/amap/api/col/l3/gi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 164
    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/col/l3/fx$a;->j:Lorg/json/JSONObject;

    .line 165
    :cond_c
    invoke-static {v1, v10}, Lcom/amap/api/col/l3/gi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 166
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/col/l3/fx$a;->g:Lorg/json/JSONObject;

    :cond_d
    move-object/from16 v2, v23

    .line 167
    invoke-static {v1, v2}, Lcom/amap/api/col/l3/gi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 168
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 169
    new-instance v3, Lcom/amap/api/col/l3/fx$a$b;

    invoke-direct {v3}, Lcom/amap/api/col/l3/fx$a$b;-><init>()V

    .line 170
    invoke-static {v2, v3}, Lcom/amap/api/col/l3/fx;->a(Lorg/json/JSONObject;Lcom/amap/api/col/l3/fx$a$b;)V

    .line 171
    iput-object v3, v0, Lcom/amap/api/col/l3/fx$a;->D:Lcom/amap/api/col/l3/fx$a$b;

    :cond_e
    move-object/from16 v2, v22

    .line 172
    invoke-static {v1, v2}, Lcom/amap/api/col/l3/gi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 173
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 174
    new-instance v3, Lcom/amap/api/col/l3/fx$a$b;

    invoke-direct {v3}, Lcom/amap/api/col/l3/fx$a$b;-><init>()V

    .line 175
    invoke-static {v2, v3}, Lcom/amap/api/col/l3/fx;->a(Lorg/json/JSONObject;Lcom/amap/api/col/l3/fx$a$b;)V

    .line 176
    iput-object v3, v0, Lcom/amap/api/col/l3/fx$a;->E:Lcom/amap/api/col/l3/fx$a$b;

    :cond_f
    move-object/from16 v2, v21

    .line 177
    invoke-static {v1, v2}, Lcom/amap/api/col/l3/gi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 178
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 179
    new-instance v3, Lcom/amap/api/col/l3/fx$a$b;

    invoke-direct {v3}, Lcom/amap/api/col/l3/fx$a$b;-><init>()V

    .line 180
    invoke-static {v2, v3}, Lcom/amap/api/col/l3/fx;->a(Lorg/json/JSONObject;Lcom/amap/api/col/l3/fx$a$b;)V

    .line 181
    iput-object v3, v0, Lcom/amap/api/col/l3/fx$a;->F:Lcom/amap/api/col/l3/fx$a$b;

    :cond_10
    move-object/from16 v2, v20

    .line 182
    invoke-static {v1, v2}, Lcom/amap/api/col/l3/gi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 183
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 184
    iput-object v2, v0, Lcom/amap/api/col/l3/fx$a;->c:Lorg/json/JSONObject;

    :cond_11
    move-object/from16 v2, v19

    .line 185
    invoke-static {v1, v2}, Lcom/amap/api/col/l3/gi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 186
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 187
    iput-object v2, v0, Lcom/amap/api/col/l3/fx$a;->d:Lorg/json/JSONObject;

    :cond_12
    move-object/from16 v2, v18

    .line 188
    invoke-static {v1, v2}, Lcom/amap/api/col/l3/gi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 189
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/col/l3/fx$a;->e:Lorg/json/JSONObject;

    :cond_13
    move-object/from16 v2, v17

    .line 190
    invoke-static {v1, v2}, Lcom/amap/api/col/l3/gi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 191
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/col/l3/fx$a;->f:Lorg/json/JSONObject;

    :cond_14
    move-object/from16 v2, v16

    .line 192
    invoke-static {v1, v2}, Lcom/amap/api/col/l3/gi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 193
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/col/l3/fx$a;->t:Lorg/json/JSONObject;

    :cond_15
    const-string v2, "14B"

    .line 194
    invoke-static {v1, v2}, Lcom/amap/api/col/l3/gi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, "14B"

    .line 195
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/col/l3/fx$a;->u:Lorg/json/JSONObject;

    :cond_16
    const-string v2, "14D"

    .line 196
    invoke-static {v1, v2}, Lcom/amap/api/col/l3/gi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    const-string v2, "14D"

    .line 197
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/col/l3/fx$a;->v:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_17
    return-void

    :catchall_0
    move-exception v0

    const-string v1, "at"

    const-string v2, "pe"

    .line 198
    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Lorg/json/JSONObject;Lcom/amap/api/col/l3/fx$a$b;)V
    .locals 5

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "m"

    .line 118
    invoke-static {p0, v0}, Lcom/amap/api/col/l3/fx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "u"

    .line 119
    invoke-static {p0, v1}, Lcom/amap/api/col/l3/fx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "v"

    .line 120
    invoke-static {p0, v2}, Lcom/amap/api/col/l3/fx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "able"

    .line 121
    invoke-static {p0, v3}, Lcom/amap/api/col/l3/fx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "on"

    .line 122
    invoke-static {p0, v4}, Lcom/amap/api/col/l3/fx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 123
    iput-object v0, p1, Lcom/amap/api/col/l3/fx$a$b;->c:Ljava/lang/String;

    .line 124
    iput-object v1, p1, Lcom/amap/api/col/l3/fx$a$b;->b:Ljava/lang/String;

    .line 125
    iput-object v2, p1, Lcom/amap/api/col/l3/fx$a$b;->d:Ljava/lang/String;

    const/4 v0, 0x0

    .line 126
    invoke-static {v3, v0}, Lcom/amap/api/col/l3/fx;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Lcom/amap/api/col/l3/fx$a$b;->a:Z

    const/4 v0, 0x1

    .line 127
    invoke-static {p0, v0}, Lcom/amap/api/col/l3/fx;->a(Ljava/lang/String;Z)Z

    move-result p0

    iput-boolean p0, p1, Lcom/amap/api/col/l3/fx$a$b;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "at"

    const-string v0, "pe"

    .line 128
    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private static a(Lorg/json/JSONObject;Lcom/amap/api/col/l3/fx$a$c;)V
    .locals 2

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "md5"

    .line 129
    invoke-static {p0, v0}, Lcom/amap/api/col/l3/fx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "url"

    .line 130
    invoke-static {p0, v1}, Lcom/amap/api/col/l3/fx;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 131
    iput-object v0, p1, Lcom/amap/api/col/l3/fx$a$c;->b:Ljava/lang/String;

    .line 132
    iput-object p0, p1, Lcom/amap/api/col/l3/fx$a$c;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "at"

    const-string v0, "psc"

    .line 133
    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Z)Z
    .locals 2

    .line 2
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    .line 3
    :cond_0
    invoke-static {p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "/"

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 5
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 6
    aget-object p0, p0, v0

    const/4 v0, 0x4

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    .line 8
    rem-int/lit8 p0, p0, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p0, v1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0

    :catchall_0
    return p1
.end method
