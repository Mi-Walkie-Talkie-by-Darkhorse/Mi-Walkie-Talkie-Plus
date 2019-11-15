.class public Lcom/ifengyu/intercom/a/a;
.super Ljava/lang/Object;
.source "FengYuApi.java"


# direct methods
.method public static a(DDLcom/ifengyu/intercom/a/b/b;)V
    .locals 8

    const-wide/16 v6, 0xbb8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/ifengyu/intercom/a/b;->d()Lcom/ifengyu/intercom/a/a/a;

    move-result-object v0

    sget-object v2, Lcom/ifengyu/intercom/network/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/a/a/a;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/a/a/a;

    const-string v2, "action"

    const-string v3, "elevation"

    invoke-virtual {v0, v2, v3}, Lcom/ifengyu/intercom/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/a;

    move-result-object v0

    const-string v2, "location"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/ifengyu/intercom/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/a;

    move-result-object v0

    const-string v2, "userid"

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->K()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/ifengyu/intercom/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/a;

    move-result-object v0

    const-string v2, "time"

    invoke-virtual {v0, v2, v1}, Lcom/ifengyu/intercom/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/a;

    move-result-object v0

    const-string v2, "sign"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->L()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ifengyu/intercom/b/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/ifengyu/intercom/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/a/a/a;->a()Lcom/ifengyu/intercom/a/c/e;

    move-result-object v0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Lcom/ifengyu/intercom/a/c/e;->c(J)Lcom/ifengyu/intercom/a/c/e;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/ifengyu/intercom/a/c/e;->a(J)Lcom/ifengyu/intercom/a/c/e;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/ifengyu/intercom/a/c/e;->b(J)Lcom/ifengyu/intercom/a/c/e;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/ifengyu/intercom/a/c/e;->b(Lcom/ifengyu/intercom/a/b/b;)V

    return-void
.end method

