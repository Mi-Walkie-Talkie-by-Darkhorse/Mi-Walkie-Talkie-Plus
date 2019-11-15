.class public Lcom/xiaomi/mipush/sdk/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mipush/sdk/i$a;,
        Lcom/xiaomi/mipush/sdk/i$b;
    }
.end annotation


# direct methods
.method private static a(Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/Class;)Landroid/content/pm/ActivityInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/Intent;",
            "Ljava/lang/Class",
            "<*>;)",
            "Landroid/content/pm/ActivityInfo;"
        }
    .end annotation

    const/16 v0, 0x4000

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaomi/mipush/sdk/j;

    invoke-direct {v1, p0}, Lcom/xiaomi/mipush/sdk/j;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/xiaomi/mipush/sdk/i;->d(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V

    return-void
.end method

.method private static a(Landroid/content/pm/ActivityInfo;[Ljava/lang/Boolean;)V
    .locals 6

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    aget-object v0, p1, v4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-boolean v1, p0, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/xiaomi/mipush/sdk/i$a;

    const-string v1, "<receiver android:name=\"%1$s\" .../> in AndroidManifest had the wrong enabled attribute, which should be android:enabled=%2$b."

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    aput-object v3, v2, v4

    aget-object v3, p1, v4

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/mipush/sdk/i$a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    aget-object v0, p1, v5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-boolean v1, p0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eq v0, v1, :cond_1

    new-instance v0, Lcom/xiaomi/mipush/sdk/i$a;

    const-string v1, "<receiver android:name=\"%1$s\" .../> in AndroidManifest had the wrong exported attribute, which should be android:exported=%2$b."

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    aput-object v3, v2, v4

    aget-object v3, p1, v5

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/mipush/sdk/i$a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private static a(Landroid/content/pm/PackageInfo;[Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {p1, v4}, Lcom/xiaomi/mipush/sdk/i;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static a([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    array-length v2, p0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, p0, v1

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method static synthetic b(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/i;->c(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/xiaomi/mipush/sdk/i;->c(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V

    return-void
.end method

.method private static c(Landroid/content/Context;)V
    .locals 9

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Landroid/content/Intent;

    sget-object v5, Lcom/xiaomi/push/service/ao;->o:Ljava/lang/String;

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    const-string v5, "com.xiaomi.push.service.receivers.PingReceiver"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-static {v1, v0, v5}, Lcom/xiaomi/mipush/sdk/i;->a(Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/Class;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->shouldUseMIUIPush(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    if-nez v0, :cond_1

    new-instance v0, Lcom/xiaomi/mipush/sdk/i$a;

    const-string v5, "<receiver android:name=\"%1$s\" .../> is missing or disabled in AndroidManifest."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "com.xiaomi.push.service.receivers.PingReceiver"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/xiaomi/mipush/sdk/i$a;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.xiaomi.mipush.RECEIVE_MESSAGE"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v4, 0x4000

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_3

    :try_start_1
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-class v5, Lcom/xiaomi/mipush/sdk/PushMessageReceiver;

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->enabled:Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_3

    move v0, v3

    :goto_2
    if-eqz v0, :cond_4

    :goto_3
    if-nez v0, :cond_5

    new-instance v0, Lcom/xiaomi/mipush/sdk/i$a;

    const-string v1, "Receiver: none of the subclasses of PushMessageReceiver is enabled or defined."

    invoke-direct {v0, v1}, Lcom/xiaomi/mipush/sdk/i$a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v5, 0x2

    :try_start_2
    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v5}, Lcom/xiaomi/mipush/sdk/i;->a(Landroid/content/pm/ActivityInfo;[Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v5}, Lcom/xiaomi/mipush/sdk/i;->a(Landroid/content/pm/ActivityInfo;[Ljava/lang/Boolean;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    move v0, v1

    :cond_4
    move v1, v0

    goto :goto_1

    :cond_5
    return-void

    :cond_6
    move v0, v1

    goto :goto_3
.end method

.method private static c(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ".permission.MIPUSH_RECEIVE"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v5, "android.permission.INTERNET"

    aput-object v5, v0, v1

    const-string v5, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v5, v0, v2

    const/4 v5, 0x2

    aput-object v4, v0, v5

    const/4 v5, 0x3

    const-string v6, "android.permission.ACCESS_WIFI_STATE"

    aput-object v6, v0, v5

    const/4 v5, 0x4

    const-string v6, "android.permission.READ_PHONE_STATE"

    aput-object v6, v0, v5

    const/4 v5, 0x5

    const-string v6, "android.permission.GET_TASKS"

    aput-object v6, v0, v5

    const/4 v5, 0x6

    const-string v6, "android.permission.VIBRATE"

    aput-object v6, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    if-eqz v0, :cond_5

    iget-object v5, p1, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    array-length v6, v5

    move v0, v1

    :goto_0
    if-ge v0, v6, :cond_5

    aget-object v7, v5, v0

    iget-object v7, v7, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v0, v2

    :goto_1
    if-nez v0, :cond_1

    new-instance v0, Lcom/xiaomi/mipush/sdk/i$a;

    const-string v3, "<permission android:name=\"%1$s\" .../> is undefined in AndroidManifest."

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/mipush/sdk/i$a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v5, v4

    move v0, v1

    :goto_2
    if-ge v0, v5, :cond_2

    aget-object v6, v4, v0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/xiaomi/mipush/sdk/i$a;

    const-string v4, "<uses-permission android:name=\"%1$s\"/> is missing in AndroidManifest."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/mipush/sdk/i$a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method private static d(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V
    .locals 13

    const/4 v12, 0x2

    const/4 v2, 0x0

    const/4 v11, 0x1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-class v0, Lcom/xiaomi/mipush/sdk/PushMessageHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mipush/sdk/i$b;

    const-class v5, Lcom/xiaomi/mipush/sdk/PushMessageHandler;

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-direct {v1, v5, v11, v11, v6}, Lcom/xiaomi/mipush/sdk/i$b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/xiaomi/mipush/sdk/MessageHandleService;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mipush/sdk/i$b;

    const-class v5, Lcom/xiaomi/mipush/sdk/MessageHandleService;

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-direct {v1, v5, v11, v2, v6}, Lcom/xiaomi/mipush/sdk/i$b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->shouldUseMIUIPush(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v12, [Ljava/lang/String;

    const-string v1, "com.xiaomi.push.service.XMJobService"

    aput-object v1, v0, v2

    const-string v1, "com.xiaomi.push.service.XMPushService"

    aput-object v1, v0, v11

    invoke-static {p1, v0}, Lcom/xiaomi/mipush/sdk/i;->a(Landroid/content/pm/PackageInfo;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "com.xiaomi.push.service.XMJobService"

    new-instance v1, Lcom/xiaomi/mipush/sdk/i$b;

    const-string v5, "com.xiaomi.push.service.XMJobService"

    const-string v6, "android.permission.BIND_JOB_SERVICE"

    invoke-direct {v1, v5, v11, v2, v6}, Lcom/xiaomi/mipush/sdk/i$b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.xiaomi.push.service.XMPushService"

    new-instance v1, Lcom/xiaomi/mipush/sdk/i$b;

    const-string v5, "com.xiaomi.push.service.XMPushService"

    const-string v6, ""

    invoke-direct {v1, v5, v11, v2, v6}, Lcom/xiaomi/mipush/sdk/i$b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_5

    iget-object v5, p1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v6, v5

    move v1, v2

    :goto_0
    if-ge v1, v6, :cond_5

    aget-object v7, v5, v1

    iget-object v0, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mipush/sdk/i$b;

    iget-boolean v8, v0, Lcom/xiaomi/mipush/sdk/i$b;->b:Z

    iget-boolean v9, v0, Lcom/xiaomi/mipush/sdk/i$b;->c:Z

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/i$b;->d:Ljava/lang/String;

    iget-boolean v10, v7, Landroid/content/pm/ServiceInfo;->enabled:Z

    if-eq v8, v10, :cond_2

    new-instance v0, Lcom/xiaomi/mipush/sdk/i$a;

    const-string v1, "<service android:name=\"%1$s\" .../> in AndroidManifest had the wrong enabled attribute, which should be android:enabled=%2$b."

    new-array v3, v12, [Ljava/lang/Object;

    iget-object v4, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v3, v11

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/mipush/sdk/i$a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-boolean v8, v7, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eq v9, v8, :cond_3

    new-instance v0, Lcom/xiaomi/mipush/sdk/i$a;

    const-string v1, "<service android:name=\"%1$s\" .../> in AndroidManifest had the wrong exported attribute, which should be android:exported=%2$b."

    new-array v3, v12, [Ljava/lang/Object;

    iget-object v4, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v3, v11

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/mipush/sdk/i$a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, v7, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-static {v0, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    new-instance v1, Lcom/xiaomi/mipush/sdk/i$a;

    const-string v3, "<service android:name=\"%1$s\" .../> in AndroidManifest had the wrong permission attribute, which should be android:permission=\"%2$s\"."

    new-array v4, v12, [Ljava/lang/Object;

    iget-object v5, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    aput-object v5, v4, v2

    aput-object v0, v4, v11

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/xiaomi/mipush/sdk/i$a;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    iget-object v0, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-interface {v3, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lcom/xiaomi/mipush/sdk/i$a;

    const-string v1, "<service android:name=\"%1$s\" .../> is missing or disabled in AndroidManifest."

    new-array v3, v11, [Ljava/lang/Object;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/mipush/sdk/i$a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_7
    const-class v0, Lcom/xiaomi/mipush/sdk/PushMessageHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-class v1, Lcom/xiaomi/mipush/sdk/MessageHandleService;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Lcom/xiaomi/mipush/sdk/i$a;

    const-string v1, "\"%1$s\" and \"%2$s\" must be running in the same process."

    new-array v3, v12, [Ljava/lang/Object;

    const-class v4, Lcom/xiaomi/mipush/sdk/PushMessageHandler;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const-class v2, Lcom/xiaomi/mipush/sdk/MessageHandleService;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v11

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/mipush/sdk/i$a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const-string v0, "com.xiaomi.push.service.XMJobService"

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "com.xiaomi.push.service.XMPushService"

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "com.xiaomi.push.service.XMJobService"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "com.xiaomi.push.service.XMPushService"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Lcom/xiaomi/mipush/sdk/i$a;

    const-string v1, "\"%1$s\" and \"%2$s\" must be running in the same process."

    new-array v3, v12, [Ljava/lang/Object;

    const-string v4, "com.xiaomi.push.service.XMJobService"

    aput-object v4, v3, v2

    const-string v2, "com.xiaomi.push.service.XMPushService"

    aput-object v2, v3, v11

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/mipush/sdk/i$a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    return-void
.end method
