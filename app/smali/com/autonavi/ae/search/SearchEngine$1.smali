.class Lcom/autonavi/ae/search/SearchEngine$1;
.super Ljava/lang/Object;

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
    .locals 0

    const-string p1, "wmh"

    const-string p2, "SearchEngine.onGetAdareaInfo"

    invoke-static {p1, p2}, Lcom/autonavi/ae/search/log/GLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onGetPoiCategoryList(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SearchEngine.onGetPoiCategoryList status="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",lNumberOfCategory="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "wmh"

    invoke-static {p2, p1}, Lcom/autonavi/ae/search/log/GLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onGetPoiParam(III)V
    .locals 0

    const-string p1, "wmh"

    const-string p2, "SearchEngine.onGetPoiParam"

    invoke-static {p1, p2}, Lcom/autonavi/ae/search/log/GLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onGetSearchResult(IILcom/autonavi/ae/search/model/GPoiResult;)V
    .locals 2

    invoke-static {}, Lcom/autonavi/ae/search/log/GLog;->isLogShow()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onGetSearchResult id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/autonavi/ae/search/model/GPoiResult;->getNumberOfItemGet()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchEngine"

    invoke-static {v1, v0}, Lcom/autonavi/ae/search/log/GLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onGetSearchResult id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",result=NULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchEngine"

    invoke-static {v1, v0}, Lcom/autonavi/ae/search/log/GLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/autonavi/ae/search/SearchEngine$1;->this$0:Lcom/autonavi/ae/search/SearchEngine;

    invoke-static {v0}, Lcom/autonavi/ae/search/SearchEngine;->access$000(Lcom/autonavi/ae/search/SearchEngine;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/autonavi/ae/search/SearchEngine$1;->this$0:Lcom/autonavi/ae/search/SearchEngine;

    invoke-static {v1}, Lcom/autonavi/ae/search/SearchEngine;->access$100(Lcom/autonavi/ae/search/SearchEngine;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/ae/search/interfaces/OnSearchResultListener;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    invoke-interface {p1, p2, p3}, Lcom/autonavi/ae/search/interfaces/OnSearchResultListener;->onGetSearchResult(ILcom/autonavi/ae/search/model/GPoiResult;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public onGetSuggestArea()V
    .locals 2

    const-string v0, "wmh"

    const-string v1, "SearchEngine.onGetSuggestArea"

    invoke-static {v0, v1}, Lcom/autonavi/ae/search/log/GLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSetPoiParam(I)V
    .locals 1

    const-string p1, "wmh"

    const-string v0, "SearchEngine.onSetPoiParam"

    invoke-static {p1, v0}, Lcom/autonavi/ae/search/log/GLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
