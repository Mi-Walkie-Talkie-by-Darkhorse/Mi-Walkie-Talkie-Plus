.class Lcom/autonavi/ae/search/NativeSearchEngine;
.super Ljava/lang/Object;


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
.method protected synchronized native nativeAbortSearch()I
.end method

.method protected synchronized native nativeAddSearchObserver(Lcom/autonavi/ae/search/INativeSearchObserver;)I
.end method

.method protected synchronized native nativeCreateSearcher()I
.end method

.method protected synchronized native nativeDestroy()I
.end method

.method protected synchronized native nativeGetPoiCategoryList(I)I
.end method

.method protected synchronized native nativeGetPoiParam(I)I
.end method

.method protected synchronized native nativeInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
.end method

.method protected synchronized native nativeRemoveSearchObserver(Lcom/autonavi/ae/search/INativeSearchObserver;)I
.end method

.method protected synchronized native nativeSearchAdareaInfo(ILjava/lang/String;)I
.end method

.method protected synchronized native nativeSetMccPath(Ljava/lang/String;I)I
.end method

.method protected synchronized native nativeSetPoiParam(II)I
.end method

.method protected synchronized native nativeStartSearch(IILjava/lang/String;IFFIIII[Lcom/autonavi/ae/search/model/GObjectID;)Lcom/autonavi/ae/search/model/SearchStatus;
.end method
