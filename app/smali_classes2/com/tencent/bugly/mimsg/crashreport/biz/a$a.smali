.class final Lcom/tencent/bugly/mimsg/crashreport/biz/a$a;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/mimsg/crashreport/biz/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;

.field private synthetic c:Lcom/tencent/bugly/mimsg/crashreport/biz/a;


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/mimsg/crashreport/biz/a;Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;Z)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/a$a;->c:Lcom/tencent/bugly/mimsg/crashreport/biz/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/a$a;->b:Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;

    iput-boolean p3, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/a$a;->a:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/a$a;->b:Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/a$a;->b:Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->b()Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->j:Ljava/lang/String;

    :cond_0
    const-string v0, "[UserInfo] Record user info."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/a$a;->c:Lcom/tencent/bugly/mimsg/crashreport/biz/a;

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/a$a;->b:Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/tencent/bugly/mimsg/crashreport/biz/a;->a(Lcom/tencent/bugly/mimsg/crashreport/biz/a;Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;Z)V

    :cond_1
    iget-boolean v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/a$a;->a:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/a$a;->c:Lcom/tencent/bugly/mimsg/crashreport/biz/a;

    invoke-static {}, Lcom/tencent/bugly/mimsg/proguard/w;->a()Lcom/tencent/bugly/mimsg/proguard/w;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Lcom/tencent/bugly/mimsg/crashreport/biz/a$2;

    invoke-direct {v2, v0}, Lcom/tencent/bugly/mimsg/crashreport/biz/a$2;-><init>(Lcom/tencent/bugly/mimsg/crashreport/biz/a;)V

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/mimsg/proguard/w;->a(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
