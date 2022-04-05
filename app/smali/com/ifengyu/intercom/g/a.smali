.class public Lcom/ifengyu/intercom/g/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(DDLcom/ifengyu/intercom/g/d/b;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/g/b;->c()Lcom/ifengyu/intercom/g/c/a;

    move-result-object v1

    const-string v2, "https://api.ifengyu.com"

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/g/c/b;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/b;

    check-cast v1, Lcom/ifengyu/intercom/g/c/a;

    const-string v2, "action"

    const-string v3, "elevation"

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/intercom/g/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "location"

    invoke-virtual {v1, p1, p0}, Lcom/ifengyu/intercom/g/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/a;

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->N()Ljava/lang/String;

    move-result-object p0

    const-string p1, "userid"

    invoke-virtual {v1, p1, p0}, Lcom/ifengyu/intercom/g/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/a;

    const-string p0, "time"

    invoke-virtual {v1, p0, v0}, Lcom/ifengyu/intercom/g/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/a;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->O()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ifengyu/intercom/i/a0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "sign"

    invoke-virtual {v1, p1, p0}, Lcom/ifengyu/intercom/g/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/a;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/g/c/a;->a()Lcom/ifengyu/intercom/g/e/f;

    move-result-object p0

    const-wide/16 p1, 0x1388

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/g/e/f;->a(J)Lcom/ifengyu/intercom/g/e/f;

    const-wide/16 p1, 0xbb8

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/g/e/f;->b(J)Lcom/ifengyu/intercom/g/e/f;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/g/e/f;->c(J)Lcom/ifengyu/intercom/g/e/f;

    invoke-virtual {p0, p4}, Lcom/ifengyu/intercom/g/e/f;->b(Lcom/ifengyu/intercom/g/d/b;)V

    return-void
.end method

.method public static a(IILcom/ifengyu/intercom/g/d/b;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://cms.ifengyu.com/api/v1/pages/?type=puput.EntryPage&child_of=3&limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "&offset="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "&order=-first_published_at&fields=excerpt,header_image_url"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/ifengyu/intercom/g/b;->c()Lcom/ifengyu/intercom/g/c/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ifengyu/intercom/g/c/b;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/b;

    check-cast p1, Lcom/ifengyu/intercom/g/c/a;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/g/c/a;->a()Lcom/ifengyu/intercom/g/e/f;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/g/e/f;->b(Lcom/ifengyu/intercom/g/d/b;)V

    return-void
.end method

.method public static a(ILcom/ifengyu/intercom/g/d/b;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/g/b;->e()Lcom/ifengyu/intercom/g/c/c;

    move-result-object v1

    const-string v2, "https://api.ifengyu.com"

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/g/c/b;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/b;

    check-cast v1, Lcom/ifengyu/intercom/g/c/c;

    const-string v2, "action"

    const-string v3, "delfeedback"

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->N()Ljava/lang/String;

    move-result-object v2

    const-string v3, "userid"

    invoke-virtual {v1, v3, v2}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "feedback_id"

    invoke-virtual {v1, v2, p0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    const-string p0, "time"

    invoke-virtual {v1, p0, v0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->O()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ifengyu/intercom/i/a0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "sign"

    invoke-virtual {v1, v0, p0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/g/c/c;->a()Lcom/ifengyu/intercom/g/e/f;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/g/e/f;->b(Lcom/ifengyu/intercom/g/d/b;)V

    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ifengyu/intercom/g/d/b;)V
    .locals 10

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->N()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->O()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "sign"

    const-string v5, "time"

    const-string v6, "userid"

    const-string v7, "profile"

    const-string v8, "action"

    const-string v9, "https://api.ifengyu.com"

    if-eq p0, v3, :cond_3

    const/4 p1, 0x2

    if-eq p0, p1, :cond_2

    const/4 p1, 0x3

    if-eq p0, p1, :cond_1

    const/4 p1, 0x4

    if-eq p0, p1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/g/b;->e()Lcom/ifengyu/intercom/g/c/c;

    move-result-object p0

    invoke-virtual {p0, v9}, Lcom/ifengyu/intercom/g/c/b;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/b;

    check-cast p0, Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {p0, v8, v7}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {p0, v6, v0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    const-string p1, "gender"

    invoke-virtual {p0, p1, p4}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {p0, v5, v1}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/i/a0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/g/c/c;->a()Lcom/ifengyu/intercom/g/e/f;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/ifengyu/intercom/g/e/f;->b(Lcom/ifengyu/intercom/g/d/b;)V

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/g/b;->e()Lcom/ifengyu/intercom/g/c/c;

    move-result-object p0

    invoke-virtual {p0, v9}, Lcom/ifengyu/intercom/g/c/b;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/b;

    check-cast p0, Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {p0, v8, v7}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {p0, v6, v0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    const-string p1, "email"

    invoke-virtual {p0, p1, p3}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {p0, v5, v1}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/i/a0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/g/c/c;->a()Lcom/ifengyu/intercom/g/e/f;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/ifengyu/intercom/g/e/f;->b(Lcom/ifengyu/intercom/g/d/b;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/ifengyu/intercom/g/b;->e()Lcom/ifengyu/intercom/g/c/c;

    move-result-object p0

    invoke-virtual {p0, v9}, Lcom/ifengyu/intercom/g/c/b;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/b;

    check-cast p0, Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {p0, v8, v7}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {p0, v6, v0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    const-string p1, "phone"

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {p0, v5, v1}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/i/a0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/g/c/c;->a()Lcom/ifengyu/intercom/g/e/f;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/ifengyu/intercom/g/e/f;->b(Lcom/ifengyu/intercom/g/d/b;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/ifengyu/intercom/g/b;->e()Lcom/ifengyu/intercom/g/c/c;

    move-result-object p0

    invoke-virtual {p0, v9}, Lcom/ifengyu/intercom/g/c/b;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/b;

    check-cast p0, Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {p0, v8, v7}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {p0, v6, v0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    const-string p2, "nickname"

    invoke-virtual {p0, p2, p1}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {p0, v5, v1}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/i/a0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/g/c/c;->a()Lcom/ifengyu/intercom/g/e/f;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/ifengyu/intercom/g/e/f;->b(Lcom/ifengyu/intercom/g/d/b;)V

    :goto_0
    return-void
.end method

.method public static a(Lcom/ifengyu/intercom/g/d/b;)V
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/g/b;->c()Lcom/ifengyu/intercom/g/c/a;

    move-result-object v0

    const-string v1, "https://cms.ifengyu.com/api/v1/pages/?type=puput.EntryPage&child_of=5&order=-first_published_at&fields=excerpt,header_image_url"

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/g/c/b;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/b;

    check-cast v0, Lcom/ifengyu/intercom/g/c/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/g/c/a;->a()Lcom/ifengyu/intercom/g/e/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/g/e/f;->b(Lcom/ifengyu/intercom/g/d/b;)V

    return-void
.end method

.method public static a(Lcom/ifengyu/intercom/greendao/bean/b;Ljava/util/List;Lcom/ifengyu/intercom/g/d/b;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ifengyu/intercom/greendao/bean/b;",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/greendao/bean/c;",
            ">;",
            "Lcom/ifengyu/intercom/g/d/b;",
            ")V"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    const-string v5, "]"

    if-ge v3, v4, :cond_1

    move-object/from16 v4, p1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ifengyu/intercom/greendao/bean/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/ifengyu/intercom/greendao/bean/c;->f()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-double v9, v9

    const-wide v11, 0x412e848000000000L    # 1000000.0

    div-double/2addr v9, v11

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v9, "\","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/ifengyu/intercom/greendao/bean/c;->g()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-double v13, v10

    div-double/2addr v13, v11

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/ifengyu/intercom/greendao/bean/c;->a()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/ifengyu/intercom/greendao/bean/c;->b()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/ifengyu/intercom/greendao/bean/c;->e()Z

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v3, v6, :cond_0

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    const-string v5, "],"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/ifengyu/intercom/g/b;->e()Lcom/ifengyu/intercom/g/c/c;

    move-result-object v2

    const-string v3, "https://api.ifengyu.com"

    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/g/c/b;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/b;

    check-cast v2, Lcom/ifengyu/intercom/g/c/c;

    const-string v3, "action"

    const-string v4, "saveTrack"

    invoke-virtual {v2, v3, v4}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/greendao/bean/b;->A()Ljava/lang/String;

    move-result-object v3

    const-string v4, "userid"

    invoke-virtual {v2, v4, v3}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/greendao/bean/b;->y()Ljava/lang/String;

    move-result-object v3

    const-string v4, "trackName"

    invoke-virtual {v2, v4, v3}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/greendao/bean/b;->g()Ljava/lang/String;

    move-result-object v3

    const-string v4, "city"

    invoke-virtual {v2, v4, v3}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/greendao/bean/b;->h()Ljava/lang/String;

    move-result-object v3

    const-string v4, "district"

    invoke-virtual {v2, v4, v3}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/greendao/bean/b;->q()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "totalDistance"

    invoke-virtual {v2, v4, v3}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/greendao/bean/b;->r()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "totalSeconds"

    invoke-virtual {v2, v4, v3}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/greendao/bean/b;->f()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "beginTime"

    invoke-virtual {v2, v4, v3}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/greendao/bean/b;->j()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "endTime"

    invoke-virtual {v2, v4, v3}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/greendao/bean/b;->d()Ljava/lang/Float;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "speed"

    invoke-virtual {v2, v4, v3}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/greendao/bean/b;->c()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "alt"

    invoke-virtual {v2, v4, v3}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/greendao/bean/b;->n()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "maxAlt"

    invoke-virtual {v2, v4, v3}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/greendao/bean/b;->o()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "minAlt"

    invoke-virtual {v2, v4, v3}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/greendao/bean/b;->a()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "accruedClimb"

    invoke-virtual {v2, v4, v3}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/greendao/bean/b;->b()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "accruedDescent"

    invoke-virtual {v2, v4, v3}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/greendao/bean/b;->v()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/greendao/bean/b;->w()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v5, "screenShot"

    invoke-virtual {v2, v5, v3, v4}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "track"

    invoke-virtual {v2, v3, v1}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    const-string v1, "time"

    invoke-virtual {v2, v1, v0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->O()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/i/a0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sign"

    invoke-virtual {v2, v1, v0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/g/c/c;->a()Lcom/ifengyu/intercom/g/e/f;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/g/e/f;->b(Lcom/ifengyu/intercom/g/d/b;)V

    return-void
.end method

.method public static a(Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;Ljava/lang/String;Lcom/ifengyu/intercom/g/d/b;)V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/g/a$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    const-string v2, "https://api.ifengyu.com"

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/v2/user/wechat"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/v2/user/mi"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {}, Lcom/ifengyu/intercom/g/b;->e()Lcom/ifengyu/intercom/g/c/c;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/g/c/b;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/b;

    check-cast p0, Lcom/ifengyu/intercom/g/c/c;

    const-string v1, "action"

    const-string v2, "login"

    invoke-virtual {p0, v1, v2}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    const-string v1, "code"

    invoke-virtual {p0, v1, p1}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    const-string p1, "os"

    const-string v1, "and"

    invoke-virtual {p0, p1, v1}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    const-string p1, "time"

    invoke-virtual {p0, p1, v0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-static {v0}, Lcom/ifengyu/intercom/i/a0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "sign"

    invoke-virtual {p0, v0, p1}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/g/c/c;->a()Lcom/ifengyu/intercom/g/e/f;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/g/e/f;->b(Lcom/ifengyu/intercom/g/d/b;)V

    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ifengyu/intercom/g/d/b;)V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/g/b;->e()Lcom/ifengyu/intercom/g/c/c;

    move-result-object v1

    const-string v2, "https://api.ifengyu.com/v3/sms/code"

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/g/c/b;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/b;

    check-cast v1, Lcom/ifengyu/intercom/g/c/c;

    const-string v2, "phone"

    invoke-virtual {v1, v2, p0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "codeType"

    invoke-virtual {v1, p1, p0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    const-string p0, "sessionId"

    invoke-virtual {v1, p0, p2}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    const-string p0, "sig"

    invoke-virtual {v1, p0, p3}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    const-string p0, "token"

    invoke-virtual {v1, p0, p4}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    const-string p0, "scene"

    invoke-virtual {v1, p0, p5}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    const-string p0, "time"

    invoke-virtual {v1, p0, v0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-static {v0}, Lcom/ifengyu/intercom/i/a0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "sign"

    invoke-virtual {v1, p1, p0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/g/c/c;->a()Lcom/ifengyu/intercom/g/e/f;

    move-result-object p0

    invoke-virtual {p0, p6}, Lcom/ifengyu/intercom/g/e/f;->b(Lcom/ifengyu/intercom/g/d/b;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/ifengyu/intercom/g/d/b;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/g/b;->e()Lcom/ifengyu/intercom/g/c/c;

    move-result-object v1

    const-string v2, "https://api.ifengyu.com"

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/g/c/b;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/b;

    check-cast v1, Lcom/ifengyu/intercom/g/c/c;

    const-string v2, "action"

    const-string v3, "delTrack"

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->N()Ljava/lang/String;

    move-result-object v2

    const-string v3, "userid"

    invoke-virtual {v1, v3, v2}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    const-string v2, "trackId"

    invoke-virtual {v1, v2, p0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    const-string p0, "time"

    invoke-virtual {v1, p0, v0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->O()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ifengyu/intercom/i/a0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "sign"

    invoke-virtual {v1, v0, p0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/g/c/c;->a()Lcom/ifengyu/intercom/g/e/f;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/g/e/f;->b(Lcom/ifengyu/intercom/g/d/b;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/io/File;Lcom/ifengyu/intercom/g/d/b;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/g/b;->e()Lcom/ifengyu/intercom/g/c/c;

    move-result-object v1

    const-string v2, "https://api.ifengyu.com"

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/g/c/b;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/b;

    check-cast v1, Lcom/ifengyu/intercom/g/c/c;

    const-string v2, "action"

    const-string v3, "profile"

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->N()Ljava/lang/String;

    move-result-object v2

    const-string v3, "userid"

    invoke-virtual {v1, v3, v2}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    const-string v2, "time"

    invoke-virtual {v1, v2, v0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->O()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/i/a0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "sign"

    invoke-virtual {v1, v2, v0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    const-string v0, "portrait"

    invoke-virtual {v1, v0, p0, p1}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/g/c/c;->a()Lcom/ifengyu/intercom/g/e/f;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/g/e/f;->b(Lcom/ifengyu/intercom/g/d/b;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/ifengyu/intercom/g/d/b;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/g/b;->e()Lcom/ifengyu/intercom/g/c/c;

    move-result-object v1

    const-string v2, "https://api.ifengyu.com"

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/g/c/b;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/b;

    check-cast v1, Lcom/ifengyu/intercom/g/c/c;

    const-string v2, "action"

    const-string v3, "queryTrack"

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->N()Ljava/lang/String;

    move-result-object v2

    const-string v3, "userid"

    invoke-virtual {v1, v3, v2}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    if-eqz p0, :cond_0

    const-string v2, "trackId"

    invoke-virtual {v1, v2, p0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-lez p0, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "limit"

    invoke-virtual {v1, p1, p0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-lez p0, :cond_2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "offset"

    invoke-virtual {v1, p1, p0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    :cond_2
    const-string p0, "time"

    invoke-virtual {v1, p0, v0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->O()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ifengyu/intercom/i/a0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "sign"

    invoke-virtual {v1, p1, p0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/g/c/c;->a()Lcom/ifengyu/intercom/g/e/f;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/ifengyu/intercom/g/e/f;->b(Lcom/ifengyu/intercom/g/d/b;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->N()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->O()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-lez p2, :cond_0

    const/high16 v4, 0x1000000

    div-int v4, p2, v4

    rem-int/lit16 v4, v4, 0x100

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v5, 0x10000

    div-int v6, p2, v5

    rem-int/lit16 v6, v6, 0x100

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int/2addr p2, v5

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-static {}, Lcom/ifengyu/intercom/i/k0;->d()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string p2, "unknown"

    :goto_0
    invoke-static {}, Lcom/ifengyu/intercom/g/b;->e()Lcom/ifengyu/intercom/g/c/c;

    move-result-object v4

    const-string v5, "https://api.ifengyu.com"

    invoke-virtual {v4, v5}, Lcom/ifengyu/intercom/g/c/b;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/b;

    check-cast v4, Lcom/ifengyu/intercom/g/c/c;

    const-string v5, "action"

    const-string v6, "uploadInterphoneInfo"

    invoke-virtual {v4, v5, v6}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    const-string v5, "userid"

    invoke-virtual {v4, v5, v0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    const-string v0, "interphonetype"

    invoke-virtual {v4, v0, p0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    const-string p0, "interphoneid"

    invoke-virtual {v4, p0, p1}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->U()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "1"

    goto :goto_1

    :cond_1
    const-string p0, "0"

    :goto_1
    const-string p1, "activate"

    invoke-virtual {v4, p1, p0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "mcuversion"

    invoke-virtual {v4, p1, p0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    const-string p0, "appversion"

    invoke-virtual {v4, p0, p2}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "phonemodel"

    invoke-virtual {v4, p1, p0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    const-string p0, "phonesys"

    const-string p1, "android"

    invoke-virtual {v4, p0, p1}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    sget-object p0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string p1, "phonesysversion"

    invoke-virtual {v4, p1, p0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    const-string p0, "time"

    invoke-virtual {v4, p0, v2}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ifengyu/intercom/i/a0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "sign"

    invoke-virtual {v4, p1, p0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {v4}, Lcom/ifengyu/intercom/g/c/c;->a()Lcom/ifengyu/intercom/g/e/f;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/g/e/f;->b(Lcom/ifengyu/intercom/g/d/b;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ILcom/ifengyu/intercom/g/d/b;)V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/g/b;->e()Lcom/ifengyu/intercom/g/c/c;

    move-result-object v1

    const-string v2, "https://api.ifengyu.com/v3/sms/code/check"

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/g/c/b;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/b;

    check-cast v1, Lcom/ifengyu/intercom/g/c/c;

    const-string v2, "phone"

    invoke-virtual {v1, v2, p0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    const-string p0, "code"

    invoke-virtual {v1, p0, p1}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "codeType"

    invoke-virtual {v1, p1, p0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    const-string p0, "time"

    invoke-virtual {v1, p0, v0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-static {v0}, Lcom/ifengyu/intercom/i/a0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "sign"

    invoke-virtual {v1, p1, p0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/g/c/c;->a()Lcom/ifengyu/intercom/g/e/f;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/ifengyu/intercom/g/e/f;->b(Lcom/ifengyu/intercom/g/d/b;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/ifengyu/intercom/g/d/b;)V
    .locals 5

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->O()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/ifengyu/intercom/g/b;->e()Lcom/ifengyu/intercom/g/c/c;

    move-result-object v2

    const-string v3, "https://api.ifengyu.com"

    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/g/c/b;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/b;

    check-cast v2, Lcom/ifengyu/intercom/g/c/c;

    const-string v3, "action"

    const-string v4, "channelAct"

    invoke-virtual {v2, v3, v4}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    const-string v3, "userid"

    invoke-virtual {v2, v3, p0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    const-string p0, "deviceId"

    invoke-virtual {v2, p0, p1}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    const-string p0, "activate"

    const-string p1, "1"

    invoke-virtual {v2, p0, p1}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    const-string p0, "time"

    invoke-virtual {v2, p0, v1}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ifengyu/intercom/i/a0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "sign"

    invoke-virtual {v2, p1, p0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/g/c/c;->a()Lcom/ifengyu/intercom/g/e/f;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/g/e/f;->b(Lcom/ifengyu/intercom/g/d/b;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ifengyu/intercom/g/d/b;)V
    .locals 12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sign"

    const-string v2, "time"

    const-string v3, "feedback_object"

    const-string v4, "Android"

    const-string v5, "platform"

    const-string v6, "message"

    const-string v7, "userid"

    const-string v8, "feedback"

    const-string v9, "action"

    const-string v10, "https://api.ifengyu.com"

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/g/b;->e()Lcom/ifengyu/intercom/g/c/c;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/ifengyu/intercom/g/c/b;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/b;

    check-cast v11, Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {v11, v9, v8}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->N()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v7, v8}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    const-string v7, "email"

    invoke-virtual {v11, v7, p0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {v11, v6, p1}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {v11, v5, v4}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {v11, v3, p2}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {v11, v2, v0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->O()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ifengyu/intercom/i/a0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v11, v1, p0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {v11}, Lcom/ifengyu/intercom/g/c/c;->a()Lcom/ifengyu/intercom/g/e/f;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/ifengyu/intercom/g/e/f;->b(Lcom/ifengyu/intercom/g/d/b;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/g/b;->e()Lcom/ifengyu/intercom/g/c/c;

    move-result-object p0

    invoke-virtual {p0, v10}, Lcom/ifengyu/intercom/g/c/b;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/b;

    check-cast p0, Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {p0, v9, v8}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->N()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {p0, v6, p1}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {p0, v5, v4}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {p0, v3, p2}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {p0, v2, v0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->O()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/i/a0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/g/c/c;->a()Lcom/ifengyu/intercom/g/e/f;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/ifengyu/intercom/g/e/f;->b(Lcom/ifengyu/intercom/g/d/b;)V

    :goto_0
    return-void
.end method

.method public static b(Ljava/lang/String;Lcom/ifengyu/intercom/g/d/b;)Lcom/ifengyu/intercom/g/e/f;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/g/b;->c()Lcom/ifengyu/intercom/g/c/a;

    move-result-object v0

    const-string v1, "https://api-mipoc.ifengyu.com:8088/v1/privacy/info"

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/g/c/b;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/b;

    check-cast v0, Lcom/ifengyu/intercom/g/c/a;

    const-string v1, "type"

    invoke-virtual {v0, v1, p0}, Lcom/ifengyu/intercom/g/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/g/c/a;->a()Lcom/ifengyu/intercom/g/e/f;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/g/e/f;->b(Lcom/ifengyu/intercom/g/d/b;)V

    return-object p0
.end method

.method public static b(DDLcom/ifengyu/intercom/g/d/b;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://api.map.baidu.com/geocoder?location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, "&output=json"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/ifengyu/intercom/g/b;->c()Lcom/ifengyu/intercom/g/c/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ifengyu/intercom/g/c/b;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/b;

    check-cast p1, Lcom/ifengyu/intercom/g/c/a;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/g/c/a;->a()Lcom/ifengyu/intercom/g/e/f;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/ifengyu/intercom/g/e/f;->b(Lcom/ifengyu/intercom/g/d/b;)V

    return-void
.end method

.method public static b(IILcom/ifengyu/intercom/g/d/b;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/g/b;->e()Lcom/ifengyu/intercom/g/c/c;

    move-result-object v1

    const-string v2, "https://api.ifengyu.com"

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/g/c/b;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/b;

    check-cast v1, Lcom/ifengyu/intercom/g/c/c;

    const-string v2, "action"

    const-string v3, "getfeedback"

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->N()Ljava/lang/String;

    move-result-object v2

    const-string v3, "userid"

    invoke-virtual {v1, v3, v2}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    const-string v2, "time"

    invoke-virtual {v1, v2, v0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->O()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/i/a0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "sign"

    invoke-virtual {v1, v2, v0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    if-lez p0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "limit"

    invoke-virtual {v1, v0, p0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    :cond_0
    if-lez p1, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "offset"

    invoke-virtual {v1, p1, p0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    :cond_1
    invoke-virtual {v1}, Lcom/ifengyu/intercom/g/c/c;->a()Lcom/ifengyu/intercom/g/e/f;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/g/e/f;->b(Lcom/ifengyu/intercom/g/d/b;)V

    return-void
.end method

.method public static b(Lcom/ifengyu/intercom/g/d/b;)V
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/g/b;->c()Lcom/ifengyu/intercom/g/c/a;

    move-result-object v0

    const-string v1, "https://cms.ifengyu.com/api/v1/pages/?type=puput.EntryPage&child_of=4&order=-first_published_at&limit=1"

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/g/c/b;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/b;

    check-cast v0, Lcom/ifengyu/intercom/g/c/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/g/c/a;->a()Lcom/ifengyu/intercom/g/e/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/g/e/f;->b(Lcom/ifengyu/intercom/g/d/b;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Lcom/ifengyu/intercom/g/d/b;)V
    .locals 5

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->O()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/ifengyu/intercom/g/b;->e()Lcom/ifengyu/intercom/g/c/c;

    move-result-object v2

    const-string v3, "https://api.ifengyu.com"

    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/g/c/b;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/b;

    check-cast v2, Lcom/ifengyu/intercom/g/c/c;

    const-string v3, "action"

    const-string v4, "channelAct"

    invoke-virtual {v2, v3, v4}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    const-string v3, "userid"

    invoke-virtual {v2, v3, p0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    const-string p0, "deviceId"

    invoke-virtual {v2, p0, p1}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    const-string p0, "activate"

    const-string p1, "2"

    invoke-virtual {v2, p0, p1}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    const-string p0, "time"

    invoke-virtual {v2, p0, v1}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ifengyu/intercom/i/a0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "sign"

    invoke-virtual {v2, p1, p0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/g/c/c;->a()Lcom/ifengyu/intercom/g/e/f;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/g/e/f;->b(Lcom/ifengyu/intercom/g/d/b;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ifengyu/intercom/g/d/b;)V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/g/b;->e()Lcom/ifengyu/intercom/g/c/c;

    move-result-object v1

    const-string v2, "https://api.ifengyu.com/v3/user/register"

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/g/c/b;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/b;

    check-cast v1, Lcom/ifengyu/intercom/g/c/c;

    const-string v2, "phone"

    invoke-virtual {v1, v2, p0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    const-string p0, "password"

    invoke-virtual {v1, p0, p1}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    const-string p0, "code"

    invoke-virtual {v1, p0, p2}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    const-string p0, "time"

    invoke-virtual {v1, p0, v0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-static {v0}, Lcom/ifengyu/intercom/i/a0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "sign"

    invoke-virtual {v1, p1, p0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/g/c/c;->a()Lcom/ifengyu/intercom/g/e/f;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/ifengyu/intercom/g/e/f;->b(Lcom/ifengyu/intercom/g/d/b;)V

    return-void
.end method

.method public static c(Lcom/ifengyu/intercom/g/d/b;)V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Lcom/ifengyu/intercom/i/k0;->d()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->D()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v2, :cond_0

    const/high16 v4, 0x1000000

    div-int v4, v2, v4

    rem-int/lit16 v4, v4, 0x100

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v5, 0x10000

    div-int v6, v2, v5

    rem-int/lit16 v6, v6, 0x100

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int/2addr v2, v5

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "SealMcuVersionName"

    invoke-static {v4, v2}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "https://api.ifengyu.com/v2/version"

    const-string v4, "url:"

    invoke-static {v4, v2}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ifengyu/intercom/g/b;->c()Lcom/ifengyu/intercom/g/c/a;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/ifengyu/intercom/g/c/b;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/b;

    check-cast v4, Lcom/ifengyu/intercom/g/c/a;

    const-string v2, "action"

    const-string v5, "version"

    invoke-virtual {v4, v2, v5}, Lcom/ifengyu/intercom/g/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/a;

    const-string v2, "type"

    const-string v5, "seal"

    invoke-virtual {v4, v2, v5}, Lcom/ifengyu/intercom/g/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/a;

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->N()Ljava/lang/String;

    move-result-object v2

    const-string v5, "userid"

    invoke-virtual {v4, v5, v2}, Lcom/ifengyu/intercom/g/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/a;

    const-string v2, "lang"

    const-string v5, "zh_cn"

    invoke-virtual {v4, v2, v5}, Lcom/ifengyu/intercom/g/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/a;

    const-string v2, "appVersion"

    invoke-virtual {v4, v2, v1}, Lcom/ifengyu/intercom/g/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/a;

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->C()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hwVersion"

    invoke-virtual {v4, v2, v1}, Lcom/ifengyu/intercom/g/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/a;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mcuVersion"

    invoke-virtual {v4, v2, v1}, Lcom/ifengyu/intercom/g/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/a;

    const-string v1, "time"

    invoke-virtual {v4, v1, v0}, Lcom/ifengyu/intercom/g/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->O()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/i/a0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sign"

    invoke-virtual {v4, v1, v0}, Lcom/ifengyu/intercom/g/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/a;

    invoke-virtual {v4}, Lcom/ifengyu/intercom/g/c/a;->a()Lcom/ifengyu/intercom/g/e/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/g/e/f;->b(Lcom/ifengyu/intercom/g/d/b;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Lcom/ifengyu/intercom/g/d/b;)V
    .locals 7

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->R()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "userid"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->O()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/ifengyu/intercom/g/b;->e()Lcom/ifengyu/intercom/g/c/c;

    move-result-object v4

    const-string v5, "https://api.ifengyu.com"

    invoke-virtual {v4, v5}, Lcom/ifengyu/intercom/g/c/b;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/b;

    check-cast v4, Lcom/ifengyu/intercom/g/c/c;

    const-string v5, "action"

    const-string v6, "userinfo"

    invoke-virtual {v4, v5, v6}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {v4, v1, v0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    const-string v0, "queryid"

    invoke-virtual {v4, v0, p0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    const-string p0, "time"

    invoke-virtual {v4, p0, v2}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ifengyu/intercom/i/a0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "sign"

    invoke-virtual {v4, v0, p0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {v4}, Lcom/ifengyu/intercom/g/c/c;->a()Lcom/ifengyu/intercom/g/e/f;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/g/e/f;->b(Lcom/ifengyu/intercom/g/d/b;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Lcom/ifengyu/intercom/g/d/b;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/g/b;->f()Lcom/ifengyu/intercom/g/c/d;

    move-result-object v1

    const-string v2, "https://api.ifengyu.com/v3/user/change_password"

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/g/c/b;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/b;

    check-cast v1, Lcom/ifengyu/intercom/g/c/d;

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->N()Ljava/lang/String;

    move-result-object v2

    const-string v3, "userid"

    invoke-virtual {v1, v3, v2}, Lcom/ifengyu/intercom/g/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/d;

    const-string v2, "oldPassword"

    invoke-virtual {v1, v2, p0}, Lcom/ifengyu/intercom/g/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/d;

    const-string p0, "newPassword"

    invoke-virtual {v1, p0, p1}, Lcom/ifengyu/intercom/g/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/d;

    const-string p0, "time"

    invoke-virtual {v1, p0, v0}, Lcom/ifengyu/intercom/g/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/d;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->O()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ifengyu/intercom/i/a0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "sign"

    invoke-virtual {v1, p1, p0}, Lcom/ifengyu/intercom/g/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/d;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/g/c/d;->a()Lcom/ifengyu/intercom/g/e/f;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/g/e/f;->b(Lcom/ifengyu/intercom/g/d/b;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ifengyu/intercom/g/d/b;)V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/g/b;->e()Lcom/ifengyu/intercom/g/c/c;

    move-result-object v1

    const-string v2, "https://api.ifengyu.com/v3/user/password"

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/g/c/b;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/b;

    check-cast v1, Lcom/ifengyu/intercom/g/c/c;

    const-string v2, "account"

    invoke-virtual {v1, v2, p0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    const-string p0, "newPassword"

    invoke-virtual {v1, p0, p1}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    const-string p0, "code"

    invoke-virtual {v1, p0, p2}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    const-string p0, "time"

    invoke-virtual {v1, p0, v0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-static {v0}, Lcom/ifengyu/intercom/i/a0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "sign"

    invoke-virtual {v1, p1, p0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/g/c/c;->a()Lcom/ifengyu/intercom/g/e/f;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/ifengyu/intercom/g/e/f;->b(Lcom/ifengyu/intercom/g/d/b;)V

    return-void
.end method

.method public static d(Lcom/ifengyu/intercom/g/d/b;)V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Lcom/ifengyu/intercom/i/k0;->d()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->K()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v2, :cond_0

    const/high16 v4, 0x1000000

    div-int v4, v2, v4

    rem-int/lit16 v4, v4, 0x100

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v5, 0x10000

    div-int v6, v2, v5

    rem-int/lit16 v6, v6, 0x100

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int/2addr v2, v5

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "SharkMcuVersionName"

    invoke-static {v4, v2}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "https://api.ifengyu.com/v2/version"

    const-string v4, "url:"

    invoke-static {v4, v2}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ifengyu/intercom/g/b;->c()Lcom/ifengyu/intercom/g/c/a;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/ifengyu/intercom/g/c/b;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/b;

    check-cast v4, Lcom/ifengyu/intercom/g/c/a;

    const-string v2, "action"

    const-string v5, "version"

    invoke-virtual {v4, v2, v5}, Lcom/ifengyu/intercom/g/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/a;

    const-string v2, "type"

    const-string v5, "shark"

    invoke-virtual {v4, v2, v5}, Lcom/ifengyu/intercom/g/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/a;

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->N()Ljava/lang/String;

    move-result-object v2

    const-string v5, "userid"

    invoke-virtual {v4, v5, v2}, Lcom/ifengyu/intercom/g/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/a;

    const-string v2, "lang"

    const-string v5, "zh_cn"

    invoke-virtual {v4, v2, v5}, Lcom/ifengyu/intercom/g/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/a;

    const-string v2, "appVersion"

    invoke-virtual {v4, v2, v1}, Lcom/ifengyu/intercom/g/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/a;

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->Ju()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hwVersion"

    invoke-virtual {v4, v2, v1}, Lcom/ifengyu/intercom/g/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/a;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mcuVersion"

    invoke-virtual {v4, v2, v1}, Lcom/ifengyu/intercom/g/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/a;

    const-string v1, "time"

    invoke-virtual {v4, v1, v0}, Lcom/ifengyu/intercom/g/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->O()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/i/a0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sign"

    invoke-virtual {v4, v1, v0}, Lcom/ifengyu/intercom/g/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/a;

    invoke-virtual {v4}, Lcom/ifengyu/intercom/g/c/a;->a()Lcom/ifengyu/intercom/g/e/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/g/e/f;->b(Lcom/ifengyu/intercom/g/d/b;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Lcom/ifengyu/intercom/g/d/b;)V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/g/b;->e()Lcom/ifengyu/intercom/g/c/c;

    move-result-object v1

    const-string v2, "https://api.ifengyu.com/v3/user/login"

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/g/c/b;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/b;

    check-cast v1, Lcom/ifengyu/intercom/g/c/c;

    const-string v2, "account"

    invoke-virtual {v1, v2, p0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    const-string p0, "secret"

    invoke-virtual {v1, p0, p1}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    const-string p0, "loginType"

    const-string p1, "102"

    invoke-virtual {v1, p0, p1}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    const-string p0, "os"

    const-string p1, "and"

    invoke-virtual {v1, p0, p1}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    const-string p0, "time"

    invoke-virtual {v1, p0, v0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-static {v0}, Lcom/ifengyu/intercom/i/a0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "sign"

    invoke-virtual {v1, p1, p0}, Lcom/ifengyu/intercom/g/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/g/c/c;->a()Lcom/ifengyu/intercom/g/e/f;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/g/e/f;->b(Lcom/ifengyu/intercom/g/d/b;)V

    return-void
.end method

.method public static e(Lcom/ifengyu/intercom/g/d/b;)V
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/g/b;->c()Lcom/ifengyu/intercom/g/c/a;

    move-result-object v0

    const-string v1, "https://cms.ifengyu.com/fymanage/api/splash/?is_publish=1&limit=1"

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/g/c/b;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/b;

    check-cast v0, Lcom/ifengyu/intercom/g/c/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/g/c/a;->a()Lcom/ifengyu/intercom/g/e/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/g/e/f;->b(Lcom/ifengyu/intercom/g/d/b;)V

    return-void
.end method
