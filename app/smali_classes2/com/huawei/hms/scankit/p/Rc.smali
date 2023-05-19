.class public Lcom/huawei/hms/scankit/p/Rc;
.super Ljava/lang/Object;
.source "HaUtil.java"


# static fields
.field private static final a:Ljava/lang/String; = "Rc"

.field private static volatile b:Landroid/os/Bundle;


# direct methods
.method public static a(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 3

    if-nez p0, :cond_0

    .line 1
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0

    .line 2
    :cond_0
    sget-object v0, Lcom/huawei/hms/scankit/p/Rc;->b:Landroid/os/Bundle;

    if-nez v0, :cond_2

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    :try_start_0
    invoke-static {p0}, Lb/b/a/b/a;->a(Landroid/content/Context;)Lb/b/a/b/a;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "client/app_id"

    :try_start_1
    invoke-virtual {v1, v2}, Lb/b/a/b/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    const-string p0, "appid"

    .line 6
    :try_start_2
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 7
    :catch_0
    sget-object p0, Lcom/huawei/hms/scankit/p/Rc;->a:Ljava/lang/String;

    const-string v1, "getAppInfo: Exception"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 8
    :catch_1
    sget-object p0, Lcom/huawei/hms/scankit/p/Rc;->a:Ljava/lang/String;

    const-string v1, "getAppInfo: RuntimeException"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :goto_0
    sput-object v0, Lcom/huawei/hms/scankit/p/Rc;->b:Landroid/os/Bundle;

    .line 10
    :cond_2
    sget-object p0, Lcom/huawei/hms/scankit/p/Rc;->b:Landroid/os/Bundle;

    return-object p0
.end method
