.class final Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler$1;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;->startNativeMonitor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;->a(Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "native_record_lock"

    const-wide/16 v2, 0x2710

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/bugly/mimsg/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "[Native] Failed to lock file for handling native crash record."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;

    invoke-static {v1}, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;->b(Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;)Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;->setNativeAppVersion(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;

    invoke-static {v1}, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;->b(Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;)Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;->setNativeAppChannel(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;

    invoke-static {v1}, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;->b(Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;)Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;->setNativeAppPackage(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;

    invoke-static {v1}, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;->b(Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;)Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;->setNativeUserId(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;

    invoke-static {v1}, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;->b(Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;)Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;->setNativeIsAppForeground(Z)Z

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;

    invoke-static {v1}, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;->b(Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;)Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    move-result-object v1

    iget-wide v2, v1, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;->setNativeLaunchTime(J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;->a(Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;

    invoke-static {v1}, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;->c(Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;

    invoke-static {v2}, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;->d(Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;)Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeExceptionHandler;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeExceptionHandler;)Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "[Native] Get crash from native record."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;

    invoke-static {v1}, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;->e(Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;)Lcom/tencent/bugly/mimsg/crashreport/crash/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/mimsg/crashreport/crash/b;->a(Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;

    invoke-static {v1}, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;->e(Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;)Lcom/tencent/bugly/mimsg/crashreport/crash/b;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/tencent/bugly/mimsg/crashreport/crash/b;->a(Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;JZ)V

    :cond_2
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;->c(Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/b;->a(ZLjava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;->a()V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;->a(Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "native_record_lock"

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/z;->b(Landroid/content/Context;Ljava/lang/String;)Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
