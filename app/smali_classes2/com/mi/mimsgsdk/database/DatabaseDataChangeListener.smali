.class public interface abstract Lcom/mi/mimsgsdk/database/DatabaseDataChangeListener;
.super Ljava/lang/Object;
.source "DatabaseDataChangeListener.java"


# static fields
.field public static final DATA_CHANGE_ADDED:I = 0x1

.field public static final DATA_CHANGE_ADDED_OR_UPDATED:I = 0x4

.field public static final DATA_CHANGE_DELETED:I = 0x3

.field public static final DATA_CHANGE_UPDATED:I = 0x2


# virtual methods
.method public abstract onDatabaseDataChanged(ILjava/util/HashSet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
