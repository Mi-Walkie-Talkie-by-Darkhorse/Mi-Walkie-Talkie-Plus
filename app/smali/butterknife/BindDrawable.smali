.class public interface abstract annotation Lbutterknife/BindDrawable;
.super Ljava/lang/Object;
.source "BindDrawable.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lbutterknife/BindDrawable;
        tint = 0x0
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract tint()I
    .annotation build Landroid/support/annotation/AttrRes;
    .end annotation
.end method

.method public abstract value()I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end method
