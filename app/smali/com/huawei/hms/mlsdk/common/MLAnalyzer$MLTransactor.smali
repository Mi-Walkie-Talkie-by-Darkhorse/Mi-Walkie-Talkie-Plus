.class public interface abstract Lcom/huawei/hms/mlsdk/common/MLAnalyzer$MLTransactor;
.super Ljava/lang/Object;
.source "MLAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/mlsdk/common/MLAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MLTransactor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract transactResult(Lcom/huawei/hms/mlsdk/common/MLAnalyzer$Result;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/mlsdk/common/MLAnalyzer$Result<",
            "TT;>;)V"
        }
    .end annotation
.end method
