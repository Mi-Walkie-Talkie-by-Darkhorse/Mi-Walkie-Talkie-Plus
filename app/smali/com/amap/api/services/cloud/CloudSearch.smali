.class public Lcom/amap/api/services/cloud/CloudSearch;
.super Ljava/lang/Object;
.source "CloudSearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/cloud/CloudSearch$OnCloudSearchListener;,
        Lcom/amap/api/services/cloud/CloudSearch$SearchBound;,
        Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;,
        Lcom/amap/api/services/cloud/CloudSearch$Query;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/services/interfaces/ICloudSearch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/amap/api/col/sl/s;->a(Z)Lcom/amap/api/col/sl/bz;

    move-result-object v1

    const-string v2, "com.amap.api.services.dynamic.CloudSearchWrapper"

    const-class v3, Lcom/amap/api/col/sl/bb;

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/amap/api/col/sl/cy;->a(Landroid/content/Context;Lcom/amap/api/col/sl/bz;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/interfaces/ICloudSearch;

    iput-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch;->a:Lcom/amap/api/services/interfaces/ICloudSearch;
    :try_end_0
    .catch Lcom/amap/api/col/sl/bo; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch;->a:Lcom/amap/api/services/interfaces/ICloudSearch;

    if-nez v0, :cond_0

    :try_start_1
    new-instance v0, Lcom/amap/api/col/sl/bb;

    invoke-direct {v0, p1}, Lcom/amap/api/col/sl/bb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch;->a:Lcom/amap/api/services/interfaces/ICloudSearch;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public searchCloudAsyn(Lcom/amap/api/services/cloud/CloudSearch$Query;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch;->a:Lcom/amap/api/services/interfaces/ICloudSearch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch;->a:Lcom/amap/api/services/interfaces/ICloudSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/ICloudSearch;->searchCloudAsyn(Lcom/amap/api/services/cloud/CloudSearch$Query;)V

    :cond_0
    return-void
.end method

.method public searchCloudDetailAsyn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch;->a:Lcom/amap/api/services/interfaces/ICloudSearch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch;->a:Lcom/amap/api/services/interfaces/ICloudSearch;

    invoke-interface {v0, p1, p2}, Lcom/amap/api/services/interfaces/ICloudSearch;->searchCloudDetailAsyn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setOnCloudSearchListener(Lcom/amap/api/services/cloud/CloudSearch$OnCloudSearchListener;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch;->a:Lcom/amap/api/services/interfaces/ICloudSearch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch;->a:Lcom/amap/api/services/interfaces/ICloudSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/ICloudSearch;->setOnCloudSearchListener(Lcom/amap/api/services/cloud/CloudSearch$OnCloudSearchListener;)V

    :cond_0
    return-void
.end method
