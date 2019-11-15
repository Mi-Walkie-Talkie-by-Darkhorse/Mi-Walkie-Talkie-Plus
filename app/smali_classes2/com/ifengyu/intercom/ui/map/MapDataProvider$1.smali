.class Lcom/ifengyu/intercom/ui/map/MapDataProvider$1;
.super Ljava/lang/Object;
.source "MapDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a(Lcom/ifengyu/intercom/greendao/bean/a;Ljava/util/ArrayList;Lcom/ifengyu/intercom/greendao/dao/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/greendao/bean/a;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Lcom/ifengyu/intercom/greendao/dao/b;

.field final synthetic d:Lcom/ifengyu/intercom/ui/map/MapDataProvider;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/map/MapDataProvider;Lcom/ifengyu/intercom/greendao/bean/a;Ljava/util/ArrayList;Lcom/ifengyu/intercom/greendao/dao/b;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$1;->d:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$1;->a:Lcom/ifengyu/intercom/greendao/bean/a;

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$1;->b:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$1;->c:Lcom/ifengyu/intercom/greendao/dao/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const/4 v13, 0x2

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$1;->a:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/a;->l()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a(I)Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    move-result-object v5

    const-string v0, "MapDataProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$1;->a:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/greendao/bean/a;->g()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u542f\u52a8\u4e0b\u8f7d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$1;->a:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/greendao/bean/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$1;->a:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/greendao/bean/a;->m()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v10

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$1;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_0

    move v11, v10

    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$1;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/intercom/ui/map/TilePoint;

    array-length v0, v0

    if-ge v11, v0, :cond_4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$1;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/intercom/ui/map/TilePoint;

    aget-object v0, v0, v11

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$1;->a:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/greendao/bean/a;->m()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$1;->a:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/greendao/bean/a;->a(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$1;->d:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a(Lcom/ifengyu/intercom/ui/map/MapDataProvider;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$1;->a:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$1;->d:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$1;->c:Lcom/ifengyu/intercom/greendao/dao/b;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$1;->a:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a(Lcom/ifengyu/intercom/greendao/dao/b;Lcom/ifengyu/intercom/greendao/bean/a;)V

    const-string v0, "MapDataProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6682\u505c\u4e0b\u8f7d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$1;->a:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/greendao/bean/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$1;->a:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/greendao/bean/a;->m()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$1;->d:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    invoke-static {v0, v10}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a(Lcom/ifengyu/intercom/ui/map/MapDataProvider;I)I

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/TilePoint;->a()I

    move-result v6

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/TilePoint;->b()I

    move-result v7

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/TilePoint;->c()I

    move-result v8

    :try_start_0
    new-instance v12, Ljava/io/File;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$1;->d:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$1;->a:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/greendao/bean/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a(Lcom/ifengyu/intercom/ui/map/MapDataProvider;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$1;->d:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->b(Lcom/ifengyu/intercom/ui/map/MapDataProvider;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$1;->a:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/greendao/bean/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->sendEmptyMessage(I)Z

    :goto_2
    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto/16 :goto_1

    :cond_2
    new-instance v0, Ljava/net/URL;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5, v1, v2, v3}, Lcom/ifengyu/intercom/ui/map/d/a/h;->a(Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$1;->d:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$1;->a:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/greendao/bean/a;->k()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1, v2, v6}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$1;->d:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a(Lcom/ifengyu/intercom/ui/map/MapDataProvider;Ljava/io/InputStream;)[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a(Lcom/ifengyu/intercom/ui/map/MapDataProvider;Ljava/lang/String;Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;Ljava/lang/String;[BZ)V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$1;->d:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->b(Lcom/ifengyu/intercom/ui/map/MapDataProvider;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$1;->a:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/greendao/bean/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$1;->d:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->b(Lcom/ifengyu/intercom/ui/map/MapDataProvider;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$1;->a:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/greendao/bean/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;

    invoke-virtual {v0, v13}, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->sendEmptyMessage(I)Z

    const-string v0, "MapDataProvider"

    invoke-virtual {v1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$1;->d:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->b(Lcom/ifengyu/intercom/ui/map/MapDataProvider;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$1;->a:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/greendao/bean/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_2

    :catch_1
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$1;->d:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->b(Lcom/ifengyu/intercom/ui/map/MapDataProvider;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$1;->a:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/greendao/bean/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;

    invoke-virtual {v0, v13}, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->sendEmptyMessage(I)Z

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$1;->d:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->b(Lcom/ifengyu/intercom/ui/map/MapDataProvider;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$1;->a:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/greendao/bean/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;

    invoke-virtual {v0, v13}, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->sendEmptyMessage(I)Z

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$1;->d:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->b(Lcom/ifengyu/intercom/ui/map/MapDataProvider;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$1;->a:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/greendao/bean/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;

    invoke-virtual {v0, v13}, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->sendEmptyMessage(I)Z

    const-string v0, "MapDataProvider"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method
