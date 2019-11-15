.class Lcom/sina/weibo/sdk/statistic/a;
.super Lcom/sina/weibo/sdk/statistic/b;
.source "AdEventLog.java"


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sina/weibo/sdk/statistic/b;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/sina/weibo/sdk/statistic/a;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sina/weibo/sdk/statistic/a;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/statistic/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/statistic/a;->d:Ljava/lang/String;

    return-object v0
.end method
