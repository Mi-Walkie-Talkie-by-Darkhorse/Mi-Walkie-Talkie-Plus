.class Lcom/xiaomi/slim/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/xiaomi/push/service/am$b;Ljava/lang/String;Lcom/xiaomi/smack/a;)V
    .locals 6

    const/4 v1, 0x0

    new-instance v2, Lcom/xiaomi/push/protobuf/b$c;

    invoke-direct {v2}, Lcom/xiaomi/push/protobuf/b$c;-><init>()V

    iget-object v0, p0, Lcom/xiaomi/push/service/am$b;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/am$b;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/xiaomi/push/protobuf/b$c;->a(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/b$c;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/service/am$b;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/push/service/am$b;->f:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/xiaomi/push/protobuf/b$c;->d(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/b$c;

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/push/service/am$b;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/push/service/am$b;->g:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/xiaomi/push/protobuf/b$c;->e(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/b$c;

    :cond_2
    iget-boolean v0, p0, Lcom/xiaomi/push/service/am$b;->e:Z

    if-eqz v0, :cond_4

    const-string v0, "1"

    :goto_0
    invoke-virtual {v2, v0}, Lcom/xiaomi/push/protobuf/b$c;->b(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/b$c;

    iget-object v0, p0, Lcom/xiaomi/push/service/am$b;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/xiaomi/push/service/am$b;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/xiaomi/push/protobuf/b$c;->c(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/b$c;

    :goto_1
    new-instance v3, Lcom/xiaomi/slim/b;

    invoke-direct {v3}, Lcom/xiaomi/slim/b;-><init>()V

    iget-object v0, p0, Lcom/xiaomi/push/service/am$b;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/xiaomi/slim/b;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/am$b;->h:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xiaomi/slim/b;->a(I)V

    iget-object v0, p0, Lcom/xiaomi/push/service/am$b;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/xiaomi/slim/b;->b(Ljava/lang/String;)V

    const-string v0, "BIND"

    invoke-virtual {v3, v0, v1}, Lcom/xiaomi/slim/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/xiaomi/slim/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xiaomi/slim/b;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Slim]: bind id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lcom/xiaomi/slim/b;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v4, "challenge"

    invoke-interface {v0, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "token"

    iget-object v5, p0, Lcom/xiaomi/push/service/am$b;->c:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "chid"

    iget-object v5, p0, Lcom/xiaomi/push/service/am$b;->h:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "from"

    iget-object v5, p0, Lcom/xiaomi/push/service/am$b;->b:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "id"

    invoke-virtual {v3}, Lcom/xiaomi/slim/b;->h()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "to"

    const-string v5, "xiaomi.com"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v4, p0, Lcom/xiaomi/push/service/am$b;->e:Z

    if-eqz v4, :cond_6

    const-string v4, "kick"

    const-string v5, "1"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget-object v4, p0, Lcom/xiaomi/push/service/am$b;->f:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "client_attrs"

    iget-object v5, p0, Lcom/xiaomi/push/service/am$b;->f:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    iget-object v4, p0, Lcom/xiaomi/push/service/am$b;->g:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "cloud_attrs"

    iget-object v5, p0, Lcom/xiaomi/push/service/am$b;->g:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    iget-object v4, p0, Lcom/xiaomi/push/service/am$b;->d:Ljava/lang/String;

    const-string v5, "XIAOMI-PASS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/xiaomi/push/service/am$b;->d:Ljava/lang/String;

    const-string v5, "XMPUSH-PASS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_3
    iget-object v4, p0, Lcom/xiaomi/push/service/am$b;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/push/service/am$b;->i:Ljava/lang/String;

    invoke-static {v4, v1, v0, v5}, Lcom/xiaomi/channel/commonutils/string/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v2, v0}, Lcom/xiaomi/push/protobuf/b$c;->f(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/b$c;

    invoke-virtual {v2}, Lcom/xiaomi/push/protobuf/b$c;->c()[B

    move-result-object v0

    invoke-virtual {v3, v0, v1}, Lcom/xiaomi/slim/b;->a([BLjava/lang/String;)V

    invoke-virtual {p2, v3}, Lcom/xiaomi/smack/a;->b(Lcom/xiaomi/slim/b;)V

    return-void

    :cond_4
    const-string v0, "0"

    goto/16 :goto_0

    :cond_5
    const-string v0, "XIAOMI-SASL"

    invoke-virtual {v2, v0}, Lcom/xiaomi/push/protobuf/b$c;->c(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/b$c;

    goto/16 :goto_1

    :cond_6
    const-string v4, "kick"

    const-string v5, "0"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    const-string v4, "client_attrs"

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_8
    const-string v4, "cloud_attrs"

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/xiaomi/push/service/am$b;->d:Ljava/lang/String;

    const-string v4, "XIAOMI-SASL"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_a
    move-object v0, v1

    goto :goto_5
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/smack/a;)V
    .locals 3

    new-instance v0, Lcom/xiaomi/slim/b;

    invoke-direct {v0}, Lcom/xiaomi/slim/b;-><init>()V

    invoke-virtual {v0, p1}, Lcom/xiaomi/slim/b;->c(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/slim/b;->a(I)V

    const-string v1, "UBND"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/slim/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/xiaomi/smack/a;->b(Lcom/xiaomi/slim/b;)V

    return-void
.end method
