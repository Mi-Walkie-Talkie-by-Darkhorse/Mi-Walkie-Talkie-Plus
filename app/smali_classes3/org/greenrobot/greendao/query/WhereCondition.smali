.class public interface abstract Lorg/greenrobot/greendao/query/WhereCondition;
.super Ljava/lang/Object;
.source "WhereCondition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/greenrobot/greendao/query/WhereCondition$StringCondition;,
        Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;,
        Lorg/greenrobot/greendao/query/WhereCondition$AbstractCondition;
    }
.end annotation


# virtual methods
.method public abstract appendTo(Ljava/lang/StringBuilder;Ljava/lang/String;)V
.end method

.method public abstract appendValuesTo(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method
