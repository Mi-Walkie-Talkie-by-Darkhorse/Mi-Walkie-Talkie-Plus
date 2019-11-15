.class Lcom/sina/weibo/sdk/statistic/e;
.super Ljava/lang/Object;
.source "LogReport.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "uploadtime"

    sput-object v0, Lcom/sina/weibo/sdk/statistic/e;->b:Ljava/lang/String;

    const-string v0, "https://api.weibo.com/2/proxy/sdk/statistic.json"

    sput-object v0, Lcom/sina/weibo/sdk/statistic/e;->c:Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sina/weibo/sdk/statistic/e;->a:Ljava/lang/String;

    return-object v0
.end method