.method public static a(IILcom/ifengyu/intercom/a/b/b;)V
    .locals 2

    sget-object v0, Lcom/ifengyu/intercom/network/d;->e:Ljava/lang/String;

    const-string v1, "https://cms.ifengyu.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ifengyu/intercom/network/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/api/v1/pages/?type=puput.EntryPage&child_of=3&limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&order=-first_published_at&fields=excerpt,header_image_url"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/ifengyu/intercom/a/b;->d()Lcom/ifengyu/intercom/a/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/a/a/a;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/a/a/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/a/a/a;->a()Lcom/ifengyu/intercom/a/c/e;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ifengyu/intercom/a/c/e;->b(Lcom/ifengyu/intercom/a/b/b;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ifengyu/intercom/network/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/api/v1/pages/?type=puput.EntryPage&child_of=18&limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&order=-first_published_at&fields=excerpt,header_image_url"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(ILcom/ifengyu/intercom/a/b/b;)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/ifengyu/intercom/a/b;->e()Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    sget-object v2, Lcom/ifengyu/intercom/network/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/a/a/c;

    const-string v2, "action"

    const-string v3, "delfeedback"

    invoke-virtual {v0, v2, v3}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v2, "userid"

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->K()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v2, "feedback_id"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v2, "time"

    invoke-virtual {v0, v2, v1}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v2, "sign"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->L()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ifengyu/intercom/b/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/a/a/c;->a()Lcom/ifengyu/intercom/a/c/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/a/c/e;->b(Lcom/ifengyu/intercom/a/b/b;)V

    return-void
.end method

.method public static a(ILjava/lang/String;Lcom/ifengyu/intercom/a/b/b;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/ifengyu/intercom/network/d;->c:Ljava/lang/String;

    packed-switch p0, :pswitch_data_0

    :goto_0
    invoke-static {}, Lcom/ifengyu/intercom/a/b;->e()Lcom/ifengyu/intercom/a/a/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/a/a/c;

    const-string v2, "action"

    const-string v3, "login"

    invoke-virtual {v0, v2, v3}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v2, "code"

    invoke-virtual {v0, v2, p1}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v2, "os"

    const-string v3, "and"

    invoke-virtual {v0, v2, v3}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v2, "time"

    invoke-virtual {v0, v2, v1}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v2, "sign"

    invoke-static {v1}, Lcom/ifengyu/intercom/b/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/a/a/c;->a()Lcom/ifengyu/intercom/a/c/e;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ifengyu/intercom/a/c/e;->b(Lcom/ifengyu/intercom/a/b/b;)V

    return-void

    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/v2/user/mi"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/v2/user/wechat"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ifengyu/intercom/a/b/b;)V
    .locals 6

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->K()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->L()Ljava/lang/String;

    move-result-object v3

    packed-switch p0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/ifengyu/intercom/a/b;->e()Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    sget-object v4, Lcom/ifengyu/intercom/network/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/a/a/c;

    const-string v4, "action"

    const-string v5, "profile"

    invoke-virtual {v0, v4, v5}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v4, "userid"

    invoke-virtual {v0, v4, v1}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v1, "nickname"

    invoke-virtual {v0, v1, p1}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v1, "time"

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v1, "sign"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ifengyu/intercom/b/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/a/a/c;->a()Lcom/ifengyu/intercom/a/c/e;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/ifengyu/intercom/a/c/e;->b(Lcom/ifengyu/intercom/a/b/b;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/ifengyu/intercom/a/b;->e()Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    sget-object v4, Lcom/ifengyu/intercom/network/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/a/a/c;

    const-string v4, "action"

    const-string v5, "profile"

    invoke-virtual {v0, v4, v5}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v4, "userid"

    invoke-virtual {v0, v4, v1}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1, p2}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v1, "time"

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v1, "sign"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ifengyu/intercom/b/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/a/a/c;->a()Lcom/ifengyu/intercom/a/c/e;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/ifengyu/intercom/a/c/e;->b(Lcom/ifengyu/intercom/a/b/b;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-static {}, Lcom/ifengyu/intercom/a/b;->e()Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    sget-object v4, Lcom/ifengyu/intercom/network/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/a/a/c;

    const-string v4, "action"

    const-string v5, "profile"

    invoke-virtual {v0, v4, v5}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v4, "userid"

    invoke-virtual {v0, v4, v1}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v1, "email"

    invoke-virtual {v0, v1, p3}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v1, "time"

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v1, "sign"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ifengyu/intercom/b/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/a/a/c;->a()Lcom/ifengyu/intercom/a/c/e;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/ifengyu/intercom/a/c/e;->b(Lcom/ifengyu/intercom/a/b/b;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-static {}, Lcom/ifengyu/intercom/a/b;->e()Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    sget-object v4, Lcom/ifengyu/intercom/network/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/a/a/c;

    const-string v4, "action"

    const-string v5, "profile"

    invoke-virtual {v0, v4, v5}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v4, "userid"

    invoke-virtual {v0, v4, v1}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v1, "gender"

    invoke-virtual {v0, v1, p4}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v1, "time"

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v1, "sign"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ifengyu/intercom/b/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/a/a/c;->a()Lcom/ifengyu/intercom/a/c/e;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/ifengyu/intercom/a/c/e;->b(Lcom/ifengyu/intercom/a/b/b;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Lcom/ifengyu/intercom/a/b/b;)V
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/a/b;->d()Lcom/ifengyu/intercom/a/a/a;

    move-result-object v0

    const-string v1, "https://cms.ifengyu.com/api/v1/pages/?type=puput.EntryPage&child_of=4&order=-first_published_at&limit=1"

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/a/a/a;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/a/a/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/a/a/a;->a()Lcom/ifengyu/intercom/a/c/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/a/c/e;->b(Lcom/ifengyu/intercom/a/b/b;)V

    return-void
.end method

.method public static a(Lcom/ifengyu/intercom/greendao/bean/b;Ljava/util/List;Lcom/ifengyu/intercom/a/b/b;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ifengyu/intercom/greendao/bean/b;",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/intercom/greendao/bean/c;",
            ">;",
            "Lcom/ifengyu/intercom/a/b/b;",
            ")V"
        }
    .end annotation

    const-wide v8, 0x412e848000000000L    # 1000000.0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/greendao/bean/c;

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/c;->c()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-double v6, v5

    div-double/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/c;->d()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-double v6, v5

    div-double/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/c;->e()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/c;->f()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/c;->h()Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_0

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_0
    const-string v0, "],"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/ifengyu/intercom/a/b;->e()Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/network/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/a/a/c;

    const-string v1, "action"

    const-string v4, "saveTrack"

    invoke-virtual {v0, v1, v4}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v1, "userid"

    invoke-virtual {p0}, Lcom/ifengyu/intercom/greendao/bean/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v1, "trackName"

    invoke-virtual {p0}, Lcom/ifengyu/intercom/greendao/bean/b;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v1, "city"

    invoke-virtual {p0}, Lcom/ifengyu/intercom/greendao/bean/b;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v1, "district"

    invoke-virtual {p0}, Lcom/ifengyu/intercom/greendao/bean/b;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v1, "totalDistance"

    invoke-virtual {p0}, Lcom/ifengyu/intercom/greendao/bean/b;->o()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v1, "totalSeconds"

    invoke-virtual {p0}, Lcom/ifengyu/intercom/greendao/bean/b;->n()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v1, "beginTime"

    invoke-virtual {p0}, Lcom/ifengyu/intercom/greendao/bean/b;->h()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v1, "endTime"

    invoke-virtual {p0}, Lcom/ifengyu/intercom/greendao/bean/b;->i()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v1, "speed"

    invoke-virtual {p0}, Lcom/ifengyu/intercom/greendao/bean/b;->p()Ljava/lang/Float;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v1, "alt"

    invoke-virtual {p0}, Lcom/ifengyu/intercom/greendao/bean/b;->q()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v1, "maxAlt"

    invoke-virtual {p0}, Lcom/ifengyu/intercom/greendao/bean/b;->r()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v1, "minAlt"

    invoke-virtual {p0}, Lcom/ifengyu/intercom/greendao/bean/b;->s()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v1, "accruedClimb"

    invoke-virtual {p0}, Lcom/ifengyu/intercom/greendao/bean/b;->t()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v1, "accruedDescent"

    invoke-virtual {p0}, Lcom/ifengyu/intercom/greendao/bean/b;->u()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v1, "screenShot"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/greendao/bean/b;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/greendao/bean/b;->y()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4, v5}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v1, "track"

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v1, "time"

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v1, "sign"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->L()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ifengyu/intercom/b/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/a/a/c;->a()Lcom/ifengyu/intercom/a/c/e;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ifengyu/intercom/a/c/e;->b(Lcom/ifengyu/intercom/a/b/b;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/ifengyu/intercom/a/b/b;)V
    .locals 6

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "userid"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->L()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/ifengyu/intercom/a/b;->e()Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    sget-object v4, Lcom/ifengyu/intercom/network/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/a/a/c;

    const-string v4, "action"

    const-string v5, "userinfo"

    invoke-virtual {v0, v4, v5}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v4, "userid"

    invoke-virtual {v0, v4, v1}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v1, "queryid"

    invoke-virtual {v0, v1, p0}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v1, "time"

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v1, "sign"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ifengyu/intercom/b/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/a/a/c;->a()Lcom/ifengyu/intercom/a/c/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/a/c/e;->b(Lcom/ifengyu/intercom/a/b/b;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/io/File;Lcom/ifengyu/intercom/a/b/b;)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/ifengyu/intercom/a/b;->e()Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    sget-object v2, Lcom/ifengyu/intercom/network/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/a/a/c;

    const-string v2, "action"

    const-string v3, "profile"

    invoke-virtual {v0, v2, v3}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v2, "userid"

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->K()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v2, "time"

    invoke-virtual {v0, v2, v1}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v2, "sign"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->L()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ifengyu/intercom/b/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v1, "portrait"

    invoke-virtual {v0, v1, p0, p1}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/a/a/c;->a()Lcom/ifengyu/intercom/a/c/e;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ifengyu/intercom/a/c/e;->b(Lcom/ifengyu/intercom/a/b/b;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/ifengyu/intercom/a/b/b;)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/ifengyu/intercom/a/b;->e()Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    sget-object v2, Lcom/ifengyu/intercom/network/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/a/a/c;

    const-string v2, "action"

    const-string v3, "queryTrack"

    invoke-virtual {v0, v2, v3}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v2, "userid"

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->K()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    if-eqz p0, :cond_0

    const-string v2, "trackId"

    invoke-virtual {v0, v2, p0}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, "limit"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_2

    const-string v2, "offset"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    :cond_2
    const-string v2, "time"

    invoke-virtual {v0, v2, v1}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v2, "sign"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->L()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ifengyu/intercom/b/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/a/a/c;->a()Lcom/ifengyu/intercom/a/c/e;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/ifengyu/intercom/a/c/e;->b(Lcom/ifengyu/intercom/a/b/b;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    const/high16 v6, 0x10000

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->K()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->L()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-lez p2, :cond_0

    const/high16 v0, 0x1000000

    div-int v0, p2, v0

    rem-int/lit16 v0, v0, 0x100

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int v0, p2, v6

    rem-int/lit16 v0, v0, 0x100

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int v0, p2, v6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    const-string v0, "unknown"

    :try_start_0
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/MiTalkiApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Lcom/ifengyu/intercom/b/ad;->c()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    :goto_0
    invoke-static {}, Lcom/ifengyu/intercom/a/b;->e()Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    sget-object v6, Lcom/ifengyu/intercom/network/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/a/a/c;

    const-string v6, "action"

    const-string v7, "uploadInterphoneInfo"

    invoke-virtual {v0, v6, v7}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v6, "userid"

    invoke-virtual {v0, v6, v2}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v2, "interphonetype"

    invoke-virtual {v0, v2, p0}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v2, "interphoneid"

    invoke-virtual {v0, v2, p1}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v2

    const-string v6, "activate"

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ag()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1"

    :goto_1
    invoke-virtual {v2, v6, v0}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v2, "mcuversion"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v2, "appversion"

    invoke-virtual {v0, v2, v1}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v1, "phonemodel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v1, "phonesys"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v1, "phonesysversion"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v1, "time"

    invoke-virtual {v0, v1, v4}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v1, "sign"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ifengyu/intercom/b/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/a/a/c;->a()Lcom/ifengyu/intercom/a/c/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/a/c/e;->b(Lcom/ifengyu/intercom/a/b/b;)V

    return-void

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    move-object v1, v0

    goto/16 :goto_0

    :cond_1
    const-string v0, "0"

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/ifengyu/intercom/a/b/b;)V
    .locals 5

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->L()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/ifengyu/intercom/a/b;->e()Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    sget-object v3, Lcom/ifengyu/intercom/network/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/a/a/c;

    const-string v3, "action"

    const-string v4, "channelAct"

    invoke-virtual {v0, v3, v4}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v3, "userid"

    invoke-virtual {v0, v3, p0}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v3, "deviceId"

    invoke-virtual {v0, v3, p1}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v3, "activate"

    const-string v4, "1"

    invoke-virtual {v0, v3, v4}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v3, "time"

    invoke-virtual {v0, v3, v2}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v3, "sign"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ifengyu/intercom/b/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/a/a/c;->a()Lcom/ifengyu/intercom/a/c/e;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ifengyu/intercom/a/c/e;->b(Lcom/ifengyu/intercom/a/b/b;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ifengyu/intercom/a/b/b;)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/a/b;->e()Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    sget-object v2, Lcom/ifengyu/intercom/network/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/a/a/c;

    const-string v2, "action"

    const-string v3, "feedback"

    invoke-virtual {v0, v2, v3}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v2, "userid"

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->K()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v2, "email"

    invoke-virtual {v0, v2, p0}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v2, "message"

    invoke-virtual {v0, v2, p1}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v2, "platform"

    const-string v3, "Android"

    invoke-virtual {v0, v2, v3}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v2, "feedback_object"

    invoke-virtual {v0, v2, p2}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v2, "time"

    invoke-virtual {v0, v2, v1}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v2, "sign"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->L()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ifengyu/intercom/b/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/a/a/c;->a()Lcom/ifengyu/intercom/a/c/e;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/ifengyu/intercom/a/c/e;->b(Lcom/ifengyu/intercom/a/b/b;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/a/b;->e()Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    sget-object v2, Lcom/ifengyu/intercom/network/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/a/a/c;

    const-string v2, "action"

    const-string v3, "feedback"

    invoke-virtual {v0, v2, v3}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v2, "userid"

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->K()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v2, "message"

    invoke-virtual {v0, v2, p1}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v2, "platform"

    const-string v3, "Android"

    invoke-virtual {v0, v2, v3}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v2, "feedback_object"

    invoke-virtual {v0, v2, p2}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v2, "time"

    invoke-virtual {v0, v2, v1}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v2, "sign"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->L()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ifengyu/intercom/b/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/a/a/c;->a()Lcom/ifengyu/intercom/a/c/e;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/ifengyu/intercom/a/c/e;->b(Lcom/ifengyu/intercom/a/b/b;)V

    goto :goto_0
.end method

.method public static b(DDLcom/ifengyu/intercom/a/b/b;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://api.map.baidu.com/geocoder?location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&output=json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/a/b;->d()Lcom/ifengyu/intercom/a/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/a/a/a;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/a/a/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/a/a/a;->a()Lcom/ifengyu/intercom/a/c/e;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/ifengyu/intercom/a/c/e;->b(Lcom/ifengyu/intercom/a/b/b;)V

    return-void
.end method

.method public static b(IILcom/ifengyu/intercom/a/b/b;)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/ifengyu/intercom/a/b;->e()Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    sget-object v2, Lcom/ifengyu/intercom/network/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/a/a/c;

    const-string v2, "action"

    const-string v3, "getfeedback"

    invoke-virtual {v0, v2, v3}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v2, "userid"

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->K()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v2, "time"

    invoke-virtual {v0, v2, v1}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v2, "sign"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->L()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ifengyu/intercom/b/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    if-lez p0, :cond_0

    const-string v1, "limit"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    :cond_0
    if-lez p1, :cond_1

    const-string v1, "offset"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    :cond_1
    invoke-virtual {v0}, Lcom/ifengyu/intercom/a/a/c;->a()Lcom/ifengyu/intercom/a/c/e;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ifengyu/intercom/a/c/e;->b(Lcom/ifengyu/intercom/a/b/b;)V

    return-void
.end method

.method public static b(Lcom/ifengyu/intercom/a/b/b;)V
    .locals 2

    sget-object v0, Lcom/ifengyu/intercom/network/d;->e:Ljava/lang/String;

    const-string v1, "https://cms.ifengyu.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ifengyu/intercom/network/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/api/v1/pages/?type=puput.EntryPage&child_of=5&order=-first_published_at&fields=excerpt,header_image_url"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/ifengyu/intercom/a/b;->d()Lcom/ifengyu/intercom/a/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/a/a/a;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/a/a/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/a/a/a;->a()Lcom/ifengyu/intercom/a/c/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/a/c/e;->b(Lcom/ifengyu/intercom/a/b/b;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ifengyu/intercom/network/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/api/v1/pages/?type=puput.EntryPage&child_of=19&order=-first_published_at&fields=excerpt,header_image_url"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Lcom/ifengyu/intercom/a/b/b;)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/ifengyu/intercom/a/b;->e()Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    sget-object v2, Lcom/ifengyu/intercom/network/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/a/a/c;

    const-string v2, "action"

    const-string v3, "delTrack"

    invoke-virtual {v0, v2, v3}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v2, "userid"

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->K()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v2, "trackId"

    invoke-virtual {v0, v2, p0}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v2, "time"

    invoke-virtual {v0, v2, v1}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v2, "sign"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->L()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ifengyu/intercom/b/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/a/a/c;->a()Lcom/ifengyu/intercom/a/c/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/a/c/e;->b(Lcom/ifengyu/intercom/a/b/b;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Lcom/ifengyu/intercom/a/b/b;)V
    .locals 5

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->L()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/ifengyu/intercom/a/b;->e()Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    sget-object v3, Lcom/ifengyu/intercom/network/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/a/a/c;

    const-string v3, "action"

    const-string v4, "channelAct"

    invoke-virtual {v0, v3, v4}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v3, "userid"

    invoke-virtual {v0, v3, p0}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v3, "deviceId"

    invoke-virtual {v0, v3, p1}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v3, "activate"

    const-string v4, "2"

    invoke-virtual {v0, v3, v4}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v3, "time"

    invoke-virtual {v0, v3, v2}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    const-string v3, "sign"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ifengyu/intercom/b/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/ifengyu/intercom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/a/a/c;->a()Lcom/ifengyu/intercom/a/c/e;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ifengyu/intercom/a/c/e;->b(Lcom/ifengyu/intercom/a/b/b;)V

    return-void
.end method

.method public static c(Lcom/ifengyu/intercom/a/b/b;)V
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/a/b;->d()Lcom/ifengyu/intercom/a/a/a;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/network/d;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/a/a/a;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/a/a/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/a/a/a;->a()Lcom/ifengyu/intercom/a/c/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/a/c/e;->b(Lcom/ifengyu/intercom/a/b/b;)V

    return-void
.end method

.method public static d(Lcom/ifengyu/intercom/a/b/b;)V
    .locals 6

    const/high16 v5, 0x10000

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/MiTalkiApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Lcom/ifengyu/intercom/b/ad;->c()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    :goto_0
    invoke-static {}, Lcom/ifengyu/intercom/b/w;->s()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v0, :cond_0

    const/high16 v4, 0x1000000

    div-int v4, v0, v4

    rem-int/lit16 v4, v4, 0x100

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int v4, v0, v5

    rem-int/lit16 v4, v4, 0x100

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int/2addr v0, v5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    const-string v0, "SealMcuVersionName"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "url:"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/ifengyu/intercom/network/d;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/v2/version"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ifengyu/intercom/a/b;->d()Lcom/ifengyu/intercom/a/a/a;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/ifengyu/intercom/network/d;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/v2/version"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ifengyu/intercom/a/a/a;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/a/a/a;

    const-string v4, "action"

    const-string v5, "version"

    invoke-virtual {v0, v4, v5}, Lcom/ifengyu/intercom/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/a;

    move-result-object v0

    const-string v4, "type"

    const-string v5, "seal"

    invoke-virtual {v0, v4, v5}, Lcom/ifengyu/intercom/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/a;

    move-result-object v0

    const-string v4, "userid"

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->K()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/ifengyu/intercom/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/a;

    move-result-object v0

    const-string v4, "lang"

    const-string v5, "zh_cn"

    invoke-virtual {v0, v4, v5}, Lcom/ifengyu/intercom/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/a;

    move-result-object v0

    const-string v4, "appVersion"

    invoke-virtual {v0, v4, v1}, Lcom/ifengyu/intercom/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/a;

    move-result-object v0

    const-string v1, "hwVersion"

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->r()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/ifengyu/intercom/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/a;

    move-result-object v0

    const-string v1, "mcuVersion"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/ifengyu/intercom/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/a;

    move-result-object v0

    const-string v1, "time"

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/a;

    move-result-object v0

    const-string v1, "sign"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->L()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ifengyu/intercom/b/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/a/a/a;->a()Lcom/ifengyu/intercom/a/c/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/a/c/e;->b(Lcom/ifengyu/intercom/a/b/b;)V

    return-void

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    move-object v1, v0

    goto/16 :goto_0
.end method

.method public static e(Lcom/ifengyu/intercom/a/b/b;)V
    .locals 6

    const/high16 v5, 0x10000

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/MiTalkiApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Lcom/ifengyu/intercom/b/ad;->c()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    :goto_0
    invoke-static {}, Lcom/ifengyu/intercom/b/w;->G()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v0, :cond_0

    const/high16 v4, 0x1000000

    div-int v4, v0, v4

    rem-int/lit16 v4, v4, 0x100

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int v4, v0, v5

    rem-int/lit16 v4, v4, 0x100

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int/2addr v0, v5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    const-string v0, "SharkMcuVersionName"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "url:"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/ifengyu/intercom/network/d;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/v2/version"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ifengyu/intercom/a/b;->d()Lcom/ifengyu/intercom/a/a/a;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/ifengyu/intercom/network/d;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/v2/version"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ifengyu/intercom/a/a/a;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/a/a/a;

    const-string v4, "action"

    const-string v5, "version"

    invoke-virtual {v0, v4, v5}, Lcom/ifengyu/intercom/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/a;

    move-result-object v0

    const-string v4, "type"

    const-string v5, "shark"

    invoke-virtual {v0, v4, v5}, Lcom/ifengyu/intercom/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/a;

    move-result-object v0

    const-string v4, "userid"

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->K()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/ifengyu/intercom/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/a;

    move-result-object v0

    const-string v4, "lang"

    const-string v5, "zh_cn"

    invoke-virtual {v0, v4, v5}, Lcom/ifengyu/intercom/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/a;

    move-result-object v0

    const-string v4, "appVersion"

    invoke-virtual {v0, v4, v1}, Lcom/ifengyu/intercom/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/a;

    move-result-object v0

    const-string v1, "hwVersion"

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->F()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/ifengyu/intercom/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/a;

    move-result-object v0

    const-string v1, "mcuVersion"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/ifengyu/intercom/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/a;

    move-result-object v0

    const-string v1, "time"

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/a;

    move-result-object v0

    const-string v1, "sign"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->L()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ifengyu/intercom/b/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/a/a/a;->a()Lcom/ifengyu/intercom/a/c/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/a/c/e;->b(Lcom/ifengyu/intercom/a/b/b;)V

    return-void

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    move-object v1, v0

    goto/16 :goto_0
.end method
