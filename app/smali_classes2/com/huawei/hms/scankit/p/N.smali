.class public Lcom/huawei/hms/scankit/p/N;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/hms/scankit/p/J;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/huawei/hms/scankit/p/J;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/N;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/huawei/hms/scankit/p/N;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/huawei/hms/scankit/p/N;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/huawei/hms/scankit/p/N;->d:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/huawei/hms/scankit/p/J;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit16 v0, v0, 0x1f4

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    mul-int/lit16 v2, v1, 0x1f4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit16 v4, v2, 0x1f4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {p3, p2}, Lcom/huawei/hms/scankit/p/c;->m(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    int-to-long v5, v5

    const-wide/32 v7, 0x5265c00

    mul-long v5, v5, v7

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/huawei/hms/scankit/p/J;

    invoke-virtual {v7}, Lcom/huawei/hms/scankit/p/J;->c()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v3, v4, v5, v6}, Lcom/huawei/hms/scankit/p/k;->a(Ljava/lang/String;JJ)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    new-instance v2, Lcom/huawei/hms/scankit/p/O;

    iget-object v9, p0, Lcom/huawei/hms/scankit/p/N;->d:Ljava/lang/String;

    move-object v6, v2

    move-object v7, p3

    move-object v8, p2

    invoke-direct/range {v6 .. v11}, Lcom/huawei/hms/scankit/p/O;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/p/O;->a()V

    goto :goto_2

    :cond_3
    const-string v2, "DataOrganizeHandler"

    const-string v3, "No data to report handler"

    invoke-static {v2, v3}, Lcom/huawei/hms/scankit/p/T;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public a()V
    .locals 13

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/N;->c:Ljava/lang/String;

    const-string v1, "_default_config_tag"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/huawei/hms/scankit/p/N;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "diffprivacy"

    const-string v8, "preins"

    const-string v9, "maint"

    const-string v10, "oper"

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/huawei/hms/scankit/p/J;

    invoke-virtual {v6}, Lcom/huawei/hms/scankit/p/J;->b()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    :goto_1
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-direct {p0, v4, v10, v1}, Lcom/huawei/hms/scankit/p/N;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v9, v1}, Lcom/huawei/hms/scankit/p/N;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2, v8, v1}, Lcom/huawei/hms/scankit/p/N;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3, v7, v1}, Lcom/huawei/hms/scankit/p/N;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/N;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/N;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/huawei/hms/scankit/p/N;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/huawei/hms/scankit/p/N;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
