.class public Lorg/apache/commons/lang/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/commons/lang/a;->a(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lorg/apache/commons/lang/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v1, Lorg/apache/commons/lang/b/a;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Lorg/apache/commons/lang/b/a;-><init>(I)V

    if-eqz v0, :cond_3

    invoke-virtual {v1, v0}, Lorg/apache/commons/lang/b/a;->a(Ljava/lang/Object;)Lorg/apache/commons/lang/b/a;

    :cond_3
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    invoke-virtual {v1, p1}, Lorg/apache/commons/lang/b/a;->a(Ljava/lang/String;)Lorg/apache/commons/lang/b/a;

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v1, v0}, Lorg/apache/commons/lang/b/a;->a(Ljava/lang/Object;)Lorg/apache/commons/lang/b/a;

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Lorg/apache/commons/lang/b/a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
