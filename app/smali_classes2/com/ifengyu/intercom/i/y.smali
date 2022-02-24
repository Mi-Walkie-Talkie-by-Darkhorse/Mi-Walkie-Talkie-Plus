.class public Lcom/ifengyu/intercom/i/y;
.super Ljava/lang/Object;
.source "IntercomUtil.java"


# direct methods
.method public static a(Lcom/ifengyu/blelib/f/c;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/blelib/f/c;->b()Landroid/util/SparseArray;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public static b(Lcom/ifengyu/blelib/f/c;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/blelib/f/c;->c()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 2
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/ifengyu/blelib/f/c;->c()Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3
    new-instance p0, Ljava/util/HashSet;

    sget-object v1, Lcom/ifengyu/intercom/f/a;->a:Ljava/util/List;

    invoke-direct {p0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->retainAll(Ljava/util/Collection;)Z

    .line 5
    invoke-virtual {p0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
