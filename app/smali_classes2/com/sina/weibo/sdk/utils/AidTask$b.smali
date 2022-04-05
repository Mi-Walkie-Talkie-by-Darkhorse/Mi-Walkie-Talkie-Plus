.class Lcom/sina/weibo/sdk/utils/AidTask$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sina/weibo/sdk/utils/AidTask;->e(Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/sina/weibo/sdk/utils/AidTask$b;->a:Lcom/sina/weibo/sdk/utils/AidTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/sina/weibo/sdk/utils/AidTask$b;->a:Lcom/sina/weibo/sdk/utils/AidTask;

    invoke-static {v0}, Lcom/sina/weibo/sdk/utils/AidTask;->a(Lcom/sina/weibo/sdk/utils/AidTask;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    const-string v1, "AidTask"

    if-nez v0, :cond_0

    const-string v0, "tryLock : false, return"

    invoke-static {v1, v0}, Lcom/sina/weibo/sdk/utils/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/utils/AidTask$b;->a:Lcom/sina/weibo/sdk/utils/AidTask;

    invoke-static {v0}, Lcom/sina/weibo/sdk/utils/AidTask;->b(Lcom/sina/weibo/sdk/utils/AidTask;)Lcom/sina/weibo/sdk/utils/AidTask$c;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v2, 0x1

    const/4 v0, 0x1

    :cond_1
    add-int/2addr v0, v2

    :try_start_0
    iget-object v3, p0, Lcom/sina/weibo/sdk/utils/AidTask$b;->a:Lcom/sina/weibo/sdk/utils/AidTask;

    invoke-static {v3}, Lcom/sina/weibo/sdk/utils/AidTask;->c(Lcom/sina/weibo/sdk/utils/AidTask;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sina/weibo/sdk/utils/AidTask$c;->a(Ljava/lang/String;)Lcom/sina/weibo/sdk/utils/AidTask$c;

    move-result-object v4

    iget-object v5, p0, Lcom/sina/weibo/sdk/utils/AidTask$b;->a:Lcom/sina/weibo/sdk/utils/AidTask;

    invoke-static {v5, v3}, Lcom/sina/weibo/sdk/utils/AidTask;->a(Lcom/sina/weibo/sdk/utils/AidTask;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sina/weibo/sdk/utils/AidTask$b;->a:Lcom/sina/weibo/sdk/utils/AidTask;

    invoke-static {v3, v4}, Lcom/sina/weibo/sdk/utils/AidTask;->a(Lcom/sina/weibo/sdk/utils/AidTask;Lcom/sina/weibo/sdk/utils/AidTask$c;)V
    :try_end_0
    .catch Lcom/sina/weibo/sdk/exception/WeiboException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AidTaskInit WeiboException Msg : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sina/weibo/sdk/utils/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x3

    if-lt v0, v3, :cond_1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sina/weibo/sdk/utils/AidTask$b;->a:Lcom/sina/weibo/sdk/utils/AidTask;

    invoke-static {v1, v0}, Lcom/sina/weibo/sdk/utils/AidTask;->a(Lcom/sina/weibo/sdk/utils/AidTask;Lcom/sina/weibo/sdk/utils/AidTask$c;)V

    :goto_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/utils/AidTask$b;->a:Lcom/sina/weibo/sdk/utils/AidTask;

    invoke-static {v0}, Lcom/sina/weibo/sdk/utils/AidTask;->a(Lcom/sina/weibo/sdk/utils/AidTask;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method
