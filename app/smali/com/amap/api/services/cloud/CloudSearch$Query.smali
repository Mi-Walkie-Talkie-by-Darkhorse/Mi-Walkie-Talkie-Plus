.class public Lcom/amap/api/services/cloud/CloudSearch$Query;
.super Ljava/lang/Object;
.source "CloudSearch.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/cloud/CloudSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Query"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

.field private f:Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/col/sl/aj;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->b:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->c:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->h:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/services/cloud/CloudSearch$SearchBound;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->b:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->c:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->h:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p3, :cond_1

    :cond_0
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->e:Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    return-void
.end method


# virtual methods
.method public addFilterNum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/amap/api/col/sl/aj;

    invoke-direct {v0, p1, p2, p3}, Lcom/amap/api/col/sl/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addFilterString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clone()Lcom/amap/api/services/cloud/CloudSearch$Query;
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    new-instance v1, Lcom/amap/api/services/cloud/CloudSearch$Query;

    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->e:Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    invoke-direct {v1, v0, v3, v4}, Lcom/amap/api/services/cloud/CloudSearch$Query;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/services/cloud/CloudSearch$SearchBound;)V
    :try_end_1
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    iget v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->b:I

    invoke-virtual {v1, v0}, Lcom/amap/api/services/cloud/CloudSearch$Query;->setPageNum(I)V

    iget v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->c:I

    invoke-virtual {v1, v0}, Lcom/amap/api/services/cloud/CloudSearch$Query;->setPageSize(I)V

    invoke-virtual {p0}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getSortingrules()Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/cloud/CloudSearch$Query;->setSortingrules(Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;)V

    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    move-object v0, v2

    :goto_1
    iput-object v0, v1, Lcom/amap/api/services/cloud/CloudSearch$Query;->g:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->h:Ljava/util/HashMap;

    if-nez v0, :cond_2

    :goto_2
    iput-object v2, v1, Lcom/amap/api/services/cloud/CloudSearch$Query;->h:Ljava/util/HashMap;
    :try_end_2
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v1

    :goto_3
    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-direct {v0}, Lcom/amap/api/services/cloud/CloudSearch$Query;-><init>()V

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_3
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_4
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_3

    :cond_2
    :try_start_4
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->h:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_4
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_4
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amap/api/services/cloud/CloudSearch$Query;->clone()Lcom/amap/api/services/cloud/CloudSearch$Query;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/amap/api/services/cloud/CloudSearch$Query;

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eq p1, p0, :cond_1

    check-cast p1, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {p0, p1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->queryEquals(Lcom/amap/api/services/cloud/CloudSearch$Query;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p1, Lcom/amap/api/services/cloud/CloudSearch$Query;->b:I

    iget v3, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->b:I

    if-eq v2, v3, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->e:Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    return-object v0
.end method

.method public getFilterNumString()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/sl/aj;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/aj;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ":["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/aj;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/aj;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "+"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public getFilterString()Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "+"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public getPageNum()I
    .locals 1

    iget v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->b:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    iget v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->c:I

    return v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getSortingrules()Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->f:Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;

    return-object v0
.end method

.method public getTableID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->d:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->h:Ljava/util/HashMap;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->e:Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->b:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->c:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->a:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->f:Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->d:Ljava/lang/String;

    if-nez v2, :cond_5

    :goto_5
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->e:Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    invoke-virtual {v0}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->f:Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;

    invoke-virtual {v0}, Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5
.end method

.method public queryEquals(Lcom/amap/api/services/cloud/CloudSearch$Query;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p1, p0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/amap/api/services/cloud/CloudSearch$Query;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amap/api/services/cloud/CloudSearch;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getTableID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getTableID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amap/api/services/cloud/CloudSearch;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getFilterString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getFilterString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amap/api/services/cloud/CloudSearch;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getFilterNumString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getFilterNumString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amap/api/services/cloud/CloudSearch;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p1, Lcom/amap/api/services/cloud/CloudSearch$Query;->c:I

    iget v3, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->c:I

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v3

    if-nez v2, :cond_3

    if-nez v3, :cond_3

    move v2, v1

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getSortingrules()Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getSortingrules()Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;

    move-result-object v3

    if-nez v2, :cond_5

    if-nez v3, :cond_5

    move v2, v1

    :goto_2
    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    invoke-virtual {v2, v3}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :cond_4
    move v2, v0

    goto :goto_1

    :cond_5
    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    invoke-virtual {v2, v3}, Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_2

    :cond_6
    move v2, v0

    goto :goto_2
.end method

.method public setBound(Lcom/amap/api/services/cloud/CloudSearch$SearchBound;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->e:Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    return-void
.end method

.method public setPageNum(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->b:I

    return-void
.end method

.method public setPageSize(I)V
    .locals 1

    const/16 v0, 0x64

    if-gtz p1, :cond_0

    const/16 v0, 0x14

    iput v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->c:I

    :goto_0
    return-void

    :cond_0
    if-le p1, v0, :cond_1

    iput v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->c:I

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->c:I

    goto :goto_0
.end method

.method public setSortingrules(Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->f:Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;

    return-void
.end method

.method public setTableID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->d:Ljava/lang/String;

    return-void
.end method
