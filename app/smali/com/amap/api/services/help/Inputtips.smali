.class public final Lcom/amap/api/services/help/Inputtips;
.super Ljava/lang/Object;
.source "Inputtips.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/help/Inputtips$InputtipsListener;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/services/interfaces/IInputtipsSearch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/help/Inputtips$InputtipsListener;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/services/help/Inputtips;->a:Lcom/amap/api/services/interfaces/IInputtipsSearch;

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/amap/api/col/sl/s;->a(Z)Lcom/amap/api/col/sl/bz;

    move-result-object v1

    const-string v2, "com.amap.api.services.dynamic.InputtipsSearchWrapper"

    const-class v3, Lcom/amap/api/col/sl/bf;

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    const/4 v0, 0x1

    const-class v5, Lcom/amap/api/services/help/Inputtips$InputtipsListener;

    aput-object v5, v4, v0

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    const/4 v0, 0x1

    aput-object p2, v5, v0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/amap/api/col/sl/cy;->a(Landroid/content/Context;Lcom/amap/api/col/sl/bz;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/interfaces/IInputtipsSearch;

    iput-object v0, p0, Lcom/amap/api/services/help/Inputtips;->a:Lcom/amap/api/services/interfaces/IInputtipsSearch;
    :try_end_0
    .catch Lcom/amap/api/col/sl/bo; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/amap/api/services/help/Inputtips;->a:Lcom/amap/api/services/interfaces/IInputtipsSearch;

    if-nez v0, :cond_0

    :try_start_1
    new-instance v0, Lcom/amap/api/col/sl/bf;

    invoke-direct {v0, p1, p2}, Lcom/amap/api/col/sl/bf;-><init>(Landroid/content/Context;Lcom/amap/api/services/help/Inputtips$InputtipsListener;)V

    iput-object v0, p0, Lcom/amap/api/services/help/Inputtips;->a:Lcom/amap/api/services/interfaces/IInputtipsSearch;
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

.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/help/InputtipsQuery;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/services/help/Inputtips;->a:Lcom/amap/api/services/interfaces/IInputtipsSearch;

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/amap/api/col/sl/s;->a(Z)Lcom/amap/api/col/sl/bz;

    move-result-object v1

    const-string v2, "com.amap.api.services.dynamic.InputtipsSearchWrapper"

    const-class v3, Lcom/amap/api/col/sl/bf;

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    const/4 v0, 0x1

    const-class v5, Lcom/amap/api/services/help/InputtipsQuery;

    aput-object v5, v4, v0

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    const/4 v0, 0x1

    aput-object p2, v5, v0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/amap/api/col/sl/cy;->a(Landroid/content/Context;Lcom/amap/api/col/sl/bz;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/interfaces/IInputtipsSearch;

    iput-object v0, p0, Lcom/amap/api/services/help/Inputtips;->a:Lcom/amap/api/services/interfaces/IInputtipsSearch;
    :try_end_0
    .catch Lcom/amap/api/col/sl/bo; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/amap/api/services/help/Inputtips;->a:Lcom/amap/api/services/interfaces/IInputtipsSearch;

    if-nez v0, :cond_0

    :try_start_1
    new-instance v0, Lcom/amap/api/col/sl/bf;

    invoke-direct {v0, p1, p2}, Lcom/amap/api/col/sl/bf;-><init>(Landroid/content/Context;Lcom/amap/api/services/help/InputtipsQuery;)V

    iput-object v0, p0, Lcom/amap/api/services/help/Inputtips;->a:Lcom/amap/api/services/interfaces/IInputtipsSearch;
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


# virtual methods
.method public final getQuery()Lcom/amap/api/services/help/InputtipsQuery;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/help/Inputtips;->a:Lcom/amap/api/services/interfaces/IInputtipsSearch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/help/Inputtips;->a:Lcom/amap/api/services/interfaces/IInputtipsSearch;

    invoke-interface {v0}, Lcom/amap/api/services/interfaces/IInputtipsSearch;->getQuery()Lcom/amap/api/services/help/InputtipsQuery;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final requestInputtips()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/help/Tip;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/services/help/Inputtips;->a:Lcom/amap/api/services/interfaces/IInputtipsSearch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/help/Inputtips;->a:Lcom/amap/api/services/interfaces/IInputtipsSearch;

    invoke-interface {v0}, Lcom/amap/api/services/interfaces/IInputtipsSearch;->requestInputtips()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final requestInputtips(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/services/help/Inputtips;->a:Lcom/amap/api/services/interfaces/IInputtipsSearch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/help/Inputtips;->a:Lcom/amap/api/services/interfaces/IInputtipsSearch;

    invoke-interface {v0, p1, p2}, Lcom/amap/api/services/interfaces/IInputtipsSearch;->requestInputtips(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final requestInputtips(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/services/help/Inputtips;->a:Lcom/amap/api/services/interfaces/IInputtipsSearch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/help/Inputtips;->a:Lcom/amap/api/services/interfaces/IInputtipsSearch;

    invoke-interface {v0, p1, p2, p3}, Lcom/amap/api/services/interfaces/IInputtipsSearch;->requestInputtips(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final requestInputtipsAsyn()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/help/Inputtips;->a:Lcom/amap/api/services/interfaces/IInputtipsSearch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/help/Inputtips;->a:Lcom/amap/api/services/interfaces/IInputtipsSearch;

    invoke-interface {v0}, Lcom/amap/api/services/interfaces/IInputtipsSearch;->requestInputtipsAsyn()V

    :cond_0
    return-void
.end method

.method public final setInputtipsListener(Lcom/amap/api/services/help/Inputtips$InputtipsListener;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/help/Inputtips;->a:Lcom/amap/api/services/interfaces/IInputtipsSearch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/help/Inputtips;->a:Lcom/amap/api/services/interfaces/IInputtipsSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IInputtipsSearch;->setInputtipsListener(Lcom/amap/api/services/help/Inputtips$InputtipsListener;)V

    :cond_0
    return-void
.end method

.method public final setQuery(Lcom/amap/api/services/help/InputtipsQuery;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/help/Inputtips;->a:Lcom/amap/api/services/interfaces/IInputtipsSearch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/help/Inputtips;->a:Lcom/amap/api/services/interfaces/IInputtipsSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IInputtipsSearch;->setQuery(Lcom/amap/api/services/help/InputtipsQuery;)V

    :cond_0
    return-void
.end method
