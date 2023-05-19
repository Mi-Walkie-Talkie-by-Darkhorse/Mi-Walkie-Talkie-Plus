.class public final Lcom/efs/sdk/pa/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/efs/sdk/pa/PA;


# instance fields
.field private a:Z

.field private b:Landroid/os/Looper;

.field private c:Lcom/efs/sdk/pa/a/e;

.field private d:Lcom/efs/sdk/pa/a/f;

.field private e:Lcom/efs/sdk/pa/a/a;

.field private f:Lcom/efs/sdk/pa/a/b;

.field private g:Lcom/efs/sdk/pa/a/g;

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/efs/sdk/pa/a/c;->b:Landroid/os/Looper;

    .line 3
    new-instance v0, Lcom/efs/sdk/pa/a/b;

    invoke-direct {v0}, Lcom/efs/sdk/pa/a/b;-><init>()V

    iput-object v0, p0, Lcom/efs/sdk/pa/a/c;->f:Lcom/efs/sdk/pa/a/b;

    .line 4
    new-instance v0, Lcom/efs/sdk/pa/a/g;

    invoke-direct {v0}, Lcom/efs/sdk/pa/a/g;-><init>()V

    iput-object v0, p0, Lcom/efs/sdk/pa/a/c;->g:Lcom/efs/sdk/pa/a/g;

    .line 5
    iput-boolean p1, p0, Lcom/efs/sdk/pa/a/c;->i:Z

    return-void
.end method


