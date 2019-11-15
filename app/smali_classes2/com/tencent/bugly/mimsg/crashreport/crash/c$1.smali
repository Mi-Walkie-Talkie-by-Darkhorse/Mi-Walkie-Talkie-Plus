.class final Lcom/tencent/bugly/mimsg/crashreport/crash/c$1;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/mimsg/crashreport/crash/c;->a(Ljava/lang/Thread;Ljava/lang/Throwable;ZLjava/lang/String;[BZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Z

.field private synthetic b:Ljava/lang/Thread;

.field private synthetic c:Ljava/lang/Throwable;

.field private synthetic d:Ljava/lang/String;

.field private synthetic e:[B

.field private synthetic f:Z

.field private synthetic g:Lcom/tencent/bugly/mimsg/crashreport/crash/c;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/mimsg/crashreport/crash/c;ZLjava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;[BZ)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c$1;->g:Lcom/tencent/bugly/mimsg/crashreport/crash/c;

    iput-boolean p2, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c$1;->a:Z

    iput-object p3, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c$1;->b:Ljava/lang/Thread;

    iput-object p4, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c$1;->c:Ljava/lang/Throwable;

    iput-object p5, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c$1;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c$1;->e:[B

    iput-boolean p7, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c$1;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    :try_start_0
    const-string v0, "post a throwable %b"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c$1;->a:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c$1;->g:Lcom/tencent/bugly/mimsg/crashreport/crash/c;

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->a(Lcom/tencent/bugly/mimsg/crashreport/crash/c;)Lcom/tencent/bugly/mimsg/crashreport/crash/e;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c$1;->b:Ljava/lang/Thread;

    iget-object v2, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c$1;->c:Ljava/lang/Throwable;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c$1;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c$1;->e:[B

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/mimsg/crashreport/crash/e;->a(Ljava/lang/Thread;Ljava/lang/Throwable;ZLjava/lang/String;[B)V

    iget-boolean v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c$1;->f:Z

    if-eqz v0, :cond_0

    const-string v0, "clear user datas"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c$1;->g:Lcom/tencent/bugly/mimsg/crashreport/crash/c;

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->b(Lcom/tencent/bugly/mimsg/crashreport/crash/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->A()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/proguard/x;->b(Ljava/lang/Throwable;)Z

    move-result v1

    if-eq v1, v7, :cond_1

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_1
    const-string v0, "java catch error: %s"

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/c$1;->c:Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0
.end method
