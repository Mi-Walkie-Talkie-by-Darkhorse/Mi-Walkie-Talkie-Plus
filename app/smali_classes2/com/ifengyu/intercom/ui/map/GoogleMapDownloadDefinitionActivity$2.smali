.class Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$2;
.super Ljava/lang/Object;
.source "GoogleMapDownloadDefinitionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$2;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 14

    new-instance v0, Lcom/ifengyu/intercom/greendao/bean/a;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$2;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->d(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)[Lorg/osmdroid/util/GeoPoint;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$2;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->d(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)[Lorg/osmdroid/util/GeoPoint;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$2;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;

    invoke-static {v4}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->d(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)[Lorg/osmdroid/util/GeoPoint;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$2;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;

    invoke-static {v5}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->d(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)[Lorg/osmdroid/util/GeoPoint;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iget-object v6, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$2;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;

    invoke-static {v6}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->e(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)I

    move-result v6

    if-nez v6, :cond_0

    const/16 v6, 0x12

    :goto_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$2;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;

    invoke-static {v7}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->f(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)[I

    move-result-object v7

    iget-object v8, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$2;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;

    invoke-static {v8}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->e(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)I

    move-result v8

    aget v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$2;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;

    invoke-static {v10}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->g(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)[Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$2;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;

    invoke-static {v11}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->e(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)I

    move-result v11

    aget-object v10, v10, v11

    iget-object v11, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$2;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;

    invoke-static {v11}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->h(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-direct/range {v0 .. v13}, Lcom/ifengyu/intercom/greendao/bean/a;-><init>(Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$2;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->i(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/greendao/dao/b;->b()Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao;->insert(Ljava/lang/Object;)J

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$2;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->i(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/b;->a()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$2;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->j(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)Lcom/ifengyu/intercom/greendao/dao/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/a$a;->close()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$2;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->setResult(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$2;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->finish()V

    return-void

    :cond_0
    iget-object v6, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$2;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;

    invoke-static {v6}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->e(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    const/16 v6, 0x10

    goto :goto_0

    :cond_1
    const/16 v6, 0x11

    goto :goto_0
.end method
