.class final Lcom/amap/api/col/sl/bm$1;
.super Ljava/lang/Object;
.source "WeatherSearchCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/sl/bm;->searchWeatherAsyn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/sl/bm;


# direct methods
.method constructor <init>(Lcom/amap/api/col/sl/bm;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/sl/bm$1;->a:Lcom/amap/api/col/sl/bm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/16 v6, 0x516

    const/16 v5, 0x515

    invoke-static {}, Lcom/amap/api/col/sl/ac;->a()Lcom/amap/api/col/sl/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/sl/ac;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v0, 0xd

    iput v0, v1, Landroid/os/Message;->arg1:I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/amap/api/col/sl/bm$1;->a:Lcom/amap/api/col/sl/bm;

    invoke-static {v0}, Lcom/amap/api/col/sl/bm;->a(Lcom/amap/api/col/sl/bm;)Lcom/amap/api/services/weather/WeatherSearchQuery;

    move-result-object v0

    if-nez v0, :cond_1

    :try_start_0
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "WeatherSearch"

    const-string v2, "searchWeatherAsyn"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/sl/bm$1;->a:Lcom/amap/api/col/sl/bm;

    invoke-static {v0}, Lcom/amap/api/col/sl/bm;->a(Lcom/amap/api/col/sl/bm;)Lcom/amap/api/services/weather/WeatherSearchQuery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/weather/WeatherSearchQuery;->getType()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/sl/bm$1;->a:Lcom/amap/api/col/sl/bm;

    iget-object v3, p0, Lcom/amap/api/col/sl/bm$1;->a:Lcom/amap/api/col/sl/bm;

    invoke-static {v3}, Lcom/amap/api/col/sl/bm;->b(Lcom/amap/api/col/sl/bm;)Lcom/amap/api/services/weather/LocalWeatherLiveResult;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/amap/api/col/sl/bm;->a(Lcom/amap/api/col/sl/bm;Lcom/amap/api/services/weather/LocalWeatherLiveResult;)Lcom/amap/api/services/weather/LocalWeatherLiveResult;

    const-string v0, "errorCode"

    const/16 v3, 0x3e8

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v0, Lcom/amap/api/col/sl/ac$l;

    invoke-direct {v0}, Lcom/amap/api/col/sl/ac$l;-><init>()V

    iput v5, v1, Landroid/os/Message;->what:I

    iget-object v3, p0, Lcom/amap/api/col/sl/bm$1;->a:Lcom/amap/api/col/sl/bm;

    invoke-static {v3}, Lcom/amap/api/col/sl/bm;->c(Lcom/amap/api/col/sl/bm;)Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    move-result-object v3

    iput-object v3, v0, Lcom/amap/api/col/sl/ac$l;->b:Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    iget-object v3, p0, Lcom/amap/api/col/sl/bm$1;->a:Lcom/amap/api/col/sl/bm;

    invoke-static {v3}, Lcom/amap/api/col/sl/bm;->d(Lcom/amap/api/col/sl/bm;)Lcom/amap/api/services/weather/LocalWeatherLiveResult;

    move-result-object v3

    iput-object v3, v0, Lcom/amap/api/col/sl/ac$l;->a:Lcom/amap/api/services/weather/LocalWeatherLiveResult;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/bm$1;->a:Lcom/amap/api/col/sl/bm;

    invoke-static {v0}, Lcom/amap/api/col/sl/bm;->e(Lcom/amap/api/col/sl/bm;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    const-string v3, "errorCode"

    invoke-virtual {v0}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "WeatherSearch"

    const-string v4, "searchWeatherAsyn"

    invoke-static {v0, v3, v4}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-instance v0, Lcom/amap/api/col/sl/ac$l;

    invoke-direct {v0}, Lcom/amap/api/col/sl/ac$l;-><init>()V

    iput v5, v1, Landroid/os/Message;->what:I

    iget-object v3, p0, Lcom/amap/api/col/sl/bm$1;->a:Lcom/amap/api/col/sl/bm;

    invoke-static {v3}, Lcom/amap/api/col/sl/bm;->c(Lcom/amap/api/col/sl/bm;)Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    move-result-object v3

    iput-object v3, v0, Lcom/amap/api/col/sl/ac$l;->b:Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    iget-object v3, p0, Lcom/amap/api/col/sl/bm$1;->a:Lcom/amap/api/col/sl/bm;

    invoke-static {v3}, Lcom/amap/api/col/sl/bm;->d(Lcom/amap/api/col/sl/bm;)Lcom/amap/api/services/weather/LocalWeatherLiveResult;

    move-result-object v3

    iput-object v3, v0, Lcom/amap/api/col/sl/ac$l;->a:Lcom/amap/api/services/weather/LocalWeatherLiveResult;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/bm$1;->a:Lcom/amap/api/col/sl/bm;

    invoke-static {v0}, Lcom/amap/api/col/sl/bm;->e(Lcom/amap/api/col/sl/bm;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_3
    const-string v3, "WeatherSearch"

    const-string v4, "searchWeatherAnsyThrowable"

    invoke-static {v0, v3, v4}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    new-instance v0, Lcom/amap/api/col/sl/ac$l;

    invoke-direct {v0}, Lcom/amap/api/col/sl/ac$l;-><init>()V

    iput v5, v1, Landroid/os/Message;->what:I

    iget-object v3, p0, Lcom/amap/api/col/sl/bm$1;->a:Lcom/amap/api/col/sl/bm;

    invoke-static {v3}, Lcom/amap/api/col/sl/bm;->c(Lcom/amap/api/col/sl/bm;)Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    move-result-object v3

    iput-object v3, v0, Lcom/amap/api/col/sl/ac$l;->b:Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    iget-object v3, p0, Lcom/amap/api/col/sl/bm$1;->a:Lcom/amap/api/col/sl/bm;

    invoke-static {v3}, Lcom/amap/api/col/sl/bm;->d(Lcom/amap/api/col/sl/bm;)Lcom/amap/api/services/weather/LocalWeatherLiveResult;

    move-result-object v3

    iput-object v3, v0, Lcom/amap/api/col/sl/ac$l;->a:Lcom/amap/api/services/weather/LocalWeatherLiveResult;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/bm$1;->a:Lcom/amap/api/col/sl/bm;

    invoke-static {v0}, Lcom/amap/api/col/sl/bm;->e(Lcom/amap/api/col/sl/bm;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    new-instance v3, Lcom/amap/api/col/sl/ac$l;

    invoke-direct {v3}, Lcom/amap/api/col/sl/ac$l;-><init>()V

    iput v5, v1, Landroid/os/Message;->what:I

    iget-object v4, p0, Lcom/amap/api/col/sl/bm$1;->a:Lcom/amap/api/col/sl/bm;

    invoke-static {v4}, Lcom/amap/api/col/sl/bm;->c(Lcom/amap/api/col/sl/bm;)Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    move-result-object v4

    iput-object v4, v3, Lcom/amap/api/col/sl/ac$l;->b:Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    iget-object v4, p0, Lcom/amap/api/col/sl/bm$1;->a:Lcom/amap/api/col/sl/bm;

    invoke-static {v4}, Lcom/amap/api/col/sl/bm;->d(Lcom/amap/api/col/sl/bm;)Lcom/amap/api/services/weather/LocalWeatherLiveResult;

    move-result-object v4

    iput-object v4, v3, Lcom/amap/api/col/sl/ac$l;->a:Lcom/amap/api/services/weather/LocalWeatherLiveResult;

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/amap/api/col/sl/bm$1;->a:Lcom/amap/api/col/sl/bm;

    invoke-static {v2}, Lcom/amap/api/col/sl/bm;->e(Lcom/amap/api/col/sl/bm;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/sl/bm$1;->a:Lcom/amap/api/col/sl/bm;

    invoke-static {v0}, Lcom/amap/api/col/sl/bm;->a(Lcom/amap/api/col/sl/bm;)Lcom/amap/api/services/weather/WeatherSearchQuery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/weather/WeatherSearchQuery;->getType()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    :try_start_4
    iget-object v0, p0, Lcom/amap/api/col/sl/bm$1;->a:Lcom/amap/api/col/sl/bm;

    iget-object v3, p0, Lcom/amap/api/col/sl/bm$1;->a:Lcom/amap/api/col/sl/bm;

    invoke-static {v3}, Lcom/amap/api/col/sl/bm;->f(Lcom/amap/api/col/sl/bm;)Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/amap/api/col/sl/bm;->a(Lcom/amap/api/col/sl/bm;Lcom/amap/api/services/weather/LocalWeatherForecastResult;)Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    const-string v0, "errorCode"

    const/16 v3, 0x3e8

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_4
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    new-instance v0, Lcom/amap/api/col/sl/ac$k;

    invoke-direct {v0}, Lcom/amap/api/col/sl/ac$k;-><init>()V

    iput v6, v1, Landroid/os/Message;->what:I

    iget-object v3, p0, Lcom/amap/api/col/sl/bm$1;->a:Lcom/amap/api/col/sl/bm;

    invoke-static {v3}, Lcom/amap/api/col/sl/bm;->c(Lcom/amap/api/col/sl/bm;)Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    move-result-object v3

    iput-object v3, v0, Lcom/amap/api/col/sl/ac$k;->b:Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    iget-object v3, p0, Lcom/amap/api/col/sl/bm$1;->a:Lcom/amap/api/col/sl/bm;

    invoke-static {v3}, Lcom/amap/api/col/sl/bm;->g(Lcom/amap/api/col/sl/bm;)Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    move-result-object v3

    iput-object v3, v0, Lcom/amap/api/col/sl/ac$k;->a:Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/bm$1;->a:Lcom/amap/api/col/sl/bm;

    invoke-static {v0}, Lcom/amap/api/col/sl/bm;->e(Lcom/amap/api/col/sl/bm;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :catch_3
    move-exception v0

    :try_start_5
    const-string v3, "errorCode"

    invoke-virtual {v0}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "WeatherSearch"

    const-string v4, "searchWeatherAsyn"

    invoke-static {v0, v3, v4}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    new-instance v0, Lcom/amap/api/col/sl/ac$k;

    invoke-direct {v0}, Lcom/amap/api/col/sl/ac$k;-><init>()V

    iput v6, v1, Landroid/os/Message;->what:I

    iget-object v3, p0, Lcom/amap/api/col/sl/bm$1;->a:Lcom/amap/api/col/sl/bm;

    invoke-static {v3}, Lcom/amap/api/col/sl/bm;->c(Lcom/amap/api/col/sl/bm;)Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    move-result-object v3

    iput-object v3, v0, Lcom/amap/api/col/sl/ac$k;->b:Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    iget-object v3, p0, Lcom/amap/api/col/sl/bm$1;->a:Lcom/amap/api/col/sl/bm;

    invoke-static {v3}, Lcom/amap/api/col/sl/bm;->g(Lcom/amap/api/col/sl/bm;)Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    move-result-object v3

    iput-object v3, v0, Lcom/amap/api/col/sl/ac$k;->a:Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/bm$1;->a:Lcom/amap/api/col/sl/bm;

    invoke-static {v0}, Lcom/amap/api/col/sl/bm;->e(Lcom/amap/api/col/sl/bm;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :catch_4
    move-exception v0

    :try_start_6
    const-string v3, "WeatherSearch"

    const-string v4, "searchWeatherAnsyThrowable"

    invoke-static {v0, v3, v4}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    new-instance v0, Lcom/amap/api/col/sl/ac$k;

    invoke-direct {v0}, Lcom/amap/api/col/sl/ac$k;-><init>()V

    iput v6, v1, Landroid/os/Message;->what:I

    iget-object v3, p0, Lcom/amap/api/col/sl/bm$1;->a:Lcom/amap/api/col/sl/bm;

    invoke-static {v3}, Lcom/amap/api/col/sl/bm;->c(Lcom/amap/api/col/sl/bm;)Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    move-result-object v3

    iput-object v3, v0, Lcom/amap/api/col/sl/ac$k;->b:Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    iget-object v3, p0, Lcom/amap/api/col/sl/bm$1;->a:Lcom/amap/api/col/sl/bm;

    invoke-static {v3}, Lcom/amap/api/col/sl/bm;->g(Lcom/amap/api/col/sl/bm;)Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    move-result-object v3

    iput-object v3, v0, Lcom/amap/api/col/sl/ac$k;->a:Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/bm$1;->a:Lcom/amap/api/col/sl/bm;

    invoke-static {v0}, Lcom/amap/api/col/sl/bm;->e(Lcom/amap/api/col/sl/bm;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    new-instance v3, Lcom/amap/api/col/sl/ac$k;

    invoke-direct {v3}, Lcom/amap/api/col/sl/ac$k;-><init>()V

    iput v6, v1, Landroid/os/Message;->what:I

    iget-object v4, p0, Lcom/amap/api/col/sl/bm$1;->a:Lcom/amap/api/col/sl/bm;

    invoke-static {v4}, Lcom/amap/api/col/sl/bm;->c(Lcom/amap/api/col/sl/bm;)Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    move-result-object v4

    iput-object v4, v3, Lcom/amap/api/col/sl/ac$k;->b:Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    iget-object v4, p0, Lcom/amap/api/col/sl/bm$1;->a:Lcom/amap/api/col/sl/bm;

    invoke-static {v4}, Lcom/amap/api/col/sl/bm;->g(Lcom/amap/api/col/sl/bm;)Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    move-result-object v4

    iput-object v4, v3, Lcom/amap/api/col/sl/ac$k;->a:Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/amap/api/col/sl/bm$1;->a:Lcom/amap/api/col/sl/bm;

    invoke-static {v2}, Lcom/amap/api/col/sl/bm;->e(Lcom/amap/api/col/sl/bm;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    throw v0
.end method
