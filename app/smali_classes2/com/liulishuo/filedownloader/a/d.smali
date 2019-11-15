.class public Lcom/liulishuo/filedownloader/a/d;
.super Ljava/lang/Object;
.source "RedirectHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Map;Lcom/liulishuo/filedownloader/a/b;Ljava/util/List;)Lcom/liulishuo/filedownloader/a/b;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/liulishuo/filedownloader/a/b;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/liulishuo/filedownloader/a/b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/a/b;->e()I

    move-result v2

    const-string v0, "Location"

    invoke-interface {p1, v0}, Lcom/liulishuo/filedownloader/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    move-object v2, v0

    move v0, v1

    :cond_0
    invoke-static {v3}, Lcom/liulishuo/filedownloader/a/d;->a(I)Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v2, "receive %d (redirect) but the location is null with response [%s]"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v1

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/a/b;->c()Ljava/util/Map;

    move-result-object v1

    aput-object v1, v4, v8

    invoke-static {v2, v4}, Lcom/liulishuo/filedownloader/e/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-boolean v5, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v5, :cond_2

    const-class v5, Lcom/liulishuo/filedownloader/a/d;

    const-string v6, "redirect to %s with %d, %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v8

    aput-object v4, v7, v9

    invoke-static {v5, v6, v7}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    invoke-interface {p1}, Lcom/liulishuo/filedownloader/a/b;->f()V

    invoke-static {p0, v2}, Lcom/liulishuo/filedownloader/a/d;->a(Ljava/util/Map;Ljava/lang/String;)Lcom/liulishuo/filedownloader/a/b;

    move-result-object p1

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/a/b;->d()V

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/a/b;->e()I

    move-result v3

    const-string v2, "Location"

    invoke-interface {p1, v2}, Lcom/liulishuo/filedownloader/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    const/16 v5, 0xa

    if-lt v0, v5, :cond_0

    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v2, "redirect too many times! %s"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/liulishuo/filedownloader/e/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-eqz p2, :cond_4

    invoke-interface {p2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    return-object p1
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;)Lcom/liulishuo/filedownloader/a/b;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/liulishuo/filedownloader/a/b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/liulishuo/filedownloader/download/c;->a()Lcom/liulishuo/filedownloader/download/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/download/c;->a(Ljava/lang/String;)Lcom/liulishuo/filedownloader/a/b;

    move-result-object v2

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v1, v0}, Lcom/liulishuo/filedownloader/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private static a(I)Z
    .locals 1

    const/16 v0, 0x12d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x12e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x12f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x12c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x133

    if-eq p0, v0, :cond_0

    const/16 v0, 0x134

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
