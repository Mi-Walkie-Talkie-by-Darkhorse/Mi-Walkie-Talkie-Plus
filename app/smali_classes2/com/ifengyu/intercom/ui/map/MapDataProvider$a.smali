.class Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;
.super Ljava/lang/Object;

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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->d:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->a:Lcom/ifengyu/intercom/greendao/bean/a;

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->b:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->c:Lcom/ifengyu/intercom/greendao/dao/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->a:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/a;->j()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->b(I)Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    move-result-object v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->a:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/greendao/bean/a;->a()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\u542f\u52a8\u4e0b\u8f7d"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->a:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/greendao/bean/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->a:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/greendao/bean/a;->e()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "MapDataProvider"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    iget-object v0, v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v11, v0, :cond_4

    const/4 v12, 0x0

    :goto_1
    iget-object v0, v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/intercom/ui/map/TilePoint;

    array-length v0, v0

    if-ge v12, v0, :cond_3

    iget-object v0, v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/intercom/ui/map/TilePoint;

    aget-object v0, v0, v12

    iget-object v2, v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->a:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/greendao/bean/a;->e()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->a:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/greendao/bean/a;->a(Ljava/lang/Boolean;)V

    iget-object v0, v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->d:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a(Lcom/ifengyu/intercom/ui/map/MapDataProvider;)Ljava/util/List;

    move-result-object v0

    iget-object v2, v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->a:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->d:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    iget-object v2, v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->c:Lcom/ifengyu/intercom/greendao/dao/b;

    iget-object v3, v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->a:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v0, v2, v3}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a(Lcom/ifengyu/intercom/greendao/dao/b;Lcom/ifengyu/intercom/greendao/bean/a;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6682\u505c\u4e0b\u8f7d"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->a:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/greendao/bean/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->a:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/greendao/bean/a;->e()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->d:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    invoke-static {v0, v10}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a(Lcom/ifengyu/intercom/ui/map/MapDataProvider;I)I

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/TilePoint;->a()I

    move-result v13

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/TilePoint;->b()I

    move-result v14

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/TilePoint;->c()I

    move-result v0

    const/4 v15, 0x2

    :try_start_0
    new-instance v7, Ljava/io/File;

    iget-object v2, v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->d:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    iget-object v3, v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->a:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/greendao/bean/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v10, v7

    move-object v7, v8

    invoke-static/range {v2 .. v7}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a(Lcom/ifengyu/intercom/ui/map/MapDataProvider;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v7, 0x1

    if-eqz v2, :cond_1

    iget-object v0, v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->d:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->d(Lcom/ifengyu/intercom/ui/map/MapDataProvider;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->a:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/greendao/bean/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$b;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    :cond_1
    new-instance v2, Ljava/net/URL;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v8, v3, v4, v5}, Lcom/ifengyu/intercom/ui/map/f/a/h;->a(Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    const/16 v3, 0x1388

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v3, "GET"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    iget-object v2, v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->d:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    iget-object v3, v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->a:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/greendao/bean/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->d:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    invoke-static {v0, v6}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a(Lcom/ifengyu/intercom/ui/map/MapDataProvider;Ljava/io/InputStream;)[B

    move-result-object v0

    const/4 v13, 0x0

    move-object v4, v8

    move-object v14, v6

    move-object v6, v0

    const/4 v0, 0x1

    move v7, v13

    invoke-static/range {v2 .. v7}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a(Lcom/ifengyu/intercom/ui/map/MapDataProvider;Ljava/lang/String;Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;Ljava/lang/String;[BZ)V

    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->d:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->d(Lcom/ifengyu/intercom/ui/map/MapDataProvider;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->a:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/greendao/bean/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/ui/map/MapDataProvider$b;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    :cond_2
    iget-object v0, v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->d:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->d(Lcom/ifengyu/intercom/ui/map/MapDataProvider;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->a:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/greendao/bean/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$b;

    invoke-virtual {v0, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    iget-object v2, v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->d:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->d(Lcom/ifengyu/intercom/ui/map/MapDataProvider;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->a:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/greendao/bean/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/ui/map/MapDataProvider$b;

    invoke-virtual {v2, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v0

    iget-object v2, v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->d:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->d(Lcom/ifengyu/intercom/ui/map/MapDataProvider;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->a:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/greendao/bean/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/ui/map/MapDataProvider$b;

    invoke-virtual {v2, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception v0

    iget-object v2, v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->d:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->d(Lcom/ifengyu/intercom/ui/map/MapDataProvider;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->a:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/greendao/bean/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/ui/map/MapDataProvider$b;

    invoke-virtual {v2, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception v0

    iget-object v2, v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->d:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->d(Lcom/ifengyu/intercom/ui/map/MapDataProvider;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->a:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/greendao/bean/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/ui/map/MapDataProvider$b;

    invoke-virtual {v2, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v12, v12, 0x1

    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_3
    :goto_3
    add-int/lit8 v11, v11, 0x1

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_4
    return-void
.end method
