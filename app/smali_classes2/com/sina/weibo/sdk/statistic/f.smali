.class Lcom/sina/weibo/sdk/statistic/f;
.super Ljava/lang/Object;
.source "PageLog.java"


# instance fields
.field protected a:Lcom/sina/weibo/sdk/statistic/LogType;

.field protected b:Ljava/lang/String;

.field protected c:J

.field private d:J

.field private e:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/sina/weibo/sdk/statistic/f;->b:Ljava/lang/String;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sina/weibo/sdk/statistic/f;->c:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/sina/weibo/sdk/statistic/f;->e:J

    return-wide v0
.end method

.method public a(Lcom/sina/weibo/sdk/statistic/LogType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sina/weibo/sdk/statistic/f;->a:Lcom/sina/weibo/sdk/statistic/LogType;

    return-void
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/sina/weibo/sdk/statistic/f;->d:J

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sina/weibo/sdk/statistic/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/sina/weibo/sdk/statistic/f;->c:J

    return-wide v0
.end method

.method public e()Lcom/sina/weibo/sdk/statistic/LogType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sina/weibo/sdk/statistic/f;->a:Lcom/sina/weibo/sdk/statistic/LogType;

    return-object v0
.end method
