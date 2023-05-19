.class public Lcom/autonavi/ae/search/SearchEngine;
.super Lcom/autonavi/ae/search/NativeSearchEngine;
.source "SearchEngine.java"


# static fields
.field private static mRequestID:I = 0x1


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mIsInit:Z

.field private mNativeId:J

.field private mSearchCallBackListenerList:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lcom/autonavi/ae/search/interfaces/OnSearchResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/lang/Object;

.field private obServer:Lcom/autonavi/ae/search/INativeSearchObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/autonavi/ae/search/NativeSearchEngine;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/search/SearchEngine;->mSearchCallBackListenerList:Ljava/util/Hashtable;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/autonavi/ae/search/SearchEngine;->mIsInit:Z

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/search/SearchEngine;->o:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/autonavi/ae/search/SearchEngine;->mNativeId:J

    const-string v0, "SearchEngine"

    .line 6
    iput-object v0, p0, Lcom/autonavi/ae/search/SearchEngine;->TAG:Ljava/lang/String;

    .line 7
    new-instance v0, Lcom/autonavi/ae/search/SearchEngine$1;

    invoke-direct {v0, p0}, Lcom/autonavi/ae/search/SearchEngine$1;-><init>(Lcom/autonavi/ae/search/SearchEngine;)V

    iput-object v0, p0, Lcom/autonavi/ae/search/SearchEngine;->obServer:Lcom/autonavi/ae/search/INativeSearchObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/ae/search/SearchEngine;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/ae/search/SearchEngine;->o:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/autonavi/ae/search/SearchEngine;)Ljava/util/Hashtable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/ae/search/SearchEngine;->mSearchCallBackListenerList:Ljava/util/Hashtable;

    return-object p0
.end method

