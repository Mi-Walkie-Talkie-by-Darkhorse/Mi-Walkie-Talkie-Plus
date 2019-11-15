.class public Lcom/tencent/bugly/mimsg/crashreport/CrashReport;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/mimsg/crashreport/CrashReport$WebViewInterface;,
        Lcom/tencent/bugly/mimsg/crashreport/CrashReport$CrashHandleCallback;,
        Lcom/tencent/bugly/mimsg/crashreport/CrashReport$UserStrategy;
    }
.end annotation


# static fields
.field private static a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeBugly()V
    .locals 2

    sget-boolean v0, Lcom/tencent/bugly/mimsg/b;->a:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not close bugly because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/tencent/bugly/mimsg/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/tencent/bugly/mimsg/crashreport/CrashReport;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/crash/BuglyBroadcastRecevier;->getInstance()Lcom/tencent/bugly/mimsg/crashreport/crash/BuglyBroadcastRecevier;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v1, Lcom/tencent/bugly/mimsg/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/mimsg/crashreport/crash/BuglyBroadcastRecevier;->unregister(Landroid/content/Context;)V

    :cond_3
    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/CrashReport;->closeCrashReport()V

    sget-object v0, Lcom/tencent/bugly/mimsg/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/crashreport/biz/b;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/tencent/bugly/mimsg/proguard/w;->a()Lcom/tencent/bugly/mimsg/proguard/w;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/proguard/w;->b()V

    goto :goto_0
.end method

.method public static closeCrashReport()V
    .locals 2

    sget-boolean v0, Lcom/tencent/bugly/mimsg/b;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not close crash report because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/mimsg/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->a()Lcom/tencent/bugly/mimsg/crashreport/crash/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->d()V

    goto :goto_0
.end method

.method public static closeNativeReport()V
    .locals 2

    sget-boolean v0, Lcom/tencent/bugly/mimsg/b;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not close native report because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/mimsg/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->a()Lcom/tencent/bugly/mimsg/crashreport/crash/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->f()V

    goto :goto_0
.end method

.method public static enableBugly(Z)V
    .locals 0

    sput-boolean p0, Lcom/tencent/bugly/mimsg/b;->a:Z

    return-void
.end method

