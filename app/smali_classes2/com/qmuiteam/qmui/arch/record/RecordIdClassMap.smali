.class public interface abstract Lcom/qmuiteam/qmui/arch/record/RecordIdClassMap;
.super Ljava/lang/Object;
.source "RecordIdClassMap.java"


# virtual methods
.method public abstract getIdByRecordClass(Ljava/lang/Class;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation
.end method

.method public abstract getRecordClassById(I)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method
