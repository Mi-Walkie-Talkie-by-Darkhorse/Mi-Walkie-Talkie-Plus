.class public interface abstract annotation Lorg/greenrobot/greendao/annotation/JoinProperty;
.super Ljava/lang/Object;
.source "JoinProperty.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {}
.end annotation


# virtual methods
.method public abstract name()Ljava/lang/String;
.end method

.method public abstract referencedName()Ljava/lang/String;
.end method
