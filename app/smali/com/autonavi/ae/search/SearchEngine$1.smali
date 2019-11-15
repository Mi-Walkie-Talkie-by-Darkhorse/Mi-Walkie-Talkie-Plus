.class Lcom/autonavi/ae/search/SearchEngine$1;
.super Ljava/lang/Object;
.source "SearchEngine.java"

# interfaces
.implements Lcom/autonavi/ae/search/INativeSearchObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/ae/search/SearchEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/ae/search/SearchEngine;


# direct methods
.method constructor <init>(Lcom/autonavi/ae/search/SearchEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/ae/search/SearchEngine$1;->this$0:Lcom/autonavi/ae/search/SearchEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetAdareaInfo(II[Lcom/autonavi/ae/search/model/GADAREAINFO;)V
    .locals 2

    const-string v0, "wmh"

    const-string v1, "SearchEngine.onGetAdareaInfo"

    invoke-static {v0, v1}, Lcom/autonavi/ae/search/log/GLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onGetPoiCategoryList(II)V
    .locals 3

    const-string v0, "wmh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SearchEngine.onGetPoiCategoryList status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",lNumberOfCategory="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/ae/search/log/GLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onGetPoiParam(III)V
    .locals 2

    const-string v0, "wmh"

    const-string v1, "SearchEngine.onGetPoiParam"

    invoke-static {v0, v1}, Lcom/autonavi/ae/search/log/GLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onGetSearchResult(IILcom/autonavi/ae/search/model/GPoiResult;)V
    .locals 3

    invoke-static {}, Lcom/autonavi/ae/search/log/GLog;->isLogShow()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_2

    const-string v0, "SearchEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetSearchResult id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/autonavi/ae/search/model/GPoiResult;->getNumberOfItemGet()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/ae/search/log/GLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/autonavi/ae/search/SearchEngine$1;->this$0:Lcom/autonavi/ae/search/SearchEngine;

    invoke-static {v0}, Lcom/autonavi/ae/search/SearchEngine;->access$000(Lcom/autonavi/ae/search/SearchEngine;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/ae/search/SearchEngine$1;->this$0:Lcom/autonavi/ae/search/SearchEngine;

    invoke-static {v0}, Lcom/autonavi/ae/search/SearchEngine;->access$100(Lcom/autonavi/ae/search/SearchEngine;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/ae/search/interfaces/OnSearchResultListener;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-interface {v0, p2, p3}, Lcom/autonavi/ae/search/interfaces/OnSearchResultListener;->onGetSearchResult(ILcom/autonavi/ae/search/model/GPoiResult;)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "SearchEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetSearchResult id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",result=NULL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/ae/search/log/GLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onGetSuggestArea()V
    .locals 2

    const-string v0, "wmh"

    const-string v1, "SearchEngine.onGetSuggestArea"

    invoke-static {v0, v1}, Lcom/autonavi/ae/search/log/GLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSetPoiParam(I)V
    .locals 2

    const-string v0, "wmh"

    const-string v1, "SearchEngine.onSetPoiParam"

    invoke-static {v0, v1}, Lcom/autonavi/ae/search/log/GLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
