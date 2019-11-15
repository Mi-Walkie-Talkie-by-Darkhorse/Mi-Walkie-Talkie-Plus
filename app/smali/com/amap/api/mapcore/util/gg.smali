.class public Lcom/amap/api/mapcore/util/gg;
.super Lcom/amap/api/mapcore/util/gj;
.source "AnrLogProcessor.java"


# static fields
.field private static b:Z


# instance fields
.field private c:[Ljava/lang/String;

.field private d:I

.field private e:Z

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/amap/api/mapcore/util/gg;->b:Z

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/gj;-><init>(I)V

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/gg;->c:[Ljava/lang/String;

    iput v1, p0, Lcom/amap/api/mapcore/util/gg;->d:I

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/gg;->e:Z

    iput v1, p0, Lcom/amap/api/mapcore/util/gg;->f:I

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget v0, p0, Lcom/amap/api/mapcore/util/gg;->d:I

    const/16 v1, 0x9

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/util/gg;->d:I

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/gg;->c:[Ljava/lang/String;

    iget v1, p0, Lcom/amap/api/mapcore/util/gg;->d:I

    aput-object p1, v0, v1

    iget v0, p0, Lcom/amap/api/mapcore/util/gg;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/gg;->d:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "alg"

    const-string v2, "aDa"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private e()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    iget v0, p0, Lcom/amap/api/mapcore/util/gg;->d:I

    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    const/16 v2, 0x9

    if-le v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lcom/amap/api/mapcore/util/gg;->d:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/amap/api/mapcore/util/gg;->c:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/amap/api/mapcore/util/gg;->c:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "alg"

    const-string v3, "gLI"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore/util/fx;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const v5, 0xfa000

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v3, "/data/anr/traces.txt"

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/hm;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_15

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_16
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_17

    :cond_1
    :goto_1
    move-object v0, v1

    :goto_2
    return-object v0

    :cond_2
    :try_start_3
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v0

    if-le v0, v5, :cond_3

    sub-int/2addr v0, v5

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/io/InputStream;->skip(J)J

    :cond_3
    new-instance v2, Lcom/amap/api/mapcore/util/hm;

    sget-object v0, Lcom/amap/api/mapcore/util/hn;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v0}, Lcom/amap/api/mapcore/util/hm;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_20
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1e
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1c
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v4, 0x0

    :goto_3
    :try_start_5
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/hm;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v5, "pid"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_12

    :goto_4
    const-string v4, "\"main\""

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/hm;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_4
    const/4 v4, 0x1

    move v5, v4

    move-object v4, v0

    :goto_5
    const-string v0, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_21
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1f
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1d
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result v0

    if-eqz v0, :cond_8

    if-eqz v5, :cond_8

    :cond_5
    :goto_6
    if-eqz v2, :cond_6

    :try_start_6
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/hm;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_18
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_19

    :cond_6
    :goto_7
    if-eqz v3, :cond_7

    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1a
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1b

    :cond_7
    :goto_8
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/gg;->e:Z

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/gg;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_8
    if-eqz v5, :cond_a

    :try_start_8
    invoke-direct {p0, v4}, Lcom/amap/api/mapcore/util/gg;->c(Ljava/lang/String;)V

    iget v0, p0, Lcom/amap/api/mapcore/util/gg;->f:I

    const/4 v6, 0x5

    if-eq v0, v6, :cond_5

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/gg;->e:Z

    if-nez v0, :cond_b

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/fx;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/fx;->g()[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/amap/api/mapcore/util/gg;->b([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/amap/api/mapcore/util/gg;->e:Z

    iget-boolean v7, p0, Lcom/amap/api/mapcore/util/gg;->e:Z

    if-eqz v7, :cond_9

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/gg;->a(Lcom/amap/api/mapcore/util/fx;)V

    :cond_a
    :goto_9
    move v4, v5

    goto :goto_3

    :cond_b
    iget v0, p0, Lcom/amap/api/mapcore/util/gg;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/gg;->f:I
    :try_end_8
    .catch Ljava/io/EOFException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_21
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1f
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1d
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_9

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_a
    :try_start_9
    const-string v4, "alg"

    const-string v5, "getA"

    invoke-static {v0, v4, v5}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v2, :cond_c

    :try_start_a
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/hm;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_e
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_f

    :cond_c
    :goto_b
    if-eqz v3, :cond_7

    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_10

    goto :goto_8

    :catch_2
    move-exception v0

    const-string v2, "alg"

    const-string v3, "getA"

    :goto_c
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :catch_3
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_d
    :try_start_c
    const-string v4, "alg"

    const-string v5, "getA"

    invoke-static {v0, v4, v5}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    if-eqz v2, :cond_d

    :try_start_d
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/hm;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_11
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_12

    :cond_d
    :goto_e
    if-eqz v3, :cond_7

    :try_start_e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_13

    goto :goto_8

    :catch_4
    move-exception v0

    const-string v2, "alg"

    const-string v3, "getA"

    goto :goto_c

    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_f
    if-eqz v2, :cond_e

    :try_start_f
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/hm;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_b

    :cond_e
    :goto_10
    if-eqz v3, :cond_f

    :try_start_10
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_d

    :cond_f
    :goto_11
    throw v0

    :cond_10
    move-object v0, v1

    goto/16 :goto_2

    :catch_5
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    :goto_12
    if-eqz v0, :cond_11

    :try_start_11
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/hm;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_8

    :cond_11
    :goto_13
    if-eqz v2, :cond_7

    :try_start_12
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_9

    goto/16 :goto_8

    :catch_6
    move-exception v0

    const-string v2, "alg"

    const-string v3, "getA"

    goto :goto_c

    :catch_7
    move-exception v0

    const-string v3, "alg"

    const-string v4, "getA"

    invoke-static {v0, v3, v4}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :catch_8
    move-exception v0

    const-string v3, "alg"

    const-string v4, "getA"

    invoke-static {v0, v3, v4}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :catch_9
    move-exception v0

    const-string v2, "alg"

    const-string v3, "getA"

    :goto_14
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :catch_a
    move-exception v1

    const-string v2, "alg"

    const-string v4, "getA"

    invoke-static {v1, v2, v4}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :catch_b
    move-exception v1

    const-string v2, "alg"

    const-string v4, "getA"

    invoke-static {v1, v2, v4}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :catch_c
    move-exception v1

    const-string v2, "alg"

    const-string v3, "getA"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :catch_d
    move-exception v1

    const-string v2, "alg"

    const-string v3, "getA"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :catch_e
    move-exception v0

    const-string v2, "alg"

    const-string v4, "getA"

    invoke-static {v0, v2, v4}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :catch_f
    move-exception v0

    const-string v2, "alg"

    const-string v4, "getA"

    invoke-static {v0, v2, v4}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :catch_10
    move-exception v0

    const-string v2, "alg"

    const-string v3, "getA"

    goto :goto_14

    :catch_11
    move-exception v0

    const-string v2, "alg"

    const-string v4, "getA"

    invoke-static {v0, v2, v4}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    :catch_12
    move-exception v0

    const-string v2, "alg"

    const-string v4, "getA"

    invoke-static {v0, v2, v4}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    :catch_13
    move-exception v0

    const-string v2, "alg"

    const-string v3, "getA"

    goto :goto_14

    :catch_14
    move-exception v2

    const-string v3, "alg"

    const-string v4, "getA"

    invoke-static {v2, v3, v4}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_15
    move-exception v2

    const-string v3, "alg"

    const-string v4, "getA"

    invoke-static {v2, v3, v4}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_16
    move-exception v0

    const-string v2, "alg"

    const-string v3, "getA"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_17
    move-exception v0

    const-string v2, "alg"

    const-string v3, "getA"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_18
    move-exception v0

    const-string v2, "alg"

    const-string v4, "getA"

    invoke-static {v0, v2, v4}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :catch_19
    move-exception v0

    const-string v2, "alg"

    const-string v4, "getA"

    invoke-static {v0, v2, v4}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :catch_1a
    move-exception v0

    const-string v2, "alg"

    const-string v3, "getA"

    goto/16 :goto_c

    :catch_1b
    move-exception v0

    const-string v2, "alg"

    const-string v3, "getA"

    goto/16 :goto_14

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto/16 :goto_f

    :catchall_2
    move-exception v0

    goto/16 :goto_f

    :catch_1c
    move-exception v0

    move-object v2, v1

    goto/16 :goto_d

    :catch_1d
    move-exception v0

    goto/16 :goto_d

    :catch_1e
    move-exception v0

    move-object v2, v1

    goto/16 :goto_a

    :catch_1f
    move-exception v0

    goto/16 :goto_a

    :catch_20
    move-exception v0

    move-object v0, v1

    move-object v2, v3

    goto/16 :goto_12

    :catch_21
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    goto/16 :goto_12

    :cond_12
    move v5, v4

    move-object v4, v0

    goto/16 :goto_5
.end method

.method protected a(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/amap/api/mapcore/util/fs;->p(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v0, :cond_2

    sget-boolean v2, Lcom/amap/api/mapcore/util/gg;->b:Z

    if-eqz v2, :cond_2

    sput-boolean v1, Lcom/amap/api/mapcore/util/gg;->b:Z

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    new-instance v3, Lcom/amap/api/mapcore/util/gw;

    invoke-direct {v3, p1}, Lcom/amap/api/mapcore/util/gw;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/amap/api/mapcore/util/gw;->a()Lcom/amap/api/mapcore/util/gx;

    move-result-object v4

    if-nez v4, :cond_0

    monitor-exit v2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v4}, Lcom/amap/api/mapcore/util/gx;->c()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Lcom/amap/api/mapcore/util/gx;->c(Z)V

    invoke-virtual {v3, v4}, Lcom/amap/api/mapcore/util/gw;->a(Lcom/amap/api/mapcore/util/gx;)V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method
