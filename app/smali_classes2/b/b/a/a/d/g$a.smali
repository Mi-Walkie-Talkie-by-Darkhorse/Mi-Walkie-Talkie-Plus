.class Lb/b/a/a/d/g$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/b/a/a/d/g;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/b/a/a/d/g;

.field private final synthetic b:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lb/b/a/a/d/g;Landroid/content/SharedPreferences;)V
    .locals 0

    iput-object p1, p0, Lb/b/a/a/d/g$a;->a:Lb/b/a/a/d/g;

    iput-object p2, p0, Lb/b/a/a/d/g$a;->b:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "after unlock \n mLock.isLocked()--->"

    invoke-static {}, Lb/b/a/a/d/g;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mLock.isLocked()--->"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lb/b/a/a/d/g$a;->a:Lb/b/a/a/d/g;

    invoke-static {v3}, Lb/b/a/a/d/g;->a(Lb/b/a/a/d/g;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lb/b/a/a/d/g$a;->a:Lb/b/a/a/d/g;

    invoke-static {v1}, Lb/b/a/a/d/g;->a(Lb/b/a/a/d/g;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lb/b/a/a/d/g$a;->a:Lb/b/a/a/d/g;

    invoke-static {v2}, Lb/b/a/a/d/g;->b(Lb/b/a/a/d/g;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lb/b/a/a/d/g$a;->a:Lb/b/a/a/d/g;

    invoke-static {v3}, Lb/b/a/a/d/g;->c(Lb/b/a/a/d/g;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lb/b/a/a/d/g;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/sina/weibo/sdk/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lb/b/a/a/d/f;

    invoke-direct {v3, v2}, Lb/b/a/a/d/f;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sina/weibo/sdk/exception/WeiboException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lb/b/a/a/d/g$a;->a:Lb/b/a/a/d/g;

    invoke-virtual {v3}, Lb/b/a/a/d/f;->b()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lb/b/a/a/d/g;->a(Lb/b/a/a/d/g;Ljava/util/List;)V

    iget-object v1, p0, Lb/b/a/a/d/g$a;->a:Lb/b/a/a/d/g;

    invoke-virtual {v3}, Lb/b/a/a/d/f;->c()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lb/b/a/a/d/g;->b(Lb/b/a/a/d/g;Ljava/util/List;)V
    :try_end_1
    .catch Lcom/sina/weibo/sdk/exception/WeiboException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v3

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v2, p0, Lb/b/a/a/d/g$a;->a:Lb/b/a/a/d/g;

    invoke-static {v2}, Lb/b/a/a/d/g;->a(Lb/b/a/a/d/g;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v1, :cond_2

    iget-object v2, p0, Lb/b/a/a/d/g$a;->a:Lb/b/a/a/d/g;

    invoke-static {v2}, Lb/b/a/a/d/g;->b(Lb/b/a/a/d/g;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lb/b/a/a/d/g$a;->b:Landroid/content/SharedPreferences;

    invoke-virtual {v1}, Lb/b/a/a/d/f;->a()I

    move-result v1

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Lb/b/a/a/d/g$b;->a(Landroid/content/Context;Landroid/content/SharedPreferences;J)V

    iget-object v1, p0, Lb/b/a/a/d/g$a;->a:Lb/b/a/a/d/g;

    invoke-static {v1}, Lb/b/a/a/d/g;->b(Lb/b/a/a/d/g;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lb/b/a/a/d/g$a;->b:Landroid/content/SharedPreferences;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lb/b/a/a/d/g$b;->b(Landroid/content/Context;Landroid/content/SharedPreferences;J)V

    :cond_2
    invoke-static {}, Lb/b/a/a/d/g;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    :goto_1
    :try_start_2
    invoke-static {}, Lb/b/a/a/d/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sina/weibo/sdk/utils/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v1, p0, Lb/b/a/a/d/g$a;->a:Lb/b/a/a/d/g;

    invoke-static {v1}, Lb/b/a/a/d/g;->a(Lb/b/a/a/d/g;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v3, :cond_3

    iget-object v1, p0, Lb/b/a/a/d/g$a;->a:Lb/b/a/a/d/g;

    invoke-static {v1}, Lb/b/a/a/d/g;->b(Lb/b/a/a/d/g;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lb/b/a/a/d/g$a;->b:Landroid/content/SharedPreferences;

    invoke-virtual {v3}, Lb/b/a/a/d/f;->a()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Lb/b/a/a/d/g$b;->a(Landroid/content/Context;Landroid/content/SharedPreferences;J)V

    iget-object v1, p0, Lb/b/a/a/d/g$a;->a:Lb/b/a/a/d/g;

    invoke-static {v1}, Lb/b/a/a/d/g;->b(Lb/b/a/a/d/g;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lb/b/a/a/d/g$a;->b:Landroid/content/SharedPreferences;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lb/b/a/a/d/g$b;->b(Landroid/content/Context;Landroid/content/SharedPreferences;J)V

    :cond_3
    invoke-static {}, Lb/b/a/a/d/g;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lb/b/a/a/d/g$a;->a:Lb/b/a/a/d/g;

    invoke-static {v0}, Lb/b/a/a/d/g;->a(Lb/b/a/a/d/g;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sina/weibo/sdk/utils/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception v1

    :goto_3
    iget-object v2, p0, Lb/b/a/a/d/g$a;->a:Lb/b/a/a/d/g;

    invoke-static {v2}, Lb/b/a/a/d/g;->a(Lb/b/a/a/d/g;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v3, :cond_4

    iget-object v2, p0, Lb/b/a/a/d/g$a;->a:Lb/b/a/a/d/g;

    invoke-static {v2}, Lb/b/a/a/d/g;->b(Lb/b/a/a/d/g;)Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lb/b/a/a/d/g$a;->b:Landroid/content/SharedPreferences;

    invoke-virtual {v3}, Lb/b/a/a/d/f;->a()I

    move-result v3

    int-to-long v5, v3

    invoke-static {v2, v4, v5, v6}, Lb/b/a/a/d/g$b;->a(Landroid/content/Context;Landroid/content/SharedPreferences;J)V

    iget-object v2, p0, Lb/b/a/a/d/g$a;->a:Lb/b/a/a/d/g;

    invoke-static {v2}, Lb/b/a/a/d/g;->b(Lb/b/a/a/d/g;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lb/b/a/a/d/g$a;->b:Landroid/content/SharedPreferences;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lb/b/a/a/d/g$b;->b(Landroid/content/Context;Landroid/content/SharedPreferences;J)V

    :cond_4
    invoke-static {}, Lb/b/a/a/d/g;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lb/b/a/a/d/g$a;->a:Lb/b/a/a/d/g;

    invoke-static {v0}, Lb/b/a/a/d/g;->a(Lb/b/a/a/d/g;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sina/weibo/sdk/utils/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method
