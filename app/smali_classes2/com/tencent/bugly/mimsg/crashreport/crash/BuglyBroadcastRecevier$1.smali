.class final Lcom/tencent/bugly/mimsg/crashreport/crash/BuglyBroadcastRecevier$1;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/mimsg/crashreport/crash/BuglyBroadcastRecevier;->register(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/bugly/mimsg/crashreport/crash/BuglyBroadcastRecevier;

.field private synthetic b:Lcom/tencent/bugly/mimsg/crashreport/crash/BuglyBroadcastRecevier;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/mimsg/crashreport/crash/BuglyBroadcastRecevier;Lcom/tencent/bugly/mimsg/crashreport/crash/BuglyBroadcastRecevier;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/BuglyBroadcastRecevier$1;->b:Lcom/tencent/bugly/mimsg/crashreport/crash/BuglyBroadcastRecevier;

    iput-object p2, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/BuglyBroadcastRecevier$1;->a:Lcom/tencent/bugly/mimsg/crashreport/crash/BuglyBroadcastRecevier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/crash/BuglyBroadcastRecevier;->a()Lcom/tencent/bugly/mimsg/crashreport/crash/BuglyBroadcastRecevier;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Register broadcast receiver of Bugly."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/BuglyBroadcastRecevier$1;->a:Lcom/tencent/bugly/mimsg/crashreport/crash/BuglyBroadcastRecevier;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/BuglyBroadcastRecevier$1;->b:Lcom/tencent/bugly/mimsg/crashreport/crash/BuglyBroadcastRecevier;

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/crashreport/crash/BuglyBroadcastRecevier;->b(Lcom/tencent/bugly/mimsg/crashreport/crash/BuglyBroadcastRecevier;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/crash/BuglyBroadcastRecevier;->a()Lcom/tencent/bugly/mimsg/crashreport/crash/BuglyBroadcastRecevier;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/BuglyBroadcastRecevier$1;->b:Lcom/tencent/bugly/mimsg/crashreport/crash/BuglyBroadcastRecevier;

    invoke-static {v3}, Lcom/tencent/bugly/mimsg/crashreport/crash/BuglyBroadcastRecevier;->a(Lcom/tencent/bugly/mimsg/crashreport/crash/BuglyBroadcastRecevier;)Landroid/content/IntentFilter;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
