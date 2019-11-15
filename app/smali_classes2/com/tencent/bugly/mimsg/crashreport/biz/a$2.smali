.class final Lcom/tencent/bugly/mimsg/crashreport/biz/a$2;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/mimsg/crashreport/biz/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/bugly/mimsg/crashreport/biz/a;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/mimsg/crashreport/biz/a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/a$2;->a:Lcom/tencent/bugly/mimsg/crashreport/biz/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/a$2;->a:Lcom/tencent/bugly/mimsg/crashreport/biz/a;

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/crashreport/biz/a;->a(Lcom/tencent/bugly/mimsg/crashreport/biz/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method
