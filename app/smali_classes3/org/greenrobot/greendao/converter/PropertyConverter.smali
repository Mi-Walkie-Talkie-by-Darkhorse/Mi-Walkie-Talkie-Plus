.class public interface abstract Lorg/greenrobot/greendao/converter/PropertyConverter;
.super Ljava/lang/Object;
.source "PropertyConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        "D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract convertToDatabaseValue(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)TD;"
        }
    .end annotation
.end method

.method public abstract convertToEntityProperty(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)TP;"
        }
    .end annotation
.end method
