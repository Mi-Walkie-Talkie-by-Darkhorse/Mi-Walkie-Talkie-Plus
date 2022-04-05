.class public final Lcom/amap/api/col/l3/bn;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3/bn$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;Ljava/io/File;JJLcom/amap/api/col/l3/bn$a;)J
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-wide/from16 v10, p5

    move-object/from16 v12, p7

    const-wide/16 v2, 0x0

    cmp-long v4, p3, v2

    if-nez v4, :cond_1

    if-eqz v12, :cond_0

    invoke-interface/range {p7 .. p7}, Lcom/amap/api/col/l3/bn$a;->b()V

    :cond_0
    return-wide v2

    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isDirectory()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v3, "Cannot create dir "

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    :try_start_1
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-wide/from16 v14, p3

    if-eqz v13, :cond_a

    const/4 v9, 0x0

    :goto_1
    :try_start_2
    array-length v2, v13

    if-ge v9, v2, :cond_a

    new-instance v3, Ljava/io/File;

    aget-object v2, v13, v9

    invoke-direct {v3, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    aget-object v2, v13, v9

    invoke-direct {v4, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v2, p0

    move-wide v5, v14

    move-wide/from16 v7, p5

    move/from16 v16, v9

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/amap/api/col/l3/bn;->a(Ljava/io/File;Ljava/io/File;JJLcom/amap/api/col/l3/bn$a;)J

    move-result-wide v14
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v9, v16, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :cond_4
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_2
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v1, 0x400

    new-array v1, v1, [B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-wide/from16 v5, p3

    :cond_7
    :goto_3
    :try_start_4
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_8

    invoke-virtual {v0, v1, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v7, v3

    add-long/2addr v5, v7

    if-eqz v12, :cond_7

    long-to-float v3, v5

    long-to-float v7, v10

    div-float/2addr v3, v7

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float v3, v3, v7

    invoke-interface {v12, v3}, Lcom/amap/api/col/l3/bn$a;->a(F)V

    goto :goto_3

    :cond_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    if-eqz v12, :cond_9

    const-wide/16 v0, 0x1

    sub-long v0, v10, v0

    cmp-long v2, v5, v0

    if-ltz v2, :cond_9

    invoke-interface/range {p7 .. p7}, Lcom/amap/api/col/l3/bn$a;->a()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_9
    move-wide v14, v5

    goto :goto_5

    :catch_1
    move-exception v0

    move-wide v14, v5

    goto :goto_4

    :catch_2
    move-exception v0

    move-wide/from16 v14, p3

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v12, :cond_a

    invoke-interface/range {p7 .. p7}, Lcom/amap/api/col/l3/bn$a;->b()V

    :cond_a
    :goto_5
    return-wide v14
.end method
