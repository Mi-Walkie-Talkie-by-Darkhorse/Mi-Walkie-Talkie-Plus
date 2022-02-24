.class public Lcom/ifengyu/intercom/g/c/a;
.super Lcom/ifengyu/intercom/g/c/b;
.source "GetBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/g/c/b<",
        "Lcom/ifengyu/intercom/g/c/a;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/g/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/a;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/g/c/b;->d:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/g/c/b;->d:Ljava/util/Map;

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/g/c/b;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a()Lcom/ifengyu/intercom/g/e/f;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/g/c/b;->d:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/g/c/b;->a:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/ifengyu/intercom/g/c/a;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/g/c/b;->a:Ljava/lang/String;

    .line 3
    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/g/e/b;

    iget-object v2, p0, Lcom/ifengyu/intercom/g/c/b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/ifengyu/intercom/g/c/b;->b:Ljava/lang/Object;

    iget-object v4, p0, Lcom/ifengyu/intercom/g/c/b;->d:Ljava/util/Map;

    iget-object v5, p0, Lcom/ifengyu/intercom/g/c/b;->c:Ljava/util/Map;

    iget v6, p0, Lcom/ifengyu/intercom/g/c/b;->e:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/ifengyu/intercom/g/e/b;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;I)V

    invoke-virtual {v0}, Lcom/ifengyu/intercom/g/e/c;->b()Lcom/ifengyu/intercom/g/e/f;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 4
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    .line 6
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 8
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 10
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    :goto_1
    return-object p1
.end method
