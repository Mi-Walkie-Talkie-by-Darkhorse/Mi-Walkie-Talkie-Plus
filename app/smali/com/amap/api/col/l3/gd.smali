.class public final Lcom/amap/api/col/l3/gd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3/gd$b;,
        Lcom/amap/api/col/l3/gd$a;
    }
.end annotation


# instance fields
.field private volatile a:Lcom/amap/api/col/l3/gd$b;

.field private b:Lcom/amap/api/col/l3/hr;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/amap/api/col/l3/gd$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3/gd$b;-><init>(B)V

    iput-object v0, p0, Lcom/amap/api/col/l3/gd;->a:Lcom/amap/api/col/l3/gd$b;

    new-instance v0, Lcom/amap/api/col/l3/hr;

    const-string v1, "HttpsDecisionUtil"

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3/hr;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/gd;->b:Lcom/amap/api/col/l3/hr;

    return-void
.end method

.method public static a()Lcom/amap/api/col/l3/gd;
    .locals 1

    sget-object v0, Lcom/amap/api/col/l3/gd$a;->a:Lcom/amap/api/col/l3/gd;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static b()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3/gd;->a:Lcom/amap/api/col/l3/gd$b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/l3/gd$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3/gd$b;-><init>(B)V

    iput-object v0, p0, Lcom/amap/api/col/l3/gd;->a:Lcom/amap/api/col/l3/gd$b;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/gd;->a:Lcom/amap/api/col/l3/gd$b;

    iget-object v1, p0, Lcom/amap/api/col/l3/gd;->b:Lcom/amap/api/col/l3/hr;

    const-string v2, "isTargetRequired"

    invoke-virtual {v1, p1, v2}, Lcom/amap/api/col/l3/hr;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/gd$b;->a(Z)V

    iget-object v0, p0, Lcom/amap/api/col/l3/gd;->a:Lcom/amap/api/col/l3/gd$b;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/gd$b;->a(Landroid/content/Context;)V

    return-void
.end method

.method final a(Landroid/content/Context;Z)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3/gd;->a:Lcom/amap/api/col/l3/gd$b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/l3/gd$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3/gd$b;-><init>(B)V

    iput-object v0, p0, Lcom/amap/api/col/l3/gd;->a:Lcom/amap/api/col/l3/gd$b;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/gd;->b:Lcom/amap/api/col/l3/hr;

    const-string v1, "isTargetRequired"

    invoke-virtual {v0, p1, v1, p2}, Lcom/amap/api/col/l3/hr;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/amap/api/col/l3/gd;->a:Lcom/amap/api/col/l3/gd$b;

    invoke-virtual {p1, p2}, Lcom/amap/api/col/l3/gd$b;->a(Z)V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3/gd;->a:Lcom/amap/api/col/l3/gd$b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/l3/gd$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3/gd$b;-><init>(B)V

    iput-object v0, p0, Lcom/amap/api/col/l3/gd;->a:Lcom/amap/api/col/l3/gd$b;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/gd;->a:Lcom/amap/api/col/l3/gd$b;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/gd$b;->b(Z)V

    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3/gd;->b:Lcom/amap/api/col/l3/hr;

    const-string v1, "isTargetRequired"

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/amap/api/col/l3/hr;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public final b(Z)Z
    .locals 2

    invoke-static {}, Lcom/amap/api/col/l3/gd;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/amap/api/col/l3/gd;->a:Lcom/amap/api/col/l3/gd$b;

    if-nez p1, :cond_1

    new-instance p1, Lcom/amap/api/col/l3/gd$b;

    invoke-direct {p1, v1}, Lcom/amap/api/col/l3/gd$b;-><init>(B)V

    iput-object p1, p0, Lcom/amap/api/col/l3/gd;->a:Lcom/amap/api/col/l3/gd$b;

    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3/gd;->a:Lcom/amap/api/col/l3/gd$b;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/gd$b;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
