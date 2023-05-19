.class public abstract Lcom/huawei/hms/scankit/p/ha;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(ILandroid/content/Context;)Lcom/huawei/hms/scankit/p/ea;
    .locals 2

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    new-instance p1, Lcom/huawei/hms/scankit/p/ea;

    sget-object v0, Lcom/huawei/hms/scankit/p/fa;->b:Lcom/huawei/hms/scankit/p/fa;

    invoke-direct {p0, p2}, Lcom/huawei/hms/scankit/p/ha;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/huawei/hms/scankit/p/ha;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/huawei/hms/scankit/p/ea;-><init>(Lcom/huawei/hms/scankit/p/fa;Ljava/lang/String;)V

    return-object p1

    :cond_0
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/huawei/hms/scankit/p/ha;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance p1, Lcom/huawei/hms/scankit/p/ea;

    sget-object p2, Lcom/huawei/hms/scankit/p/fa;->c:Lcom/huawei/hms/scankit/p/fa;

    invoke-direct {p1, p2, v0}, Lcom/huawei/hms/scankit/p/ea;-><init>(Lcom/huawei/hms/scankit/p/fa;Ljava/lang/String;)V

    return-object p1

    :cond_1
    const-string v0, ""

    :cond_2
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    invoke-direct {p0, p2}, Lcom/huawei/hms/scankit/p/ha;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/huawei/hms/scankit/p/ea;

    sget-object v0, Lcom/huawei/hms/scankit/p/fa;->a:Lcom/huawei/hms/scankit/p/fa;

    invoke-direct {p2, v0, p1}, Lcom/huawei/hms/scankit/p/ea;-><init>(Lcom/huawei/hms/scankit/p/fa;Ljava/lang/String;)V

    return-object p2

    :cond_3
    new-instance p1, Lcom/huawei/hms/scankit/p/ea;

    sget-object p2, Lcom/huawei/hms/scankit/p/fa;->d:Lcom/huawei/hms/scankit/p/fa;

    invoke-direct {p1, p2, v0}, Lcom/huawei/hms/scankit/p/ea;-><init>(Lcom/huawei/hms/scankit/p/fa;Ljava/lang/String;)V

    return-object p1
.end method

.method private b(ILandroid/content/Context;)Lcom/huawei/hms/scankit/p/ea;
    .locals 2

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/ha;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance p1, Lcom/huawei/hms/scankit/p/ea;

    sget-object p2, Lcom/huawei/hms/scankit/p/fa;->b:Lcom/huawei/hms/scankit/p/fa;

    invoke-direct {p1, p2, v0}, Lcom/huawei/hms/scankit/p/ea;-><init>(Lcom/huawei/hms/scankit/p/fa;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const-string v0, ""

    :cond_1
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_2

    invoke-direct {p0, p2}, Lcom/huawei/hms/scankit/p/ha;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance p1, Lcom/huawei/hms/scankit/p/ea;

    sget-object p2, Lcom/huawei/hms/scankit/p/fa;->a:Lcom/huawei/hms/scankit/p/fa;

    invoke-direct {p1, p2, v0}, Lcom/huawei/hms/scankit/p/ea;-><init>(Lcom/huawei/hms/scankit/p/fa;Ljava/lang/String;)V

    return-object p1

    :cond_2
    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_3

    invoke-direct {p0, p2}, Lcom/huawei/hms/scankit/p/ha;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/huawei/hms/scankit/p/ea;

    sget-object v0, Lcom/huawei/hms/scankit/p/fa;->c:Lcom/huawei/hms/scankit/p/fa;

    invoke-direct {p2, v0, p1}, Lcom/huawei/hms/scankit/p/ea;-><init>(Lcom/huawei/hms/scankit/p/fa;Ljava/lang/String;)V

    return-object p2

    :cond_3
    new-instance p1, Lcom/huawei/hms/scankit/p/ea;

    sget-object p2, Lcom/huawei/hms/scankit/p/fa;->d:Lcom/huawei/hms/scankit/p/fa;

    invoke-direct {p1, p2, v0}, Lcom/huawei/hms/scankit/p/ea;-><init>(Lcom/huawei/hms/scankit/p/fa;Ljava/lang/String;)V

    return-object p1
.end method

.method private b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/huawei/hms/scankit/p/B;->a()Lcom/huawei/hms/scankit/p/B;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/B;->c()Lcom/huawei/hms/scankit/p/E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/E;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/huawei/hms/scankit/p/ia;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/huawei/hms/scankit/p/E;->e(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/E;->j()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/huawei/hms/scankit/p/B;->a()Lcom/huawei/hms/scankit/p/B;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/B;->c()Lcom/huawei/hms/scankit/p/E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/E;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/huawei/hms/scankit/p/ia;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/huawei/hms/scankit/p/E;->h(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/E;->m()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private e()Z
    .locals 2

    invoke-static {}, Lcom/huawei/hms/scankit/p/B;->a()Lcom/huawei/hms/scankit/p/B;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/B;->c()Lcom/huawei/hms/scankit/p/E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/E;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/huawei/hms/scankit/p/y;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hms/scankit/p/E;->g(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/E;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private f()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/huawei/hms/scankit/p/B;->a()Lcom/huawei/hms/scankit/p/B;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/B;->c()Lcom/huawei/hms/scankit/p/E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/E;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/huawei/hms/scankit/p/ia;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hms/scankit/p/E;->i(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/E;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/huawei/hms/scankit/p/ea;
    .locals 3

    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/ha;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p1, Lcom/huawei/hms/scankit/p/ea;

    sget-object v1, Lcom/huawei/hms/scankit/p/fa;->b:Lcom/huawei/hms/scankit/p/fa;

    invoke-direct {p1, v1, v0}, Lcom/huawei/hms/scankit/p/ea;-><init>(Lcom/huawei/hms/scankit/p/fa;Ljava/lang/String;)V

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/ha;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance p1, Lcom/huawei/hms/scankit/p/ea;

    sget-object v1, Lcom/huawei/hms/scankit/p/fa;->a:Lcom/huawei/hms/scankit/p/fa;

    invoke-direct {p1, v1, v0}, Lcom/huawei/hms/scankit/p/ea;-><init>(Lcom/huawei/hms/scankit/p/fa;Ljava/lang/String;)V

    return-object p1

    :cond_1
    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/ha;->e()Z

    move-result v0

    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/ha;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance p1, Lcom/huawei/hms/scankit/p/ea;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/huawei/hms/scankit/p/fa;->c:Lcom/huawei/hms/scankit/p/fa;

    invoke-direct {p1, v0, v1}, Lcom/huawei/hms/scankit/p/ea;-><init>(Lcom/huawei/hms/scankit/p/fa;Ljava/lang/String;)V

    return-object p1

    :cond_2
    sget-object v0, Lcom/huawei/hms/scankit/p/fa;->b:Lcom/huawei/hms/scankit/p/fa;

    invoke-virtual {p0, v1}, Lcom/huawei/hms/scankit/p/ha;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/huawei/hms/scankit/p/ea;-><init>(Lcom/huawei/hms/scankit/p/fa;Ljava/lang/String;)V

    return-object p1

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/ha;->d()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/huawei/hms/scankit/p/ha;->b(ILandroid/content/Context;)Lcom/huawei/hms/scankit/p/ea;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/ha;->d()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/huawei/hms/scankit/p/ha;->a(ILandroid/content/Context;)Lcom/huawei/hms/scankit/p/ea;

    move-result-object p1

    return-object p1
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method public abstract a(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()I
.end method
