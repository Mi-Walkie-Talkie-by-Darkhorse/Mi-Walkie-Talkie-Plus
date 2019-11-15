.class Lcom/sina/weibo/sdk/utils/AidTask$2;
.super Ljava/lang/Object;
.source "AidTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sina/weibo/sdk/utils/AidTask;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sina/weibo/sdk/utils/AidTask;


# direct methods
.method constructor <init>(Lcom/sina/weibo/sdk/utils/AidTask;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/weibo/sdk/utils/AidTask$2;->a:Lcom/sina/weibo/sdk/utils/AidTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/sina/weibo/sdk/utils/AidTask$2;->a:Lcom/sina/weibo/sdk/utils/AidTask;

    invoke-static {v0}, Lcom/sina/weibo/sdk/utils/AidTask;->a(Lcom/sina/weibo/sdk/utils/AidTask;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AidTask"

    const-string v1, "tryLock : false, return"

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/utils/AidTask$2;->a:Lcom/sina/weibo/sdk/utils/AidTask;

    invoke-static {v0}, Lcom/sina/weibo/sdk/utils/AidTask;->b(Lcom/sina/weibo/sdk/utils/AidTask;)Lcom/sina/weibo/sdk/utils/AidTask$a;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/sina/weibo/sdk/utils/AidTask$2;->a:Lcom/sina/weibo/sdk/utils/AidTask;

    invoke-static {v1}, Lcom/sina/weibo/sdk/utils/AidTask;->c(Lcom/sina/weibo/sdk/utils/AidTask;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sina/weibo/sdk/utils/AidTask$a;->a(Ljava/lang/String;)Lcom/sina/weibo/sdk/utils/AidTask$a;

    move-result-object v2

    iget-object v3, p0, Lcom/sina/weibo/sdk/utils/AidTask$2;->a:Lcom/sina/weibo/sdk/utils/AidTask;

    invoke-static {v3, v1}, Lcom/sina/weibo/sdk/utils/AidTask;->a(Lcom/sina/weibo/sdk/utils/AidTask;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sina/weibo/sdk/utils/AidTask$2;->a:Lcom/sina/weibo/sdk/utils/AidTask;

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/AidTask;->a(Lcom/sina/weibo/sdk/utils/AidTask;Lcom/sina/weibo/sdk/utils/AidTask$a;)V
    :try_end_0
    .catch Lcom/sina/weibo/sdk/exception/WeiboException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/sina/weibo/sdk/utils/AidTask$2;->a:Lcom/sina/weibo/sdk/utils/AidTask;

    invoke-static {v0}, Lcom/sina/weibo/sdk/utils/AidTask;->a(Lcom/sina/weibo/sdk/utils/AidTask;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AidTask"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AidTaskInit WeiboException Msg : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/exception/WeiboException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sina/weibo/sdk/utils/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/sina/weibo/sdk/utils/AidTask$2;->a:Lcom/sina/weibo/sdk/utils/AidTask;

    invoke-static {v1, v0}, Lcom/sina/weibo/sdk/utils/AidTask;->a(Lcom/sina/weibo/sdk/utils/AidTask;Lcom/sina/weibo/sdk/utils/AidTask$a;)V

    goto :goto_1
.end method
