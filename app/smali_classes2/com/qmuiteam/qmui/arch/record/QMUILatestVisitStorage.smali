.class public interface abstract Lcom/qmuiteam/qmui/arch/record/QMUILatestVisitStorage;
.super Ljava/lang/Object;
.source "QMUILatestVisitStorage.java"


# static fields
.field public static final NOT_EXIST:I = -0x1


# virtual methods
.method public abstract clearActivityStorage()V
.end method

.method public abstract clearAll()V
.end method

.method public abstract clearFragmentStorage()V
.end method

.method public abstract getActivityRecordId()I
.end method

.method public abstract getAndWriteActivityArgumentsToIntent(Landroid/content/Intent;)V
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getFragmentArguments()Ljava/util/Map;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor$Argument;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFragmentRecordId()I
.end method

.method public abstract saveActivityRecordInfo(ILjava/util/Map;)V
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor$Argument;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract saveFragmentRecordInfo(ILjava/util/Map;)V
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor$Argument;",
            ">;)V"
        }
    .end annotation
.end method
