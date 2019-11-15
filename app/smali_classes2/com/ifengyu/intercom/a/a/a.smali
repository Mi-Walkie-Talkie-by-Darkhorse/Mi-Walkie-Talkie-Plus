.class public Lcom/ifengyu/intercom/a/a/a;
.super Lcom/ifengyu/intercom/a/a/b;
.source "GetBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/a/a/b",
        "<",
        "Lcom/ifengyu/intercom/a/a/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/a/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/a/a/a;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/a/a/a;->d:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/a/a/a;->d:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/a/a/a;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a()Lcom/ifengyu/intercom/a/c/e;
    .locals 6

    iget-object v0, p0, Lcom/ifengyu/intercom/a/a/a;->d:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/a/a/a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/ifengyu/intercom/a/a/a;->d:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/a/a/a;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/a/a/a;->a:Ljava/lang/String;

    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/a/c/b;

    iget-object v1, p0, Lcom/ifengyu/intercom/a/a/a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/ifengyu/intercom/a/a/a;->b:Ljava/lang/Object;

    iget-object v3, p0, Lcom/ifengyu/intercom/a/a/a;->d:Ljava/util/Map;

    iget-object v4, p0, Lcom/ifengyu/intercom/a/a/a;->c:Ljava/util/Map;

    iget v5, p0, Lcom/ifengyu/intercom/a/a/a;->e:I

    invoke-direct/range {v0 .. v5}, Lcom/ifengyu/intercom/a/c/b;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;I)V

    invoke-virtual {v0}, Lcom/ifengyu/intercom/a/c/b;->b()Lcom/ifengyu/intercom/a/c/e;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
