.class Lcom/autonavi/ae/search/NativeSearchEngine;
.super Ljava/lang/Object;
.source "NativeSearchEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/ae/search/NativeSearchEngine$GSearchForm;
    }
.end annotation


# static fields
.field public static final GSEARCH_TYPE_AROUND:I = 0x3

.field public static final GSEARCH_TYPE_FTS:I = 0x8


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected synchronized native declared-synchronized nativeAbortSearch()I
.end method

.method protected synchronized native declared-synchronized nativeAddSearchObserver(Lcom/autonavi/ae/search/INativeSearchObserver;)I
.end method

.method protected synchronized native declared-synchronized nativeCreateSearcher()I
.end method

.method protected synchronized native declared-synchronized nativeDestroy()I
.end method

.method protected synchronized native declared-synchronized nativeGetPoiCategoryList(I)I
.end method

.method protected synchronized native declared-synchronized nativeGetPoiParam(I)I
.end method

.method protected synchronized native declared-synchronized nativeInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
.end method

.method protected synchronized native declared-synchronized nativeRemoveSearchObserver(Lcom/autonavi/ae/search/INativeSearchObserver;)I
.end method

.method protected synchronized native declared-synchronized nativeSearchAdareaInfo(ILjava/lang/String;)I
.end method

.method protected synchronized native declared-synchronized nativeSetMccPath(Ljava/lang/String;I)I
.end method

.method protected synchronized native declared-synchronized nativeSetPoiParam(II)I
.end method

.method protected synchronized native declared-synchronized nativeStartSearch(IILjava/lang/String;IFFIIII[Lcom/autonavi/ae/search/model/GObjectID;)Lcom/autonavi/ae/search/model/SearchStatus;
.end method
