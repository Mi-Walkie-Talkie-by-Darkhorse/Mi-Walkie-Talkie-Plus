.class public interface abstract Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;
.super Ljava/lang/Object;
.source "RecordArgumentEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor$Argument;
    }
.end annotation


# virtual methods
.method public abstract clear()Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;
.end method

.method public abstract getAll()Ljava/util/Map;
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

.method public abstract put(Ljava/lang/String;Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor$Argument;)Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;
.end method

.method public abstract putBoolean(Ljava/lang/String;Z)Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;
.end method

.method public abstract putFloat(Ljava/lang/String;F)Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;
.end method

.method public abstract putInt(Ljava/lang/String;I)Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;
.end method

.method public abstract putLong(Ljava/lang/String;J)Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;
.end method

.method public abstract putString(Ljava/lang/String;Ljava/lang/String;)Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract remove(Ljava/lang/String;)Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;
.end method