.method private addSearchObserver(Lcom/autonavi/ae/search/INativeSearchObserver;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/autonavi/ae/search/SearchEngine;->isInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/autonavi/ae/search/NativeSearchEngine;->nativeAddSearchObserver(Lcom/autonavi/ae/search/INativeSearchObserver;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x2

    return p1
.end method

.method public static declared-synchronized getDataVersion(I)Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/autonavi/ae/search/SearchEngine;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/autonavi/ae/search/NativeSearchPub;->GetDataVersion(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getEngineVersion()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/autonavi/ae/search/SearchEngine;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/autonavi/ae/search/NativeSearchPub;->GetVersion()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized getRequestID()I
    .locals 3

    const-class v0, Lcom/autonavi/ae/search/SearchEngine;

    monitor-enter v0

    .line 1
    :try_start_0
    sget v1, Lcom/autonavi/ae/search/SearchEngine;->mRequestID:I

    const v2, 0xea60

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    .line 2
    sput v1, Lcom/autonavi/ae/search/SearchEngine;->mRequestID:I

    .line 3
    :cond_0
    sget v1, Lcom/autonavi/ae/search/SearchEngine;->mRequestID:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/autonavi/ae/search/SearchEngine;->mRequestID:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public GetAdareaInfo(I)Lcom/autonavi/ae/search/model/GADAREAEXTRAINFO;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/autonavi/ae/search/SearchEngine;->isInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/autonavi/ae/search/NativeSearchPub;->GetAdareaInfo(I)Lcom/autonavi/ae/search/model/GADAREAEXTRAINFO;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public cancelQuery()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/autonavi/ae/search/SearchEngine;->isInit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/autonavi/ae/search/log/GLog;->isLogShow()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SearchEngine"

    const-string v1, "cancelQuery start"

    .line 3
    invoke-static {v0, v1}, Lcom/autonavi/ae/search/log/GLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/ae/search/NativeSearchEngine;->nativeAbortSearch()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x2

    return v0
.end method

.method public destroy()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/autonavi/ae/search/log/GLog;->isLogShow()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SearchEngine"

    const-string v1, "destroy start"

    .line 2
    invoke-static {v0, v1}, Lcom/autonavi/ae/search/log/GLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/autonavi/ae/search/SearchEngine;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/autonavi/ae/search/SearchEngine;->mSearchCallBackListenerList:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/autonavi/ae/search/SearchEngine;->mIsInit:Z

    .line 7
    invoke-virtual {p0}, Lcom/autonavi/ae/search/NativeSearchEngine;->nativeDestroy()I

    move-result v0

    return v0

    :catchall_0
    move-exception v1

    .line 8
    monitor-exit v0

    throw v1
.end method

.method public getPoiCategoryList(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/autonavi/ae/search/SearchEngine;->isInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/autonavi/ae/search/NativeSearchEngine;->nativeGetPoiCategoryList(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x2

    return p1
.end method

.method public getPoiDetail(Ljava/lang/String;FFLcom/autonavi/ae/search/interfaces/OnSearchResultListener;)I
    .locals 9

    const/16 v1, 0xa

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/16 v7, 0xa

    move-object v0, p0

    move-object v3, p1

    move v5, p2

    move v6, p3

    move-object v8, p4

    .line 1
    invoke-virtual/range {v0 .. v8}, Lcom/autonavi/ae/search/SearchEngine;->startSearch(IILjava/lang/String;IFFILcom/autonavi/ae/search/interfaces/OnSearchResultListener;)I

    move-result p1

    return p1
.end method

.method public getPoiParam(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/autonavi/ae/search/SearchEngine;->isInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/autonavi/ae/search/NativeSearchEngine;->nativeGetPoiParam(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x2

    return p1
.end method

.method public init()I
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/autonavi/ae/search/NativeSearchEngine;->nativeCreateSearcher()I

    move-result v0

    .line 2
    invoke-static {}, Lcom/autonavi/ae/search/log/GLog;->isLogShow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "nativeCreateSearcher.naviid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SearchEngine"

    invoke-static {v2, v1}, Lcom/autonavi/ae/search/log/GLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_2

    const/4 v7, 0x0

    const/16 v8, 0x14

    const/4 v9, 0x0

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    move-object v3, p0

    .line 4
    invoke-virtual/range {v3 .. v9}, Lcom/autonavi/ae/search/NativeSearchEngine;->nativeInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/autonavi/ae/search/SearchEngine;->mIsInit:Z

    .line 6
    iget-object v0, p0, Lcom/autonavi/ae/search/SearchEngine;->obServer:Lcom/autonavi/ae/search/INativeSearchObserver;

    invoke-direct {p0, v0}, Lcom/autonavi/ae/search/SearchEngine;->addSearchObserver(Lcom/autonavi/ae/search/INativeSearchObserver;)I

    move-result v0

    return v0

    :cond_1
    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lcom/autonavi/ae/search/SearchEngine;->mIsInit:Z

    return v0

    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public isExistByAdCode(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/autonavi/ae/search/SearchEngine;->isInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/autonavi/ae/search/NativeSearchPub;->DbExists(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isInit()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/ae/search/SearchEngine;->mIsInit:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/autonavi/ae/search/SearchEngine;->mNativeId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public preSearch(ILjava/lang/String;IFFILcom/autonavi/ae/search/interfaces/OnSearchResultListener;)I
    .locals 9

    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    .line 1
    invoke-virtual/range {v0 .. v8}, Lcom/autonavi/ae/search/SearchEngine;->startSearch(IILjava/lang/String;IFFILcom/autonavi/ae/search/interfaces/OnSearchResultListener;)I

    move-result v0

    return v0
.end method

.method public searchAdareaInfo(Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/autonavi/ae/search/SearchEngine;->isInit()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/autonavi/ae/search/NativeSearchEngine;->nativeSearchAdareaInfo(ILjava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x2

    return p1
.end method

.method public searchNearestPoi(FFLcom/autonavi/ae/search/interfaces/OnSearchResultListener;)I
    .locals 9

    const/16 v1, 0x9

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v7, 0xa

    move-object v0, p0

    move v5, p1

    move v6, p2

    move-object v8, p3

    .line 1
    invoke-virtual/range {v0 .. v8}, Lcom/autonavi/ae/search/SearchEngine;->startSearch(IILjava/lang/String;IFFILcom/autonavi/ae/search/interfaces/OnSearchResultListener;)I

    move-result p1

    return p1
.end method

.method public setMccPath(Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/ae/search/SearchEngine;->getRequestID()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/autonavi/ae/search/NativeSearchEngine;->nativeSetMccPath(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public setPoiParam(II)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/autonavi/ae/search/SearchEngine;->isInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/autonavi/ae/search/NativeSearchEngine;->nativeSetPoiParam(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x2

    return p1
.end method

.method public startSearch(IILjava/lang/String;IFFILcom/autonavi/ae/search/interfaces/OnSearchResultListener;)I
    .locals 14

    move-object v13, p0

    move-object/from16 v0, p8

    .line 3
    invoke-virtual {p0}, Lcom/autonavi/ae/search/SearchEngine;->isInit()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    cmpg-float v2, p5, v1

    if-lez v2, :cond_1

    cmpg-float v1, p6, v1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, p1

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v1, 0x8

    const/16 v2, 0x8

    .line 4
    :goto_1
    invoke-static {}, Lcom/autonavi/ae/search/SearchEngine;->getRequestID()I

    move-result v10

    if-eqz v0, :cond_2

    .line 5
    iget-object v1, v13, Lcom/autonavi/ae/search/SearchEngine;->o:Ljava/lang/Object;

    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v3, v13, Lcom/autonavi/ae/search/SearchEngine;->mSearchCallBackListenerList:Ljava/util/Hashtable;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :goto_2
    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, p0

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v9, p7

    .line 8
    invoke-virtual/range {v1 .. v12}, Lcom/autonavi/ae/search/NativeSearchEngine;->nativeStartSearch(IILjava/lang/String;IFFIIII[Lcom/autonavi/ae/search/model/GObjectID;)Lcom/autonavi/ae/search/model/SearchStatus;

    move-result-object v0

    .line 9
    invoke-static {}, Lcom/autonavi/ae/search/log/GLog;->isLogShow()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "SearchEngine"

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startSearch requestID="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/autonavi/ae/search/model/SearchStatus;->getEventId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "strKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",nAdcode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/autonavi/ae/search/model/SearchStatus;->getStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/autonavi/ae/search/log/GLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_3
    invoke-virtual {v0}, Lcom/autonavi/ae/search/model/SearchStatus;->getStatus()I

    move-result v0

    return v0

    :cond_4
    const/4 v0, -0x2

    return v0
.end method

.method public startSearch(ILjava/lang/String;IFFII[Lcom/autonavi/ae/search/model/GObjectID;)I
    .locals 10

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 1
    invoke-virtual/range {v0 .. v9}, Lcom/autonavi/ae/search/SearchEngine;->startSearch(ILjava/lang/String;IFFII[Lcom/autonavi/ae/search/model/GObjectID;Lcom/autonavi/ae/search/interfaces/OnSearchResultListener;)I

    move-result v0

    return v0
.end method

.method public startSearch(ILjava/lang/String;IFFII[Lcom/autonavi/ae/search/model/GObjectID;Lcom/autonavi/ae/search/interfaces/OnSearchResultListener;)I
    .locals 14

    move-object v13, p0

    move-object/from16 v0, p9

    .line 12
    invoke-virtual {p0}, Lcom/autonavi/ae/search/SearchEngine;->isInit()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    invoke-static {}, Lcom/autonavi/ae/search/SearchEngine;->getRequestID()I

    move-result v10

    if-eqz v0, :cond_0

    .line 14
    iget-object v1, v13, Lcom/autonavi/ae/search/SearchEngine;->o:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    iget-object v2, v13, Lcom/autonavi/ae/search/SearchEngine;->mSearchCallBackListenerList:Ljava/util/Hashtable;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :goto_0
    const/4 v3, 0x2

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v9, p6

    move/from16 v11, p7

    move-object/from16 v12, p8

    .line 17
    invoke-virtual/range {v1 .. v12}, Lcom/autonavi/ae/search/NativeSearchEngine;->nativeStartSearch(IILjava/lang/String;IFFIIII[Lcom/autonavi/ae/search/model/GObjectID;)Lcom/autonavi/ae/search/model/SearchStatus;

    move-result-object v0

    .line 18
    invoke-static {}, Lcom/autonavi/ae/search/log/GLog;->isLogShow()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "SearchEngine"

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startSearch requestID="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/autonavi/ae/search/model/SearchStatus;->getEventId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "strKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",nAdcode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/autonavi/ae/search/model/SearchStatus;->getStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/autonavi/ae/search/log/GLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_1
    invoke-virtual {v0}, Lcom/autonavi/ae/search/model/SearchStatus;->getStatus()I

    move-result v0

    return v0

    :cond_2
    const/4 v0, -0x2

    return v0
.end method

.method public startSearch(ILjava/lang/String;IFFILcom/autonavi/ae/search/interfaces/OnSearchResultListener;)I
    .locals 9

    const/4 v2, 0x2

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    .line 2
    invoke-virtual/range {v0 .. v8}, Lcom/autonavi/ae/search/SearchEngine;->startSearch(IILjava/lang/String;IFFILcom/autonavi/ae/search/interfaces/OnSearchResultListener;)I

    move-result v0

    return v0
.end method