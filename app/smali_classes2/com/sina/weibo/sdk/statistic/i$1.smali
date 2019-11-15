.class Lcom/sina/weibo/sdk/statistic/i$1;
.super Ljava/lang/Object;
.source "WBAgentHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sina/weibo/sdk/statistic/i;->a(Ljava/util/concurrent/CopyOnWriteArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sina/weibo/sdk/statistic/i;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sina/weibo/sdk/statistic/i;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/weibo/sdk/statistic/i$1;->a:Lcom/sina/weibo/sdk/statistic/i;

    iput-object p2, p0, Lcom/sina/weibo/sdk/statistic/i$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "app_logs"

    invoke-static {v0}, Lcom/sina/weibo/sdk/statistic/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sina/weibo/sdk/statistic/i$1;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sina/weibo/sdk/statistic/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
