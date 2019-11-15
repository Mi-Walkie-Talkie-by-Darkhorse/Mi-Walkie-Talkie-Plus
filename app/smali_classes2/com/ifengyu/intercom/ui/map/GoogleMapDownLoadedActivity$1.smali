.class Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$1;
.super Ljava/lang/Object;
.source "GoogleMapDownLoadedActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$1;->b:Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$1;->b:Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->a(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/a;->k()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mitalki/map/offline"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$1;->b:Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->b(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/ifengyu/intercom/greendao/dao/b;->delete(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$1;->b:Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->a(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)[Ljava/io/File;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$1;->b:Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->a(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)[Ljava/io/File;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->a(Ljava/io/File;)Z

    goto :goto_1

    :cond_3
    return-void
.end method
