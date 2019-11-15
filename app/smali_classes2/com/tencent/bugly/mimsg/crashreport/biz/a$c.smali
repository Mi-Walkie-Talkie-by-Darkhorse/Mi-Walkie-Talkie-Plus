.class final Lcom/tencent/bugly/mimsg/crashreport/biz/a$c;
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
    name = "c"
.end annotation


# instance fields
.field private a:J

.field private synthetic b:Lcom/tencent/bugly/mimsg/crashreport/biz/a;


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/mimsg/crashreport/biz/a;J)V
    .locals 2

    iput-object p1, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/a$c;->b:Lcom/tencent/bugly/mimsg/crashreport/biz/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x1499700

    iput-wide v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/a$c;->a:J

    iput-wide p2, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/a$c;->a:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/a$c;->b:Lcom/tencent/bugly/mimsg/crashreport/biz/a;

    invoke-static {}, Lcom/tencent/bugly/mimsg/proguard/w;->a()Lcom/tencent/bugly/mimsg/proguard/w;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/tencent/bugly/mimsg/crashreport/biz/a$2;

    invoke-direct {v2, v0}, Lcom/tencent/bugly/mimsg/crashreport/biz/a$2;-><init>(Lcom/tencent/bugly/mimsg/crashreport/biz/a;)V

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/mimsg/proguard/w;->a(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/a$c;->b:Lcom/tencent/bugly/mimsg/crashreport/biz/a;

    iget-wide v2, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/a$c;->a:J

    invoke-static {}, Lcom/tencent/bugly/mimsg/proguard/w;->a()Lcom/tencent/bugly/mimsg/proguard/w;

    move-result-object v1

    new-instance v4, Lcom/tencent/bugly/mimsg/crashreport/biz/a$c;

    invoke-direct {v4, v0, v2, v3}, Lcom/tencent/bugly/mimsg/crashreport/biz/a$c;-><init>(Lcom/tencent/bugly/mimsg/crashreport/biz/a;J)V

    invoke-virtual {v1, v4, v2, v3}, Lcom/tencent/bugly/mimsg/proguard/w;->a(Ljava/lang/Runnable;J)Z

    return-void
.end method
