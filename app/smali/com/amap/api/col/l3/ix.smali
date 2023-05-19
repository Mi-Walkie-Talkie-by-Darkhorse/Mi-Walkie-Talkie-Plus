.class public final Lcom/amap/api/col/l3/ix;
.super Lcom/amap/api/col/l3/ja;
.source "MobileUpdateStrategy.java"


# instance fields
.field private b:Landroid/content/Context;

.field private c:Z

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ZII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/api/col/l3/ja;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/amap/api/col/l3/ix;->b:Landroid/content/Context;

    .line 3
    iput-boolean p2, p0, Lcom/amap/api/col/l3/ix;->c:Z

    .line 4
    iput p3, p0, Lcom/amap/api/col/l3/ix;->d:I

    .line 5
    iput p4, p0, Lcom/amap/api/col/l3/ix;->e:I

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 6

    .line 13
    iget-object v0, p0, Lcom/amap/api/col/l3/ix;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3/gb;->r(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 14
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v0, "yyyyMMdd"

    invoke-static {v2, v3, v0}, Lcom/amap/api/col/l3/gi;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15
    iget-object v2, p0, Lcom/amap/api/col/l3/ix;->b:Landroid/content/Context;

    const-string v3, "iKey"

    invoke-static {v2, v3}, Lcom/amap/api/col/l3/gt;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "\\|"

    .line 17
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 18
    array-length v4, v2

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 19
    aget-object v4, v2, v4

    .line 20
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 21
    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr p1, v1

    goto :goto_1

    .line 22
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/amap/api/col/l3/ix;->b:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/amap/api/col/l3/gt;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 23
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/amap/api/col/l3/ix;->b:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v3, p1}, Lcom/amap/api/col/l3/gt;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final a()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/ix;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3/gb;->r(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3/ix;->c:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/ix;->b:Landroid/content/Context;

    const-string v3, "iKey"

    invoke-static {v0, v3}, Lcom/amap/api/col/l3/gt;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v1

    :cond_2
    const-string v4, "\\|"

    .line 5
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 6
    array-length v4, v0

    const/4 v5, 0x2

    if-ge v4, v5, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    aget-object v3, v0, v2

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "yyyyMMdd"

    invoke-static {v4, v5, v6}, Lcom/amap/api/col/l3/gi;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 10
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 11
    iget v3, p0, Lcom/amap/api/col/l3/ix;->e:I

    if-lt v0, v3, :cond_4

    return v2

    :cond_4
    return v1

    .line 12
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/l3/ix;->b:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/amap/api/col/l3/gt;->b(Landroid/content/Context;Ljava/lang/String;)V

    return v1
.end method

.method public final b()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/ix;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3/gb;->r(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/amap/api/col/l3/ix;->d:I

    if-gtz v0, :cond_1

    :cond_0
    const v0, 0x7fffffff

    .line 2
    :cond_1
    iget-object v1, p0, Lcom/amap/api/col/l3/ja;->a:Lcom/amap/api/col/l3/ja;

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {v1}, Lcom/amap/api/col/l3/ja;->b()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_2
    return v0
.end method
