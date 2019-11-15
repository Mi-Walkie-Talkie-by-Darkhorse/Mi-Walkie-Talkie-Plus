.class public Lcom/ksyun/ks3/a/d;
.super Ljava/lang/Object;
.source "ModelUtil.java"


# direct methods
.method public static a(Ljava/util/Map;)[Lorg/apache/http/Header;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Lorg/apache/http/Header;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v3, v0, [Lorg/apache/http/Header;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v4, Lcom/ksyun/ks3/a/d$1;

    invoke-direct {v4, v0}, Lcom/ksyun/ks3/a/d$1;-><init>(Ljava/util/Map$Entry;)V

    aput-object v4, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public static b(Ljava/util/Map;)Lcom/loopj/android/http/RequestParams;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/loopj/android/http/RequestParams;"
        }
    .end annotation

    new-instance v0, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v0, p0}, Lcom/loopj/android/http/RequestParams;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