# virtual methods
.method public final enableDumpToFile(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/efs/sdk/pa/a/c;->d:Lcom/efs/sdk/pa/a/f;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iput-object p1, v0, Lcom/efs/sdk/pa/a/f;->c:Ljava/lang/String;

    .line 4
    iget-object v1, v0, Lcom/efs/sdk/pa/a/f;->d:Ljava/io/BufferedOutputStream;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 5
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6
    :try_start_1
    new-instance p1, Ljava/io/BufferedOutputStream;

    invoke-direct {p1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, v0, Lcom/efs/sdk/pa/a/f;->d:Ljava/io/BufferedOutputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-object v1, v2

    goto :goto_0

    :catch_1
    nop

    :goto_0
    if-eqz v1, :cond_1

    .line 7
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_1
    :goto_1
    return-void
.end method

.method public final enableLog(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/efs/sdk/pa/a/c;->a:Z

    .line 2
    iget-object v0, p0, Lcom/efs/sdk/pa/a/c;->f:Lcom/efs/sdk/pa/a/b;

    .line 3
    iput-boolean p1, v0, Lcom/efs/sdk/pa/a/b;->b:Z

    .line 4
    iget-object v0, p0, Lcom/efs/sdk/pa/a/c;->g:Lcom/efs/sdk/pa/a/g;

    .line 5
    iput-boolean p1, v0, Lcom/efs/sdk/pa/a/g;->b:Z

    .line 6
    iget-object v0, p0, Lcom/efs/sdk/pa/a/c;->d:Lcom/efs/sdk/pa/a/f;

    if-eqz v0, :cond_0

    .line 7
    iput-boolean p1, v0, Lcom/efs/sdk/pa/a/f;->b:Z

    :cond_0
    return-void
.end method

.method public final endCalFPS(Ljava/lang/String;)I
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/efs/sdk/pa/a/c;->h:Z

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/efs/sdk/pa/a/c;->f:Lcom/efs/sdk/pa/a/b;

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v2, v0, Lcom/efs/sdk/pa/a/b;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/efs/sdk/pa/a/b$a;

    if-nez v2, :cond_2

    return v1

    .line 5
    :cond_2
    iget-object v3, v2, Lcom/efs/sdk/pa/a/b$a;->d:Landroid/view/View;

    if-eqz v3, :cond_3

    iget-object v4, v2, Lcom/efs/sdk/pa/a/b$a;->c:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v4, :cond_3

    .line 6
    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    iget-object v4, v2, Lcom/efs/sdk/pa/a/b$a;->c:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 7
    :cond_3
    iget-object v3, v0, Lcom/efs/sdk/pa/a/b;->a:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v2, Lcom/efs/sdk/pa/a/b$a;->a:J

    sub-long/2addr v3, v5

    long-to-float v3, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    .line 9
    iget-wide v4, v2, Lcom/efs/sdk/pa/a/b$a;->b:J

    long-to-float v2, v4

    div-float/2addr v2, v3

    float-to-int v2, v2

    if-lez v2, :cond_4

    move v1, v2

    .line 10
    :cond_4
    iget-boolean v0, v0, Lcom/efs/sdk/pa/a/b;->b:Z

    if-eqz v0, :cond_5

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "key="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",fps="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PerformanceAnalyze"

    .line 12
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return v1
.end method

.method public final endCalTime(Ljava/lang/String;)J
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/efs/sdk/pa/a/c;->h:Z

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/efs/sdk/pa/a/c;->g:Lcom/efs/sdk/pa/a/g;

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v3, v0, Lcom/efs/sdk/pa/a/g;->a:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/efs/sdk/pa/a/g$a;

    if-nez v3, :cond_2

    return-wide v1

    .line 5
    :cond_2
    iget-object v1, v0, Lcom/efs/sdk/pa/a/g;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v3, Lcom/efs/sdk/pa/a/g$a;->a:J

    sub-long/2addr v1, v3

    .line 7
    iget-boolean v0, v0, Lcom/efs/sdk/pa/a/g;->b:Z

    if-eqz v0, :cond_3

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "key="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",consumeTime="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PerformanceAnalyze"

    .line 9
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-wide v1
.end method

.method public final registerPAANRListener(Landroid/content/Context;Lcom/efs/sdk/pa/PAANRListener;)V
    .locals 2

    const-wide/16 v0, 0x7d0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/efs/sdk/pa/a/c;->registerPAANRListener(Landroid/content/Context;Lcom/efs/sdk/pa/PAANRListener;J)V

    return-void
.end method

.method public final registerPAANRListener(Landroid/content/Context;Lcom/efs/sdk/pa/PAANRListener;J)V
    .locals 7

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/efs/sdk/pa/a/c;->registerPAANRListener(Landroid/content/Context;Lcom/efs/sdk/pa/PAANRListener;JLjava/lang/Thread;)V

    return-void
.end method

.method public final registerPAANRListener(Landroid/content/Context;Lcom/efs/sdk/pa/PAANRListener;JLjava/lang/Thread;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/efs/sdk/pa/a/c;->e:Lcom/efs/sdk/pa/a/a;

    if-nez v0, :cond_1

    if-eqz p5, :cond_0

    .line 4
    new-instance p5, Lcom/efs/sdk/pa/a/a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    invoke-direct {p5, p1, p3, p4}, Lcom/efs/sdk/pa/a/a;-><init>(Landroid/app/Application;J)V

    iput-object p5, p0, Lcom/efs/sdk/pa/a/c;->e:Lcom/efs/sdk/pa/a/a;

    goto :goto_0

    .line 5
    :cond_0
    new-instance p5, Lcom/efs/sdk/pa/a/a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    const/4 v0, 0x0

    invoke-direct {p5, p1, p3, p4, v0}, Lcom/efs/sdk/pa/a/a;-><init>(Landroid/app/Application;JZ)V

    iput-object p5, p0, Lcom/efs/sdk/pa/a/c;->e:Lcom/efs/sdk/pa/a/a;

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/efs/sdk/pa/a/c;->e:Lcom/efs/sdk/pa/a/a;

    .line 7
    iput-object p2, p1, Lcom/efs/sdk/pa/a/a;->h:Lcom/efs/sdk/pa/PAANRListener;

    return-void
.end method

.method public final registerPAMsgListener(Lcom/efs/sdk/pa/PAMsgListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/efs/sdk/pa/a/c;->c:Lcom/efs/sdk/pa/a/e;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/efs/sdk/pa/a/e;

    invoke-direct {v0}, Lcom/efs/sdk/pa/a/e;-><init>()V

    iput-object v0, p0, Lcom/efs/sdk/pa/a/c;->c:Lcom/efs/sdk/pa/a/e;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/efs/sdk/pa/a/c;->b:Landroid/os/Looper;

    iget-object v1, p0, Lcom/efs/sdk/pa/a/c;->c:Lcom/efs/sdk/pa/a/e;

    invoke-virtual {v0, v1}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    .line 4
    iget-object v0, p0, Lcom/efs/sdk/pa/a/c;->d:Lcom/efs/sdk/pa/a/f;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/efs/sdk/pa/a/f;

    invoke-direct {v0}, Lcom/efs/sdk/pa/a/f;-><init>()V

    iput-object v0, p0, Lcom/efs/sdk/pa/a/c;->d:Lcom/efs/sdk/pa/a/f;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/efs/sdk/pa/a/c;->d:Lcom/efs/sdk/pa/a/f;

    iget-boolean v1, p0, Lcom/efs/sdk/pa/a/c;->a:Z

    .line 7
    iput-boolean v1, v0, Lcom/efs/sdk/pa/a/f;->b:Z

    .line 8
    iput-object p1, v0, Lcom/efs/sdk/pa/a/f;->a:Lcom/efs/sdk/pa/PAMsgListener;

    .line 9
    iget-object p1, p0, Lcom/efs/sdk/pa/a/c;->c:Lcom/efs/sdk/pa/a/e;

    .line 10
    iget-object p1, p1, Lcom/efs/sdk/pa/a/e;->a:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final start()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/efs/sdk/pa/a/c;->i:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/efs/sdk/pa/a/c;->h:Z

    .line 3
    iget-object v0, p0, Lcom/efs/sdk/pa/a/c;->c:Lcom/efs/sdk/pa/a/e;

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/efs/sdk/pa/a/c;->b:Landroid/os/Looper;

    invoke-virtual {v1, v0}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/efs/sdk/pa/a/c;->e:Lcom/efs/sdk/pa/a/a;

    if-eqz v0, :cond_2

    .line 6
    iget-boolean v1, v0, Lcom/efs/sdk/pa/a/a;->f:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, v0, Lcom/efs/sdk/pa/a/a;->f:Z

    .line 8
    iget-object v1, v0, Lcom/efs/sdk/pa/a/a;->g:Landroid/os/Handler;

    iget-object v2, v0, Lcom/efs/sdk/pa/a/a;->m:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/efs/sdk/pa/a/a;->j:J

    :cond_2
    return-void
.end method

.method public final startCalFPS(Ljava/lang/String;Landroid/view/View;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/efs/sdk/pa/a/c;->h:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/efs/sdk/pa/a/c;->f:Lcom/efs/sdk/pa/a/b;

    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    if-nez p2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, v0, Lcom/efs/sdk/pa/a/b;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 5
    new-instance v1, Lcom/efs/sdk/pa/a/b$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/efs/sdk/pa/a/b$a;-><init>(B)V

    if-eqz p2, :cond_2

    .line 6
    iput-object p2, v1, Lcom/efs/sdk/pa/a/b$a;->d:Landroid/view/View;

    .line 7
    new-instance p2, Lcom/efs/sdk/pa/a/b$a$1;

    invoke-direct {p2, v1}, Lcom/efs/sdk/pa/a/b$a$1;-><init>(Lcom/efs/sdk/pa/a/b$a;)V

    .line 8
    iput-object p2, v1, Lcom/efs/sdk/pa/a/b$a;->c:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 9
    iget-object v2, v1, Lcom/efs/sdk/pa/a/b$a;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 10
    invoke-virtual {v2, p2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/efs/sdk/pa/a/b$a;->a:J

    .line 12
    :cond_2
    iget-object p2, v0, Lcom/efs/sdk/pa/a/b;->a:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    return-void
.end method

.method public final startCalTime(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/efs/sdk/pa/a/c;->h:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/efs/sdk/pa/a/c;->g:Lcom/efs/sdk/pa/a/g;

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, v0, Lcom/efs/sdk/pa/a/g;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 5
    new-instance v1, Lcom/efs/sdk/pa/a/g$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/efs/sdk/pa/a/g$a;-><init>(B)V

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 7
    iput-wide v2, v1, Lcom/efs/sdk/pa/a/g$a;->a:J

    .line 8
    iget-object v0, v0, Lcom/efs/sdk/pa/a/g;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public final stop()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/efs/sdk/pa/a/c;->h:Z

    .line 2
    iget-object v0, p0, Lcom/efs/sdk/pa/a/c;->b:Landroid/os/Looper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    .line 3
    iget-object v0, p0, Lcom/efs/sdk/pa/a/c;->e:Lcom/efs/sdk/pa/a/a;

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 4
    iput-boolean v2, v0, Lcom/efs/sdk/pa/a/a;->f:Z

    .line 5
    iget-object v3, v0, Lcom/efs/sdk/pa/a/a;->g:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 6
    iput-boolean v2, v0, Lcom/efs/sdk/pa/a/a;->a:Z

    :cond_0
    return-void
.end method

.method public final unRegisterPAMsgListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/efs/sdk/pa/a/c;->d:Lcom/efs/sdk/pa/a/f;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, Lcom/efs/sdk/pa/a/f;->a:Lcom/efs/sdk/pa/PAMsgListener;

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/efs/sdk/pa/a/c;->c:Lcom/efs/sdk/pa/a/e;

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, v1, Lcom/efs/sdk/pa/a/e;->a:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final unregisterPAANRListener()V
    .locals 0

    return-void
.end method
