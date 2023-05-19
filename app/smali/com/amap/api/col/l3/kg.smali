.class public final Lcom/amap/api/col/l3/kg;
.super Ljava/lang/Object;
.source "RollBackDynamic.java"


# static fields
.field static a:Z = false

.field static b:Z = false

.field static c:Z = false

.field static d:Z = false

.field static e:I = 0x0

.field static f:I = 0x0

.field static g:Z = true

.field static h:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    const-string v0, "startMark"

    const-string v1, "loc"

    .line 7
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/col/l3/kg;->e(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 8
    :cond_0
    sget-boolean v2, Lcom/amap/api/col/l3/kg;->a:Z

    if-eqz v2, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    .line 9
    invoke-static {p0, v1, v0, v2}, Lcom/amap/api/col/l3/kh;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 10
    invoke-static {p0, v1, v0, v2}, Lcom/amap/api/col/l3/kh;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    sput-boolean v3, Lcom/amap/api/col/l3/kg;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "RollBackDynamic"

    const-string v1, "AddStartMark"

    .line 12
    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "loc"

    .line 13
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/col/l3/kg;->e(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "endMark"

    .line 14
    invoke-static {p0, v0, v1, p1}, Lcom/amap/api/col/l3/kh;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "startMark"

    .line 15
    invoke-static {p0, v0, v1, p1}, Lcom/amap/api/col/l3/kh;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "RollBackDynamic"

    const-string v0, "resetMark"

    .line 16
    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/amap/api/col/l3/gh;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/amap/api/col/l3/kg;->d:Z

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0, p1}, Lcom/amap/api/col/l3/hl;->b(Landroid/content/Context;Lcom/amap/api/col/l3/gh;)Z

    move-result p1

    sput-boolean p1, Lcom/amap/api/col/l3/kg;->c:Z

    const/4 v0, 0x1

    .line 3
    sput-boolean v0, Lcom/amap/api/col/l3/kg;->d:Z

    if-nez p1, :cond_0

    .line 4
    invoke-static {}, Lcom/amap/api/col/l3/jz;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "loc"

    .line 5
    invoke-static {p0, p1}, Lcom/amap/api/col/l3/hl;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string p0, "dexrollbackstatistics"

    const-string p1, "RollBack because of version error"

    .line 6
    invoke-static {p0, p1}, Lcom/amap/api/col/l3/kf;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 17
    :try_start_0
    invoke-static {p0, p1}, Lcom/amap/api/col/l3/hl;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string p0, "dexrollbackstatistics"

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "RollBack because of "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amap/api/col/l3/kf;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "RollBackDynamic"

    const-string p2, "rollBackDynamicFile"

    .line 19
    invoke-static {p0, p1, p2}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 4

    const-string v0, "endMark"

    const-string v1, "loc"

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/col/l3/kg;->e(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 2
    :cond_0
    sget-boolean v2, Lcom/amap/api/col/l3/kg;->b:Z

    if-eqz v2, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    .line 3
    invoke-static {p0, v1, v0, v2}, Lcom/amap/api/col/l3/kh;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 4
    invoke-static {p0, v1, v0, v2}, Lcom/amap/api/col/l3/kh;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 5
    sput-boolean v3, Lcom/amap/api/col/l3/kg;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "RollBackDynamic"

    const-string v1, "AddEndMark"

    .line 6
    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 7

    const-string v0, "checkMark"

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/col/l3/kg;->e(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 2
    :cond_0
    sget-boolean v1, Lcom/amap/api/col/l3/kg;->h:Z

    if-eqz v1, :cond_1

    .line 3
    sget-boolean p0, Lcom/amap/api/col/l3/kg;->g:Z

    return p0

    .line 4
    :cond_1
    sget v1, Lcom/amap/api/col/l3/kg;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "loc"

    if-nez v1, :cond_2

    :try_start_1
    const-string v1, "startMark"

    .line 5
    invoke-static {p0, v3, v1, v2}, Lcom/amap/api/col/l3/kh;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/amap/api/col/l3/kg;->e:I

    .line 6
    :cond_2
    sget v1, Lcom/amap/api/col/l3/kg;->f:I

    if-nez v1, :cond_3

    const-string v1, "endMark"

    .line 7
    invoke-static {p0, v3, v1, v2}, Lcom/amap/api/col/l3/kh;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/amap/api/col/l3/kg;->f:I

    .line 8
    :cond_3
    sget-boolean v1, Lcom/amap/api/col/l3/kg;->a:Z

    const/4 v4, 0x1

    if-nez v1, :cond_7

    sget-boolean v1, Lcom/amap/api/col/l3/kg;->b:Z

    if-nez v1, :cond_7

    .line 9
    sget v1, Lcom/amap/api/col/l3/kg;->e:I

    sget v5, Lcom/amap/api/col/l3/kg;->f:I

    if-ge v1, v5, :cond_4

    .line 10
    invoke-static {p0, v2}, Lcom/amap/api/col/l3/kg;->a(Landroid/content/Context;I)V

    .line 11
    sput-boolean v4, Lcom/amap/api/col/l3/kg;->g:Z

    .line 12
    :cond_4
    sget v1, Lcom/amap/api/col/l3/kg;->e:I

    sget v5, Lcom/amap/api/col/l3/kg;->f:I

    sub-int v5, v1, v5

    const/16 v6, 0x63

    if-lez v5, :cond_5

    if-le v1, v6, :cond_5

    .line 13
    invoke-static {p0, v2}, Lcom/amap/api/col/l3/kg;->a(Landroid/content/Context;I)V

    .line 14
    sput-boolean v4, Lcom/amap/api/col/l3/kg;->g:Z

    .line 15
    :cond_5
    sget v1, Lcom/amap/api/col/l3/kg;->e:I

    sget v5, Lcom/amap/api/col/l3/kg;->f:I

    sub-int v5, v1, v5

    if-lez v5, :cond_6

    if-ge v1, v6, :cond_6

    const/4 v1, -0x2

    .line 16
    invoke-static {p0, v1}, Lcom/amap/api/col/l3/kg;->a(Landroid/content/Context;I)V

    .line 17
    sput-boolean v2, Lcom/amap/api/col/l3/kg;->g:Z

    .line 18
    :cond_6
    sget v1, Lcom/amap/api/col/l3/kg;->e:I

    sget v5, Lcom/amap/api/col/l3/kg;->f:I

    sub-int/2addr v1, v5

    if-lez v1, :cond_7

    if-gez v5, :cond_7

    .line 19
    invoke-static {p0, v3, v0}, Lcom/amap/api/col/l3/kg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    sput-boolean v2, Lcom/amap/api/col/l3/kg;->g:Z

    :cond_7
    const-string v1, "isload"

    .line 21
    sget-boolean v2, Lcom/amap/api/col/l3/kg;->g:Z

    invoke-static {p0, v3, v1, v2}, Lcom/amap/api/col/l3/kh;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 22
    sput-boolean v4, Lcom/amap/api/col/l3/kg;->h:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v1, "RollBackDynamic"

    .line 23
    invoke-static {p0, v1, v0}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :goto_0
    sget-boolean p0, Lcom/amap/api/col/l3/kg;->g:Z

    return p0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/col/l3/kg;->e(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "loc"

    const-string v2, "isload"

    .line 2
    invoke-static {p0, v0, v2, v1}, Lcom/amap/api/col/l3/kh;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    const-string v0, "RollBackDynamic"

    const-string v1, "isLoad"

    .line 3
    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static e(Landroid/content/Context;)Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/amap/api/col/l3/kg;->d:Z

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/amap/api/col/l3/jz;->b()Lcom/amap/api/col/l3/gh;

    move-result-object v0

    .line 3
    invoke-static {p0, v0}, Lcom/amap/api/col/l3/kg;->a(Landroid/content/Context;Lcom/amap/api/col/l3/gh;)V

    .line 4
    :cond_0
    sget-boolean p0, Lcom/amap/api/col/l3/kg;->c:Z

    return p0
.end method
