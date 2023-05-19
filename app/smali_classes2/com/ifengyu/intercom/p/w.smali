.class public Lcom/ifengyu/intercom/p/w;
.super Ljava/lang/Object;
.source "IntercomUtil.java"


# direct methods
.method public static a(Lcom/ifengyu/blelib/e/c;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/blelib/e/c;->c()Landroid/util/SparseArray;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 2
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    return v2

    :cond_0
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    return v2

    :cond_1
    const v2, 0x8f03

    if-ne v1, v2, :cond_2

    .line 4
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    .line 5
    invoke-static {p0}, Lcom/ifengyu/blelib/c/a;->a([B)I

    move-result p0

    return p0

    :cond_2
    const/16 v2, 0x38f

    if-ne v1, v2, :cond_3

    .line 6
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    .line 7
    invoke-static {p0}, Lcom/ifengyu/blelib/c/a;->a([B)I

    move-result p0

    return p0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Lcom/ifengyu/blelib/e/c;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/blelib/e/c;->d()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 2
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/ifengyu/blelib/e/c;->d()Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3
    new-instance p0, Ljava/util/HashSet;

    sget-object v1, Lcom/ifengyu/intercom/j/b;->e:Ljava/util/List;

    invoke-direct {p0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->retainAll(Ljava/util/Collection;)Z

    .line 5
    invoke-virtual {p0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
