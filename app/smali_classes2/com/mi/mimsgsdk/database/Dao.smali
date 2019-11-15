.class public abstract Lcom/mi/mimsgsdk/database/Dao;
.super Ljava/lang/Object;
.source "Dao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/mi/mimsgsdk/database/ContentValuesable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract bulkInsert([Landroid/content/ContentValues;Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/ContentValues;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract delete(Lcom/mi/mimsgsdk/database/ContentValuesable;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method protected abstract delete(Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public abstract insert(Lcom/mi/mimsgsdk/database/ContentValuesable;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation
.end method

.method public abstract query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method protected abstract update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public abstract update(Lcom/mi/mimsgsdk/database/ContentValuesable;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method
