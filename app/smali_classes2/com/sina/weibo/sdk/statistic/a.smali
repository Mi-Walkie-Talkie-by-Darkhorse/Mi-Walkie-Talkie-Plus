.class Lcom/sina/weibo/sdk/statistic/a;
.super Lcom/sina/weibo/sdk/statistic/b;


# instance fields
.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sina/weibo/sdk/statistic/b;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/sina/weibo/sdk/statistic/a;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/sina/weibo/sdk/statistic/a;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/statistic/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/statistic/a;->h:Ljava/lang/String;

    return-object v0
.end method