.method public static getAllUserDataKeys(Landroid/content/Context;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/tencent/bugly/mimsg/b;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not get all keys of user data because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    if-nez p0, :cond_1

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "getAllUserDataKeys args context should not be null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->C()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public static getAppChannel()Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/tencent/bugly/mimsg/b;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not get App channel because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "unknown"

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/mimsg/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "unknown"

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/tencent/bugly/mimsg/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->l:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getAppID()Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/tencent/bugly/mimsg/b;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not get App ID because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "unknown"

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/mimsg/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "unknown"

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/tencent/bugly/mimsg/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getAppVer()Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/tencent/bugly/mimsg/b;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not get app version because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "unknown"

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/mimsg/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "unknown"

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/tencent/bugly/mimsg/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->j:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getBuglyVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string v0, "Please call with context."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "unknown"

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSdkExtraData()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/tencent/bugly/mimsg/b;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not get SDK extra data because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/mimsg/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/tencent/bugly/mimsg/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->A:Ljava/util/HashMap;

    goto :goto_0
.end method

.method public static getSdkExtraData(Landroid/content/Context;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/tencent/bugly/mimsg/b;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not get SDK extra data because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    if-nez p0, :cond_1

    const-string v0, "Context should not be null."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->A:Ljava/util/HashMap;

    goto :goto_0
.end method

.method public static getUserData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/tencent/bugly/mimsg/b;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not get user data because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "unknown"

    :goto_0
    return-object v0

    :cond_0
    if-nez p0, :cond_1

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "getUserDataValue args context should not be null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "unknown"

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/tencent/bugly/mimsg/proguard/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getUserDatasSize(Landroid/content/Context;)I
    .locals 3

    const/4 v0, -0x1

    sget-boolean v1, Lcom/tencent/bugly/mimsg/b;->a:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v2, "Can not get size of user data because bugly is disable."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    if-nez p0, :cond_1

    sget-object v1, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v2, "getUserDatasSize args context should not be null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->B()I

    move-result v0

    goto :goto_0
.end method

.method public static getUserId()Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/tencent/bugly/mimsg/b;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not get user ID because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "unknown"

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/mimsg/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "unknown"

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/tencent/bugly/mimsg/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getUserSceneTagId(Landroid/content/Context;)I
    .locals 3

    const/4 v0, -0x1

    sget-boolean v1, Lcom/tencent/bugly/mimsg/b;->a:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v2, "Can not get user scene tag because bugly is disable."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    if-nez p0, :cond_1

    sget-object v1, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v2, "getUserSceneTagId args context should not be null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->F()I

    move-result v0

    goto :goto_0
.end method

.method public static initCrashReport(Landroid/content/Context;)V
    .locals 1

    sput-object p0, Lcom/tencent/bugly/mimsg/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/bugly/mimsg/CrashModule;->getInstance()Lcom/tencent/bugly/mimsg/CrashModule;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/b;->a(Lcom/tencent/bugly/mimsg/a;)V

    invoke-static {p0}, Lcom/tencent/bugly/mimsg/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static initCrashReport(Landroid/content/Context;Lcom/tencent/bugly/mimsg/crashreport/CrashReport$UserStrategy;)V
    .locals 1

    sput-object p0, Lcom/tencent/bugly/mimsg/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/bugly/mimsg/CrashModule;->getInstance()Lcom/tencent/bugly/mimsg/CrashModule;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/b;->a(Lcom/tencent/bugly/mimsg/a;)V

    invoke-static {p0, p1}, Lcom/tencent/bugly/mimsg/b;->a(Landroid/content/Context;Lcom/tencent/bugly/mimsg/BuglyStrategy;)V

    return-void
.end method

.method public static initCrashReport(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/tencent/bugly/mimsg/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/bugly/mimsg/CrashModule;->getInstance()Lcom/tencent/bugly/mimsg/CrashModule;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/bugly/mimsg/b;->a(Lcom/tencent/bugly/mimsg/a;)V

    invoke-static {p0, p1, p2, v0}, Lcom/tencent/bugly/mimsg/b;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/mimsg/BuglyStrategy;)V

    :cond_0
    return-void
.end method

.method public static initCrashReport(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/mimsg/crashreport/CrashReport$UserStrategy;)V
    .locals 1

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    sput-object p0, Lcom/tencent/bugly/mimsg/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/bugly/mimsg/CrashModule;->getInstance()Lcom/tencent/bugly/mimsg/CrashModule;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/b;->a(Lcom/tencent/bugly/mimsg/a;)V

    invoke-static {p0, p1, p2, p3}, Lcom/tencent/bugly/mimsg/b;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/mimsg/BuglyStrategy;)V

    goto :goto_0
.end method

.method public static isLastSessionCrash()Z
    .locals 3

    const/4 v0, 0x0

    sget-boolean v1, Lcom/tencent/bugly/mimsg/b;->a:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v2, "The info \'isLastSessionCrash\' is not accurate because bugly is disable."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/mimsg/CrashModule;->hasInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v2, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->a()Lcom/tencent/bugly/mimsg/crashreport/crash/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->b()Z

    move-result v0

    goto :goto_0
.end method

.method public static postCatchedException(Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/tencent/bugly/mimsg/crashreport/CrashReport;->postCatchedException(Ljava/lang/Throwable;Ljava/lang/Thread;Z)V

    return-void
.end method

.method public static postCatchedException(Ljava/lang/Throwable;Ljava/lang/Thread;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tencent/bugly/mimsg/crashreport/CrashReport;->postCatchedException(Ljava/lang/Throwable;Ljava/lang/Thread;Z)V

    return-void
.end method

.method public static postCatchedException(Ljava/lang/Throwable;Ljava/lang/Thread;Z)V
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x0

    sget-boolean v0, Lcom/tencent/bugly/mimsg/b;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not post crash caught because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/mimsg/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    const-string v0, "throwable is null, just return"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    :goto_1
    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->a()Lcom/tencent/bugly/mimsg/crashreport/crash/c;

    move-result-object v0

    move-object v2, p0

    move-object v5, v4

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->a(Ljava/lang/Thread;Ljava/lang/Throwable;ZLjava/lang/String;[BZ)V

    goto :goto_0

    :cond_3
    move-object v1, p1

    goto :goto_1
.end method

.method private static putSdkData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/16 v8, 0xc8

    const/16 v7, 0x32

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/tencent/bugly/mimsg/proguard/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/tencent/bugly/mimsg/proguard/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "[a-zA-Z[0-9]]+"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_2

    sget-object v1, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v2, "putSdkData key length over limit %d, will be cutted."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1f4

    if-le v1, v2, :cond_3

    sget-object v1, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v2, "putSdkData value length over limit %d, will be cutted!"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_3
    invoke-static {p0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "[param] putSdkData data: %s - %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v5

    aput-object p2, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static putUserData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/16 v7, 0xc8

    const/16 v6, 0x32

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-boolean v0, Lcom/tencent/bugly/mimsg/b;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not put user data because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    if-nez p0, :cond_1

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "putUserData args context should not be null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v0, "putUserData args key should not be null or empty"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v0, "putUserData args value should not be null"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string v0, "[a-zA-Z[0-9]]+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "putUserData args key should match [a-zA-Z[0-9]]+  {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v7, :cond_5

    const-string v0, "user data value length over limit %d, it will be cutted!"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-virtual {p2, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_5
    invoke-static {p0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->C()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;->putKeyValueToNative(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_6
    invoke-static {p0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "replace KV %s %s"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v4

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->B()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_8

    const-string v0, "user data size is over limit %d, it will be cutted!"

    new-array v1, v4, [Ljava/lang/Object;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v6, :cond_9

    const-string v0, "user data key length over limit %d , will drop this new key %s"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_9
    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;->putKeyValueToNative(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_a
    invoke-static {p0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "[param] set user data: %s - %s"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v4

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public static removeUserData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-boolean v0, Lcom/tencent/bugly/mimsg/b;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not remove user data because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "unknown"

    :goto_0
    return-object v0

    :cond_0
    if-nez p0, :cond_1

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "removeUserData args context should not be null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "unknown"

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/tencent/bugly/mimsg/proguard/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string v0, "[param] remove user data: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {p0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static setAppChannel(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/tencent/bugly/mimsg/b;->a:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not set App channel because Bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p0, :cond_2

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "setAppChannel args context should not be null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "App channel is null, will not set"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    move-result-object v0

    iput-object p1, v0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->l:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;->setNativeAppChannel(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public static setAppPackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/tencent/bugly/mimsg/b;->a:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not set App package because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p0, :cond_2

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "setAppPackage args context should not be null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "App package is null, will not set"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    move-result-object v0

    iput-object p1, v0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->c:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;->setNativeAppPackage(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public static setAppVersion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/tencent/bugly/mimsg/b;->a:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not set App version because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p0, :cond_2

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "setAppVersion args context should not be null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "App version is null, will not set"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    move-result-object v0

    iput-object p1, v0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->j:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;->setNativeAppVersion(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public static setAuditEnable(Landroid/content/Context;Z)V
    .locals 3

    sget-boolean v0, Lcom/tencent/bugly/mimsg/b;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not set App package because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    if-nez p0, :cond_1

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "setAppPackage args context should not be null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set audit enable: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    move-result-object v0

    iput-boolean p1, v0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->B:Z

    goto :goto_0
.end method

.method public static setBuglyDbName(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/tencent/bugly/mimsg/b;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not set DB name because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set Bugly DB name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lcom/tencent/bugly/mimsg/proguard/q;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/tencent/bugly/mimsg/crashreport/CrashReport;->a:Landroid/content/Context;

    return-void
.end method

.method public static setCrashFilter(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/tencent/bugly/mimsg/b;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not set App package because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set crash stack filter: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->m:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setCrashRegularFilter(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/tencent/bugly/mimsg/b;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not set App package because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set crash stack filter: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->n:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setIsAppForeground(Landroid/content/Context;Z)V
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Lcom/tencent/bugly/mimsg/b;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not set \'isAppForeground\' because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    if-nez p0, :cond_1

    const-string v0, "Context should not be null."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "App is in foreground."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_1
    invoke-static {p0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->a(Z)V

    goto :goto_0

    :cond_2
    const-string v0, "App is in background."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static setIsDevelopmentDevice(Landroid/content/Context;Z)V
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Lcom/tencent/bugly/mimsg/b;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not set \'isDevelopmentDevice\' because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    if-nez p0, :cond_1

    const-string v0, "Context should not be null."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "This is a development device."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_1
    invoke-static {p0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    move-result-object v0

    iput-boolean p1, v0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->y:Z

    goto :goto_0

    :cond_2
    const-string v0, "This is not a development device."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static setJavascriptMonitor(Landroid/webkit/WebView;Z)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tencent/bugly/mimsg/crashreport/CrashReport;->setJavascriptMonitor(Landroid/webkit/WebView;ZZ)Z

    move-result v0

    return v0
.end method

.method public static setJavascriptMonitor(Landroid/webkit/WebView;ZZ)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    if-nez p0, :cond_0

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "WebView is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Lcom/tencent/bugly/mimsg/crashreport/CrashReport$1;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/mimsg/crashreport/CrashReport$1;-><init>(Landroid/webkit/WebView;)V

    invoke-static {v0, p1, p2}, Lcom/tencent/bugly/mimsg/crashreport/CrashReport;->setJavascriptMonitor(Lcom/tencent/bugly/mimsg/crashreport/CrashReport$WebViewInterface;ZZ)Z

    move-result v0

    goto :goto_0
.end method

.method public static setJavascriptMonitor(Lcom/tencent/bugly/mimsg/crashreport/CrashReport$WebViewInterface;Z)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tencent/bugly/mimsg/crashreport/CrashReport;->setJavascriptMonitor(Lcom/tencent/bugly/mimsg/crashreport/CrashReport$WebViewInterface;ZZ)Z

    move-result v0

    return v0
.end method

.method public static setJavascriptMonitor(Lcom/tencent/bugly/mimsg/crashreport/CrashReport$WebViewInterface;ZZ)Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    sget-object v1, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v2, "WebViewInterface is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/mimsg/CrashModule;->hasInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v1, "CrashReport has not been initialed! please to call method \'initCrashReport\' first!"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v2, "Set Javascript exception monitor of webview."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    sget-boolean v2, Lcom/tencent/bugly/mimsg/b;->a:Z

    if-nez v2, :cond_2

    sget-object v1, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v2, "Can not set JavaScript monitor because bugly is disable."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v2, "URL of webview is %s"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {p0}, Lcom/tencent/bugly/mimsg/crashreport/CrashReport$WebViewInterface;->getUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-nez p2, :cond_3

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ge v2, v3, :cond_3

    const-string v1, "This interface is only available for Android 4.4 or later."

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string v2, "Enable the javascript needed by webview monitor."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-interface {p0, v1}, Lcom/tencent/bugly/mimsg/crashreport/CrashReport$WebViewInterface;->setJavaScriptEnabled(Z)V

    invoke-static {p0}, Lcom/tencent/bugly/mimsg/crashreport/crash/h5/H5JavaScriptInterface;->getInstance(Lcom/tencent/bugly/mimsg/crashreport/CrashReport$WebViewInterface;)Lcom/tencent/bugly/mimsg/crashreport/crash/h5/H5JavaScriptInterface;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v3, "Add a secure javascript interface to the webview."

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v3, "exceptionUploader"

    invoke-interface {p0, v2, v3}, Lcom/tencent/bugly/mimsg/crashreport/CrashReport$WebViewInterface;->addJavascriptInterface(Lcom/tencent/bugly/mimsg/crashreport/crash/h5/H5JavaScriptInterface;Ljava/lang/String;)V

    :cond_4
    if-eqz p1, :cond_6

    const-string v2, "Inject bugly.js(v%s) to the webview."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/crash/h5/b;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/crash/h5/b;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    const-string v2, "Failed to inject Bugly.js."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/crash/h5/b;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "javascript:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/tencent/bugly/mimsg/crashreport/CrashReport$WebViewInterface;->loadUrl(Ljava/lang/String;)V

    :cond_6
    move v0, v1

    goto/16 :goto_0
.end method

.method public static setSdkExtraData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/tencent/bugly/mimsg/b;->a:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not put SDK extra data because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/tencent/bugly/mimsg/proguard/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/tencent/bugly/mimsg/proguard/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setSessionIntervalMills(J)V
    .locals 2

    sget-boolean v0, Lcom/tencent/bugly/mimsg/b;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not set \'SessionIntervalMills\' because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/tencent/bugly/mimsg/crashreport/biz/b;->a(J)V

    goto :goto_0
.end method

.method public static setUserId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    const/16 v3, 0x64

    const/4 v4, 0x0

    sget-boolean v0, Lcom/tencent/bugly/mimsg/b;->a:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not set user ID because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p0, :cond_2

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Context should not be null when bugly has not been initialed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    const-string v0, "userId should not be null"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_4

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "userId %s length is over limit %d substring to %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/mimsg/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object p1, v0

    :cond_4
    invoke-static {p0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->b(Ljava/lang/String;)V

    const-string v0, "[user] set userId : %s"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;->setNativeUserId(Ljava/lang/String;)Z

    :cond_5
    invoke-static {}, Lcom/tencent/bugly/mimsg/CrashModule;->hasInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/biz/b;->a()V

    goto :goto_0
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/tencent/bugly/mimsg/b;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not set user ID because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/mimsg/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/tencent/bugly/mimsg/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/tencent/bugly/mimsg/crashreport/CrashReport;->setUserId(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setUserSceneTag(Landroid/content/Context;I)V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Lcom/tencent/bugly/mimsg/b;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not set tag caught because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    if-nez p0, :cond_1

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "setTag args context should not be null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-gtz p1, :cond_2

    const-string v0, "setTag args tagId should > 0"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_2
    invoke-static {p0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->a(I)V

    const-string v0, "[param] set user scene tag: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static startCrashReport()V
    .locals 2

    sget-boolean v0, Lcom/tencent/bugly/mimsg/b;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not start crash report because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/mimsg/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->a()Lcom/tencent/bugly/mimsg/crashreport/crash/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->c()V

    goto :goto_0
.end method

.method public static testANRCrash()V
    .locals 2

    sget-boolean v0, Lcom/tencent/bugly/mimsg/b;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not test ANR crash because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/mimsg/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "start to create a anr crash for test!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->a()Lcom/tencent/bugly/mimsg/crashreport/crash/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->k()V

    goto :goto_0
.end method

.method public static testJavaCrash()V
    .locals 2

    sget-boolean v0, Lcom/tencent/bugly/mimsg/b;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not test Java crash because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/mimsg/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->b()Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v1, 0x5e20

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->b(I)V

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This Crash create for Test! You can go to Bugly see more detail!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static testNativeCrash()V
    .locals 2

    sget-boolean v0, Lcom/tencent/bugly/mimsg/b;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "Can not test native crash because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/mimsg/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/x;->a:Ljava/lang/String;

    const-string v1, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "start to create a native crash for test!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->a()Lcom/tencent/bugly/mimsg/crashreport/crash/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->j()V

    goto :goto_0
.end method
