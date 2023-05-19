.class public Lb/c/a/e/b;
.super Lb/c/a/e/a;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/c/a/e/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/c/a/e/a<",
        "Lcom/lzy/okgo/cache/CacheEntity<",
        "*>;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    new-instance v0, Lb/c/a/e/d;

    invoke-direct {v0}, Lb/c/a/e/d;-><init>()V

    invoke-direct {p0, v0}, Lb/c/a/e/a;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    return-void
.end method

.method synthetic constructor <init>(Lb/c/a/e/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/c/a/e/b;-><init>()V

    return-void
.end method

.method public static l()Lb/c/a/e/b;
    .locals 1

    .line 1
    invoke-static {}, Lb/c/a/e/b$b;->a()Lb/c/a/e/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 0

    .line 1
    check-cast p1, Lcom/lzy/okgo/cache/CacheEntity;

    invoke-virtual {p0, p1}, Lb/c/a/e/b;->k(Lcom/lzy/okgo/cache/CacheEntity;)Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "cache"

    return-object v0
.end method

.method public bridge synthetic f(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lb/c/a/e/b;->m(Landroid/database/Cursor;)Lcom/lzy/okgo/cache/CacheEntity;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/lang/String;)Lcom/lzy/okgo/cache/CacheEntity;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/lzy/okgo/cache/CacheEntity<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "key=?"

    .line 1
    invoke-virtual {p0, p1, v1}, Lb/c/a/e/a;->g(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/lzy/okgo/cache/CacheEntity;

    :cond_1
    return-object v0
.end method

.method public k(Lcom/lzy/okgo/cache/CacheEntity;)Landroid/content/ContentValues;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/cache/CacheEntity<",
            "*>;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/lzy/okgo/cache/CacheEntity;->b(Lcom/lzy/okgo/cache/CacheEntity;)Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method

.method public m(Landroid/database/Cursor;)Lcom/lzy/okgo/cache/CacheEntity;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Lcom/lzy/okgo/cache/CacheEntity<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/lzy/okgo/cache/CacheEntity;->h(Landroid/database/Cursor;)Lcom/lzy/okgo/cache/CacheEntity;

    move-result-object p1

    return-object p1
.end method

.method public n(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v0

    const-string p1, "key=?"

    .line 1
    invoke-virtual {p0, p1, v1}, Lb/c/a/e/a;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public o(Ljava/lang/String;Lcom/lzy/okgo/cache/CacheEntity;)Lcom/lzy/okgo/cache/CacheEntity;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/lzy/okgo/cache/CacheEntity<",
            "TT;>;)",
            "Lcom/lzy/okgo/cache/CacheEntity<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2, p1}, Lcom/lzy/okgo/cache/CacheEntity;->k(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p2}, Lb/c/a/e/a;->i(Ljava/lang/Object;)Z

    return-object p2
.end method
