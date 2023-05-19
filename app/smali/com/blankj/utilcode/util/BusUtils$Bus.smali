.class public interface abstract annotation Lcom/blankj/utilcode/util/BusUtils$Bus;
.super Ljava/lang/Object;
.source "BusUtils.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/blankj/utilcode/util/BusUtils$Bus;
        priority = 0x0
        sticky = false
        threadMode = .enum Lcom/blankj/utilcode/util/BusUtils$ThreadMode;->f:Lcom/blankj/utilcode/util/BusUtils$ThreadMode;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract priority()I
.end method

.method public abstract sticky()Z
.end method

.method public abstract tag()Ljava/lang/String;
.end method

.method public abstract threadMode()Lcom/blankj/utilcode/util/BusUtils$ThreadMode;
.end method
