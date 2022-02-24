.class Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$b;
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

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$b;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    new-instance v15, Lcom/ifengyu/intercom/greendao/bean/a;

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$b;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->d(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)[Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$b;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->d(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)[Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$b;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->d(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)[Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    const/4 v14, 0x1

    aget-object v1, v1, v14

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$b;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->d(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)[Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    aget-object v1, v1, v14

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$b;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->e(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x12

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$b;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->e(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/16 v1, 0x10

    goto :goto_0

    :cond_1
    const/16 v1, 0x11

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$b;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->f(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)[I

    move-result-object v1

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$b;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->e(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)I

    move-result v2

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$b;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->g(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$b;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->e(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)I

    move-result v2

    aget-object v11, v1, v2

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$b;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->h(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    const/4 v2, 0x0

    move-object v1, v15

    move-object v9, v13

    move-object v10, v13

    move-object/from16 v14, v16

    invoke-direct/range {v1 .. v14}, Lcom/ifengyu/intercom/greendao/bean/a;-><init>(Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 2
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$b;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->i(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/greendao/dao/b;->c()Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao;

    move-result-object v1

    invoke-virtual {v1, v15}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    .line 3
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$b;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->i(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/greendao/dao/b;->a()V

    .line 4
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$b;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->j(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)Lcom/ifengyu/intercom/greendao/dao/a$a;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 5
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$b;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setResult(I)V

    .line 6
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$b;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void
.end method
