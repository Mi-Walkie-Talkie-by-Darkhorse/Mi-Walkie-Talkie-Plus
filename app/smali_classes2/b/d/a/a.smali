.class public Lb/d/a/a;
.super Ljava/lang/Object;
.source "OpPermissionUtils.java"


# direct methods
.method public static a(Landroid/content/Context;)Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_4

    .line 2
    invoke-static {}, Lb/d/a/b/f;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0}, Lb/d/a/a;->e(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 4
    :cond_0
    invoke-static {}, Lb/d/a/b/f;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p0}, Lb/d/a/a;->d(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 6
    :cond_1
    invoke-static {}, Lb/d/a/b/f;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {p0}, Lb/d/a/a;->c(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 8
    :cond_2
    invoke-static {}, Lb/d/a/b/f;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-static {p0}, Lb/d/a/a;->g(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 10
    :cond_3
    invoke-static {}, Lb/d/a/b/f;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    invoke-static {p0}, Lb/d/a/a;->f(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 12
    :cond_4
    invoke-static {p0}, Lb/d/a/a;->b(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 7

    .line 1
    invoke-static {}, Lb/d/a/b/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lb/d/a/a;->d(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 3
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 5
    :try_start_0
    const-class v1, Landroid/provider/Settings;

    const-string v2, "canDrawOverlays"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 6
    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    .line 7
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "OpPermissionUtils"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lb/d/a/b/a;->a(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static d(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lb/d/a/b/b;->a(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static e(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lb/d/a/b/c;->a(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static f(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lb/d/a/b/d;->a(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static g(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lb/d/a/b/e;->a(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
